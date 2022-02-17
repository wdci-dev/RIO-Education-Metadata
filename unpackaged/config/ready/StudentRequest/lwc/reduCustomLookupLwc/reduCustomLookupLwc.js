/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 04-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { LightningElement, api } from 'lwc';

//Labels
import loading from '@salesforce/label/rio_ed.Loading';
import searchLabel from '@salesforce/label/rio_ed.Search';
import removeLabel from '@salesforce/label/rio_ed.Remove';
import placeholderLabel from '@salesforce/label/rio_ed.Custom_Lookup_Placeholder';
import noResultsLabel from '@salesforce/label/rio_ed.Custom_Lookup_No_Results';

//Apex Methods
import controllerGetLookupValues from '@salesforce/apex/redu_CustomLookupController_LCTRL.getLookUpValues';
import controllerGetLookupValuesCustom from '@salesforce/apex/redu_CustomLookupController_LCTRL.getLookUpValuesCustom';
import controllerGetInitialValue from '@salesforce/apex/redu_CustomLookupController_LCTRL.getInitialValue';

export default class ReduCustomLookupLwc extends LightningElement {

    // ================= Labels ===========================
    label = {
        loading, searchLabel, removeLabel, placeholderLabel, noResultsLabel
    };
    // ====================================================

    
    @api recordDisplayFields="Name";
    @api displayFieldExpr="Name";
    @api displaySubTextExpr="Name";
    @api showSubTextInList;
    @api listOfSearchRecords;
    @api searchKeyWord = "";
    @api objectApiName;
    @api fieldsToSearch = "Id, Name";
    @api iconName;
    @api fieldLabel = "";
    @api required;
    @api initRecordId;
    @api searchFieldPlaceholder = this.label.placeholderLabel;
    //Custom query attributes
    @api getLookUpValuesCustom = false;
    @api customQuery;
    @api objectToFieldsMap;
    @api doNotRetainValue = false;
    @api showDefaultRecords = false;
    
    selectedRecord = null;
    message;
    showingSpinner = false;
    spanningClassOpen = "slds-form-element slds-lookup slds-is-open";
    spanningClassClose = "slds-form-element slds-lookup slds-is-close";
    spanningClass = this.spanningClassClose;

    connectedCallback(){
        this.handleInitRecordId();
        //console.log('runing '+this.fieldLabel+' id: '+this.initRecordId);
    }

    onFocus(){
        if (this.showDefaultRecords){
            this.spanningClass = this.spanningClassOpen;
            // Get Default 5 Records order by createdDate DESC  
            var getInputkeyWord = '';

            if (this.searchKeyWord){
                getInputkeyWord = this.searchKeyWord;
            }

            this.searchHelper(getInputkeyWord);
        }
        else{
            if (this.searchKeyWord){
                this.searchHelper(this.searchKeyWord);
            }
        }
    }

    keyPressController(event){
        this.searchKeyWord = event.target.value;
        // get the search Input keyword   
        let getInputkeyWord = this.searchKeyWord;
        // check if getInputKeyWord size id more then 0 then open the lookup result List and 
        // call the helper 
        // else close the lookup result List part.   
        if (getInputkeyWord && getInputkeyWord.length > 0){
            this.spanningClass = this.spanningClassOpen;
            this.searchHelper(getInputkeyWord);
        } else {  
            this.listOfSearchRecords = null; 
            this.spanningClass = this.spanningClassClose;
            this.dispatchEvent(new CustomEvent("searchcomplete", {detail: {recordCount : 0 }}));
        }
        
    }
     
    // function for clear the Record Selaction 
    @api 
    clear(){
        this.searchKeyWord = null;
        this.listOfSearchRecords = null;
        this.selectedRecord = null;

        //Send value to containing component
        this.sendRecord();
    }
     
    // Called when a user selects from the dropdown list
    handleComponentEvent(event) {
        //console.log('selection done: '+JSON.stringify(event.detail));
        // get the selected record from the event 	 
        let selectedRecordFromEvent = event.detail;
        if (!this.doNotRetainValue)
            this.selectedRecord = selectedRecordFromEvent; 
        else
            this.searchKeyWord = "";
        
        this.spanningClass = this.spanningClassClose;

        //Send value to containing component
        this.sendRecord();
    }

    // Automically hide loading spinner when the component is done waiting for a response to a server request.  
    hideSpinner(){
        showingSpinner = false;
    }
    // Automically hide loading spinner when the component is waiting for a response to a server request.  
    showSpinner(){
        showingSpinner = true;
    }
    
    handleInitRecordId(){
        var recordId = this.initRecordId;
        if (recordId && recordId != ""){
            this.initRecordIdHelper(recordId);
        }
    }

    onBlur(){
        //console.log("called onBlur()");
        this.listOfSearchRecords = null; 
        this.spanningClass = this.spanningClassClose;
    }

    get hasSelectedRecord(){
        return this.selectedRecord != null;
    }

