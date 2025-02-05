/**
 * @author 		WDCi (LKoh)
 * @date 		Jan 2022
 * @group 		Payment
 * @description	
 * 
 */

public with sharing class redu_PrePaymentInfo {
    
    @AuraEnabled
    public rio_ed__Student_Fee__c studentFee {set; get;}

    @AuraEnabled
    public rio_ed__Order__c order {set; get;}

    @AuraEnabled
    public String paId {set; get;}

    @AuraEnabled
    public String peId {set; get;}

    @AuraEnabled
    public String programCode {set; get;}

    @AuraEnabled
    public String paymentTrxId {set; get;}

    @AuraEnabled
    public String contactId {set; get;}

    @AuraEnabled
    public String paymentTrxUrl {set; get;}

    @AuraEnabled
    public Decimal paymentAmount {set; get;}

    @AuraEnabled
    public boolean isDeposit {set; get;}

    @AuraEnabled
    public boolean hasScholarship {set; get;}

    @AuraEnabled
    public String scholarshipInfo {set; get;}

    @AuraEnabled
    public Decimal tuitionAmount {set; get;}

    @AuraEnabled
    public Decimal mandatoryFeeAmount {set; get;}

    @AuraEnabled
    public Decimal housingFeeAmount {set; get;}
    
    @AuraEnabled
    public Decimal subTotal {set; get;}

    @AuraEnabled
    public Decimal scholarshipAmount {set; get;}

    @AuraEnabled
    public Decimal totalEstimatedCost {set; get;}

    @AuraEnabled
    public Decimal termPerYear {set; get;}

    @AuraEnabled
    public List<rio_ed__Funding_Allocation__c> fundingAllocations {set; get;}    

    @AuraEnabled
    public String housingFeeName {set; get;}
    
    public redu_PrePaymentInfo(){

        this.scholarshipInfo = '';
        this.hasScholarship = false;

        this.tuitionAmount = 0;
        this.mandatoryFeeAmount = 0;
        this.subTotal = 0;
        this.scholarshipAmount = 0;
        this.totalEstimatedCost = 0;
        this.housingFeeAmount = 0;
        this.housingFeeName = '';
    }

    public redu_PrePaymentInfo(rio_ed__Student_Fee__c studentFee){
        this();

        this.studentFee = studentFee;
        this.paId = studentFee.rio_ed__Program_Enrollment__r.rio_ed__ProgramApplication__c;
        this.peId = studentFee.rio_ed__Program_Enrollment__c;
        this.contactId = studentFee.rio_ed__Program_Enrollment__r.hed__Contact__c;

        if(!studentFee.Payment_Txns__r.isEmpty()){
            setPaymentInfo(studentFee.Payment_Txns__r);
        }
    }

    public redu_PrePaymentInfo(rio_ed__Order__c order){
        this();

        this.order = order;
        this.contactId = order.rio_ed__Contact__c;

        if(!order.Payment_Txns__r.isEmpty()){
            setPaymentInfo(order.Payment_Txns__r);
        }
    }

    public static String cleansedUrl(String paymentUrl){
        paymentUrl = paymentUrl.substringAfter('href="').substringBeforeLast('" target=');
        paymentUrl = paymentUrl.replace('&amp;', '&');

        return paymentUrl;
    }

    private void setPaymentInfo(List<AAkPay__Payment_Txn__c> paymentTxns){

        this.paymentTrxId = paymentTxns.get(0).Id;
        this.paymentTrxUrl = cleansedUrl(paymentTxns.get(0).AAkPay__Pay_Now__c);
        this.paymentAmount = paymentTxns.get(0).AAkPay__Amount__c;
    }
    
}