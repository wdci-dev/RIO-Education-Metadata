({
    checkEmail: function (component, event, helpler) {
        
        var emailtocheck = component.find("emailcheck").get("v.value");        

        var existingActiveUserMsg = component.get("v.existingActiveUserMsg");
        var noContactMsg = component.get("v.noContactMsg");
        var regConfirmUrl = component.get("v.regConfirmUrl");
        
        var action = component.get("c.checkEmail");                
        action.setParams({email:emailtocheck,regConfirmUrl:regConfirmUrl});
        action.setCallback(this, function(a){
            var rtnValue = a.getReturnValue();
            console.log('email Check:');
            console.log(JSON.stringify(rtnValue));
            if (rtnValue !== null) {

                if (rtnValue == 'Existing Active User') {
                    component.set("v.pageControl", 'existingUserFound');
                } else if (rtnValue == 'No Contact found') {
                    component.set("v.pageControl", 'noContactFound');
                } else {
                    component.set("v.errorMessage",rtnValue);
                    component.set("v.showError",true);
                }                
            }
        });
        $A.enqueueAction(action);
    },

    getUrlParameter : function(sParam) {
        var sPageURL = decodeURIComponent(window.location.search.substring(1)),
            sURLVariables = sPageURL.split('&'),
            sParameterName,
            i;
    
        for (i = 0; i < sURLVariables.length; i++) {
            sParameterName = sURLVariables[i].split('=');
    
            if (sParameterName[0] === sParam) {
                return sParameterName[1] === undefined ? true : sParameterName[1];
            }
        }
    }
})