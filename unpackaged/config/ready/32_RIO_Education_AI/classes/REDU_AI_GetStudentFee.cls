/**
* @author           WDCi (LKoh)
* @date             April 2025
* @group            RIO Education (AgentForce)
* @description      Agentforce support class to get Student Fee
* @change-history
*/
global with sharing class REDU_AI_GetStudentFee {

    @InvocableMethod(
        label='Get Student Fee'
        description='Retrieve the Student Fee based on the specified Contact and Term'
    )
    global static List<REDU_AI_InvocableResponse> getStudentFee(List<Request> requests) {

        List<REDU_AI_InvocableResponse> responses = new List<REDU_AI_InvocableResponse>();

        // Map out the Course Enrollment IDs and Program IDs from the requests
        Set<Id> contactIdSet = new Set<Id>();
        Set<Id> termIdSet = new Set<Id>();

        for (Request input : requests) {
            if (input.contactId != null && input.termId != null) {
                contactIdSet.add((Id)input.contactId);
                termIdSet.add((Id)input.termId);
            }
        }

        // Retrieve Student Fee linked with Contact ID and PE Pathway where the Term = Term ID
        Map<String, rio_ed__Student_Fee__c> studentFeeMap = new Map<String, rio_ed__Student_Fee__c>();
        String sfQuery = 'SELECT Id, Name, rio_ed__Program_Enrollment__r.hed__Contact__c, ' +
                        ' rio_ed__Program_Enrollment__r.Name, ' +
                        ' rio_ed__PE_Pathway__r.rio_ed__Term__c, rio_ed__Paid_Amount__c' +
                        ' FROM rio_ed__Student_Fee__c' +
                        ' WHERE rio_ed__Program_Enrollment__r.hed__Contact__c IN :contactIdSet' +
                        ' AND rio_ed__PE_Pathway__r.rio_ed__Term__c IN :termIdSet';

        Map<String, Object> sfBindParams = new Map<String, Object>{
            'contactIdSet' => contactIdSet,
            'termIdSet' => termIdSet
        };
        for(rio_ed__Student_Fee__c sf : (List<rio_ed__Student_Fee__c>) Database.queryWithBinds(sfQuery, sfBindParams, AccessLevel.USER_MODE)){

            String mapKey = sf.rio_ed__Program_Enrollment__r.hed__Contact__c + '_' + sf.rio_ed__PE_Pathway__r.rio_ed__Term__c;
            if (!studentFeeMap.containsKey(mapKey)) {
                studentFeeMap.put(mapKey, sf);
            }
        }

        for (Request input : requests) {

            String mapKey = input.contactId + '_' + input.termId;

            Map<String, Object> responseJSON = new Map<String, Object>();
            if (studentFeeMap.containsKey(mapKey)) {

                responseJSON.put('resp', studentFeeMap.get(mapKey));
                responses.add(new REDU_AI_InvocableResponse(true, REDU_AI_InvocableResponse.SUCCESS, JSON.serialize(responseJSON)));
            } else {

                responses.add(new REDU_AI_InvocableResponse(false, REDU_AI_InvocableResponse.FAIL + ' - ' + 'No Student Fee found for Contact ID: ' + input.contactId + ' and Term ID: ' + input.termId, ''));
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
    }
}