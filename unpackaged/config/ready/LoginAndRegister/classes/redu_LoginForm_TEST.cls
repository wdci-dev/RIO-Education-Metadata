@IsTest
public with sharing class redu_LoginForm_TEST {

    static testMethod void testLogin() {
        Test.startTest();
        
        redu_LoginForm_LCTRL.login('tester@test.com', '12345', 'www.test.com');
        redu_LoginForm_LCTRL.getForgotPasswordUrl();
        redu_LoginForm_LCTRL.setExperienceId(null);

        Test.stopTest();
    }

    static testMethod void redu_LoginForm_LCTRLInstantiation() {
        redu_LoginForm_LCTRL controller = new redu_LoginForm_LCTRL();
        System.assertNotEquals(controller, null);
    }

    static testMethod void testIsUsernamePasswordEnabled() {
        System.assertEquals(true, redu_LoginForm_LCTRL.getIsUsernamePasswordEnabled());
    }

    static testMethod void testIsSelfRegistrationEnabled() {
        System.assertEquals(false, redu_LoginForm_LCTRL.getIsSelfRegistrationEnabled());
    }

    static testMethod void testGetSelfRegistrationURL() {
        System.assertEquals(null, redu_LoginForm_LCTRL.getSelfRegistrationUrl());
    }

    static testMethod void testAuthConfig() {
        Auth.AuthConfiguration authConfig = redu_LoginForm_LCTRL.getAuthConfig();
        System.assertNotEquals(null, authConfig);
    }

    static testMethod void testSSO() {
        
        try {
            /** 
            // String ssoCommunityURL = Network.communitiesLanding().getUrl();
            // String ssoCommunityURL = Network.getLoginUrl(networkId);
            */

            String ssoCommunityURL = 'loginaddon-developer-edition.na163.force.com';
            String ssologinStartURL = '';
            String ssoSettingName = 'testSSOSettingName';
            redu_LoginForm_LCTRL.getSSOURL(ssoCommunityURL, ssologinStartURL, ssoSettingName);
        } catch(Exception e) {
            
        }      
    }
}