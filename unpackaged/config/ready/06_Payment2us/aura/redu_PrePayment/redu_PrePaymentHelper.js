({  
    REDIRECT_MSG: function(cmp){
        return $A.get("$Label.c.redu_PaymentHandler_Redirect_Message");
    },

    digestUrlParams : function(cmp, event){
        var urlParams = new URLSearchParams(window.location.search);
        
        if(urlParams.has('progappid')){
            cmp.set("v.progAppId", urlParams.get('progappid'));
        } else if(urlParams.has('studentfeeid')){
            cmp.set("v.studentFeeId", urlParams.get('studentfeeid'));
        }      
    },

    init : function(cmp, event) {
        if (cmp.get("v.studentFeeId")) {
            this.toggleSpinner(cmp, true);

            let action = cmp.get("c.pageMessage");
            action.setParams({
                studentFeeId: cmp.get("v.studentFeeId")                
            });

            action.setCallback(this, function(response){
                this.toggleSpinner(cmp, false);                

                var state = response.getState();                

                if (state === "SUCCESS") {
                    cmp.set("v.message", response.getReturnValue());
                } else {
                    let message = '';
                    let errors = response.getError();
                    if (errors) {
                        if (errors[0] && errors[0].message) {
                            message = errors[0].message;
                        }
                    } else {
                        message = "Unknown error";
                    }
                    cmp.set("v.message", message);
                }
            });

            $A.enqueueAction(action);
        } else {
            this.promptError(cmp, "Error", $A.get("$Label.c.redu_PaymentHandler_Missing_Student_Fee_Id") );
        }
        // cmp.set("v.message", this.REDIRECT_MSG());
    },

    confirmCharge : function(cmp, event) {

        if (cmp.get("v.studentFeeId") || cmp.get("v.progAppId")) {
            this.toggleSpinner(cmp, true);

            let action = cmp.get("c.initData");
            action.setParams({
                studentFeeId: cmp.get("v.studentFeeId"),
                progAppId: cmp.get("v.progAppId")
            });

            action.setCallback(this, function(response){
                this.toggleSpinner(cmp, false);                

                var state = response.getState();

                if (state === "SUCCESS") {
                    let ppInfo = response.getReturnValue();
                    cmp.set("v.prepaymentInfo", ppInfo);
                    cmp.set("v.studentFeeId", ppInfo.studentFee.Id);
                    this.navigateTo(cmp, ppInfo.paymentTrxUrl);                    
                } else {
                    let message = '';
                    let errors = response.getError();
                    if (errors) {
                        if (errors[0] && errors[0].message) {
                            message = errors[0].message;
                        }
                    } else {
                        message = "Unknown error";
                    }
                    cmp.set("v.message", message);
                }
            });

            $A.enqueueAction(action);
        } else {
            this.promptError(cmp, "Error", $A.get("$Label.c.redu_PaymentHandler_Missing_Student_Fee_Id") );
        }
        
    },

    redirectToPayment: function(cmp, event) {
        this.navigateTo(cmp, cmp.get("v.prepaymentInfo").paymentTrxUrl);
    },

    navigateTo: function(cmp, targetUrl){

        var navEvt = $A.get("e.force:navigateToURL");
        navEvt.setParams({
            "url": targetUrl
        });

        navEvt.fire();
    },

    promptSuccess : function(cmp, title, message) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": message,
            "type": "success"
        });

        toastEvent.fire();
    },

    promptError : function(cmp, title, message, errors) {
        if(!message){
            if (errors) {
                if (errors[0] && errors[0].message) {
                    message = errors[0].message;
                }
            } else {
                message = "Unknown error";
            }

            console.error(message);
        }

        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": title,
            "message": message,
            "type": "error",
            "mode": "sticky"
        });
        
        toastEvent.fire();
    },
    
    toggleSpinner: function(cmp, flag){
        cmp.set("v.isLoading", flag);

    }
})