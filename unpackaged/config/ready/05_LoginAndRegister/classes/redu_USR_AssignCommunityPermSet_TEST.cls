/**
 * @author      WDCi (LKoh)
 * @date        Dec 2021
 * @group       Test Class
 * @description Test functions for redu_USR_AssignCommunityPermSet_TDTM
 * 
 */
@isTest
private class redu_USR_AssignCommunityPermSet_TEST {
    
    @TestSetup
    static void setupData() {        
        rio_ed__RIO_Education_Settings__c defaultSetting = redu_LoginRegisterTest_UTIL.createBasicREDUSettings();
        insert defaultSetting;
    }

    //This test assumes the REDU - Student profile and permission set group exist
    private static testMethod void insertStudent(){

        //Create Trigger Handlers
        redu_USR_AssignCommunityPermSet_TDTM.installTDTMSetting();

        //Set up student profile
        Profile studentProfile = [SELECT Id, Name FROM Profile WHERE Name = 'REDU - Student'];
        System.assert(studentProfile != null, 'Could not find REDU - Student profile');
        
        //Set up student permission set group
        PermissionSetGroup checkPermissionSetGroup = [SELECT Id, DeveloperName FROM PermissionSetGroup ];
        System.debug('checkPermissionSetGroup:');
        System.debug(checkPermissionSetGroup);

        PermissionSetGroup studentPermissionSetGroup = [SELECT Id, DeveloperName FROM PermissionSetGroup WHERE DeveloperName = 'REDU_Student_Permission_Group'];
        System.assert(studentPermissionSetGroup != null, 'Could not find REDU - Student permission set group');
        

        //Assert only one permission set will be assigned
        System.assertEquals(1, redu_LoginRegister_UTIL.getStudentPermissionSetGroup().size());

        //Create student contact
        List<Contact> contactList = redu_LoginRegisterTest_UTIL.createContacts(1);
        insert contactList;
        Contact con = contactList[0];


        //Get org info for creating users
        Organization orgInfo = [SELECT TimeZoneSidKey, LanguageLocaleKey, DefaultLocaleSidKey FROM Organization WHERE Id =: UserInfo.getOrganizationId()];

        //Insert student user
        Test.startTest();

        User usr = new User();
        usr.FirstName = 'First name';
        usr.LastName = 'redu_USR_AssignCommunityPermSet_TEST';
        usr.Username = 'rUACPST1@fakeemail.com';
        usr.Email = 'rUACPST1@fakeemail.com';
        usr.ContactId = con.Id;
        usr.ProfileId = studentProfile.Id;
        usr.TimeZoneSidKey = orgInfo.TimeZoneSidKey;
        usr.LocaleSidKey = orgInfo.DefaultLocaleSidKey;
        usr.EmailEncodingKey = 'UTF-8';
        usr.LanguageLocaleKey = orgInfo.LanguageLocaleKey;
        usr.Alias = usr.Firstname.deleteWhitespace().left(2) + usr.Lastname.deleteWhitespace().right(2) + usr.Firstname.right(1);
        usr.CommunityNickname = 'Student.rUACPST1';
        usr.isActive = true;
        insert usr;

        Test.stopTest();

        //Assert student assignments were made
        List<PermissionSetAssignment> psaList = [SELECT Id, PermissionSetGroupId FROM PermissionSetAssignment WHERE AssigneeId = :usr.Id AND PermissionSetGroupId IN :redu_LoginRegister_UTIL.getStudentPermissionSetGroup()];
        System.assertEquals(1, psaList.size(), 'Wrong number of PermissionSetAssignements to student, ' + psaList);
        System.assertEquals(studentPermissionSetGroup.Id, psaList[0].PermissionSetGroupId, 'Wrong permission set assigned to student');
   
    }
}