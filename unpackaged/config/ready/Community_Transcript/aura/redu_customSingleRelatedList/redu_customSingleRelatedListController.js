({
    init: function (cmp, event, helper) {
        
        helper.initDatatable(cmp, event);
    },

    reload : function(cmp, event, helper){
        helper.resetData(cmp);
        helper.initDatatable(cmp, event);
    },

    handleRowAction: function (cmp, event, helper) {
        var action = event.getParam('action');
        var row = event.getParam('row');
        
        switch (action.name) {
            case 'view':
                helper.handleViewRecord(cmp, event, row);
                break;
            case 'edit':
                helper.handleEditRecord(cmp, event, row);
                break;
            case 'delete':
                helper.handleDeleteRecord(cmp, event, row);
                break;
            case 'download':
                helper.handleDownloadRecord(cmp, event, row);
                break;
        }

        
    },

    handleViewAll : function (cmp, event, helper) {
        if(cmp.get("v.enableViewAll") === true){
            var relatedListEvent = $A.get("e.force:navigateToRelatedList");
            relatedListEvent.setParams({
                "relatedListId": cmp.get("v.childObjectRelationshipApiName"),
                "parentRecordId": cmp.get("v.parentId")
            });
            relatedListEvent.fire();
        }
    },

    handleCreateRecord : function (cmp, event, helper) {
        /*var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": cmp.get("v.childObjectApiName"),
            "defaultFieldValues": {
                [cmp.get("v.parentObjectRefField")] : cmp.get("v.parentId")
            }
        });
        createRecordEvent.fire();*/

        helper.launchRecordEditModal(cmp, event, null, "New " + cmp.get("v.editFormFieldsString"));
    },
    
    handleToastEvent : function (cmp, event, helper) {

        var eventType = event.getParam('type');
        var eventMessage= event.getParam('message');
        if(eventType == 'SUCCESS' && eventMessage.includes(cmp.get("v.childObjectLabel"))){
            helper.resetData(cmp);
            helper.initDatatable(cmp, event);
        	event.stopPropagation();            
        }
    },

    handleLoadMoreData : function(cmp, event, helper) {
                
        helper.initDatatable(cmp, event);
    },

    handleOnSort: function (cmp, event, helper) {
        var fieldName = event.getParam('fieldName');
        var sortDirection = event.getParam('sortDirection');

        cmp.set("v.sortedBy", fieldName);
        cmp.set("v.sortedDirection", sortDirection);

        helper.sortData(cmp, event, fieldName, sortDirection);
    }
})