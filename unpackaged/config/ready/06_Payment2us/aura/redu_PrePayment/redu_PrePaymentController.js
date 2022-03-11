({
    doInit : function(cmp, event, helper) {
        helper.digestUrlParams(cmp, event);

        helper.init(cmp, event);
    },

    handleCancel: function(cmp, event, helper){
        let gotoUrl = cmp.get("v.homeUrl");

        helper.navigateTo(cmp, gotoUrl);
    },

    handleConfirm: function(cmp, event, helper){
        helper.confirmCharge(cmp, event);
    }    
})