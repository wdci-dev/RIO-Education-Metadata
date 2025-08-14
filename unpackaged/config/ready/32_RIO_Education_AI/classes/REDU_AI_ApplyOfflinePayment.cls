/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to Apply Offline Payments to Student Fee record
* @change-history
*/
global with sharing class REDU_AI_ApplyOfflinePayment {

    private static final String FEEPAYMENT_TRANSTYPE_PAYMENT = 'Payment';
    private static final String FEEPAYMENT_PAYSOURCE_MANUAL = 'Manual';

    @InvocableMethod(
        label='Apply Offline Payment'
        description='Generates Fee Payment for the specified amount based on the specified Contact and Term'
    )
    global static List<REDU_AI_InvocableResponse> addStudentFee(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        Map<Integer, REDU_AI_InvocableResponse> errResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();

        // Find the Primary Student Fee using Contact ID and Term ID
        Set<Id> contactIds = new Set<Id>();
        Set<Id> termIds = new Set<Id>();
        for (Request req : requests) {
            contactIds.add(req.contactId);
            termIds.add(req.termId);
        }

        // Query the rio_ed__Student_Fee__c records based on the contact Ids and term Ids
        String sfQuery = 'SELECT Id, rio_ed__Contact_Id__c, rio_ed__PE_Pathway__r.rio_ed__Term__c,' +
                        ' rio_ed__Program_Enrollment__r.hed__Contact__r.rio_ed__International_Student__c' +
                        ' FROM rio_ed__Student_Fee__c' +
                        ' WHERE rio_ed__Contact_Id__c IN :contactIds' +
                        ' AND rio_ed__PE_Pathway__r.rio_ed__Term__c IN :termIds'+
                        ' ORDER BY rio_ed__Main_Term_Student_Fee__c DESC';

        Map<String, Object> sfBindParams = new Map<String, Object>{
            'contactIds' => contactIds,
            'termIds' => termIds
        };
        Map<String, rio_ed__Student_Fee__c> studentFeeMap = new Map<String, rio_ed__Student_Fee__c>();
        for(rio_ed__Student_Fee__c sf : (List<rio_ed__Student_Fee__c>) Database.queryWithBinds(sfQuery, sfBindParams, AccessLevel.USER_MODE)){
            String mapKey = sf.rio_ed__Contact_Id__c + ':' + sf.rio_ed__PE_Pathway__r.rio_ed__Term__c;
            if (!studentFeeMap.containsKey(mapKey)) {
                studentFeeMap.put(mapKey, sf);
            }
        }

        // Process each request and construct the Fee Payment record
        Map<Integer, rio_ed__Fee_Payment__c> feePaymentMap = new Map<Integer, rio_ed__Fee_Payment__c>();
        List<rio_ed__Fee_Payment__c> feePayments = new List<rio_ed__Fee_Payment__c>();
        Map<Integer, Integer> feePaymentToRequestCounterMap = new Map<Integer, Integer>();

        Integer requestCounter = 0;
        Integer feePaymentCounter = 0;

        for (Request req : requests) {

            String mapKey = req.contactId + ':' + req.termId;

            if (studentFeeMap.containsKey(mapKey)) {
                rio_ed__Student_Fee__c studentFee = studentFeeMap.get(mapKey);
                if (studentFee != null) {
                    // Create a new Fee Payment record
                    rio_ed__Fee_Payment__c feePayment = new rio_ed__Fee_Payment__c();
                    feePayment.rio_ed__Student_Fee__c = studentFee.Id;
                    feePayment.rio_ed__Transaction_Type__c = FEEPAYMENT_TRANSTYPE_PAYMENT;
                    feePayment.rio_ed__Payment_Source__c = FEEPAYMENT_PAYSOURCE_MANUAL;
                    feePayment.rio_ed__Payment_Date__c = System.today();
                    feePayment.rio_ed__Payment_Amount__c = Decimal.valueOf(req.paymentAmount);
                    feePayments.add(feePayment);

                    feePaymentMap.put(requestCounter, feePayment);
                    feePaymentToRequestCounterMap.put(feePaymentCounter, requestCounter);
                    feePaymentCounter++;
                }
            }
            requestCounter++;
        }

        // Insert the Fee Payment records
        if (!feePayments.isEmpty()) {
            try {
                // Replace the standard insert with a custom method to handle access level
                // insert feePayments;

                Integer counter = 0;
                for (Database.SaveResult sr : Database.insert(feePayments, false, AccessLevel.USER_MODE)) {
                    if (!sr.isSuccess()) {
                        errResponseMap.put(feePaymentToRequestCounterMap.get(counter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Fee Line: ' + sr.getErrors()[0].getMessage(), ''));
                    }
                    counter++;
                }

                // Requery Fee Payment records to get the Name of the Records
                String feePaymentReQuery = 'SELECT Id, Name, rio_ed__Student_Fee__c, rio_ed__Transaction_Type__c,' +
                                            ' rio_ed__Payment_Amount__c, rio_ed__Payment_Date__c, rio_ed__Payment_Source__c' +
                                            ' FROM rio_ed__Fee_Payment__c' +
                                            ' WHERE Id IN :feePayments';

                Map<String, Object> feePaymentReBindParams = new Map<String, Object>{
                    'feePayments' => feePayments
                };
                Map<Id, rio_ed__Fee_Payment__c> feePaymentReMap = new Map<Id, rio_ed__Fee_Payment__c>();
                for(rio_ed__Fee_Payment__c feePayment : (List<rio_ed__Fee_Payment__c>) Database.queryWithBinds(feePaymentReQuery, feePaymentReBindParams, AccessLevel.USER_MODE)) {
                    feePaymentReMap.put(feePayment.Id, feePayment);
                }

                requestCounter = 0;
                for (Request req : requests) {

                    if (errResponseMap.containsKey(requestCounter)) {
                        responses.add(errResponseMap.get(requestCounter));
                        requestCounter++;
                        continue;
                    } else if (!feePaymentMap.containsKey(requestCounter)) {
                        responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Fee Payment not found for Contact ID: ' + req.contactId + ' and Term ID: ' + req.termId, ''));
                        requestCounter++;
                        continue;
                    } else {
                        rio_ed__Fee_Payment__c feePayment = feePaymentReMap.get(feePaymentMap.get(requestCounter).Id);
                        Map<String, Object> responseJSON = new Map<String, Object>();
                        responseJSON.put('resp', feePayment);
                        responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
                    }

                    requestCounter++;
                }
            } catch (DmlException e) {
                for (Request req : requests) {
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error inserting Fee Payment: ' + e.getMessage(), ''));
                }
            }
        } else {
            for (Request req : requests) {
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No matching Student Fee found for Contact ID: ' + req.contactId + ' and Term ID: ' + req.termId, ''));
            }
        }

        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='Contact ID'
        )
        global String contactId;

        @InvocableVariable(
            required=true
            description='Term ID'
        )
        global String termId;

        @InvocableVariable(
            required=true
            description='Payment Amount'
        )
        global String paymentAmount;
    }
}