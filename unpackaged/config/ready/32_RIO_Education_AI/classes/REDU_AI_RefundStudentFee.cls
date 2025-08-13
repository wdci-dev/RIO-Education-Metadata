/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to generate Student Fee Refund with negative Fee Line
* @change-history
*/
global with sharing class REDU_AI_RefundStudentFee {

    @InvocableMethod(
        label='Processing Refunds'
        description='Generates Fee Line with negative amount for Refunds'
    )
    global static List<REDU_AI_InvocableResponse> refundStudentFee(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        Map<Integer, rio_ed__Fee_Line__c> newFeeLineMap = new Map<Integer, rio_ed__Fee_Line__c>();
        Map<Integer, Integer> newFeeLineToRequestCounterMap = new Map<Integer, Integer>();
        Map<Integer, REDU_AI_InvocableResponse> errResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();
        Integer newFeeLineCounter = 0;
        Integer requestCounter = 0;

        for (Request input : requests) {
            if (input.studentFeeId != null && input.amount != null) {

                // Create a negative Fee Line for the Student Fee
                rio_ed__Fee_Line__c newFeeLine = new rio_ed__Fee_Line__c(
                    rio_ed__Student_Fee__c = input.studentFeeId,
                    rio_ed__Other_Amount__c = -Decimal.valueOf(input.amount),
                    rio_ed__Other_Description__c = 'Refund for Student Fee'
                );

                newFeeLineMap.put(requestCounter, newFeeLine);
                newFeeLineToRequestCounterMap.put(newFeeLineCounter, requestCounter);
                newFeeLineCounter++;
            } else {
                // If the input is invalid, create an error response
                errResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Invalid Student Fee or Amount', ''));
            }
            requestCounter++;
        }

        // Insert the Fee Lines
        Set<Id> newFeeLineIds = new Set<Id>();
        if (!newFeeLineMap.isEmpty()) {
            newFeeLineCounter = 0;
            for (Database.SaveResult sr : Database.insert(newFeeLineMap.values(), false, AccessLevel.USER_MODE)) {
                if (!sr.isSuccess()) {
                    errResponseMap.put(newFeeLineToRequestCounterMap.get(newFeeLineCounter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Fee Line: ' + sr.getErrors()[0].getMessage(), ''));
                } else {
                    newFeeLineIds.add(sr.getId());
                }
                newFeeLineCounter++;
            }
        }

        // Query the inserted Fee Lines to get the Name of the Record using the query with binds method
        String flQuery = 'SELECT Id, Name, rio_ed__Student_Fee__c, rio_ed__Other_Amount__c' +
                        ' FROM rio_ed__Fee_Line__c' +
                        ' WHERE Id IN :flIds';

        Map<String, Object> sfBindParams = new Map<String, Object>{
            'flIds' => newFeeLineIds
        };
        Map<Id, rio_ed__Fee_Line__c> feeLineReMap = new Map<Id, rio_ed__Fee_Line__c>();
        for (rio_ed__Fee_Line__c fl : (List<rio_ed__Fee_Line__c>) Database.queryWithBinds(flQuery, sfBindParams, AccessLevel.USER_MODE)){
            feeLineReMap.put(fl.Id, fl);
        }

        requestCounter = 0;
        for (Request input : requests) {

            if (errResponseMap.containsKey(requestCounter)) {
                responses.add(errResponseMap.get(requestCounter));
            } else {
                // Return the new Fee Line details in the response
                if (newFeeLineMap.containsKey(requestCounter)) {
                    rio_ed__Fee_Line__c feeLine = feeLineReMap.get(newFeeLineMap.get(requestCounter).Id);
                    if (feeLine != null) {
                        responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(feeLine)));
                    }
                } else {
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Refund Fee Line not generated for Student Fee ID: ' + input.studentFeeId, ''));
                }
            }
            requestCounter++;
        }

        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='Student Fee ID'
        )
        global String studentFeeId;

        @InvocableVariable(
            required=true
            description='Amount to be refunded with negative Fee Line'
        )
        global String amount;
    }
}