    get selectionListCSS(){
        return "slds-listbox slds-listbox_vertical slds-dropdown slds-dropdown_fluid slds-lookup__menu slds";

        /*if ((this.message) && this.message!=''){
            return "slds-listbox slds-listbox_vertical slds-dropdown slds-dropdown_fluid slds-lookup__menu slds";
        }
        else{
            return "slds";
        }*/
    }

    searchHelper(getInputkeyWord) {
        

        //timeoutId used to delay controller query until user has stopped typing
        clearTimeout(this.delayTimeout);
        this.delayTimeout = setTimeout( () => {

            //Call the apex controller method
            if (!this.getLookUpValuesCustom){

                controllerGetLookupValues({searchKeyWord: getInputkeyWord, objectName: this.objectApiName, fields: this.fieldsToSearch})
                .then(result => {
                    let storeResponse = result;
                    let listRecs = [];
                    //If no results are found, show a no result message
                    if (storeResponse.length == 0) {
                        this.message = this.label.noResultsLabel;
                    } else {

                        storeResponse.forEach(rec => {
                            let o = {...rec, displayText : ''};
                            o.displayText = this.getDisplayText(rec);

                            if (this.showSubTextInList){
                                o.displaySubText = this.getDisplaySubText(rec);
                            }
                            
                            listRecs.push(o);
                        });

                        this.message = "";
                    }
                    //Set searchResult list with return value from server.
                    this.listOfSearchRecords = listRecs;
                    this.dispatchEvent(new CustomEvent("searchcomplete", {detail: {recordCount : this.listOfSearchRecords.length }}));
                })
                .catch(error => {
                    console.error(error);
                });
                
            } else {
                controllerGetLookupValuesCustom({searchKeyWord: getInputkeyWord, objectToFieldsMap: this.objectToFieldsMap, customQuery: this.customQuery})
                .then(result => {
                    
                    let listRecs = [];
                    let storeResponse = result;
                    //If no results are found, show a no result message
                    if (storeResponse.length == 0) {
                        this.message = this.label.noResultsLabel;
                    } else {
                        this.message = "";

                        storeResponse.forEach(rec => {
                            let o = {...rec, displayText : ''};
                            o.displayText = this.getDisplayText(rec);

                            if (this.showSubTextInList){
                                o.displaySubText = this.getDisplaySubText(rec);
                            }

                            listRecs.push(o);
                        });
                    }
                    //Set searchResult list with return value from server.
                    this.listOfSearchRecords = listRecs;
                    this.dispatchEvent(new CustomEvent("searchcomplete", {detail: {recordCount : this.listOfSearchRecords.length, typedText : getInputkeyWord}}));
                })
                .catch(error => {
                    console.error(error);
                });
                
            }

            //Delay by .3 seconds
        }, 300);
    }
    
    initRecordIdHelper(recordId){
        //Call the apex controller method
        controllerGetInitialValue({recordId: recordId, objectName: this.objectApiName, fields: this.fieldsToSearch})
        .then(result => {
            let returnedRecord = result;
            //If no results are found, show a no result message
            if (returnedRecord != null) {
                if (!this.doNotRetainValue){
                    this.selectedRecord = {...returnedRecord, displayText : ''};//returnedRecord;
                    this.selectedRecord.displayText = this.getDisplayText(this.selectedRecord);
                }
                else
                    this.searchKeyWord = "";

                this.spanningClass = this.spanningClassClose;
            }
        })
        .catch(error => {
            console.error(error);
        });

    }

    getDisplayText(recordObj){
        //let fieldExpr = this.displayFieldExpr;
       
        return this.getExtractedValueFromExpr(recordObj, this.displayFieldExpr);
        
        /*if ((recordObj) && (this.recordDisplayFields)){
            this.recordDisplayFields.split(',').forEach(fld => {
                fld = fld.trim();
                fieldExpr = fieldExpr.replace(fld,this.resolve(recordObj,fld));
                //console.log(' fld '+fld+'  fieldExpr '+fieldExpr);
            });
        }*/

        return fieldExpr;
    }

    getDisplaySubText(recordObj){
        return this.getExtractedValueFromExpr(recordObj, this.displaySubTextExpr);
    }

    getExtractedValueFromExpr(recordObj, fieldExprVal){
        let fieldExpr = fieldExprVal;

        if ((recordObj) && (this.recordDisplayFields)){
            this.recordDisplayFields.split(',').forEach(fld => {
                fld = fld.trim();
                fieldExpr = fieldExpr.replace(fld,this.resolve(recordObj,fld));
            });
        }

        return fieldExpr;
    }

    resolve(obj, path) {
        return path.split('.').reduce(function(prev, curr) {
            return prev ? prev[curr] : null
        }, obj || self)
    }

    sendRecord(){
        var selectedEvent = new CustomEvent("change", {
            detail: this.selectedRecord
        });
        this.dispatchEvent(selectedEvent);
    }

}