({
        initCmp : function(cmp, event){

        var action = cmp.get("c.getCurrentLoggedInUser");

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
				let ret = response.getReturnValue();
                //console.log('ret: '+JSON.stringify(ret));
                cmp.set("v.currentRecordId", ret.ContactId);
                cmp.find('trList').reload();
                
            } else if (state === "ERROR") {
                var errors = response.getError();
                console.error(errors);
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        this.showToast(cmp, "error", "Error", errors[0].message);
                    }
                } else {
                    this.showToast(cmp, "error", "Error", "Unknown Error. Please contact the system administrator.");
                }
            }

        });
        
        $A.enqueueAction(action);
    },
    
    showToast : function(cmp, type, title, msg) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": msg,
            "type": type
        });
        toastEvent.fire();
    },
})