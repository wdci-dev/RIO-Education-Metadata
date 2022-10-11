import { LightningElement, api, track } from 'lwc';
import getStudentLedger from '@salesforce/apex/redu_StudentLedgerSummaryController.getStudentLedger';

import SL_CONTACT_FIELD from '@salesforce/schema/redu_Student_Ledger__c.redu_Contact__c';
import SL_TOTAL_FEES_FIELD from '@salesforce/schema/redu_Student_Ledger__c.redu_Total_Fees__c'; 
import SL_NAME_FIELD from '@salesforce/schema/redu_Student_Ledger__c.Name'; 
import SL_TOTAL_PAYMENTS_FIELD from '@salesforce/schema/redu_Student_Ledger__c.redu_Total_Payments__c'; 
import SL_OUTSTANDING_AMOUNT_FIELD from '@salesforce/schema/redu_Student_Ledger__c.redu_Outstanding_Amount__c';

export default class ReduStudentLedgerSummary extends LightningElement {
    @api recordId;
    @api primaryRecordId;
    @track studentLedgerId;
    @track ledgerEntries;
    @track errors;

    slContactField = SL_CONTACT_FIELD;
    slTotalFeesField = SL_TOTAL_FEES_FIELD;
    slNameField = SL_NAME_FIELD;
    slTotalPaymentsField = SL_TOTAL_PAYMENTS_FIELD;
    slOutstandingAmountField = SL_OUTSTANDING_AMOUNT_FIELD;

    connectedCallback() {
        if (this.primaryRecordId=='!recordId') {
            this.primaryRecordId = this.recordId;
        }
        
        getStudentLedger({
            contactId: this.primaryRecordId
        })
            .then(studentLedger => {
                this.studentLedgerId = studentLedger.Id;
                this.errors = undefined;
            })
            .catch(error => {
                this.studentLedger = undefined;
                this.errors = error;
            });
    }
}