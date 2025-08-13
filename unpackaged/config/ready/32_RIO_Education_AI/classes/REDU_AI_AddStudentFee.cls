/**
* @author           WDCi (LKoh)
* @date             May 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to add Additional Fee for Student
* @change-history
*/
global with sharing class REDU_AI_AddStudentFee {

    private static final String PE_PROGRAMSTATUS_CURRENT = 'Current';
    private static final String CON_STUDENTFEETYPE_INTERNATIONAL = 'International';

    @InvocableMethod(
        label='Add Additional Fee'
        description='Generate new Fee Line for the specified Contact, Term and Fee'
    )
    global static List<REDU_AI_InvocableResponse> addStudentFee(List<Request> requests) {

        Set<Id> contactIds = new Set<Id>();
        Set<Id> termIds = new Set<Id>();
        Set<Id> feeIds = new Set<Id>();

        // Process the requests and get the contact Ids and term Ids to prepare the query on rio_ed__Student_Fee__c records
        Map<Integer, REDU_AI_InvocableResponse> errResponseMap = new Map<Integer, REDU_AI_InvocableResponse>();
        Integer respCounter = 0;
        for (Request input : requests) {

            // Validate input
            if (String.isBlank(input.contactId) || String.isBlank(input.termId) || String.isBlank(input.feeId)) {
                errResponseMap.put(respCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Contact ID, Term ID, and Fee ID cannot be null or empty.', ''));
                respCounter ++;
                continue;
            }

            // Process the request to add student fee
            contactIds.add(input.contactId);
            termIds.add(input.termId);
            feeIds.add(input.feeId);

            respCounter ++;
        }

        String sfQuery = 'SELECT Id, Name, rio_ed__Contact_Id__c, rio_ed__PE_Pathway__r.rio_ed__Term__c' +
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

        // Map of the Contact which contains the International Student flag, we use the International Student flag to determine the Fee Amount
        String conQuery = 'SELECT Id, rio_ed__Student_Fee_Type__c' +
                        ' FROM Contact' +
                        ' WHERE Id IN :contactIds';

        Map<String, Object> conBindParams = new Map<String, Object>{
            'contactIds' => contactIds
        };

        Map<Id, Contact> contactMap = new Map<Id, Contact>();
        for(Contact con : (List<Contact>) Database.queryWithBinds(conQuery, conBindParams, AccessLevel.USER_MODE)){
            contactMap.put(con.Id, con);
        }

        // Using the Fee Id, we need to query the Fee Schedule Term that matched the term Id provided in the request
        String fstQuery = 'SELECT Id, rio_ed__Fee_Schedule__r.rio_ed__Fee__c, rio_ed__Fee_Schedule__r.rio_ed__Current__c, rio_ed__Term__c,' +
                        ' rio_ed__Fee_Schedule__r.rio_ed__Fee_Amount_Domestic__c, rio_ed__Fee_Schedule__r.rio_ed__Fee_Amount_International__c' +
                        ' FROM rio_ed__Fee_Schedule_Term__c' +
                        ' WHERE rio_ed__Fee_Schedule__r.rio_ed__Fee__c IN :feeIds AND rio_ed__Term__c IN :termIds';

        Map<String, Object> fstBindParams = new Map<String, Object>{
            'feeIds' => feeIds,
            'termIds' => termIds
        };
        Map<String, rio_ed__Fee_Schedule_Term__c> feeScheduleTermMap = new Map<String, rio_ed__Fee_Schedule_Term__c>();
        for(rio_ed__Fee_Schedule_Term__c fst : (List<rio_ed__Fee_Schedule_Term__c>) Database.queryWithBinds(fstQuery, fstBindParams, AccessLevel.USER_MODE)){
            String mapKey = fst.rio_ed__Fee_Schedule__r.rio_ed__Fee__c + ':' + fst.rio_ed__Term__c;
            if (!feeScheduleTermMap.containsKey(mapKey)) {
                feeScheduleTermMap.put(mapKey, fst);
            }
        }
        System.debug('feeScheduleTermMap: ' + feeScheduleTermMap);

        // Map out PE Pathway in order to populate the Student Fee's PE Pathway field based on the Program Enrollment and Term Ids
        Map<String, rio_ed__PE_Pathway_Status__c> contactPathwayMap = new Map<String, rio_ed__PE_Pathway_Status__c>();
        String pePathwayQuery = 'SELECT Id, rio_ed__Program_Enrollment__c, rio_ed__Term__c,' +
                                ' rio_ed__Program_Enrollment__r.hed__Contact__c' +
                                ' FROM rio_ed__PE_Pathway_Status__c' +
                                ' WHERE rio_ed__Program_Enrollment__r.hed__Contact__c IN :contactIds' +
                                ' AND rio_ed__Program_Enrollment__r.rio_ed__Program_Status__c = :statusCurrent' +
                                ' AND rio_ed__Term__c IN :termIds';

        Map<String, Object> pePathwayBindParams = new Map<String, Object>{
            'contactIds' => contactIds,
            'termIds' => termIds,
            'statusCurrent' => PE_PROGRAMSTATUS_CURRENT
        };

        for (rio_ed__PE_Pathway_Status__c pePathway : (List<rio_ed__PE_Pathway_Status__c>) Database.queryWithBinds(pePathwayQuery, pePathwayBindParams, AccessLevel.USER_MODE)) {
            String mapKey = pePathway.rio_ed__Program_Enrollment__r.hed__Contact__c + ':' + pePathway.rio_ed__Term__c;
            if (!contactPathwayMap.containsKey(mapKey)) {
                contactPathwayMap.put(mapKey, pePathway);
            }
        }
        System.debug('contactPathwayMap :: ' + contactPathwayMap);

        // Process the requests, comparing the contact Ids and term Ids with the queried student fees
        Map<String, rio_ed__Student_Fee__c> newStudentFeeMap = new Map<String, rio_ed__Student_Fee__c>();
        Map<Integer, Integer> respCounterMap = new Map<Integer, Integer>();
        Integer sfCount = 0;
        respCounter = 0;
        for (Request input : requests) {

            //Skip if there was an error reponse
            if (errResponseMap.containsKey(respCounter)) {
                respCounter++;
                continue;
            }

            String mapKey = input.contactId + ':' + input.termId;
            System.debug('mapKey: ' + mapKey);
            if (!studentFeeMap.containsKey(mapKey)) {
                //Create student fee first if doesn't exist yet.
                System.debug('Student Fee did not exist for Contact ID: ' + input.contactId + ' and Term ID: ' + input.termId);

                if (contactPathwayMap.containsKey(mapKey)) {

                    // Create a new student fee record
                    rio_ed__Student_Fee__c newStudentFee = new rio_ed__Student_Fee__c();

                    newStudentFee.rio_ed__Program_Enrollment__c = contactPathwayMap.get(mapKey).rio_ed__Program_Enrollment__c;
                    newStudentFee.rio_ed__PE_Pathway__c = contactPathwayMap.get(mapKey).Id;
                    respCounterMap.put(sfCount, respCounter);
                    newStudentFeeMap.put(mapKey, newStudentFee);
                    sfCount ++;
                } else {
                    System.debug('No PE Pathway found for contact: ' + input.contactId + ' and Term ID: ' + input.termId);
                    errResponseMap.put(respCounter, new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - No PE Pathway found for contact: ' + input.contactId + ' and Term ID: ' + input.termId, ''));
                    respCounter ++;
                    continue;
                }
            }
            respCounter ++;
        }

        if (!newStudentFeeMap.isEmpty()) {
            // Insert the new student fee records
            Integer counter = 0;
            for (Database.SaveResult sr : Database.insert(newStudentFeeMap.values(), false, AccessLevel.USER_MODE)) {
                if(!sr.isSuccess()) {

                    errResponseMap.put(respCounterMap.get(counter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Student Fee: ' + sr.getErrors()[0].getMessage(), ''));
                }
                counter++;
            }
        }

        //Create fee line records.
        List<rio_ed__Fee_Line__c> newFeeLines = new List<rio_ed__Fee_Line__c>();
        Integer flCount = 0;
        respCounterMap.clear();
        respCounter = 0;
        for (Request input : requests) {

            //Skip if there was an error reponse
            if (errResponseMap.containsKey(respCounter)) {
                respCounter++;
                continue;
            }

            String mapKey = input.contactId + ':' + input.termId;
            String feeScheduleKey = input.feeId + ':' + input.termId;

            // Create a new fee line record
            rio_ed__Fee_Line__c newFeeLine = new rio_ed__Fee_Line__c();
            newFeeLine.rio_ed__Fee_Schedule_Term__c = feeScheduleTermMap.get(feeScheduleKey).Id;

            // Depending on the contact's international student status, set the Fee Line's Other Amount
            if (contactMap.get(input.contactId).rio_ed__Student_Fee_Type__c == CON_STUDENTFEETYPE_INTERNATIONAL) {
                newFeeLine.rio_ed__Other_Amount__c = feeScheduleTermMap.get(feeScheduleKey).rio_ed__Fee_Schedule__r.rio_ed__Fee_Amount_International__c;
            } else {
                newFeeLine.rio_ed__Other_Amount__c = feeScheduleTermMap.get(feeScheduleKey).rio_ed__Fee_Schedule__r.rio_ed__Fee_Amount_Domestic__c;
            }

            // Set the Student Fee Id
            if (studentFeeMap.containsKey(mapKey)) {
                // If the student fee already exists, use the existing student fee Id
                newFeeLine.rio_ed__Student_Fee__c = studentFeeMap.get(mapKey).Id;
            } else {
                // Use the new student fee Id
                newFeeLine.rio_ed__Student_Fee__c = newStudentFeeMap.get(mapKey).Id;
            }

            respCounterMap.put(flCount, respCounter);
            newFeeLines.add(newFeeLine);
            flCount ++;
            respCounter ++;
        }

        Map<Integer, Id> respCounterSFIdMap = new Map<Integer, Id>();
        Set<Id> sfIdSet = new Set<Id>();
        if (!newFeeLines.isEmpty()) {
            // Insert the new fee line records
            Integer counter = 0;
            for (Database.SaveResult sr : Database.insert(newFeeLines, false, AccessLevel.USER_MODE)) {
                if(!sr.isSuccess()) {

                    errResponseMap.put(respCounterMap.get(counter), new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Error Creating Fee Line: ' + sr.getErrors()[0].getMessage(), ''));
                }else{

                    sfIdSet.add(newFeeLines[counter].rio_ed__Student_Fee__c);
                    respCounterSFIdMap.put(respCounterMap.get(counter), newFeeLines[counter].rio_ed__Student_Fee__c);
                }
                counter++;
            }
        }

        //Query new outstanding balance from Student Fee
        String latestSfQuery = 'SELECT Id, Name, rio_ed__PE_Pathway__r.rio_ed__Term__r.Name,' +
                        ' rio_ed__PE_Pathway__r.Name,' +
                        ' rio_ed__Program_Enrollment__r.hed__Contact__r.Name,' +
                        ' rio_ed__Program_Enrollment__r.Name,' +
                        ' rio_ed__Outstanding_Amount__c, rio_ed__Total_Fee__c, rio_ed__Paid_Amount__c' +
                        ' FROM rio_ed__Student_Fee__c' +
                        ' WHERE Id IN :sfIdSet';

        Map<String, Object> latestSfBindParams = new Map<String, Object>{
            'sfIdSet' => sfIdSet
        };

        Map<Id, rio_ed__Student_Fee__c> latestStudentFeeMap = new Map<Id, rio_ed__Student_Fee__c>();
        for(rio_ed__Student_Fee__c sf : (List<rio_ed__Student_Fee__c>) Database.queryWithBinds(latestSfQuery, latestSfBindParams, AccessLevel.USER_MODE)){
            latestStudentFeeMap.put(sf.Id, sf);
        }

        // Prepare the response
        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();
        respCounter = 0;
        for (Request input : requests) {

            if (errResponseMap.containsKey(respCounter)) {
                responses.add(errResponseMap.get(respCounter));
            }else if(respCounterSFIdMap.containsKey(respCounter) && latestStudentFeeMap.containsKey(respCounterSFIdMap.get(respCounter))){
                Map<String, Object> responseJSON = new Map<String, Object>();
                responseJSON.put('resp', latestStudentFeeMap.get(respCounterSFIdMap.get(respCounter)));
                responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
            }else{
                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - Unknown Error : ' + input.contactId + ' and Term ID: ' + input.termId, ''));
            }

            respCounter ++;
        }
        System.debug('responses: ' + responses);

        return responses;
    }

    global class Request {
        @InvocableVariable(
            required=true
            description='Contact Id of the student'
        )
        global String contactId;

        @InvocableVariable(
            required=true
            description='Term ID'
        )
        global String termId;

        @InvocableVariable(
            required=true
            description='Fee ID'
        )
        global String feeId;
    }
}