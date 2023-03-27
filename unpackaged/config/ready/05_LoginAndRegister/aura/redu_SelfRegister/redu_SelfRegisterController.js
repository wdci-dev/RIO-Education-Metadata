({
	initialize: function(component, event, helper) {
        // console.log('Self Register v1.0a');               
        
		var leadId = helper.getUrlParameter("leadId");
        component.set("v.leadId", leadId);
        
        var captchaErrorMessage = $A.get("$Label.c.redu_Unsolved_Captcha");        
        component.set("v.captchaErrorMsg", captchaErrorMessage);

        // reCaptcha check and event initialization
        helper.getCaptchaStatus(component, event);               
        
        $A.get("e.siteforce:registerQueryEventMap").setParams({"qsToEvent" : helper.qsToEventMap}).fire();
        $A.get("e.siteforce:registerQueryEventMap").setParams({"qsToEvent" : helper.qsToEventMap2}).fire();                

        var emailParam = helper.getUrlParameter("email");        
        if (emailParam) {
            var contactIdParam = helper.getUrlParameter("cid");
            var hashParam = helper.getUrlParameter("ep");

            component.set("v.emailParam", emailParam);
            component.set("v.contactIdParam", contactIdParam);
            component.set("v.hashParam", hashParam);            

            component.find("email").set("v.value", emailParam);            
        }        
    },
    
    onRender: function (component, event, helper){ 
        document.dispatchEvent(new CustomEvent("grecaptchaRender", { "detail" : { element: 'recaptchaCheckbox'} }));
    },
    
    handleSelfRegister: function (component, event, helper) {
        helper.handleSelfRegister(component, event);
    },
    
    redu_SetStartUrl: function (component, event, helper) {
        var startUrl = event.getParam('startURL');
        // console.log('startUrl:');
        // console.log(startUrl);

        var leadID = helper.getUrlParameter('leadID');
        // console.log('leadID:');
        // console.log(leadID);        

        if(startUrl) {
            if (leadID && !startUrl.includes('%3FleadID%3D')) {
                startUrl += '%3FleadID%3D' +leadID;
            }
            component.set("v.startUrl", startUrl);            
        }
    },
    
    redu_SetExpId: function (component, event, helper) {
        var expId = event.getParam('expid');
        if (expId) {
            component.set("v.expid", expId);
        }
        helper.setBrandingCookie(component, event);
    },
    
    onKeyUp: function(component, event, helper){
        //checks for "enter" key
        if (event.getParam('keyCode')===13) {
            helper.handleSelfRegister(component, event);
        }
    },

    // function automatic called by aura:waiting event  
    showSpinner: function(component, event, helper) {
        // make Spinner attribute true for displaying loading spinner 
        component.set("v.spinner", true); 
    },
     
    // function automatic called by aura:doneWaiting event 
    hideSpinner : function(component,event,helper){
        // make Spinner attribute to false for hiding loading spinner    
        component.set("v.spinner", false);
    }
})