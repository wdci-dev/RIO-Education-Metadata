({
	qsToEventMap: {
        'startURL'  : 'e.c:redu_SetStartURL'
    },
    
    qsToEventMap2: {
        'expid'  : 'e.c:redu_SetExpId'
    },
    
    handleSelfRegister: function (component, event) {

        // console.log('initializing handle Self Register');

        var accountId = component.get("v.accountId");
        var leadId = component.get("v.leadId");
        var regConfirmUrl = component.get("v.regConfirmUrl");
        var firstname = component.find("firstname").get("v.value");
        var lastname = component.find("lastname").get("v.value");
        var email = component.find("email").get("v.value");
        var includePassword = component.get("v.includePasswordField");
        var password = component.find("password").get("v.value");
        var confirmPassword = component.find("confirmPassword").get("v.value");
        
        var action = component.get("c.selfRegister");
        var startUrl = component.get("v.startUrl");
        
        var contactIdParam = component.get("v.contactIdParam");
        var hashParam = component.get("v.hashParam");
        var captchaResponse = component.get("v.recaptchaResponse");        
        var captchaEnabled = component.get("v.captchaEnabled");

        // console.log('captchaEnabled:');
        // console.log(captchaEnabled);
        // console.log('captchaResponse:');
        // console.log(captchaResponse);
        
        if (captchaEnabled != true) {
			component.set("v.allowSubmission", true);
        }
        startUrl = decodeURIComponent(startUrl);
        
        action.setParams({
            firstname:firstname, lastname:lastname, email:email, password:password, confirmPassword:confirmPassword, 
            accountId:accountId, leadId:leadId, regConfirmUrl:regConfirmUrl, startUrl:startUrl, includePassword:includePassword,
            contactIdParam:contactIdParam, hashParam:hashParam, captchaResponse:captchaResponse
        });
        action.setCallback(this, function(a) {

            if (captchaEnabled == true) {
                document.dispatchEvent(new Event("grecaptchaReset"));
                let myButton = component.find("submitButton");
                // myButton.set('v.disabled', true);
                component.set("v.allowSubmission", false);
            }

            var rtnValue = a.getReturnValue();

            // console.log('rtnValue:');
            // console.log(rtnValue);
            
            if (rtnValue !== null) {
                component.set("v.errorMessage",rtnValue);
                component.set("v.showError",true);
            }
        });
        
        var checkSubmission = component.get("v.allowSubmission");        
        // console.log('checkSubmission:');
        // console.log(checkSubmission);

        if (checkSubmission == true) {
            $A.enqueueAction(action);
        } else {
            var captchaErrorMessage = component.get("v.captchaErrorMsg");
            component.set("v.errorMessage", captchaErrorMessage);
            component.set("v.showError",true);
        }        
    },
    
    getExtraFields : function (component, event) {
        var action = component.get("c.getExtraFields");
        action.setParam("extraFieldsFieldSet", component.get("v.extraFieldsFieldSet"));
        action.setCallback(this, function(a){
        var rtnValue = a.getReturnValue();
            if (rtnValue !== null) {
                component.set('v.extraFields',rtnValue);
            }
        });
        $A.enqueueAction(action);
    },
    
    setBrandingCookie: function (component, event) {        
        var expId = component.get("v.expid");
        if (expId) {
            var action = component.get("c.setExperienceId");
            action.setParams({expId:expId});
            action.setCallback(this, function(a){ });
            $A.enqueueAction(action);
        }
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
    },
    
    getCaptchaStatus : function (component, event) {
        var action = component.get("c.checkCaptchaStatus");
        action.setCallback(this, function(a) {
            var rtnValue = a.getReturnValue();
            if (rtnValue !== null) {
                component.set('v.captchaEnabled', rtnValue);
            }
            // console.log('getCaptchaStatus:');
            // console.log(rtnValue);
            
            if (rtnValue == true) {
                // Captcha Events
                document.addEventListener("grecaptchaVerified", function(e) {
                    component.set('v.recaptchaResponse', e.detail.response);
                    
                    let myButton = component.find("submitButton");
                    // myButton.set('v.disabled', false);
                    component.set("v.allowSubmission", true);
                    
                    var checkSubmission1 = component.get("v.allowSubmission");            
                });
                
                document.addEventListener("grecaptchaExpired", function() {
                    let myButton = component.find("submitButton");
                    // myButton.set('v.disabled', true);
                    component.set("v.allowSubmission", false);
                });
            }            
        });
        $A.enqueueAction(action);
    }
})