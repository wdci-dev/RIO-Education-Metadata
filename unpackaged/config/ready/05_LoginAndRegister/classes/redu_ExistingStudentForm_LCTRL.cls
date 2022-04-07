/**
 * @author          WDCi(LKoh)
 * @date            June 2021
 * @group           Community
 * @description     Existing Student Form Component Controller
 */

public without sharing class redu_ExistingStudentForm_LCTRL {
    
    @AuraEnabled
    public static String checkEmail(String email, String regConfirmUrl) {

        System.debug('email:');
        System.debug(email);

        String responseString = '';

        Savepoint sp = null;

        List<Contact> userContactSearch = [SELECT Id, Email, Firstname, Lastname, AccountId FROM Contact WHERE Email = :email];

        // Contact found for the email provided
        if (!userContactSearch.isEmpty()) {
            
            Contact userContact = userContactSearch[0];
            List<User> communityUserSearch = [SELECT Id FROM User WHERE ContactId = :userContact.Id AND isActive = true];
                        
            // Active Community User for the Contact found
            if (!communityUserSearch.isEmpty()) {

                // Warn the user that there's an active user for it and they should use forget password
                return 'Existing Active User';
            } else {
                // There's no active user for the Contact, create a new user for the Contact and let Salesforce send the confirmation email                
                try {
                    sp = Database.setSavepoint();                                        
                    
                    User u = new User();
                    u.Username = userContact.Email;
                    u.put('Email', userContact.Email);
                    
                    u.FirstName = userContact.Firstname;
                    u.LastName = userContact.Lastname;                                    

                    String profileId = redu_LoginRegister_UTIL.getStudentProfile().Id;
                    //Get org info for creating users
                    Organization orgInfo = [SELECT TimeZoneSidKey, LanguageLocaleKey, DefaultLocaleSidKey FROM Organization WHERE Id =: UserInfo.getOrganizationId()];

                    u.ProfileId = profileId;
                    u.CommunityNickname = email.substringBefore('@') + System.now().getTime();
                    Integer firstNameSubstringLength = userContact.FirstName.length() < 7 ? userContact.FirstName.length() : 7;
                    u.Alias = userContact.LastName.subString(0, 1) + userContact.FirstName.substring(0, firstNameSubstringLength);
                    u.TimeZoneSidKey = orgInfo.TimeZoneSidKey;
                    u.LocaleSidKey = orgInfo.DefaultLocaleSidKey;
                    u.EmailEncodingKey = redu_Constant_UTIL.USER_COMMUNITYSELFREG_EMAILENCODING;
                    u.LanguageLocaleKey = orgInfo.LanguageLocaleKey;
                    u.ContactId = userContact.Id;

                    Id accountId;
                    if (userContact.AccountId != null) {
                        accountId = userContact.AccountId;                        
                    } else {
                        return 'No Account for the User found';
                    }
                                                                    
                    String userId = Site.createPortalUser(u, accountId, null);
                    
                    // create a fake userId for test.
                    if (Test.isRunningTest()) {
                        userId = 'fakeUserId';           
                    }

                    if (userId != null) {
                        ApexPages.PageReference confirmRef = new PageReference(regConfirmUrl);
                        if(!Test.isRunningTest()) {
                            aura.redirect(confirmRef);
                        }
                    }
                    return null;
                } catch (Exception ex) {
                    Database.rollback(sp);
                    return ex.getMessage();            
                }
            }
        } else {
            return 'No Contact found';
        }    
    }
}