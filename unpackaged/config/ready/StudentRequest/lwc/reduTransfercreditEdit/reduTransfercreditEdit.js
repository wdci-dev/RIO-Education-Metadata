/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 04-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/
import { api, LightningElement, wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import saveTCW from '@salesforce/apex/redu_TransferCreditList_LCTRL.saveTCW';
import AGREEMENT_COURSE_OBJECT from '@salesforce/schema/rio_ed__Agreement_Course__c';
import TRANSFER_CREDIT_OBJECT from '@salesforce/schema/rio_ed__Transfer_Credit__c';

//labels
import loading from '@salesforce/label/rio_ed.Loading';
import close from '@salesforce/label/rio_ed.Close';
import undefinedLabel from '@salesforce/label/rio_ed.Undefined';
import editLabel from '@salesforce/label/rio_ed.Edit';
import errorLabel from '@salesforce/label/rio_ed.Error';
import unknownErrorLabel from '@salesforce/label/rio_ed.Unknown_Error';
import cancelLabel from '@salesforce/label/rio_ed.Cancel';
import loadingDataText from '@salesforce/label/rio_ed.Session_Scheduler_Loading_data'
import cancel from '@salesforce/label/rio_ed.Cancel';
import save from '@salesforce/label/rio_ed.Save';

export default class ReduTransfercreditEdit extends LightningElement {
    @api modalHeaderText;
    @api showClose;
    @api sourceTcw;
    @api allowCreateAgreement;
    @api allowCreateAgreementCourse;
    @api instituteLabel;                                        // Institute label
    @api instituteIconName='utility:company';                   // Institute Icon Name
    @api courseIconName='utility:text';                         // Course Icon Name
    @api numberOfLookupInstitutes;                      // Number of Institutes to be dieplayed in lookup
    @api numberOfLookupCourses;                         // Number of Courses to be dieplayed in lookup
    @api showDefaultCourseList;
    @api showDefaultInstituteList;

    showSpinner = false;
    error = false;
    
    tcw;

    otherAgreement = false;
    countOfInstituteRecords = 0;
    countOfCourseRecords = 0;

    transferCourseIdLabel = '';
    transferCourseTitleLabel = '';
    transferCreditObjectLabel = '';
    transferCourseCreditsAttemptedLabel = '';
    transferCourseCreditsEarnedLabel = '';
    transferCourseGradeLabel = '';
    transferCourseCompletedDateLabel = '';
    transferCourseStartDateLabel = '';
    transferCourseTermLabel = '';
    
    label = {
        loading, close, editLabel, undefinedLabel, loadingDataText, errorLabel, unknownErrorLabel,cancel,save
    };
    @wire(getObjectInfo, { objectApiName: AGREEMENT_COURSE_OBJECT })
    AgreementCourseObjInfo({ data, error }) {
        if (data){
            this.transferCourseIdLabel = data.fields.rio_ed__Transfer_Course_ID__c.label;
            this.transferCourseTitleLabel = data.fields.rio_ed__Transfer_Course_Title__c.label;
        }
    }
    @wire(getObjectInfo, { objectApiName: TRANSFER_CREDIT_OBJECT })
    TrCreditObjInfo({ data, error }) {
        if (data){
            this.transferCreditObjectLabel = data.label;
            this.transferCourseCreditsAttemptedLabel = data.fields.rio_ed__Credits_Attempted__c.label;
            this.transferCourseCreditsEarnedLabel = data.fields.rio_ed__Credits_Earned__c.label;
            this.transferCourseGradeLabel = data.fields.rio_ed__Grade__c.label;
            this.transferCourseCompletedDateLabel = data.fields.rio_ed__Completed_Date__c.label;
            this.transferCourseStartDateLabel = data.fields.rio_ed__Start_Date__c.label;
            this.transferCourseTermLabel = data.fields.rio_ed__Term__c.label;
        }
    }

    connectedCallback(){
        //this.tcw = {...this.sourceTcw};
        this.allowCreateAgreement = (this.allowCreateAgreement==true || this.allowCreateAgreement=='true');
        this.allowCreateAgreementCourse = (this.allowCreateAgreementCourse==true || this.allowCreateAgreementCourse=='true') || this.allowCreateAgreement;

        if (this.sourceTcw){
            this.tcw =JSON.parse(JSON.stringify(this.sourceTcw));
        }

        
        //console.log('new TC'+JSON.stringify(this.tcw));
        this.setCourseTitleEditability();

        if (!this.instituteIconName && this.instituteIconName!=''){
            this.instituteIconName = 'utility:company';
        }
        if (!this.courseIconName && this.courseIconName!=''){
            this.courseIconName = 'utility:text';
        }

        this.setInstituteLookupQuery();
    }

    customQueryInstitute = "Select Id, Name FROM rio_ed__Agreement__c WHERE Id = null"; // "Select Id, Name FROM rio_ed__Agreement__c WHERE (Name LIKE: searchKey OR rio_ed__Partner_External_Educational_Institution__r.Name LIKE: searchKey) ORDER BY Name DESC LIMIT 5";
    customQueryCourse = "Select Id, rio_ed__Transfer_Course_ID__c,rio_ed__Transfer_Course_Title__c FROM rio_ed__Agreement_Course__c WHERE Id = null";

    handleCancelClick(event){
        
        this.dispatchEvent(
            new CustomEvent("cancel", { bubbles: true,
                detail: {}
            })
        );

    }

    handleSaveClick(event){
        this.error=false;
        let errors = '';
        //console.log('this.allowCreateAgreement '+(this.allowCreateAgreement));
        //console.log((this.allowCreateAgreementCourse!==true)+' /// this.allowCreateAgreementCourse '+this.allowCreateAgreementCourse+'  ||| course '+JSON.stringify(this.tcw.tc.rio_ed__Transfer_Course__r));
        if ((!this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name) || (this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name=='')){
            errors+=' ● '+ this.instituteLabel +' is required.';
        }
        else if (this.allowCreateAgreement!==true && ((!this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id) || this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id==null)){
            errors+=' ● '+ this.instituteLabel +' must be selected.';
        }

        if ((!this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c) || (this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c=='')){
            errors+=' ● '+ this.transferCourseIdLabel +' is required.';
        }
        else if (this.allowCreateAgreementCourse!==true && this.tcw.tc.rio_ed__Transfer_Course__r.Id==null){
            errors+=' ● '+ this.transferCourseIdLabel +' must be selected.';
        }


        if ((!this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c) || (this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c=='')){
            errors+=' ● '+ this.transferCourseTitleLabel +' is required.';
        }

 

        if (errors=='')
            this.performSaveTCW();
        else
            this.error = errors;
    }

    performSaveTCW(){
        //console.log('saved: '+JSON.stringify(this.tcw));
        this.showSpinner = true;
        
        saveTCW({tcwJSON : JSON.stringify(this.tcw)})
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
    }


    onSearchCompleteInstitute(event){
        //console.log('>> event.detail '+JSON.stringify(event.detail));
        this.countOfInstituteRecords = event.detail.recordCount;
        //if (event.detail.typedText)
        this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name = event.detail.typedText;
        //console.log('inst: '+event.detail.typedText);
    }

    onSearchCompleteCourse(event){
        //console.log('>> course event.detail '+JSON.stringify(event.detail));
        this.countOfCourseRecords = event.detail.recordCount;
        //if (event.detail.typedText)
        this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c = event.detail.typedText;
        //console.log('course: '+event.detail.typedText);
    }

    matchExists = true;

    setCourseTitleEditability(){
        if ((this.tcw) && (this.tcw.tc) && (this.tcw.tc.rio_ed__Transfer_Course__c==null)){
            this.matchExists = false;
        }
        else{
            this.matchExists = true;
        }
    }

	saveInputs2Objects(event){
        //console.log('event.target.name '+event.target.name);
        //console.log('event.target.value '+event.target.value);
        let val = event.target.value;

        switch (event.target.name) {
            case "rio_ed__Transfer_Course_Title__c":
                this.tcw.tc.rio_ed__Transfer_Course__r[event.target.name] = val;
                break;
            /*case "creditsAttempted":
                this.tcw.tc.rio_ed__Credits_Attempted__c = val;
                break;
            case "creditsEarned":
                this.tcw.tc.rio_ed__Credits_Earned__c = val;
                break;
            case "grade":
                this.tcw.tc.rio_ed__Grade__c = val;
                break;*/
            default:
                this.tcw.tc[event.target.name] = val;
                break;
        }
    }

    handleLookupInstituteChange(event){

        if (event.detail){
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__c = event.detail.Id;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id = event.detail.Id;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name = event.detail.Name;
        }
        else{
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__c = null;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Id = null;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__r.Name = '';
        }

        this.setCourseLookupQuery();
        
        if (this.tcw.tc.rio_ed__Transfer_Course__r.Id!=null){
            this.tcw.tc.rio_ed__Transfer_Course__c = null;
            this.tcw.tc.rio_ed__Transfer_Course__r.Id = null;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c = '';
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c = '';
        }
        this.template.querySelector("c-redu-custom-lookup-lwc[data-name='course']").clear();
        this.setCourseTitleEditability();
    }

    setInstituteLookupQuery(){
        let query = "Select Id, Name FROM rio_ed__Agreement__c WHERE (Name LIKE: searchKey OR rio_ed__Partner_External_Educational_Institution__r.Name LIKE: searchKey) ORDER BY Name";
        
        if ((this.numberOfLookupInstitutes) && this.numberOfLookupInstitutes > 0){
            query += " LIMIT "+this.numberOfLookupInstitutes;
        }
        else{
            query += " LIMIT 5";
        }

        this.customQueryInstitute = query;
    }

    setCourseLookupQuery(){
        let query = "Select Id, rio_ed__Transfer_Course_ID__c,rio_ed__Transfer_Course_Title__c FROM rio_ed__Agreement_Course__c WHERE ";

        if ((this.tcw) && (this.tcw.tc) && (this.tcw.tc.rio_ed__Transfer_Course__r) && (this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__c)){
            query+=" (rio_ed__Agreement__c = '"+this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Agreement__c+"' ) ";
        }
        else{
            query+=" ( Id = null ) "; 
        }
        query+=" AND (rio_ed__Transfer_Course_ID__c LIKE: searchKey OR rio_ed__Transfer_Course_Title__c LIKE: searchKey) ";
        query+=" ORDER BY rio_ed__Transfer_Course_ID__c,rio_ed__Transfer_Course_Title__c DESC LIMIT 5";

        this.customQueryCourse = query;
    }

    handleLookupCourseChange(event){
        //console.log('cou event detail: '+JSON.stringify(event.detail));

        if (event.detail){
            this.tcw.tc.rio_ed__Transfer_Course__c = event.detail.Id;
            this.tcw.tc.rio_ed__Transfer_Course__r.Id = event.detail.Id;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c = event.detail.rio_ed__Transfer_Course_ID__c;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c = event.detail.rio_ed__Transfer_Course_Title__c;
        }
        else{
            this.tcw.tc.rio_ed__Transfer_Course__c = null;
            this.tcw.tc.rio_ed__Transfer_Course__r.Id = null;
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_ID__c = '';
            this.tcw.tc.rio_ed__Transfer_Course__r.rio_ed__Transfer_Course_Title__c = '';
        }
        //console.log('tcw>> '+JSON.stringify(this.tcw.tc));
        this.setCourseLookupQuery();
        this.setCourseTitleEditability();
    }

    errorCallback(error, stack) {

        this.handleError(error, 'reduTransferCreditEdit()->errorCallBack()');
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
}