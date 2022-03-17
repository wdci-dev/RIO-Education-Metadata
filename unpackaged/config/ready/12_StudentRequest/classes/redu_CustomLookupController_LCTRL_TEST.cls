/**
 * @description       : 
 * @author            : Pasan (peeriyagama@wdcigroup.net)
 * @group             : 
 * @last modified on  : 04-08-2021
 * @last modified by  : Pasan (peeriyagama@wdcigroup.net)
**/

@IsTest
public class redu_CustomLookupController_LCTRL_TEST {

    testmethod static void testControllerFunction(){
        // Create a simple datafor functionality test
        List<Contact> listCon = new List<Contact>();
        String strFirstname = 'first';
        String strLastname = 'lastname';
        
        listCon.add(new Contact(Firstname=strFirstname, LastName= strLastname, rio_ed__Community_Username__c = 'somename', rio_ed__Community_Username_Prefix__c = 'somename', hed__Preferred_Email__c = 'Alternate Email', hed__AlternateEmail__c = 'somename@test.com'));
        insert listCon;
		        
        Contact con = (Contact) redu_CustomLookupController_LCTRL.getInitialValue(listCon[0].Id, 'Contact', 'Firstname,Lastname');
        
        System.debug('con '+con);
        System.assertEquals(strFirstname, con.FirstName);
        System.assertEquals(strLastname, con.LastName);
        
        // Check value retrieval
       	listCon = redu_CustomLookupController_LCTRL.getLookUpValues('first', 'Contact', 'Firstname,Lastname');
        
        System.assertEquals(1, listCon.size());
    }

    testmethod static void testControllerCustomFunction(){
        
        final string customQuery = 'Select Id, Name FROM Contact WHERE (FirstName LIKE: searchKey OR LastName LIKE: searchKey) AND rio_ed__Faculty_Member__c = true ORDER BY CreatedDate DESC';
        final Map<String, String> objectToFieldsMap = new Map<String, String>{'Contact'=>'Id, Name, FirstName, LastName', 'rio_ed__Qualified_Faculty__c'=>'rio_ed__Faculty__c, rio_ed__Course__c'};

        // Create Test Data:
        List<Contact> contactList = new List<Contact>();
        Contact c1 = new Contact();
        c1.FirstName = 'First';
        c1.LastName = 'Lastname1';
        c1.Email = 'RCLCLT_c1@fakeemail.com';
        c1.rio_ed__Faculty_Member__c = true;
        Contact c2 = new Contact();
        c2.FirstName = 'First';
        c2.LastName = 'Lastname2';
        c2.Email = 'RCLCLT_c2@fakeemail.com';
        c2.rio_ed__Faculty_Member__c = true;
        Contact c3 = new Contact();
        c3.FirstName = 'Abigail';
        c3.LastName = 'Lastname3';
        c3.Email = 'RCLCLT_c3@fakeemail.com';
        c3.rio_ed__Faculty_Member__c = true;
        Contact c4 = new Contact();
        c4.FirstName = 'First';
        c4.LastName = 'Lastname4';
        c4.Email = 'RCLCLT_c4@fakeemail.com';
        c4.rio_ed__Faculty_Member__c = false;
        contactList.add(c1);
        contactList.add(c2);
        contactList.add(c3);
        contactList.add(c4);
        insert contactList;

        //Test 
        //Empty string, should return all faculty members
        List<Contact> returnedList = redu_CustomLookupController_LCTRL.getLookUpValuesCustom('', objectToFieldsMap, customQuery);
        system.assertEquals(3, returnedList.size(), 'Failed to return all Faculty members');

        //Search Lastname, should return all faculty again
        returnedList = redu_CustomLookupController_LCTRL.getLookUpValuesCustom('Lastname', objectToFieldsMap, customQuery);
        system.assertEquals(3, returnedList.size(), 'Failed to return all Faculty members searching by lastname');
        
        //Search Fir, should return only 2 faculty (c1 and c2)
        returnedList = redu_CustomLookupController_LCTRL.getLookUpValuesCustom('Fir', objectToFieldsMap, customQuery);
        system.assertEquals(2, returnedList.size(), 'Failed to return expected results');

    }
}