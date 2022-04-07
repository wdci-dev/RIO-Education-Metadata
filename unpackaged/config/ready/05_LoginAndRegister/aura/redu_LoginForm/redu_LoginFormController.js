({
    initialize: function(component, event, helper) {

        $A.get("e.siteforce:registerQueryEventMap").setParams({"qsToEvent" : helper.qsToEventMap}).fire();    
        $A.get("e.siteforce:registerQueryEventMap").setParams({"qsToEvent" : helper.qsToEventMap2}).fire();
        component.set('v.isUsernamePasswordEnabled', helper.getIsUsernamePasswordEnabled(component, event, helper));
        component.set("v.isSelfRegistrationEnabled", helper.getIsSelfRegistrationEnabled(component, event, helper));
        component.set("v.communityForgotPasswordUrl", helper.getCommunityForgotPasswordUrl(component, event, helper));
        component.set("v.communitySelfRegisterUrl", helper.getCommunitySelfRegisterUrl(component, event, helper));
        component.set("v.sso_URL", helper.getSSOURL(component, event, helper));
    },
    
    handleLogin: function (component, event, helper) {
        helper.handleLogin(component, event, helper);
    },
    
    redu_SetStartUrl: function (component, event, helper) {
        var startUrl = event.getParam('startURL');        

        // var leadID = event.getParam('leadID');
        var leadID = helper.getUrlParameter('leadID');        
        
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
        helper.setBrandingCookie(component, event, helper);
    },
    
    onKeyUp: function(component, event, helper){
        //checks for "enter" key
        if (event.getParam('keyCode')===13) {
            helper.handleLogin(component, event, helper);
        }
    },
    
    navigateToForgotPassword: function(cmp, event, helper) {

        var forgotPwdUrl = cmp.get("v.communityForgotPasswordUrl");
        if ($A.util.isUndefinedOrNull(forgotPwdUrl)) {
            forgotPwdUrl = cmp.get("v.forgotPasswordUrl");
        }
        var startUrl = cmp.get("v.startUrl");
        if(startUrl){
            if(forgotPwdUrl.indexOf("?") === -1) {
                forgotPwdUrl = forgotPwdUrl + '?startURL=' + decodeURIComponent(startUrl);
            } else {
                forgotPwdUrl = forgotPwdUrl + '&startURL=' + decodeURIComponent(startUrl);
            }
        }
        var attributes = { url: forgotPwdUrl };
        $A.get("e.force:navigateToURL").setParams(attributes).fire();
    },
    
    navigateToSelfRegister: function(cmp, event, helper) {

        var selfRegUrl = cmp.get("v.communitySelfRegisterUrl");
        if (selfRegUrl == null) {
            selfRegUrl = cmp.get("v.selfRegisterUrl");
        }
        var startUrl = cmp.get("v.startUrl");

        if(startUrl){
            var parsedStartUrl = decodeURIComponent(startUrl);
            if (startUrl.includes('%3F')) {
                parsedStartUrl = startUrl;
            }

            if(selfRegUrl.indexOf("?") === -1) {
                selfRegUrl = selfRegUrl + '?startURL=' + parsedStartUrl;
            } else {
                selfRegUrl = selfRegUrl + '&startURL=' + parsedStartUrl;
            }
        }
        var attributes = { url: selfRegUrl };
        $A.get("e.force:navigateToURL").setParams(attributes).fire();
    },
    
    /** 
    navigateToExistingStudent: function(cmp, event, helper) {
        
        console.log('navigateToExistingStudent firing...');
        // gets the <lightning:navigation> tag on the component
        let navService = cmp.find("navService");

        // Sets the route to [Org url]/[Community uri]/[pageName]
        let pageReference = {
            type: "comm__namedPage", // community page. See https://developer.salesforce.com/docs/atlas.en-us.lightning.meta/lightning/components_navigation_page_definitions.htm
            attributes: {
                name: 'Existing_Student__c' // pageName must be lower case
            }
        }

        navService.navigate(pageReference);
    }
    */
    
    navigateToExistingStudent: function(cmp, event, helper) {
        
        var existingStudentUrl = cmp.get("v.existingStudentUrl");

        var startUrl = cmp.get("v.startUrl");
        if(startUrl){
            if(existingStudentUrl.indexOf("?") === -1) {
                existingStudentUrl = existingStudentUrl + '?startURL=' + decodeURIComponent(startUrl);
            } else {
                existingStudentUrl = existingStudentUrl + '&startURL=' + decodeURIComponent(startUrl);
            }
        }

        var attributes = { url: existingStudentUrl };
        $A.get("e.force:navigateToURL").setParams(attributes).fire();
    },
    
    handleSSOLogin: function(cmp, event, helper) {

        var ssoLoginURL = cmp.get("v.sso_URL");
        var attributes = { url: ssoLoginURL };
        $A.get("e.force:navigateToURL").setParams(attributes).fire();
    }
})