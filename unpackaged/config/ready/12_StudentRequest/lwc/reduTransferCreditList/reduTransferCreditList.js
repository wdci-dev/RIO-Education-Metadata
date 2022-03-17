/**
 * @description       : Transfer Credits List
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : RIO Education
 * @last modified on  : 04-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { LightningElement, api,wire, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import getTCWList from '@salesforce/apex/redu_TransferCreditList_LCTRL.getTCWList';
import deleteTCW from '@salesforce/apex/redu_TransferCreditList_LCTRL.deleteTCW';
import TRANSFER_CREDIT_OBJECT from '@salesforce/schema/rio_ed__Transfer_Credit__c';
import AGREEMENT_COURSE_OBJECT from '@salesforce/schema/rio_ed__Agreement_Course__c';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

import newLabel from '@salesforce/label/rio_ed.New';
import editLabel from '@salesforce/label/rio_ed.Edit';
import deleteLabel from '@salesforce/label/rio_ed.Delete';

export default class ReduTransferCreditList extends LightningElement {

    @api recordId;                  // Current Record Id (This will be used as Application Id if specified ApplicationId=!recordId)
    @api applicationId;             // Program Application/Enrollment Id (Required to load existing transfer credit records)
    programEnrollmentId;       // @api Program Enrollment Id (Optional, used if PA Id is absent)

    @api componentLabel;            // String title for component
    @api componentIcon;             // Component Icon
    @api componentIconSize;         // Component Icon
    @api fieldListString;           // String list of comma separated fields
    @api fieldLabelString;          // String list of comma separated custom field labels (if absent, will use system field labels)
    @api showCreateNew;             // Create New button
    @api createNewLabel;            // Create New Button Label
    @api actionColumnwidth;         // To be able to make wider for action column
    @api actionColumnLabel;         // Action column label
    @api instituteLabel;            // Institute label
    @api numberOfLookupInstitutes=10;  // Number of Institutes to be displayed in lookup
    @api numberOfLookupCourses=10;     // Number of Courses to be dieplayed in lookup
    @api showDefaultCourseList;
    @api showDefaultInstituteList;
    @api allowCreateAgreement;
    @api allowCreateAgreementCourse;
    @api instituteIconName; //='utility:company';                   // Institute Icon Name
    @api courseIconName; //='utility:text';                         // Course Icon Name

    sortedBy;       // Current sort field
    sortDirection;  // Current Sort direction

    showCreateEditModal = false;
    showSpinner = false;
    noTransferCreditsYet = false;
    error = false;
    uiw = null; // Object holding data to manipulate UI
    tcColumns = [];
    tcRows = [];
    selectedTCW = null; // Currently selected Transfer Credit wrapper obj
    creditsEarnedLabel = '';
    creditsAttemptedLabel = '';
    transferCourseIdLabel = '';
    transferCourseTitleLabel = '';
    transferCreditObjectLabel = '';
    modalUITitle = '';
    primaryRecordId = '';

    label = {
        newLabel, editLabel
    };

    @wire(getObjectInfo, { objectApiName: TRANSFER_CREDIT_OBJECT })
    transferCreditObjInfo({ data, error }) {
        if (data){
            this.creditsAttemptedLabel = data.fields.rio_ed__Credits_Attempted__c.label;
            this.creditsEarnedLabel = data.fields.rio_ed__Credits_Earned__c.label;
            this.transferCreditObjectLabel = data.label;
            //console.log('----------------------- '+JSON.stringify(data));
        }
    }
    
    @wire(getObjectInfo, { objectApiName: AGREEMENT_COURSE_OBJECT })
    AgreementCourseObjInfo({ data, error }) {
        if (data){
            this.transferCourseIdLabel = data.fields.rio_ed__Transfer_Course_ID__c.label;
            this.transferCourseTitleLabel = data.fields.rio_ed__Transfer_Course_Title__c.label;
        }
    }


    connectedCallback() {
        this.showSpinner = true;

        if (this.applicationId=='!recordId' || this.programEnrollmentId=='!recordId'){
            this.primaryRecordId = this.recordId;
            //console.log('this.recordId>> '+this.recordId);
        }
        else if ((this.applicationId) && this.applicationId!=''){
            this.primaryRecordId = this.applicationId;
            //console.log('PA recordId>> '+this.recordId +' application id '+this.applicationId);
        }
        else if ((this.programEnrollmentId) && this.programEnrollmentId!=''){
            this.primaryRecordId = this.programEnrollmentId;
            //console.log('PE recordId>> '+this.recordId+' PEId '+this.programEnrollmentId);
        }

        //console.log('this.applicationId '+this.applicationId+' this.recordId '+this.recordId);

        if (!(this.actionColumnwidth)){
            this.actionColumnwidth = 150;
        }

        let inputParams = {context: 'TRANSFERCREDIT_STUDENTVIEW', primaryRecordId : this.primaryRecordId, fieldListString : this.fieldListString};

        let inputParamsJSONstr = JSON.stringify(inputParams);
        
        //console.log('inputParamsJSONstr: '+inputParamsJSONstr);

        getTCWList({inputParamsJSON : inputParamsJSONstr})
            .then(uiw => {
                //console.log(JSON.stringify(uiw));
                this.showSpinner = false;
                if (uiw.hasError==true){
                    this.handleErrorText(uiw.message);
                }
                else{
                    this.uiw = uiw;
                    this.processDataforUI();
                }

            })
            .catch(error => {
                this.handleError(error, `connectedCallBack()`);
            });
    }

    processDataforUI(){ //  { label: 'Website', fieldName: 'website', type: 'url' },
        let listColheaders = ((this.fieldLabelString) && (this.fieldLabelString!=null) ) ? this.fieldLabelString.split(',') : [];
        let colCount = 1;
        let columns = [];

        // First Grid Columns
        this.uiw.listFDW.forEach(fdw => {
            let curColIdx = colCount++;
            let fieldName = 'col_'+ curColIdx ;

            let col = this.getColumn(fieldName, fdw.fieldLabel, fdw.fieldType);
            
            if ((fdw.fieldType=='ID' || fdw.fieldType=='REFERENCE') && fdw.alternateFld!=null){
                col.label = fdw.alternateFld.fieldLabel;
                col.fieldName = fieldName + '_url' ;
                col.typeAttributes = { label: { fieldName: fieldName }, tooltip: col.label, target: "_blank" } ;
            }

            if ((listColheaders[curColIdx-1]) && (!(listColheaders[curColIdx-1]===''))){
                col.label = listColheaders[curColIdx-1];
            }

            columns.push(col);
        });       

        /*columns.push({ label: ((this.actionColumnLabel) && this.actionColumnLabel!='') ? this.actionColumnLabel : 'Actions'
        , type: 'transferCreditCell', fieldName: 'index', initialWidth: this.actionColumnwidth
        ,typeAttributes: {
            //status: { fieldName: 'col_status' }
            }
        });*/
        columns.push({
            type: 'action',
            typeAttributes: { rowActions: this.getRowActions },
        });

        // Data records
        this.refreshDataRows();

        //console.log('recs>>> '+JSON.stringify(this.tcRows));
        //console.log('columns>>> '+JSON.stringify(columns));
        this.tcColumns = columns;

    }

    refreshDataRows(){
        let rows = [];
        let rowIdx = 0;
        this.uiw.listTCW.forEach(tcw => {
            this.uiw.listTCW[rowIdx].index = rowIdx++;  // Must update index to refresh after deleting, etc.

            let row = {index : tcw.index};
            let colCount = 1;   // reset Colcount
            
            this.uiw.listFDW.forEach(fdw => {
                let colName = 'col_'+colCount++;
                row[colName] = null;

                if ((fdw.fieldType=='ID' || fdw.fieldType=='REFERENCE') && fdw.alternateFld!=null){
                    let referenceFldVal = this.resolve(tcw.tc, fdw.relationalFieldAPIName);
                    if (referenceFldVal){
                        row[colName] = this.resolve(tcw.tc, fdw.alternateFld.relationalFieldAPIName);
                        row[colName + '_url'] = '/'+referenceFldVal;
                    }
                    else{
                        row[colName + '_url'] = null;
                    }
                }
                else{
                    let val = this.resolve(tcw.tc, fdw.relationalFieldAPIName);
                    if (val){
                        row[colName] = val;
                    }
                }
                //console.log('colName: '+colName+ 'is undefined '+(typeof row[colName]) +' >> this.resolve(tcw.tc, fdw.relationalFieldAPIName) '+this.resolve(tcw.tc, fdw.relationalFieldAPIName));
            });

            row['col_Status'] = tcw.tc.rio_ed__Status__c;

            rows.push(row);
        });

        this.tcRows = rows;
        this.noTransferCreditsYet = (this.tcRows.length == 0);
    }

    getRowActions(row, doneCallback) {
        console.log(JSON.stringify(row));
        if(row.col_Status==='Draft') {
            doneCallback([{ label: 'Edit', name: 'edit' },{ label: 'Delete', name: 'delete' }]);
        }
        else{
            doneCallback([{ label: 'No Actions available', name: 'noaction' }]);
        }
    }

    handleRowAction(event){
		this.selectedTCW = null;

		for (let idx = 0; idx < this.uiw.listTCW.length; idx++) {
			if (this.uiw.listTCW[idx].index==event.detail.row.index){
				this.selectedTCW = this.uiw.listTCW[idx];
                //event.detail.propValue;
				break;
			}
		}

		this.performRowAction(event.detail.action);
	}

    performRowAction(action){
        //console.log(' >> this.selectedTCW '+JSON.stringify(this.selectedTCW));
        if (this.selectedTCW==null){
            return;
        }

        switch (action.name) {
            case 'edit':
                //console.log('Edit: '+JSON.stringify(this.selectedTCW));
                this.showCreateEditModal = true;
                this.modalUITitle = this.label.editLabel + ' '+this.transferCreditObjectLabel;
                break;

            case 'delete':
            this.performDeleteSelectedTC();
            break;

            default:
                break;
        }
    }


    createNew(event){

        this.selectedTCW = {
            "hasError": false,
            "index": -1,
            "message": "",
            "tc": {
              "rio_ed__Transfer_Course__r": {
                "rio_ed__Course__c": null,
                "rio_ed__Agreement__r": {
                  "rio_ed__Partner_External_Educational_Institution__c": "",
                  "Name": "",
                  "Id": null
                },
                "rio_ed__Agreement__c": null,
                "Id": null,
                "rio_ed__Transfer_Course_Title__c": "",
                "rio_ed__Transfer_Course_ID__c": ""
              },
              "rio_ed__Transfer_Course__c": null,
              "rio_ed__Contact__c": this.uiw.contactId,
              "rio_ed__Credits_Earned__c": "",
              "Id": null,
              "rio_ed__Credits_Attempted__c": "",
              "rio_ed__Grade__c": ""
            }
          };

          // "rio_ed__Program_Application__c": this.uiw.primaryRecordId,
          if (this.uiw.primaryRecordObjectType=='rio_ed__Program_Application__c'){
            this.selectedTCW.tc.rio_ed__Program_Application__c = this.uiw.primaryRecordId;
          }
          else if (this.uiw.primaryRecordObjectType=='hed__Program_Enrollment__c'){
            this.selectedTCW.tc.rio_ed__Program_Enrollment__c = this.uiw.primaryRecordId;
          }
          else if (this.uiw.primaryRecordObjectType=='rio_ed__Educational_Qualification__c'){
            this.selectedTCW.tc.rio_ed__Educational_Qualification__c = this.uiw.primaryRecordId;
          }

          this.selectedTCW.primaryRecordObjectType = this.uiw.primaryRecordObjectType;
          //console.log('this.selectedTCW '+JSON.stringify(this.selectedTCW));
          this.modalUITitle = this.label.newLabel + ' '+this.transferCreditObjectLabel;
          this.showCreateEditModal = true;
    }

    handleNewEditCancel(event){
        this.showCreateEditModal = false;
        this.selectedTCW = null;
    }

    performDeleteSelectedTC(){
        if (!this.selectedTCW){
            return;
        }
        this.showSpinner = true;
        //console.log('selectedTCW: '+JSON.stringify(this.selectedTCW));

        deleteTCW({tcwJSON : JSON.stringify(this.selectedTCW)})
        .then(tcw => {
            this.uiw.listTCW = this.uiw.listTCW.filter(tcw => tcw.index !== this.selectedTCW.index);
            this.refreshDataRows();
            this.selectedTCW = null;

            this.showSpinner = false;
        })
        .catch(error => {
            this.showSpinner = false;
            this.handleError(error, `delete`);
        });
    }

    doAfterSaveUIUpdate(event){
        //console.log('>> doAfterSaveUIUpdate '+JSON.stringify(event.detail));
        
        if (event.detail.tcw){
            if ((event.detail.tcw.tc) ){ // && (event.detail.tcw.tc.Id)
                if (event.detail.tcw.index==-1){
                    let tcw = event.detail.tcw;
                    tcw.index = this.uiw.listTCW.length;
                    this.uiw.listTCW.push(tcw);
                }
                else{
                    for (let idx = 0; idx < this.uiw.listTCW.length; idx++) {
                        if (this.uiw.listTCW[idx].index==event.detail.tcw.index){
                            this.uiw.listTCW[idx] = event.detail.tcw;
                            break;
                        }
                    }
                }
            }
        }

        this.refreshDataRows();
        this.showCreateEditModal = false;
    }
