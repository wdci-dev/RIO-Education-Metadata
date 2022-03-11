global class redu_LoginForm_LCTRL {

    public redu_LoginForm_LCTRL() {
        
    }

    @AuraEnabled
    public static String login(String username, String password, String startUrl) {
        try {
            // System.debug('login initialized:');
            // System.debug(startUrl);
            ApexPages.PageReference lgn = Site.login(username, password, startUrl);
            aura.redirect(lgn);
            return null;
        } catch (Exception ex) {        
            System.debug('Exception when logging in:');
            System.debug(ex);
            return ex.getMessage();            
        }
    }
    
    @AuraEnabled
    public static Boolean getIsUsernamePasswordEnabled() {
        Auth.AuthConfiguration authConfig = getAuthConfig();
        return authConfig.getUsernamePasswordEnabled();
    }

    @AuraEnabled
    public static Boolean getIsSelfRegistrationEnabled() {
        Auth.AuthConfiguration authConfig = getAuthConfig();
        return authConfig.getSelfRegistrationEnabled();
    }

    @AuraEnabled
    public static String getSelfRegistrationUrl() {
        Auth.AuthConfiguration authConfig = getAuthConfig();
        if (authConfig.getSelfRegistrationEnabled()) {
            return authConfig.getSelfRegistrationUrl();
        }
        return null;
    }

    @AuraEnabled
    public static String getForgotPasswordUrl() {
        Auth.AuthConfiguration authConfig = getAuthConfig();
        return authConfig.getForgotPasswordUrl();
    }
    
    @TestVisible
    private static Auth.AuthConfiguration getAuthConfig(){
        Id networkId = Network.getNetworkId();
        Auth.AuthConfiguration authConfig = new Auth.AuthConfiguration(networkId,'');
        return authConfig;
    }

    @AuraEnabled
    global static String setExperienceId(String expId) {
        // Return null if there is no error, else it will return the error message 
        try {
            if (expId != null) {
                Site.setExperienceId(expId);
            }
            return null; 
        } catch (Exception ex) {
            return ex.getMessage();            
        }
    }

    @AuraEnabled
    public static String getSSOURL(String ssoCommunityURL, String ssologinStartURL, String ssoSettingName) {
        try {            
            String communityUrl = ssoCommunityURL;
            String startUrl = ssologinStartURL;
            
            // Auth.AuthConfiguration authConfig = new Auth.AuthConfiguration(communityUrl, startUrl);
            List<SamlSsoConfig> samlConfigList = [SELECT DeveloperName, Id FROM SamlSsoConfig WHERE DeveloperName = :ssoSettingName];

            if (samlConfigList.isEmpty()) {
                System.debug('SSO Setting with the DevName: ' +ssoSettingName+ ' not found');
                throw new AuraHandledException('SSO not configured');
            } else {
                Id samlId = samlConfigList[0].Id;
                String sso = Auth.AuthConfiguration.getSamlSsoUrl(communityUrl, startUrl, samlId);
                // System.debug(sso);
                return sso;
            }            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}