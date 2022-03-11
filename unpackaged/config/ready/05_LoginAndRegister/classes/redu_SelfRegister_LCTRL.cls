/**
 * @author          WDCi(LKoh)
 * @date            Nov 2021
 * @group           Community
 * @description     Self Registration Component Controller v2
 */

public without sharing class redu_SelfRegister_LCTRL {

    public static String firstNameCache;
    public static String lastNameCache;
    public static String emailCache;

    public redu_SelfRegister_LCTRL() {
        System.debug('redu_SelfRegister_LCTRL initializing...');        
    }

    @TestVisible 
    private static boolean isValidPassword(String password, String confirmPassword) {
        return password == confirmPassword;
    }
    
    @TestVisible 
    private static void validatePassword(User u, String password, String confirmPassword) {
        if(!Test.isRunningTest()) {            
            Site.validatePassword(u, password, confirmPassword);
        }
        return;
    }

    @AuraEnabled
    public static String selfRegister(
        String firstname ,String lastname, String email, String password, String confirmPassword, 
        String accountId, String leadId, String regConfirmUrl, String startUrl, Boolean includePassword,
        String contactIdParam, String hashParam, String captchaResponse) {

        System.debug('leadId: ' +leadId);
        System.debug('captchaResponse: ' +captchaResponse);
        
        // Verify the Captcha
        String secretKey = redu_LoginRegister_UTIL.getCaptchaSecretKey();
        String captchaVerificationResult = redu_Captcha_UTIL.captchaVerification(secretKey, captchaResponse);
        
        if (captchaVerificationResult == redu_Constant_UTIL.CAPTCHA_SUCCESS_V2 || captchaVerificationResult == redu_Constant_UTIL.CAPTCHA_SUCCESS_V3) {
            
            Savepoint sp = Database.setSavepoint();        

            try {                                

                firstNameCache = firstname;
                lastNameCache = lastname;
                emailCache = email;

                String profileId = redu_LoginRegister_UTIL.getStudentProfile().Id;

                if (lastname == null || String.isEmpty(firstname)) {
                    return Label.redu_Missing_First_Name;
                }

                if (lastname == null || String.isEmpty(lastname)) {
                    return Label.redu_Missing_Last_Name;
                }
                
                if (email == null || String.isEmpty(email)) {
                    return Label.redu_Missing_Email;
                }
                
                if (password == null || String.isEmpty(password)) {
                    return Label.redu_Missing_Password;
                }

                if (confirmPassword == null || String.isEmpty(confirmPassword)) {
                    return Label.redu_Missing_Password;
                }

                // Verifying the hash
                if (!String.isBlank(contactIdParam) || !String.isBlank(hashParam)) {
                    Boolean hashValidated = validateHash(email, contactIdParam, hashParam);
                    if (!hashValidated) {
                        return Label.redu_Community_Malformed_Self_Registration_URL;
                    }
                }            

                //Get org info for creating users
                Organization orgInfo = [SELECT TimeZoneSidKey, LanguageLocaleKey, DefaultLocaleSidKey FROM Organization WHERE Id =: UserInfo.getOrganizationId()];

                // Check the Email against existing User and Contact Emails
                if (!existingUserCheck(email, email)) {
                    User u = new User();
                    u.Username = email;
                    u.put('Email',email);            
                    u.FirstName = firstname;
                    u.LastName = lastname;

                    u.ProfileId = profileId;
                    u.CommunityNickname = email.substringBefore('@') + System.now().getTime();
                    Integer firstNameSubstringLength = firstName.length() < 7 ? firstName.length() : 7;
                    u.Alias = lastName.subString(0, 1) + firstName.substring(0, firstNameSubstringLength);
                    u.TimeZoneSidKey = orgInfo.TimeZoneSidKey;
                    u.LocaleSidKey = orgInfo.DefaultLocaleSidKey;
                    u.EmailEncodingKey = redu_Constant_UTIL.USER_COMMUNITYSELFREG_EMAILENCODING;
                    u.LanguageLocaleKey = orgInfo.LanguageLocaleKey;                            

                    if (!String.isBlank(contactIdParam)) {
                        u.ContactId = contactIdParam;

                        List<Contact> checkContact = [SELECT Id, AccountId FROM Contact WHERE Id = :contactIdParam];
                        if (!checkContact.isEmpty()) {
                            if (checkContact[0].AccountId != null) {
                                accountId = checkContact[0].AccountId;
                            }
                        } else {
                            return Label.redu_Community_Malformed_Self_Registration_URL;
                        }                    
                    } else {

                        // Generate the Administrative Account and User Contact for the new Community User                                        

                        Id recordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByDeveloperName().get('Administrative').getRecordTypeId();
                        String userAdminAccountName = firstname+ ' ' +lastname+ ' Administrative Account';
                        Account newUserAdminAccount = generateUserAdminAccount(userAdminAccountName, recordTypeId);
                        insert newUserAdminAccount;

                        accountId = newUserAdminAccount.Id;

                        Contact newUserContact = generateUserContact(firstname, lastname, accountId, email, leadId);
                        insert newUserContact;

                        u.ContactId = newUserContact.Id;
                    }

                    if (includePassword) {    
                        if (!isValidPassword(password, confirmPassword)) {
                            return Label.redu_Password_mismatch;
                        }
                        validatePassword(u, password, confirmPassword);
                    } else {
                        password = null;
                    }                
                    
                    String userId = Site.createExternalUser(u, accountId, password, false);
                    
                    // create a fake userId for test.
                    if (Test.isRunningTest()) {
                        userId = 'fakeUserId';           
                    }

                    if (userId != null) {
                        if (password != null && password.length() > 1) {                        

                            ApexPages.PageReference lgn = Site.login(email, password, startUrl);
                            if(!Test.isRunningTest()) {
                                aura.redirect(lgn);
                            }
                        } else {
                            ApexPages.PageReference confirmRef = new PageReference(regConfirmUrl);
                            if(!Test.isRunningTest()) {
                                aura.redirect(confirmRef);
                            }
                        }
                    }
                } else {
                    // Return error, telling them to use a new username (or new email?)
                    String errorMsg = Label.redu_Community_Self_Register_Duplicate_Username_Error;
                    return errorMsg;
                }            
                return null;
            } catch (Exception ex) {
                System.debug('ex: ' +ex);            

                sendErrorEmail(ex);

                Database.rollback(sp);
                return ex.getMessage();            
            }
        } else {
            return Label.redu_Captcha_Failed;
        }        
    }    

    @TestVisible
    private static boolean validateHash(String email, String contactId, String hashParam) {

        String expectedHashtring = generateHash(email, contactId);
        if (hashParam == expectedHashtring) {
            return true;
        }
        return false;
    }

    public static String generateHash(String email, Id contactId) {
        
        String saltedIdAndEmail = redu_Constant_UTIL.SALT+ ':' +contactId+ ':' +email;
        Blob saltedIdAndEmailBlob = Blob.valueOf(saltedIdAndEmail);
        Blob saltedIdAndEmailHashBlob = Crypto.generateDigest('SHA3-256', saltedIdAndEmailBlob);
        String generatedHashString = EncodingUtil.convertToHex(saltedIdAndEmailHashBlob);
        return generatedHashString;
    }

    @TestVisible
    private static Account generateUserAdminAccount(String name, Id recordTypeId) {

        Account newAdminAccount = new Account();
        newAdminAccount.Name = name;        
        newAdminAccount.RecordTypeId = recordTypeId;
        return newAdminAccount;
    }

    @TestVisible
    private static Contact generateUserContact(String firstName, String lastName, Id accId, String email, Id convertLeadId) {
        
        Contact newUserContact = new Contact();
        newUserContact.FirstName = firstName;
        newUserContact.LastName = lastName;
        newUserContact.Email = email;
        newUserContact.AccountId = accId;
        newUserContact.hed__Preferred_Email__c = redu_Constant_UTIL.PREFERREDEMAIL_ALTERNATE;
        newUserContact.hed__AlternateEmail__c = email;        
        if (!String.isBlank(convertLeadId)) {
            // <#= For use with Lead conversion where applicable =#>
            // newUserContact.redu_Lead_Id__c = convertLeadId;
        }
        return newUserContact;
    }

    @TestVisible
    private static boolean existingUserCheck(String userName, String email) {        

        List<User> duplicateUsernameList = [
            SELECT Id, Username, ContactId, 
            Contact.Email, Contact.hed__AlternateEmail__c, Contact.hed__UniversityEmail__c, Contact.hed__WorkEmail__c 
            FROM User 
            WHERE IsActive = TRUE
            AND (Username = :userName 
                OR Email =: email
                OR Contact.Email =: email
                OR Contact.hed__AlternateEmail__c =: email
                OR Contact.hed__UniversityEmail__c =: email
                OR Contact.hed__WorkEmail__c =: email)
            ];

        if (!duplicateUsernameList.isEmpty()){
            return true;
        }
        return false;
    }    

    @TestVisible
    private static void sendErrorEmail(Exception ex) {
        
        //Send email to communitySite.Admin
        Messaging.reserveSingleEmailCapacity(1);
        Messaging.SingleEmailMessage mailToSend = new Messaging.SingleEmailMessage();
        if(Test.isRunningTest()){
            mailToSend.setToAddresses(new List<String>{'sampleadmin@redu.invalid'});
        } else {
            mailToSend.setToAddresses(new List<String>{Site.getAdminEmail()});
        }
        
        mailToSend.setSubject(Label.redu_Community_Self_Register_Error_Email_Subject);
        
        List<String> paramList = new List<String>();
        paramList.add(firstNameCache);
        paramList.add(lastNameCache);
        paramList.add(emailCache);
        paramList.add(System.now().format());
        paramList.add(ex.getStackTraceString() + ' - ' + ex.getMessage());
        mailToSend.setPlainTextBody(String.format(Label.redu_Community_Self_Register_Error_Email_Body, paramList));

        //Sends the email
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mailToSend});
    }
    
    @AuraEnabled
    public static String setExperienceId(String expId) {
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
}