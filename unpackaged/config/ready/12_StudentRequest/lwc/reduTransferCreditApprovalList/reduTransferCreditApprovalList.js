/**
 * @description       : Transfer Credits List
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : RIO Education
 * @last modified on  : 20-09-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { LightningElement, api,wire, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import getTCWList from '@salesforce/apex/redu_TransferCreditList_LCTRL.getTCWList';
import saveTCW from '@salesforce/apex/redu_TransferCreditList_LCTRL.saveTCW';
import TRANSFER_CREDIT_OBJECT from '@salesforce/schema/rio_ed__Transfer_Credit__c';
import TRANSFER_CREDIT_STATUS_FIELD from '@salesforce/schema/rio_ed__Transfer_Credit__c.rio_ed__Status__c';
import AGREEMENT_COURSE_OBJECT from '@salesforce/schema/rio_ed__Agreement_Course__c';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

import newLabel from '@salesforce/label/rio_ed.New';
import editLabel from '@salesforce/label/rio_ed.Edit';
import deleteLabel from '@salesforce/label/rio_ed.Delete';

export default class ReduTransferCreditApprovalList extends LightningElement {

    @api recordId;           // Current Record Id (This will be used as Application Id if specified ApplicationId=!recordId)
    //@api applicationId;     // Obsolete property

    @api componentLabel;            // String title for component
    @api componentIcon;             // Component Icon
    @api componentIconSize;         // Component Icon
    @api fieldListString;           // String list of comma separated fields
    @api fieldLabelString;          // String list of comma separated custom field labels (if absent, will use system field labels)
    @api peGroupFieldColumnwidth = 200;         // To be able to make wider for PE Group column
    @api pedGroupFieldColumnwidth = 200;         // To be able to make wider for PE Discipline Group Req. column
    @api actionColumnwidth;         // To be able to make wider for action column
    @api actionColumnLabel;         // Action column label

    @api displayedSatuses;                              // NOT USED CURRENTLY (LEFT FOR FUTURE ENHANCEMENT) String Comma separated list of API names of statuses to display, if blank all statuses will be displayed (this will be used for filters too)
    @api selectableSatuses="Draft,Approved,Rejected";         // String Comma separated list of API names of selectable statuses
    @api actionableStatuses="Draft,Approved,Rejected";  // String Comma separated list of API names of actionable statuses (determines when statuses can be updated by component)

    @api showPEGroupSelection;                  // Show Pe Group Selection col
    @api showPEDGroupSelection;                 // Show PE Discipline Requirement (Group) selection col
    
    // Default Filter configuration e.g. Label, SOQL where Expr
    // @api filterOptionConfig = "[['All','']"+                               
    // ",['Pending Approval(All)',' rio_ed__Status__c = \'Draft\' ']"+
    // ",['Pending Approval(Requested this month)',' rio_ed__Status__c = \'Draft\' AND rio_ed__Transfer_Request_Date__c = THIS_MONTH ']"+
    // ",['Approved Credit (This month) ',' rio_ed__Status__c = \'Approved\' AND rio_ed__Transfer_Date__c = THIS_MONTH ']"+
    // ",['Approved Credit (Last month) ',' rio_ed__Status__c = \'Approved\' AND rio_ed__Transfer_Date__c = LAST_MONTH ']]";     
    @api filterOptionConfig = "All=>,Pending Approval(All)=> rio_ed__Status__c = 'Draft'"+
    ",Pending Approval(Requested this month)=> rio_ed__Status__c = 'Draft' AND rio_ed__Transfer_Request_Date__c = THIS_MONTH "+
    ",Approved Credit (This month)=> rio_ed__Status__c = 'Approved' AND rio_ed__Transfer_Date__c = THIS_MONTH "+
    ",Approved Credit (Last month)=> rio_ed__Status__c = 'Approved' AND rio_ed__Transfer_Date__c = LAST_MONTH ]"; 
    
    @api defaultFilterOptionLabel = 'Pending Approval(All)';                    // Default Filter Label for view to filter on
    @api filterLabelText = 'Filter by:';                                        // Default Filter Label Text

    filterDropdownListOptions = [];
    selectedFilterValue;

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
    selectedPrevTCW = null; // Currently selected Transfer Credit wrapper obj for undo upon errors
    creditsEarnedLabel = '';
    creditsAttemptedLabel = '';
    transferCourseIdLabel = '';
    transferCourseTitleLabel = '';
    transferCreditObjectLabel = '';
    modalUITitle = '';
    picklistValues_Status;

    label = {
        newLabel, editLabel
    };

    @wire(getObjectInfo, { objectApiName: TRANSFER_CREDIT_OBJECT })
    transferCreditObjInfo({ data, error }) {
        if (data){
            this.creditsAttemptedLabel = data.fields.rio_ed__Credits_Attempted__c.label;
            this.creditsEarnedLabel = data.fields.rio_ed__Credits_Earned__c.label;
            this.transferCreditObjectLabel = data.label;
            this.label.peGroupLabel = data.fields.rio_ed__PE_Group__c.label;
            this.label.pedGroupLabel = data.fields.rio_ed__PE_Discipline_Requirement_Group__c.label;
        }
    }
    
    @wire(getObjectInfo, { objectApiName: AGREEMENT_COURSE_OBJECT })
    AgreementCourseObjInfo({ data, error }) {
        if (data){
            this.transferCourseIdLabel = data.fields.rio_ed__Transfer_Course_ID__c.label;
            this.transferCourseTitleLabel = data.fields.rio_ed__Transfer_Course_Title__c.label;
        }
    }

    // GET PICKLIST VALUES '$objectInfo.data.defaultRecordTypeId'
    @wire (getPicklistValues, {recordTypeId: '012000000000000AAA', fieldApiName: TRANSFER_CREDIT_STATUS_FIELD})
    wiredPicklistValues({ error, data }) {
        // reset values to handle eg data provisioned then error provisioned
        this.picklistValues_Status = [];
        if (data) {
            data.values.forEach(e => {
                this.picklistValues_Status.push(e.value)
            });
            //this.picklistValues_Status = data;
            //console.log('>> picklistValues_Status '+JSON.stringify(this.picklistValues_Status));
        } else if (error) {
            console.log('>> picklistValues_Status Error: '+error);
        }
    }  


    connectedCallback() {
        
        if (!(this.actionColumnwidth)){
            this.actionColumnwidth = 250;
        }

        // Set Filter options
        if ((this.filterOptionConfig)){  // (this.filterOptionConfig.length > 0)

            let fltArray = [];
            this.filterOptionConfig.split(',').forEach(opt => {
                fltArray.push(opt.split('=>'));
            });

            let filterOpts = [];
            for (let flt of fltArray){
                //console.log('JSON flt '+flt.length+' >> '+JSON.stringify(flt) +' flt0 '+flt[0]+' flt1 '+flt[1]);
                if ((flt) && flt.length == 2){
                    filterOpts.push({label : flt[0], value : flt[1]});
                    
                    // If Default selected Label is present
                    if ((this.defaultFilterOptionLabel) && this.defaultFilterOptionLabel!='' && this.defaultFilterOptionLabel==flt[0]) {
                        this.selectedFilterValue = flt[1];
                    }
                }
            }

            this.filterDropdownListOptions = filterOpts;
        }

        this.doRefresh();
    }

    callRefresh(){
        this.doRefresh();
    }

    doRefresh(event){
        this.showSpinner = true;
        if (event){
            //console.log('changed '+JSON.stringify(event.detail));
            this.selectedFilterValue = event.detail.value;
        }

        let inputParams = {context: 'TRANSFERCREDIT_APPROVAL', fieldListString : this.fieldListString};
        if ((this.selectedFilterValue) && this.selectedFilterValue!=''){
            inputParams.filterCondition = this.selectedFilterValue;
        }
        
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
                this.handleError(error, `refreshData()`);
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
                col.typeAttributes = { label: { fieldName: fieldName }, tooltip: { fieldName: fieldName }, target: "_blank" } ;
            }
            else{
                col.typeAttributes = {title: { fieldName: fieldName }};     // This one seems not working yet for normal texts, but for url fields as in above
                //col.typeAttributes = { label: { fieldName: fieldName }, tooltip: { fieldName: fieldName } } ;
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
        console.log('showPEGroupSelection>> '+this.showPEGroupSelection+' >> '+(this.showPEGroupSelection===true)+' this.showPEDGroupSelection>> '+this.showPEDGroupSelection+' >> '+(this.showPEDGroupSelection==true));

        if (this.showPEGroupSelection){
            columns.push({ label: this.label.peGroupLabel, wrapText: true
            , type: 'transferCreditPEGroupCell', fieldName: 'col_peGroupId' , initialWidth: this.peGroupFieldColumnwidth
            ,typeAttributes: {
                index: { fieldName: 'index' },
                options: { fieldName: 'col_listPEG' },
                selectable: { fieldName: 'col_PEG_selectable' }
                }
            });
        }

        if (this.showPEDGroupSelection){
            columns.push({ label: this.label.pedGroupLabel, wrapText: true
            , type: 'transferCreditPEDGroupCell', fieldName: 'col_peDGroupId' , initialWidth: this.pedGroupFieldColumnwidth
            ,typeAttributes: {
                index: { fieldName: 'index' },
                options: { fieldName: 'col_listPEDG' },
                selectable: { fieldName: 'col_PEDG_selectable' }
                }
            });
        }

        columns.push({ label: ((this.actionColumnLabel) && this.actionColumnLabel!='') ? this.actionColumnLabel : 'Status'
        , type: 'transferCreditApproveCell', fieldName: 'index', initialWidth: this.actionColumnwidth
        ,typeAttributes: {
            status: { fieldName: 'col_status' },
            allowedstatuses: { fieldName: 'col_allowedStatuses' },
            actionablestatuses: { fieldName: 'col_actionableStatuses' }
            }
        });

        // columns.push({
        //     type: 'action',
        //     typeAttributes: { rowActions: this.getRowActions },
        // });

        // Data records
        this.refreshDataRows();

        //console.log('recs>>> '+JSON.stringify(this.tcRows));
        //console.log('columns>>> '+JSON.stringify(columns));
        this.tcColumns = columns;

    }

    refreshDataRows(){
        let rows = [];
        let rowIdx = 0;

        let allowedSelectableStatuses = this.selectableStatusOptions;
        let allowedActionableStatuses = this.actionableStatusOptions;

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

            // Status
            row.col_status = tcw.tc.rio_ed__Status__c;
            console.log('status>> '+rowIdx+' -- '+row.col_status)
            row.col_allowedStatuses = allowedSelectableStatuses;
            row.col_actionableStatuses = allowedActionableStatuses; 

            // Pe Group
            if (this.showPEGroupSelection){
                row.col_peGroupId = tcw.tc.rio_ed__PE_Group__c;
                row.col_listPEG = this.getPEGroupList(tcw);
            }

            // PE Discipline Req. Group
            if (this.showPEDGroupSelection){
                row.col_peDGroupId = tcw.tc.rio_ed__PE_Discipline_Requirement_Group__c;
                row.col_listPEDG = this.getPEDGroupList(tcw);
            }

            //row.col_PEG_readonly = row.col_PEDG_readonly = (tcw.tc.rio_ed__Status__c!='Draft');
            row.col_PEG_selectable = row.col_PEDG_selectable = (tcw.tc.rio_ed__Status__c=='Draft') && ((!tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Course__c) || (tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Course__c==null));

            //console.log('>>row '+JSON.stringify(row));
            rows.push(row);
        });

        this.tcRows = rows;
        this.noTransferCreditsYet = (this.tcRows.length == 0);
    }

    getPEGroupList(tcw){
        let listPEG = [];

        if (!tcw.listPEG){
            return listPEG;
        }

        tcw.listPEG.forEach(peg => {
            listPEG.push({label : peg.Name, value : peg.Id});
        });

        return listPEG;
    }

    getPEDGroupList(tcw){
        let listPEDG = [];

        if (!tcw.listPEDG){
            return listPEDG;
        }

        tcw.listPEDG.forEach(peg => {
            listPEDG.push({label : peg.Name, value : peg.Id});
        });

        return listPEDG;
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
            //this.performDeleteSelectedTC();
            break;

            default:
                break;
        }
    }


    handleStatusAction(event){
		this.selectedTCW = null;

		for (let idx = 0; idx < this.uiw.listTCW.length; idx++) {
			if (this.uiw.listTCW[idx].index==event.detail.index){
				this.selectedTCW = this.uiw.listTCW[idx];
                this.selectedPrevTCW = JSON.parse(JSON.stringify(this.selectedTCW));        // To keep prev state to revert in case of async error.
                this.selectedTCW.tc.rio_ed__Status__c = event.detail.status;
				break;
			}
		}

		this.performSaveTCW();
	}

    handlePEGroupselection(event){
		this.selectedTCW = null;

		for (let idx = 0; idx < this.uiw.listTCW.length; idx++) {
			if (this.uiw.listTCW[idx].index==event.detail.index){
				this.selectedTCW = this.uiw.listTCW[idx];
                this.selectedPrevTCW = JSON.parse(JSON.stringify(this.selectedTCW));        // To keep prev state to revert in case of async error.
                this.selectedTCW.tc.rio_ed__PE_Group__c = event.detail.selectedId;
				break;
			}
		}
		this.performSaveTCW('rio_ed__PE_Group__c');
	}


    handlePEDGroupselection(event){
        this.selectedTCW = null;
        
		for (let idx = 0; idx < this.uiw.listTCW.length; idx++) {
			if (this.uiw.listTCW[idx].index==event.detail.index){
				this.selectedTCW = this.uiw.listTCW[idx];
                this.selectedPrevTCW = JSON.parse(JSON.stringify(this.selectedTCW));        // To keep prev state to revert in case of async error.
                this.selectedTCW.tc.rio_ed__PE_Discipline_Requirement_Group__c = event.detail.selectedId;
				break;
			}
		}

		this.performSaveTCW('rio_ed__PE_Discipline_Requirement_Group__c');
	}


    performSaveTCW(attribute){
        //console.log(' >> this.selectedTCW '+JSON.stringify(this.selectedTCW));
        if (this.selectedTCW==null){
            return;
        }

        let tcw2Send = {
            "index": this.selectedTCW.index,
            "message": "",
            "primaryRecordObjectType": "",
            "tc": {
              "rio_ed__Status__c": this.selectedTCW.tc.rio_ed__Status__c,
              "Id": this.selectedTCW.tc.Id
            }
          };

          if (attribute){
            tcw2Send.tc[attribute] = this.selectedTCW.tc[attribute];
          }

        this.showSpinner = true;
        //console.log(attribute+' --- '+this.selectedTCW[attribute]+' 2>> this.selectedTCW '+JSON.stringify(tcw2Send));
        saveTCW({tcwJSON : JSON.stringify(tcw2Send)})
        .then(tcw => {
            //console.log('updated>> '+JSON.stringify(tcw));

            // if(tcw.tc.rio_ed__Status__c=='Approved'){  // set selectability
            //     tcw
            // }

            this.showSpinner = false;

            this.refreshDataRows();
            // message toast - do we need?
            //this.dispatchEvent(new ShowToastEvent({ title: 'Success', message:'Approved Successfully', variant: 'success'}));
        })
        .catch(error => {
            //console.log('>>> Updated '+JSON.stringify(this.selectedTCW.tc));
            //console.log('>>> prev '+JSON.stringify(this.selectedPrevTCW.tc));
            //console.log(error);

            // revert to previous state of record
            for (let idx = 0; idx < this.uiw.listTCW.length; idx++) {
                // console.log(this.uiw.listTCW.length+' Attempting to set: '+this.selectedPrevTCW.index +' = '+this.uiw.listTCW[idx].index 
                // +'>>> '+(this.uiw.listTCW[idx].index==this.selectedPrevTCW.index)
                //  +' to '+JSON.stringify(this.selectedPrevTCW.tc));

                // console.log('>>> Update0-------------------- before IF ');
                if (this.uiw.listTCW[idx].index==this.selectedPrevTCW.index){
                    //console.log('>>> Updated1 ');
                    this.uiw.listTCW[idx] = this.selectedPrevTCW;
                    //console.log('>>> Updated2 '+this.selectedPrevTCW.tc.rio_ed__Status__c);
                    this.selectedTCW = this.selectedPrevTCW;
                    //console.log('>>> Updated3 '+this.selectedPrevTCW.tc.rio_ed__Status__c);
                    // this.uiw.listTCW[idx] = this.selectedPrevTCW.tc.rio_ed__PE_Discipline_Requirement_Group__c;
                    // this.uiw.listTCW[idx].tc.rio_ed__PE_Discipline_Requirement_Group__c = this.selectedPrevTCW.tc.rio_ed__PE_Group__c;
                    // this.uiw.listTCW[idx].tc.rio_ed__Status__c = this.selectedPrevTCW.tc.rio_ed__Status__c;
                    //console.log('>>> Updated '+JSON.stringify(this.uiw.listTCW));
                    break;
                }
            }
            this.handleErrorText(error, true);
            //console.log('>>> Updated4 '+this.selectedTCW.tc.rio_ed__Status__c);
            this.refreshDataRows();
            //this.handleError(error, `performSaveTCW()`);
        });
    }
    /*performSaveTCW(){
        //console.log('saved: '+JSON.stringify(this.tcw));
        this.showSpinner = true;
        
        saveTCW({tcwJSON : JSON.stringify(this.selectedTCW)})
        .then(tcwReturned => {
            //console.log('saved: '+JSON.stringify(tcw));
            this.showSpinner = false;

            this.dispatchEvent(
                new CustomEvent("savedtcw", { bubbles: true,
                    detail: {tcw : tcwReturned}
                })
            );
        })
        .catch(error => {
            this.showSpinner = false;
            this.handleError(error, `saveData`);
        });
    }*/


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

    get displayedStatusOptionValues(){
        //console.log('...........................................calling....');
        let listStatus = this.getValidStatuses(this.displayedSatuses);
        listStatus.unshift({label : 'All', value : 'All'});
        return listStatus;
    }

    get selectableStatusOptions(){
        return this.getValidStatuses(this.selectableSatuses, this.displayedStatusOptionValues);
    }

    get actionableStatusOptions(){
        return this.getValidStatuses(this.actionableStatuses);
    }


    //----------- Util functions --------------//
    getValidStatuses(statusString, fromList) {

        if (!(fromList)){
            fromList = ((this.uiw) && (this.uiw.listTCStatus)) ? this.uiw.listTCStatus : [];
        }

        let listStatuses = this.getListFromCommaseparatedString(statusString);
        
        //console.log('>> fromList: '+JSON.stringify(fromList));
        //console.log('>> this.picklistValues_Status: '+JSON.stringify(this.picklistValues_Status));
        //console.log('>> statusString: '+statusString +' listStatuses.length '+listStatuses.length);

        let listValidstatus = [];

        fromList.forEach(opt => {
            if(listStatuses.length==0 || listStatuses.includes(opt.value)){
                listValidstatus.push(opt);
            }
        });
        
        return listValidstatus;
    }
    
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

    handleErrorText(message, showToast) {
        //console.log('1  message: '+JSON.stringify(message));
        if ((message) && (message.body)){
            if (message.body.message){
                message = ''+JSON.stringify(message.body.message);
            }
            else{
                message = ''+JSON.stringify(message.body);
            }
            
            if (message!='' && message.includes('FIELD_CUSTOM_VALIDATION_EXCEPTION,')){
                message = message.split('FIELD_CUSTOM_VALIDATION_EXCEPTION,')[1];
            }
        }
        else{
            message = JSON.stringify(message);
        }
        

        if (message) {
            if (showToast){
                const event = new ShowToastEvent({
                    title: 'Error',
                    variant: 'error',
                    message: message
                    //,mode: 'sticky'
                });

                if (event){
                    this.dispatchEvent(event);
                }
                else{
                    alert(message);
                }
            }
            else{
                this.error = message;
            }
            
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