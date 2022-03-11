/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 04-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/

public with sharing class redu_CustomLookupController_LCTRL {
    
    /**
    * @description Method for returning potential options for the lookup field.
    * @param searchKeyWord: What the user has typed, will be searched against the records' names
    * @param objectName: Object's API name to search against
    * @param fields: Comma separated list of fields to search. Eg. 'Id, Name, rio_ed__Description__c'
    * @return returnList: List SObjects containing the most recent 5 records related to the searchKeyWord
    */
    @AuraEnabled(cacheable=true)
    public static List<SObject> getLookUpValues(String searchKeyWord, String objectName, String fields) {
        
        String searchKey = searchKeyWord + '%';
        List<SObject> returnList = new List<SObject>();

        String sQuery =  'SELECT ' + fields + ' FROM ' + objectName + ' WHERE Name LIKE: searchKey ORDER BY createdDate DESC LIMIT 5';
        if (objectName == 'rio_ed__Resource__c'){
            sQuery =  'SELECT ' + fields + ' FROM ' + objectName + ' WHERE Name LIKE: searchKey AND Active__c = TRUE ORDER BY createdDate DESC LIMIT 5';
        }
        List <SObject> listOfRecords = Database.query(sQuery);
        
        for (SObject obj : listOfRecords) {
            returnList.add(obj);
        }
        return returnList;
        
    }

    /**
    * @description Method for returning potential options for the lookup field.
    * @param searchKeyWord: What the user has typed, will be searched against the records
    * @param objectToFieldsMap: Map of object api name to field api names, used for FLS checking
    * @param customQuery: The whole query, giving components more flexibility with designing queries
    *                     It helps if the query includes the WHERE clause with LIKE :searchKey
    * @return returnList: List SObjects containing the most recent 5 records related to the searchKeyWord
    */
    @AuraEnabled(cacheable=true)
    public static List<SObject> getLookUpValuesCustom(String searchKeyWord, Map<String, String> objectToFieldsMap, String customQuery) {
        
        String searchKey = '%'+searchKeyWord + '%';
        List<SObject> returnList = new List<SObject>();
        
        //Check FLS against all objects and fields
        Boolean flsCheckPassed = true;
        String flsError = '';

        //Make sure we limit query to 5 if not otherwise specified
        if (!customQuery.contains(' LIMIT ')){
            customQuery += ' LIMIT 5';
        }
        //Query
        List <SObject> listOfRecords = Database.query(customQuery);
        
        for (SObject obj : listOfRecords) {
            returnList.add(obj);
        }
        
        return returnList;
    }
    

    /**
    * @description Method for returning potential options for the lookup field.
    * @param recordId: The Id of the currently selected record
    * @param objectName: Object's API name to search against
    * @param fields: Comma separated list of fields to search. Eg. 'Id, Name, rio_ed__Description__c'
    * @return The record if found, otherwise returns null.
    */
    @AuraEnabled(cacheable=true)
    public static SObject getInitialValue(String recordId, String objectName, String fields){
        
            String sQuery =  'SELECT ' + fields + ' FROM ' + objectName + ' WHERE Id = :recordId';
            System.debug('sQuery>> '+sQuery);
            List <SObject> listOfRecords = Database.query(sQuery);
            if (!listOfRecords.isEmpty()){
                return listOfRecords[0];
            } else {
                return null;
            }
        
    }
    
}