/*
    handleRemoveTC(event){
        console.log('rem: '+JSON.stringify(event.detail));
    }*/


    //----------- Util functions --------------//

    
    getListFromCommaseparatedString(str){
        if ((str) && str!=''){
            return str.split(',');
        }
        else{
            return [];
        }
    }

    resolve(obj, path) {
        return path.split('.').reduce(function(prev, curr) {
            return prev ? prev[curr] : null
        }, obj || self)
    }

    errorCallback(error, stack) {

        this.handleError(error, 'errorCallBack()');
        console.log(`Error callback Stack: ${stack}`);
    }

    handleError(error, errorId) {

        if (errorId) {
            const errorStr = `${errorId}: ${error}`;
            console.error(errorStr);
            this.error = errorStr;
            if (error.body) {
                this.error = `${errorId}: Error Msg: ${error.body.message}`;
            }
        } else {
            this.error = `${error}`;
            if (error.body) {
                this.error = `Error Msg: ${error.body.message}`;
            }
        }

        this.showSpinner = false;
    }

    handleErrorText(message) {

        if (message) {
            this.error = message;
        } 

        this.showSpinner = false;
    }

    getColumn(fieldName, fieldLabel, fieldType){
        let col = { label : fieldLabel, fieldName : fieldName };
        let colType;

        switch (fieldType) {
            case 'ID':
            case 'REFERENCE':
                colType = 'url';
                break;
            case 'BOOLEAN':
                colType = 'boolean';
                break;
            case 'DATE':
            case 'date':
                colType = 'date';
                break;
            case 'TIME':
                col.typeAttributes = {hour: "2-digit", minute: "2-digit", second: "2-digit"};
                colType = 'date';
                break;
            case 'DATETIME':
                col.typeAttributes = {year: "numeric", month: "long",day: "2-digit",hour: "2-digit", minute: "2-digit"};
                colType = 'date';
                break;
            case 'DOUBLE':
            case 'INTEGER':
            case 'LONG':
            case 'number':
                colType = 'number';
                break;
            case 'PERCENT':
                colType = 'percent';
                break;
            case 'EMAIL':
            case 'email':
                colType = 'email';
                break;
            case 'PHONE':
            case 'tel':
                colType = 'phone';
                break;
            case 'URL':
                colType = 'url';
                //col.typeAttributes = { label: { fieldName: fieldName }, tooltip: fieldLabel, target: "_blank" } ;
                break;
            case 'CURRENCY':
                colType = 'currency';
                break;
            case 'STRING' :
            case 'TEXT' :
                colType = 'text';   // Default SF type
            default:
                colType = 'text';   // Default SF type
                break;
        }

        if (!['file'].includes(fieldType)){        // Exclude columns which doesn't support Sorting
            //console.log('not file>> '+colType+' fieldLabel '+fieldLabel);
            //col.sortable = true;
        }        
        
        col.type = colType;
        return col;
    }


    updateColumnSorting(event) {   // assign the latest attribute with the sorted column fieldName and sorted direction    
        console.log('fieldName '+event.detail.fieldName+' sortDirection '+event.detail.sortDirection);
        this.sortedBy = event.detail.fieldName;
        this.sortDirection = event.detail.sortDirection;
        this.sortData(this.sortedBy);
        //this.sortData(this.sortedBy, this.sortDirection);
    }

    sortData(sortedBy){
        var data = this.tcRows;
        var reverse = this.sortDirection !== 'asc';
        data.sort(this.sortBy(sortedBy, reverse));
        this.tcRows = data;
        console.log(' sorted: '+JSON.stringify(this.tcRows));
    }

    sortBy(field, reverse, primer) {
        console.log(' sort '+field+' reverse '+reverse+' primer '+primer);
        var key = primer ?
            function(x) {return primer(x[field])} :
            function(x) {return x[field]};
        reverse = !reverse ? 1 : -1;
        return function (a, b) {
            return a = key(a), b = key(b), reverse * ((a > b) - (b > a));
        }
    }
}