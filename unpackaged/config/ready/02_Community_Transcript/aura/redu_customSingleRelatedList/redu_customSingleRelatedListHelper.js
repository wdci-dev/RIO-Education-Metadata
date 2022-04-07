({
    initDatatable : function(cmp, event){

        this.handleLoading(cmp, event, true);

        if($A.util.isEmpty(cmp.get("v.currentRecordId"))){
            cmp.set("v.currentRecordId", cmp.get("v.recordId"));
        }

        if($A.util.isEmpty(cmp.get("v.currentRecordId"))){
            return;
        }

        var action = cmp.get("c.initDatatable");
        var params = {
            recordId: cmp.get("v.currentRecordId"),
            targetRecordIdField: cmp.get("v.targetRecordIdField"),
            parentObjectRefField: cmp.get("v.parentObjectRefField"),
            childObjectApiName: cmp.get("v.childObjectApiName"),
            childObjectFieldSet: cmp.get("v.childObjectFieldSet"),
            childObjectFilterCriteria: cmp.get("v.childObjectFilterCriteria"),
            enableRowViewButton: cmp.get("v.enableRowViewButton"),
            enableRowEditButton: cmp.get("v.enableRowEditButton"),
            enableRowDeleteButton: cmp.get("v.enableRowDeleteButton"),
            enableRowDownloadButton: cmp.get("v.enableRowDownloadButton"),
            rowsToLoad: cmp.get("v.rowsToLoad"),
            currentOffset: cmp.get("v.currentOffset"),
            enableClickableRefField: cmp.get("v.enableClickableRefField")
        };

        action.setParams({
            datatableConfig: JSON.stringify(params)
        });

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                //console.log('datatableConfig>>  '+JSON.stringify(response.getReturnValue()));
                var datatableConfig = JSON.parse(response.getReturnValue());
                
                
                //prepare the link for name field
                var refLinks = datatableConfig.refLinks;
                datatableConfig.data.forEach(function(record){

                    var forCommunity = cmp.get("v.forCommunity");
                    var path = '';
                    if(forCommunity){
                        var urlString = window.location.href;
                        path = urlString.substring(0, urlString.indexOf("/s"));
                        path = path + '/s/detail';
                    }

                    for(var i = 0; i < refLinks.length; i ++){
                        var refLink = refLinks[i];
                        record[refLink.linkFieldName] = path + '/' + record[refLink.linkFieldId];
                        
                        if(refLink.linkFieldLabel != 'Name'){
                            //we only support 1 level parent e.g, Account.Name
                            var refObjFields = refLink.linkFieldLabel.split('.');

                            var refObject = record[refObjFields[0]];
                            var refObjNameVal = refObject[refObjFields[1]];

                            record[refLink.linkFieldLabel] = refObjNameVal;
                        }
                    }
                });
                
                var currentData = cmp.get("v.data");
                if(currentData){
                    cmp.set("v.data", currentData.concat(datatableConfig.data));
                } else {
                    cmp.set("v.data", datatableConfig.data);
                    
                }

                var sortedBy = cmp.get("v.sortedBy");
                var sortedDirection = cmp.get("v.sortedDirection");

                if(sortedBy){
                    this.sortData(cmp, event, sortedBy, sortedDirection);
                }

                if(datatableConfig.data.length < 1){
                    cmp.set("v.enableInfiniteLoading", false);
                }

                cmp.set("v.columns", datatableConfig.columns);
                cmp.set("v.childObjectLabel", datatableConfig.childObjectLabel);
                cmp.set("v.childObjectPluralLabel", datatableConfig.childObjectPluralLabel);
                cmp.set("v.objectIcon", datatableConfig.objectIcon);
                cmp.set("v.childObjectRelationshipApiName", datatableConfig.childObjectRelationshipApiName);
                cmp.set("v.parentId", datatableConfig.parentId);
                cmp.set("v.currentOffset", datatableConfig.currentOffset);

                this.handleCardHeight(cmp, event);
            } else if (state === "ERROR") {
                var errors = response.getError();
                console.error(errors);
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        this.showToast(cmp, "error", "Error", 'Error: '+errors[0].message);
                    }
                } else {
                    this.showToast(cmp, "error", "Error", "Unknown Error. Please contact the system administrator.");
                }
            }

            this.handleLoading(cmp, event, false);
        });
        
        $A.enqueueAction(action);
    },

    launchRecordEditModal: function(cmp, event, recordId, header){
        $A.createComponent("c:redu_recordEditForm", 
        {
            recordId : recordId ,
            objectApiName: cmp.get("v.childObjectApiName"),
            fieldSetName: cmp.get("v.childObjectFieldSet"),
            parentFieldName: cmp.get("v.parentObjectRefField"),
            parentId: cmp.get("v.currentRecordId")
        },
        function(content, status) {
            if (status === "SUCCESS") {
                cmp.find('overlayLib').showCustomModal({
                    header: header,
                    body: content, 
                    showCloseButton: false,
                    cssClass: "mymodal",
                    closeCallback: function() {
                        cmp.reload(cmp, event, this);
                    }
                })
            }                               
        });
    },

    handleEditRecord : function (cmp, event, row) {

        this.launchRecordEditModal(cmp, event, row.Id, "Edit" + cmp.get("v.editFormFieldsString"));

    },

    handleViewRecord: function(cmp, event, row){

        var rowId = this.getRowId(cmp, row);

        var navService = cmp.find("navService");
        var pageReference = {    
            "type": "standard__recordPage",
            "attributes": {
                "recordId": rowId,
                "actionName": "view"
            }
        }

        navService.generateUrl(pageReference)
        .then($A.getCallback(function(url) {
            console.log('success: ' + url); 
            window.open(url,'_blank'); 
        }), 
        $A.getCallback(function(error) {
            console.error('error: ' + error);
        }));
    },
    
    handleDeleteRecord: function (cmp, event, row) {
        
        var sobjectLabel = cmp.get("v.childObjectLabel");

        var confirmMsg = $A.get("$Label.c.redu_Custom_Related_List_Delete_Warning");
        //confirmMsg = confirmMsg.replaceAll("{0}", sobjectLabel);
        confirmMsg = this.format(confirmMsg, sobjectLabel);

        var doDelete = confirm(confirmMsg);

        if(doDelete){
            var action = cmp.get("c.deleteRecord");
            var rowId = this.getRowId(cmp, row);
            //console.log(rowId);
            action.setParams({
                recordId: rowId
            });

            action.setCallback(this, function(response) {
                var state = response.getState();
                if (state === "SUCCESS") {
                    var msg = response.getReturnValue();
                    
                    if(msg != '' && msg != null){
                        this.showToast(cmp, "error", "Error", msg);
                    } else {
                        this.resetData(cmp);
                        this.initDatatable(cmp, event);
                    }
                }
            });
            
            $A.enqueueAction(action);
        }
        
    },
    
    handleDownloadRecord: function (cmp, event, row) {
        
        if(cmp.get("v.childObjectApiName") != "ContentVersion"){
            this.showToast(cmp, "error", "Error", "Download is only supported for Files");
            return;
        }
        
        let recId = this.getRowId(cmp, row);
        //console.log('record: '+recId);
        
        let forCommunity = cmp.get("v.forCommunity");
        
        if (forCommunity){
            // window.open('/sfsites/c/sfc/servlet.shepherd/document/download/'+recId);
            window.open('/rioinstitution/sfc/servlet.shepherd/document/download/'+recId);
        }
        else{
            window.open('/sfc/servlet.shepherd/document/download/'+recId);
        }
    },

    getRowId: function(cmp, row){
        var rowId = '';
        if(cmp.get("v.childObjectApiName") === "ContentVersion"){
            rowId = row.ContentDocumentId;
        } else {
            rowId = row.Id;
        }

        return rowId;
    },

    handleLoading: function(cmp, event, isLoading){
        event.getSource().set("v.isLoading", isLoading);
        
        if(isLoading){
            cmp.set("v.loaded", false);
        } else {
            cmp.set("v.loaded", true);
        }
    },

    handleCardHeight : function(cmp, event){

        if(cmp.get('v.data').length * 30 > cmp.get("v.maxHeight")){
            cmp.set("v.heightCss", "height: " + cmp.get("v.maxHeight") + "px");
        } else {
            cmp.set("v.heightCss", "");
        }
    },

    sortData : function(cmp, event, sortedBy, sortedDirection){
        var data = cmp.get("v.data");
        var reverse = sortedDirection !== 'asc';
        data.sort(this.sortBy(sortedBy, reverse))
        cmp.set("v.data", data);
    },

    sortBy: function (field, reverse, primer) {
        var key = primer ?
            function(x) {return primer(x[field])} :
            function(x) {return x[field]};
        reverse = !reverse ? 1 : -1;
        return function (a, b) {
            return a = key(a), b = key(b), reverse * ((a > b) - (b > a));
        }
    },

    resetData : function(cmp){
        cmp.set("v.data", null);
        cmp.set("v.currentOffset", 0);
        cmp.set("v.enableInfiniteLoading", true);
    },

    //Added 22/06/2020 by CM
    //Format labels like apex
    format: function(string) {
        var outerArguments = arguments;
        return string.replace(/\{(\d+)\}/g, function() {
            return outerArguments[parseInt(arguments[1]) + 1];
        });
    },

    showToast : function(cmp, type, title, msg) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": msg,
            "type": type
        });
        toastEvent.fire();
    }
})