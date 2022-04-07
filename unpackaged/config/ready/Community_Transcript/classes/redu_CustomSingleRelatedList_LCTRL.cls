/**
 * @Author 		WDCi (Lean)
 * @Date 		Sept 2019
 * @group 		Lightning Component
 * @Description PAN:7418 Controller for the custom related list lightning component.
 *
 */

public with sharing class redu_CustomSingleRelatedList_LCTRL {
    //for request
    public static final String NUMBER_OF_RECORDS_PARAM = 'numberOfRecords';
    public static final String RECORD_ID_PARAM = 'recordId';
    public static final String TARGET_RECORD_ID_PARAM = 'targetRecordIdField';
    public static final String PARENT_OBJECT_REF_FIELD_PARAM = 'parentObjectRefField';
    public static final String CHILD_OBJECT_API_NAME_PARAM = 'childObjectApiName';
    public static final String CHILD_OBJECT_FIELDSET_PARAM = 'childObjectFieldSet';
    public static final String CHILD_OBJECT_FILTER_CRITERIA_PARAM = 'childObjectFilterCriteria';
    public static final String ENABLE_VIEW_PARAM = 'enableRowViewButton';
    public static final String ENABLE_EDIT_PARAM = 'enableRowEditButton';
    public static final String ENABLE_DELETE_PARAM = 'enableRowDeleteButton';
    public static final String ENABLE_DOWNLOAD_PARAM = 'enableRowDownloadButton';
    
    public static final String ROWS_TO_LOAD_PARAM = 'rowsToLoad';
    public static final String CURRENT_OFFSET_PARAM = 'currentOffset';

    public static final String ENABLE_CLICKABLE_REFFIELD_PARAM = 'enableClickableRefField';

    //for response
    public static final String COLUMNS_PARAM = 'columns';
    public static final String DATA_PARAM = 'data';
    public static final String CHILD_OBJECT_LABEL_PARAM = 'childObjectLabel';
    public static final String CHILD_OBJECT_PLURAL_LABEL_PARAM = 'childObjectPluralLabel';
    public static final String CHILD_OBJECT_RELATIONSHIP_API_NAME_PARAM = 'childObjectRelationshipApiName';
    public static final String OBJECT_ICON_PARAM = 'objectIcon';
    public static final String PARENT_ID_PARAM = 'parentId';
    public static final String REFLINKS_PARAM = 'refLinks';

    @AuraEnabled
    public static string initDatatable(String datatableConfig){
        
        Map<String, Object> requestJSON = (Map<String, Object>)JSON.deserializeUntyped(datatableConfig);  
        Map<String, Object> responseJSON = new Map<String, Object>();

        String recordId = String.valueOf(requestJSON.get(RECORD_ID_PARAM));
        String targetRecordIdField = String.valueOf(requestJSON.get(TARGET_RECORD_ID_PARAM));
        String parentObjRefField = String.valueOf(requestJSON.get(PARENT_OBJECT_REF_FIELD_PARAM));
        String childObjName = String.valueOf(requestJSON.get(CHILD_OBJECT_API_NAME_PARAM));
        String childObjFieldSet = String.valueOf(requestJSON.get(CHILD_OBJECT_FIELDSET_PARAM));
        String childObjFilter = String.valueOf(requestJSON.get(CHILD_OBJECT_FILTER_CRITERIA_PARAM));

        Boolean enableView = Boolean.valueOf(requestJSON.get(ENABLE_VIEW_PARAM));
        Boolean enableEdit = Boolean.valueOf(requestJSON.get(ENABLE_EDIT_PARAM));
        Boolean enableDelete = Boolean.valueOf(requestJSON.get(ENABLE_DELETE_PARAM));
        Boolean enableDownload = Boolean.valueOf(requestJSON.get(ENABLE_DOWNLOAD_PARAM));

        Integer rowsToLoad = Integer.valueOf(requestJSON.get(ROWS_TO_LOAD_PARAM));
        Integer currentOffSet = Integer.valueOf(requestJSON.get(CURRENT_OFFSET_PARAM));
        Boolean enableClickableRefField = Boolean.valueOf(requestJSON.get(ENABLE_CLICKABLE_REFFIELD_PARAM));

        if(String.isNotBlank(recordId)){
            Schema.SObjectType sobjectType = Schema.getGlobalDescribe().get(childObjName);
            Schema.DescribeSObjectResult sobjectDescribe = sobjectType.getDescribe();

            String parentId = getTargetParentId(recordId, targetRecordIdField);
            String childObjectRelationshipApiName = getChildRelationshipName(parentId , childObjName);
            
            List<SObject> data = getChildRecords(
                    parentId,
                    parentObjRefField, 
                    childObjName, 
                    childObjFieldSet, 
                    childObjFilter,
                    rowsToLoad,
                    currentOffSet
            );

            System.debug('data ::');
            System.debug(data);

            String columns = getDatatableMetadata(
                childObjName,
                childObjFieldSet,
                enableView,
                enableEdit,
                enableDelete,
                enableClickableRefField,
                enableDownload
            );

            String objIcon = getObjectIcon(childObjName);

            String refLinks = getReferenceLinks(
                childObjName, 
                childObjFieldSet
            );

            responseJSON.put(DATA_PARAM, data);
            responseJSON.put(COLUMNS_PARAM, JSON.deserializeUntyped(columns));
            responseJSON.put(CHILD_OBJECT_LABEL_PARAM, sobjectDescribe.getLabel());
            responseJSON.put(CHILD_OBJECT_PLURAL_LABEL_PARAM, sobjectDescribe.getLabelPlural());
            responseJSON.put(OBJECT_ICON_PARAM, objIcon);
            responseJSON.put(CHILD_OBJECT_RELATIONSHIP_API_NAME_PARAM, childObjectRelationshipApiName);
            responseJSON.put(PARENT_ID_PARAM, parentId);
            responseJSON.put(CURRENT_OFFSET_PARAM, currentOffSet + data.size());
            responseJSON.put(REFLINKS_PARAM, JSON.deserializeUntyped(refLinks));
        }
        
        System.debug(responseJSON);

        return JSON.serialize(responseJSON);
    }

    @AuraEnabled
    public static string deleteRecord(Id recordId){
        
        try{
            SObject sobj = recordId.getSobjectType().newSObject(recordId);
            String objType = sobj.getSobjectType().getDescribe().getName();

            delete sobj;

            return '';
        } catch(Exception exp){
            //ISS-000219
            List<String> paramList = new List<String>{exp.getMessage()};
            String errorMsg = String.format('Problem deleting the record. Error: {0}', paramList);
            return errorMsg;
        }
    }

    public static String getTargetParentId(String recordId, String targetRecordIdField){

        String parentId = '';

        if(targetRecordIdField.equalsIgnoreCase('id')){
            parentId = recordId;
        } else {
            Id idObj = Id.valueOf(recordId);
            String idObjType = idObj.getSobjectType().getDescribe().getName();

            List<String> objFields =  new List<String>{targetRecordIdField};
            
            SObject currentRecord = Database.query('select Id, ' + targetRecordIdField + ' from ' + idObjType + ' where Id = \'' + recordId + '\'');

            if(currentRecord.isSet(targetRecordIdField)){
                parentId = String.valueOf(currentRecord.get(targetRecordIdField));
            }
        }

        return parentId;
    }

    public static List<SObject> getChildRecords(String parentId, String parentObjRefField, String childObjName, String childObjFieldsetName, String childObjFilter, integer rowsToLoad, integer currentOffSet) {

        List<String> objsToDescribe = new List<String>{childObjName};
        List<String> objFields = new List<String>();
        //Added 05/06/2020 by CM - ISS-000242
        Map<String, Schema.DisplayType> fieldToFieldTypeMap = new Map<String, Schema.DisplayType>();

        rowsToLoad = (rowsToLoad != null ? rowsToLoad : 10);
        currentOffSet = (currentOffSet != null ? currentOffSet : 0);

        String soqlFields = '';

        //if(!Test.isRunningTest()){
            for(Schema.DescribeSObjectResult descResult : Schema.describeSObjects(objsToDescribe)){
                if(descResult.fieldsets.getMap().containsKey(childObjFieldsetName)){
                    Schema.FieldSet objFieldSet = descResult.fieldsets.getMap().get(childObjFieldsetName);

                    for(Schema.FieldSetMember fsm : objFieldSet.getFields()){
                        if(fsm.getFieldPath() != 'Id'){
                            
                            if(fsm.getType() == Schema.DisplayType.REFERENCE){
                                //we also query the name for relationship field
                                soqlFields += ', ' + getReferenceFieldForQuery(fsm.getFieldPath()) + '.Name';
                            }

                            soqlFields += ', ' + fsm.getFieldPath();
                            objFields.add(fsm.getFieldPath());

                            //Added 05/06/2020 by CM - ISS-000242
                            if (fsm.getType() == Schema.DisplayType.ENCRYPTEDSTRING || fsm.getType() == Schema.DisplayType.TIME || fsm.getType() == Schema.DisplayType.PERCENT){
                                fieldToFieldTypeMap.put(fsm.getFieldPath(), fsm.getType());
                            }
                        }
                    }
                }
            }

            if(childObjName == 'ContentVersion' && !objFields.contains('ContentDocumentId')){
                soqlFields += ', ContentDocumentId';
                objFields.add('ContentDocumentId');
            }

        /*} else {
            //for test only as we don't ship with field set
            if (childObjName == 'ContentVersion'){
                soqlFields += ', title, ContentDocumentId';
                objFields.add('title');
                objFields.add('ContentDocumentId');
            } else {
                soqlFields += ', name';
                objFields.add('name');
            }
            
        }*/
        
        String soqlStr = 'select Id ' + soqlFields + ' from ' + childObjName + ' where ';
        
        Set<String> cdIds = new Set<String>();
        if(childObjName == 'ContentVersion'){
            for(ContentDocumentLink cdl : [SELECT ContentDocumentId FROM ContentDocumentLink WHERE LinkedEntityId =: parentId]){
                cdIds.add(cdl.ContentDocumentId);
            }

            soqlStr += ' ContentDocumentId IN: cdIds ';
        } else {
            //soqlStr += parentObjRefField + ' = \'' + parentId + '\'';
            soqlStr += parentObjRefField + ' =: parentId';
        }

        //we only perform query if there parent id and offset is less than 2000
        if(String.isNotBlank(parentId) && currentOffSet <= 2000){
            if(String.isNotBlank(childObjFilter)){
                soqlStr += ' and ' + childObjFilter;
            }

            soqlStr += ' limit ' + rowsToLoad + ' offset ' + currentOffSet;

            system.debug('soql :: ' + soqlStr);

            List<SObject> results = Database.query(soqlStr);

            //Added 05/06/2020 by CM - ISS-000242
            results = parseSpecificFieldTypes(results, fieldToFieldTypeMap);

            return results;
        } else {
            return new List<SObject>();
        }

    }

    public static String getReferenceFieldForQuery(String fieldName){

        if(fieldName.endsWithIgnoreCase('__c')){
            fieldName = fieldName.replace('__c', '__r');
        } else if(fieldName.endsWithIgnoreCase('id')){
            fieldName = fieldName.removeEndIgnoreCase('id');
        }

        return fieldName;
    }

    public static string getReferenceLinks(String objName, String fieldsetName){

        String refLinkMeta = '[';
        String linksMeta = '';

        List<String> objsToDescribe = new List<String>{objName};

        //if(!Test.isRunningTest()){
            for(Schema.DescribeSObjectResult descResult : Schema.describeSObjects(objsToDescribe)){
                if(descResult.fieldsets.getMap().containsKey(fieldsetName)){
                    Schema.FieldSet objFieldSet = descResult.fieldsets.getMap().get(fieldsetName);

                    for(Schema.FieldSetMember fsm : objFieldSet.getFields()){
                        
                        if(fsm.getFieldPath() != 'Id'){
                            if(fsm.getFieldPath() == 'Name' || fsm.getType() == Schema.DisplayType.REFERENCE){
                                //for name and lookup field
                                String sublinkMeta = '{ "linkFieldName": "link' + fsm.getFieldPath() + '", "linkFieldId": "' + (fsm.getFieldPath() == 'Name' ? 'Id' : fsm.getFieldPath()) + '", "linkFieldLabel": "' + (fsm.getFieldPath() == 'Name' ? 'Name' : getReferenceFieldForQuery(fsm.getFieldPath()) + '.Name' ) + '" },';
                                linksMeta += sublinkMeta;
                            }                            
                        }
                    }
                }
            }
        /*} else {
            //for test only as we don't ship with field set
            String sublinkMeta = '{ "linkFieldName": "linkName", "linkFieldId": "name", "linkFieldLabel": "name" },';
            linksMeta += sublinkMeta;
        }*/

        linksMeta = linksMeta.removeEnd(','); //remove the last comma
        refLinkMeta += linksMeta;
        refLinkMeta += ']';

        return refLinkMeta;
    }

    public static string getDatatableMetadata(String objName, String fieldsetName, boolean enableView, boolean enableEdit, boolean enableDelete, boolean enableClickableRefField, boolean enableDownload){
        
        List<String> objsToDescribe = new List<String>{objName};

        String metadataStr = '[';
        String fieldsMeta = '';
        String actionsMeta = '';

        //prepare columns metadata for datatable
        //if(!Test.isRunningTest()){
            for(Schema.DescribeSObjectResult descResult : Schema.describeSObjects(objsToDescribe)){
                if(descResult.fieldsets.getMap().containsKey(fieldsetName)){
                    Schema.FieldSet objFieldSet = descResult.fieldsets.getMap().get(fieldsetName);

                    for(Schema.FieldSetMember fsm : objFieldSet.getFields()){
                        
                        if(fsm.getFieldPath() != 'Id'){
                            String subFieldMeta;

                            if(fsm.getFieldPath() == 'Name' || fsm.getType() == Schema.DisplayType.REFERENCE){
                                //for name and lookup field
                                String refLinkField;
                                if(fsm.getType() == Schema.DisplayType.REFERENCE){
                                    refLinkField = getReferenceFieldForQuery(fsm.getFieldPath()) + '.Name';
                                } else {
                                    refLinkField = fsm.getFieldPath();
                                }

                                if(enableClickableRefField){
                                    subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "link' + fsm.getFieldPath() + '", "type": "url", "typeAttributes": {"label": { "fieldName": "' + refLinkField + '" }, "target": "_blank"}, "sortable": true},';
                                } else {
                                    subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + refLinkField + '", "type": "text", "sortable": true},';
                                }
                                
                            //Updated 14/10/2019 WDCi - CM: ISS-00242 - Handle non-text fields in datatable subFieldMeta
                            //Updated 29/11/2019 WDCi - CM: ISS-00242 - Handle more non-text fields in datatable subFieldMeta
                            //Updated 05/06/2020 WDCi - CM: ISS-00242 - Handle even more non-text fields in datatable subFieldMeta (DateTime)
                            } else if (fsm.getType() == Schema.DisplayType.INTEGER || fsm.getType() == Schema.DisplayType.DOUBLE || fsm.getType() == Schema.DisplayType.LONG) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "number", "sortable": true, "cellAttributes": {"alignment": "left"}},';
                            } else if (fsm.getType() == Schema.DisplayType.CURRENCY) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "currency", "sortable": true, "cellAttributes": {"alignment": "left"}},';
                            } else if (fsm.getType() == Schema.DisplayType.BOOLEAN) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "boolean", "sortable": true},';
                            } else if (fsm.getType() == Schema.DisplayType.EMAIL) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "email", "sortable": true},';
                            } else if (fsm.getType() == Schema.DisplayType.PHONE) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "phone", "sortable": true},';
                            } else if (fsm.getType() == Schema.DisplayType.URL) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "url", "sortable": true},';
                            } else if (fsm.getType() == Schema.DisplayType.PERCENT) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "percent", "typeAttributes": {"maximumFractionDigits":"4"}, "sortable": true, "cellAttributes": {"alignment": "left"}},';
                            } else if (fsm.getType() == Schema.DisplayType.DATE) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "date", "sortable": true},';
                            } else if (fsm.getType() == Schema.DisplayType.DATETIME) {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "date", "typeAttributes": {"day":"2-digit", "month":"2-digit", "year":"numeric", "hour":"2-digit", "minute":"2-digit"}, "sortable": true},';
                            } else {
                                subFieldMeta = '{ "label": "' + fsm.getLabel() + '", "fieldName": "' + fsm.getFieldPath() + '", "type": "text", "sortable": true},';
                            }

                            fieldsMeta += subFieldMeta;
                        }
                    }
                }
            }
        /*} else {
            //for test only as we don't ship with field set
            String subFieldMeta = '{ "label": "Name", "fieldName": "name", "type": "text", "sortable": true},';
            fieldsMeta += subFieldMeta;
        }*/

        fieldsMeta = fieldsMeta.removeEnd(','); //remove the last comma
        metadataStr += fieldsMeta;

        //prepare action metadata for datatable
        if(enableView || enableEdit || enableDelete || enableDownload){

            String subActionMeta = '';

            if(enableView){
                subActionMeta += '{ "label": "View", "name": "view"}';
            }

            if(enableEdit){
                subActionMeta += ', { "label": "Edit", "name": "edit"}';
            }
            
            if (enableDownload){
                subActionMeta += ', { "label": "Download", "name": "download"}';
            }

            if(enableDelete){
                /*if(String.isBlank(subActionMeta)){
                    subActionMeta = '{ "label": "Delete", "name": "delete"}';
                } else {
                    subActionMeta += ', { "label": "Delete", "name": "delete"}';
                }*/
                subActionMeta += ', { "label": "Delete", "name": "delete"}';
            }
            
            subActionMeta = subActionMeta.removeStart(', ');

            actionsMeta = '{"type": "action", "typeAttributes": { "rowActions": [' + subActionMeta + '] } }';

            metadataStr += ', ' + actionsMeta;
        }


        metadataStr += ']';

        return metadataStr;
    }

    public static String getObjectIcon(String objName){
        String objIcon = '';

        List<Schema.DescribeTabSetResult> tabSetDesc = Schema.DescribeTabs();
        List<Schema.DescribeTabResult> tabDesc = new List<Schema.DescribeTabResult>();
        List<Schema.DescribeIconResult> iconDesc = new List<Schema.DescribeIconResult>();

        for(Schema.DescribeTabSetResult tsr : tabSetDesc) { 
            tabDesc.addAll(tsr.getTabs()); 
        }

        for(Schema.DescribeTabResult tr : tabDesc) {
            if( objName == tr.getSobjectName() ) {
                if( tr.isCustom() ) {
                    iconDesc.addAll(tr.getIcons());
                } else {
                    objIcon = 'standard:' + objName.toLowerCase();
                }
            }
        }
        for (Schema.DescribeIconResult ir : iconDesc) {
            if (ir.getContentType() == 'image/svg+xml'){
                objIcon = 'custom:' + ir.getUrl().substringBetween('custom/','.svg').substringBefore('_');
                break;
            }
        }
        return objIcon;
    }

    public static String getChildRelationshipName(Id recordId, String objName){
        Schema.DescribeSObjectResult descrRes = recordId.getSObjectType().getDescribe();
        String name = '';

        for (Schema.ChildRelationship cr: descrRes.getChildRelationships()){ 
            if(cr.getChildSObject().getDescribe().getName() == objName){
          	 	name = cr.getRelationshipName();
                break;
            }
        }

        return name;
    }

    //Added by CM 05/06/2020 - ISS-000242 fixing certain field types not displaying correctly
    //This method will edit the sobject data to be displayable
    private static List<SObject> parseSpecificFieldTypes(List<Sobject> soList, Map<String, Schema.DisplayType> fieldToFieldTypeMap){

        List<SObject> parsedSoList = new List<SObject>();

        if (!fieldToFieldTypeMap.isEmpty()){

            Boolean canViewEncryptedData = hasViewEncryptedDataPermission();

            for (SObject so : soList){
                //Update the fields that need to be updated
                for (String fieldName : fieldToFieldTypeMap.keySet()){

                    /*Encrypted field - Encrypted fields are actually PLAIN TEXT here, so we need to handle them differently
                    *                 - We can't read encryption mask type, so we're just gonna hide the text and call it a day
                    */
                    if (fieldToFieldTypeMap.get(fieldName) == Schema.DisplayType.ENCRYPTEDSTRING && !canViewEncryptedData){
                        Boolean blankField = String.isBlank((String)so.get(fieldName));
                        if (!blankField){
                            so.put(fieldName, '********');
                        }
                    
                    /*Time field - Time fields are stored with just the Time portion of a DD:MM:YYYY:hh:mm:ss.SSSZ string
                    *            - Data table doesn't recognise just HH:mm:ss.SSSZ, so we're gonna pretend it's a time portion of today's date
                    *            - This needs decent testing, as we won't want it to actually show the date part
                    */
                    /* Turns out we can't change the data in the Time field to be a non-Time value. It's just not supported.
                    At the very least, it can display in HH:mm:ss:.SSSZ format, which is better than nothing.
                    If required, users could add a formula field to display the time value nicely.
                    } else if (fieldToFieldTypeMap.get(fieldName) == Schema.DisplayType.TIME){
                        Boolean blankField = so.get(fieldName) == null;
                        if (!blankField){
                            //Create fake date/time
                            String fakeDate = System.today().year() + '-' + System.today().month() + '-' + System.today().day() + 'T' + so.get(fieldName);
                            so.put(fieldName, fakeDate);
                        }
                    }*/
                    /*Percent field - Salesforce UI multiplies the value by 100 to save as a nice looking number. Okay.
                    *               - Data table multiplies the value by 100 to display as a nice looking number. Wait, what?
                    *               - We need to divide this value by 100, so the data table doesn't screw up the real value
                    */
                    } else if (fieldToFieldTypeMap.get(fieldName) == Schema.DisplayType.PERCENT){
                        Boolean blankField = so.get(fieldName) == null;
                        if (!blankField){
                            Decimal convertedPercentage = (Decimal)so.get(fieldName) / 100;
                            so.put(fieldName, convertedPercentage);
                        }
                    }

                }

                parsedSoList.add(so);
            }

        } else {
            parsedSoList = soList;
        }

        return parsedSoList;
    }

    //Added by CM 05/06/2020 - ISS-000242 used to determine if user can view encrypted data
    @testVisible
    private static Boolean hasViewEncryptedDataPermission(){

        //Check if user profile has permission to see encrypted data
        List<Profile> pList = [SELECT Id FROM Profile
                               WHERE PermissionsViewEncryptedData = true AND Id = :UserInfo.getProfileId()];
        if (!pList.isEmpty()){
            return true;
        } else {
            //Check if user has permission set to see encrypted data
            List<PermissionSetAssignment> psaList = [SELECT Id FROM PermissionSetAssignment 
            WHERE AssigneeId = :UserInfo.getUserId() AND PermissionSet.PermissionsViewEncryptedData = true];
            if (!psaList.isEmpty()){
               return true;
            }
        }

        return false;
    }
}