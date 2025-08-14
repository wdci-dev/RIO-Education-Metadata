/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to Clone Fees for New Term
* @change-history
*/
global with sharing class REDU_AI_CloneFeeForNewTerm {

    @InvocableMethod(
        label='Clone Fees for New Term'
        description='Clone Fee Schedule Term from an Existing Term'
    )
    global static List<REDU_AI_InvocableResponse> cloneFeeForNewTerm(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        Set<Id> existingTermIds = new Set<Id>();
        for (Request req : requests) {
            existingTermIds.add(req.existingTermId);
        }

        // Retrieve all the Fee Schedule Terms associated with the Request's existingTermId

        // Create a map to store the Fee Schedule Terms by their existing Term ID
        String fstQuery = 'SELECT Id, rio_ed__Fee_Schedule__c, rio_ed__Term__c' +
                        ' FROM rio_ed__Fee_Schedule_Term__c' +
                        ' WHERE rio_ed__Term__c IN :existingTermIds';

        Map<String, Object> fstBindParams = new Map<String, Object>{
            'existingTermIds' => existingTermIds
        };
        Map<Id, List<rio_ed__Fee_Schedule_Term__c>> feeScheduleTermMap = new Map<Id, List<rio_ed__Fee_Schedule_Term__c>>();
        for(rio_ed__Fee_Schedule_Term__c fst : (List<rio_ed__Fee_Schedule_Term__c>) Database.queryWithBinds(fstQuery, fstBindParams, AccessLevel.USER_MODE)){
            if (!feeScheduleTermMap.containsKey(fst.rio_ed__Term__c)) {
                // Initialize the list for this Term ID
                List<rio_ed__Fee_Schedule_Term__c> feeScheduleTermList = new List<rio_ed__Fee_Schedule_Term__c>();
                feeScheduleTermList.add(fst);
                feeScheduleTermMap.put(fst.rio_ed__Term__c, feeScheduleTermList);
            } else {
                // Add to the existing list for this Term ID
                feeScheduleTermMap.get(fst.rio_ed__Term__c).add(fst);
            }
        }

        Set<Id> newFeeScheduleTermsIdSet = new Set<Id>();
        List<rio_ed__Fee_Schedule_Term__c> newFeeScheduleTermList = new List<rio_ed__Fee_Schedule_Term__c>();

        Map<Integer, List<rio_ed__Fee_Schedule_Term__c>> counterToFeeScheduleTermListMap = new Map<Integer, List<rio_ed__Fee_Schedule_Term__c>>();
        Map<Integer, Integer> feeScheduleTermToRequestCounterMap = new Map<Integer, Integer>();
        Map<Integer, REDU_AI_InvocableResponse> errResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();

        Integer requestCounter = 0;
        Integer feeScheduleTermCounter = 0;

        for (Request req : requests) {

            // Check if the existing Term ID has any Fee Schedule Terms
            if (feeScheduleTermMap.containsKey(req.existingTermId)) {

                List<rio_ed__Fee_Schedule_Term__c> feeScheduleTermList = feeScheduleTermMap.get(req.existingTermId);
                for (rio_ed__Fee_Schedule_Term__c feeScheduleTerm : feeScheduleTermList) {
                    // Clone the Fee Schedule Term and set the new Term ID
                    rio_ed__Fee_Schedule_Term__c newFeeScheduleTerm = feeScheduleTerm.clone(false, true);
                    newFeeScheduleTerm.rio_ed__Term__c = req.newTermId;

                    if (!counterToFeeScheduleTermListMap.containsKey(requestCounter)) {
                        // Initialize the list for this request counter
                        List<rio_ed__Fee_Schedule_Term__c> newFeeScheduleTermMapList = new List<rio_ed__Fee_Schedule_Term__c>();
                        newFeeScheduleTermMapList.add(newFeeScheduleTerm);
                        counterToFeeScheduleTermListMap.put(requestCounter, newFeeScheduleTermMapList);
                    } else {
                        // Add to the existing list for this request counter
                        counterToFeeScheduleTermListMap.get(requestCounter).add(newFeeScheduleTerm);
                    }

                    feeScheduleTermToRequestCounterMap.put(feeScheduleTermCounter, requestCounter);
                    newFeeScheduleTermList.add(newFeeScheduleTerm);
                    feeScheduleTermCounter++;
                }
            } else {
                errResponseMap.put(requestCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No Fee Schedule Terms found for existing Term ID: ' + req.existingTermId, ''));
            }
            requestCounter++;
        }

        if (newFeeScheduleTermList.size() > 0) {
            // Insert the new Fee Schedule Terms
            try {

                feeScheduleTermCounter = 0;
                for (Database.SaveResult sr : Database.insert(newFeeScheduleTermList, false, AccessLevel.USER_MODE)) {
                    if (!sr.isSuccess()) {
                        errResponseMap.put(feeScheduleTermToRequestCounterMap.get(feeScheduleTermCounter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Fee Line: ' + sr.getErrors()[0].getMessage(), ''));
                    } else {
                        // Add the new Fee Schedule Term ID to the set
                        newFeeScheduleTermsIdSet.add(sr.getId());
                    }
                    feeScheduleTermCounter++;
                }

                // Requery the Fee Schedule Terms to get the Name of the Records
                String newFSTQuery = 'SELECT Id, Name, rio_ed__Fee_Schedule__c, rio_ed__Term__c' +
                        ' FROM rio_ed__Fee_Schedule_Term__c' +
                        ' WHERE Id IN :newFeeScheduleTermsIdSet';

                Map<String, Object> newFSTBindParams = new Map<String, Object>{
                    'newFeeScheduleTermsIdSet' => newFeeScheduleTermsIdSet
                };

                Map<String, rio_ed__Fee_Schedule_Term__c> updatedNewFSTMap = new Map<String, rio_ed__Fee_Schedule_Term__c>();
                for(rio_ed__Fee_Schedule_Term__c fst : (List<rio_ed__Fee_Schedule_Term__c>) Database.queryWithBinds(newFSTQuery, newFSTBindParams, AccessLevel.USER_MODE)) {
                    updatedNewFSTMap.put(fst.Id, fst);
                }

                requestCounter = 0;
                for (Request req : requests) {

                    if (errResponseMap.containsKey(requestCounter)) {
                        responses.add(errResponseMap.get(requestCounter));
                        requestCounter++;
                        continue;
                    }

                    if (!counterToFeeScheduleTermListMap.containsKey(requestCounter)) {
                        responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No Fee Schedule Terms found for existing Term ID: ' + req.existingTermId, ''));
                        requestCounter++;
                        continue;
                    }

                    List<rio_ed__Fee_Schedule_Term__c> feeScheduleTermList = counterToFeeScheduleTermListMap.get(requestCounter);
                    List<rio_ed__Fee_Schedule_Term__c> feeScheduleTermReList = new List<rio_ed__Fee_Schedule_Term__c>();
                    for (rio_ed__Fee_Schedule_Term__c fst : feeScheduleTermList) {
                        // Update the Fee Schedule Term with the Name from the requery
                        if (updatedNewFSTMap.containsKey(fst.Id)) {
                            feeScheduleTermReList.add(updatedNewFSTMap.get(fst.Id));
                        }
                    }

                    // Create Response with the cloned Fee Schedule Terms and the Requeried Fee Schedule Terms
                    Map<String, Object> responseJSON = new Map<String, Object>();
                    responseJSON.put('resp', feeScheduleTermReList);
                    responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));

                    requestCounter++;
                }
            } catch (DmlException e) {
                for (Request req : requests) {
                    responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error cloning Fee Schedule Terms for Term ID: ' + req.newTermId + ' - ' + e.getMessage(), ''));
                }
            }
        } else {
            for (Request req : requests) {
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No Fee Schedule Terms found for existing Term ID: ' + req.existingTermId, ''));
            }
        }

        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='New Term ID'
        )
        global String newTermId;

        @InvocableVariable(
            required=true
            description='Existing Term ID'
        )
        global String existingTermId;
    }
}