BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Campus__c" VARCHAR(255), 
	"rio_ed__Program_Code__c" VARCHAR(255), 
	"rio_ed__Program_Structure_Type__c" VARCHAR(255), 
	"rio_ed__Timezone__c" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	"hed__Primary_Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(2,'ISD-ACCT-15','Educator Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','10');
INSERT INTO "Account" VALUES(3,'ISD-ACCT-16','Cruz Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','11');
INSERT INTO "Account" VALUES(4,'ISD-ACCT-17','Randall Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','12');
INSERT INTO "Account" VALUES(5,'ISD-ACCT-18','Robinson Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','13');
INSERT INTO "Account" VALUES(6,'ISD-ACCT-19','Burton Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','14');
INSERT INTO "Account" VALUES(7,'ISD-ACCT-20','Wang Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','15');
INSERT INTO "Account" VALUES(8,'ISD-ACCT-21','Poole Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','16');
INSERT INTO "Account" VALUES(9,'ISD-ACCT-22','Vance Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','17');
INSERT INTO "Account" VALUES(10,'ISD-ACCT-23','Steward Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','18');
INSERT INTO "Account" VALUES(11,'ISD-ACCT-24','Mack Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','19');
INSERT INTO "Account" VALUES(12,'ISD-ACCT-25','Shay Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','20');
INSERT INTO "Account" VALUES(13,'ISD-ACCT-26','Richards Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','21');
INSERT INTO "Account" VALUES(14,'ISD-ACCT-27','Hunter Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','22');
INSERT INTO "Account" VALUES(15,'ISD-ACCT-28','Daily Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','23');
INSERT INTO "Account" VALUES(16,'ISD-ACCT-29','Short Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','24');
INSERT INTO "Account" VALUES(17,'ISD-ACCT-30','Shelton Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','25');
INSERT INTO "Account" VALUES(18,'ISD-ACCT-31','Underwood Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','26');
INSERT INTO "Account" VALUES(19,'ISD-ACCT-32','Kramer Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','27');
INSERT INTO "Account" VALUES(24,'ISD-ACCT-01','School of Business','0128a000000tbboAAA','False','','Full Program','','28','3');
INSERT INTO "Account" VALUES(25,'ISD-ACCT-02','Bachelor of Business Management','0128a000000tbbiAAA','False','RIOUNI03','Full Program','','24','');
INSERT INTO "Account" VALUES(26,'ISD-ACCT-03','Campus: Sunshine Coast','0128a000000tbcmAAA','True','','Full Program','Australia/Brisbane','28','');
INSERT INTO "Account" VALUES(27,'ISD-ACCT-04','Campus: Brisbane','0128a000000tbcmAAA','True','','Full Program','Australia/Brisbane','28','');
INSERT INTO "Account" VALUES(28,'ISD-ACCT-05','RIO University','0128a000000tbblAAA','False','','Full Program','','','');
INSERT INTO "Account" VALUES(29,'ISD-ACCT-06','Campus: Sydney','0128a000000tbcmAAA','True','','Full Program','Australia/Sydney','28','');
INSERT INTO "Account" VALUES(30,'ISD-ACCT-07','School of Art','0128a000000tbboAAA','False','','Full Program','','28','');
INSERT INTO "Account" VALUES(31,'ISD-ACCT-08','Bachelor of Business Information System','0128a000000tbbiAAA','False','RIOUNI02','Full Program','','24','');
INSERT INTO "Account" VALUES(32,'ISD-ACCT-09','Freeman Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','4');
INSERT INTO "Account" VALUES(33,'ISD-ACCT-10','Christensen Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','5');
INSERT INTO "Account" VALUES(34,'ISD-ACCT-11','Smith Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','6');
INSERT INTO "Account" VALUES(35,'ISD-ACCT-12','Forton Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','7');
INSERT INTO "Account" VALUES(36,'ISD-ACCT-13','Huber Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','8');
INSERT INTO "Account" VALUES(37,'ISD-ACCT-14','Andrews Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','9');
INSERT INTO "Account" VALUES(53,'ISD-ACCT-33','Educator Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','1');
INSERT INTO "Account" VALUES(57,'ISD-ACCT-34','Educator Administrative Account','0128a000000tbbjAAA','False','','Full Program','','','2');
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbbiAAA','Academic_Program');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbbjAAA','Administrative');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbbkAAA','Business_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbblAAA','Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbclAAA','External_Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbbmAAA','HH_Account');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbcmAAA','Location');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbbnAAA','Sports_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0128a000000tbboAAA','University_Department');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"hed__AlternateEmail__c" VARCHAR(255), 
	"hed__Country_of_Origin__c" VARCHAR(255), 
	"hed__Gender__c" VARCHAR(255), 
	"hed__Preferred_Email__c" VARCHAR(255), 
	"hed__UniversityEmail__c" VARCHAR(255), 
	"rio_ed__Community_Username_Prefix__c" VARCHAR(255), 
	"rio_ed__Community_Username__c" VARCHAR(255), 
	"rio_ed__Faculty_Member__c" VARCHAR(255), 
	"rio_ed__Student_ID__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'ISD-CT-26','','gef@gef.gef','Gary','Educator','','','','','','','','','','University Email','gef@gef.gef','','','True','','53');
INSERT INTO "Contact" VALUES(2,'ISD-CT-27','','fef@fef.fef','Fendi','Educator','','','','','','','','','','University Email','fef@fef.fef','','','True','','57');
INSERT INTO "Contact" VALUES(3,'ISD-CT-01','','fran@riouni.edu','Fran','Fisher','','','','','','Ms.','','','Female','University Email','fran@riouni.edu','','','True','','24');
INSERT INTO "Contact" VALUES(4,'ISD-CT-02','','fred@riouni.edu','Freddie','Freeman','','','','','','Mr.','','','Male','University Email','fred@riouni.edu','','','True','','32');
INSERT INTO "Contact" VALUES(5,'ISD-CT-03','2002-06-29','bchristensen@riouni.com','Bonnie','Christensen','Montgomery','USA','36109','AL','7253 Snake Hill Lane','','','United States of America (the)','Female','University Email','bchristensen@riouni.com','','','False','rio000000011','33');
INSERT INTO "Contact" VALUES(6,'ISD-CT-04','','jsmith@riouni.edu','John','Smith','','','','','','','jsmith@riouni.edu','','Male','Alternate Email','','john.smith','john.smith@rioedplayground.com','False','','34');
INSERT INTO "Contact" VALUES(7,'ISD-CT-05','','fiona@riouni.edu','Fiona','Forton','','','','','','Ms.','','','Female','University Email','fiona@riouni.edu','','','True','','35');
INSERT INTO "Contact" VALUES(8,'ISD-CT-06','2003-10-01','ehuber@riouni.com','Eleanor','Huber','Charlotte','USA','28205','NC','301 W. Wild Rose Street','','','United States of America (the)','Female','University Email','ehuber@riouni.com','','','False','rio000000012','36');
INSERT INTO "Contact" VALUES(9,'ISD-CT-07','2003-05-28','candrews@riouni.com','Charlotte','Andrews','Pickerington','USA','43147','OH','9946 Ocean St.','','','United States of America (the)','Female','University Email','candrews@riouni.com','','','False','rio000000013','37');
INSERT INTO "Contact" VALUES(10,'ISD-CT-08','','eef@eef.eef','Edward','Educator','','','','','','','','','Male','University Email','eef@eef.eef','','','True','','2');
INSERT INTO "Contact" VALUES(11,'ISD-CT-09','2001-06-26','tcruz@riouni.com','Tim','Cruz','Latrobe','USA','15650','PA','9867 Windfall Ave.','','','United States of America (the)','Male','University Email','tcruz@riouni.com','','','False','rio000000014','3');
INSERT INTO "Contact" VALUES(12,'ISD-CT-10','2001-12-19','hrandall@riouni.com','Howard','Randall','Dalton','USA','30721','GA','880 Chapel Street','','','United States of America (the)','Male','University Email','hrandall@riouni.com','','','False','rio000000015','4');
INSERT INTO "Contact" VALUES(13,'ISD-CT-11','2001-04-18','grobinson@riouni.com','Gregg','Robinson','Billerica','USA','01821','MA','302 W. Cardinal Lane','','','United States of America (the)','Male','University Email','grobinson@riouni.com','','','False','rio000000016','5');
INSERT INTO "Contact" VALUES(14,'ISD-CT-12','2002-01-11','gburton@riouni.com','Gwen','Burton','Hinesville','USA','31313','GA','7778 Canterbury Street','','','United States of America (the)','Female','University Email','gburton@riouni.com','','','False','rio000000017','6');
INSERT INTO "Contact" VALUES(15,'ISD-CT-13','2002-03-18','lwang@riouni.com','Lucy','Wang','Lynchburg','USA','24502','VA','7364 W. Arlington Street','','','United States of America (the)','Female','University Email','lwang@riouni.com','','','False','rio000000018','7');
INSERT INTO "Contact" VALUES(16,'ISD-CT-14','2001-09-01','spoole@riouni.com','Sidney','Poole','Alabaster','USA','35007','AL','276 Essex Ave.','','','United States of America (the)','Male','University Email','spoole@riouni.com','','','False','rio000000019','8');
INSERT INTO "Contact" VALUES(17,'ISD-CT-15','2001-04-22','bvance@riouni.com','Brenda','Vance','Maineville','USA','45039','OH','7514 Westport Ave.','','','United States of America (the)','Female','University Email','bvance@riouni.com','','','False','rio000000020','9');
INSERT INTO "Contact" VALUES(18,'ISD-CT-16','2003-02-24','ksteward@riouni.com','Kristin','Steward','Edison','USA','08817','NJ','925 Princess Ave.','','','United States of America (the)','Female','University Email','ksteward@riouni.com','','','False','rio000000010','10');
INSERT INTO "Contact" VALUES(19,'ISD-CT-17','2002-11-06','emack@riouni.com','Emmanuel','Mack','Taylors','USA','29687','SC','8591 Blackburn Street','','','United States of America (the)','Male','University Email','emack@riouni.com','','','False','rio000000009','11');
INSERT INTO "Contact" VALUES(20,'ISD-CT-18','2003-05-02','cshay@riouni.com','Christy','Shay','Decatur','USA','30030','GA','7717 Tower St.','','','United States of America (the)','Female','University Email','cshay@riouni.com','','','False','rio000000008','12');
INSERT INTO "Contact" VALUES(21,'ISD-CT-19','2001-08-17','brichards@riouni.com','Brandy','Richards','Hanover Park','USA','60133','IL','8 Fulton St.','','','United States of America (the)','Female','University Email','brichards@riouni.com','','','False','rio000000007','13');
INSERT INTO "Contact" VALUES(22,'ISD-CT-20','2003-05-12','shunter@riouni.com','Sammy','Hunter','Niles','USA','49120','MI','209 Greenview Drive','','','United States of America (the)','Male','University Email','shunter@riouni.com','','','False','rio000000006','14');
INSERT INTO "Contact" VALUES(23,'ISD-CT-21','2001-10-14','ldaily@riouni.com','Lorna','Daily','Gallatin','USA','37066','TN','9 Arnold Rd.','','','','Female','University Email','ldaily@riouni.com','','','False','rio000000005','15');
INSERT INTO "Contact" VALUES(24,'ISD-CT-22','2002-12-08','bshort@riouni.com','Buddy','Short','Dearborn','USA','48124','MI','9420 West Drive','','','United States of America (the)','Male','University Email','bshort@riouni.com','','','False','rio000000004','16');
INSERT INTO "Contact" VALUES(25,'ISD-CT-23','2002-01-21','mshelton@riouni.com','Madeline','Shelton','Niceville','USA','32578','FL','7200 Hartford Drive','','','United States of America (the)','Female','University Email','mshelton@riouni.com','','','False','rio000000003','17');
INSERT INTO "Contact" VALUES(26,'ISD-CT-24','2002-12-21','dunderwood@riouni.com','Donna','Underwood','Madisonville','USA','42431','KY','32 Orange Lane','','','United States of America (the)','Female','University Email','dunderwood@riouni.com','','','False','rio000000002','18');
INSERT INTO "Contact" VALUES(27,'ISD-CT-25','2003-03-23','dkramer@riouni.com','Doris','Kramer','Powder Springs','USA','30127','GA','967 Fordham St.','','','United States of America (the)','Female','University Email','dkramer@riouni.com','','','False','rio000000001','19');
CREATE TABLE "hed__Affiliation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"hed__Role__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Affiliation__c" VALUES(1,'ISD-AFF-28','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(2,'ISD-AFF-29','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(3,'ISD-AFF-30','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(4,'ISD-AFF-31','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(5,'ISD-AFF-32','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(6,'ISD-AFF-33','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(7,'ISD-AFF-34','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(8,'ISD-AFF-35','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(9,'ISD-AFF-36','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(10,'ISD-AFF-37','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(11,'ISD-AFF-38','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(12,'ISD-AFF-39','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(13,'ISD-AFF-40','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(14,'ISD-AFF-41','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(15,'ISD-AFF-42','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(16,'ISD-AFF-43','','Former','31','12');
INSERT INTO "hed__Affiliation__c" VALUES(17,'ISD-AFF-44','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(18,'ISD-AFF-45','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(19,'ISD-AFF-46','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(20,'ISD-AFF-47','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(21,'ISD-AFF-48','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(22,'ISD-AFF-49','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(23,'ISD-AFF-50','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(24,'ISD-AFF-51','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(25,'ISD-AFF-52','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(26,'ISD-AFF-53','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(27,'ISD-AFF-54','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(28,'ISD-AFF-55','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(29,'ISD-AFF-56','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(30,'ISD-AFF-57','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(31,'ISD-AFF-58','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(32,'ISD-AFF-59','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(33,'ISD-AFF-60','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(34,'ISD-AFF-61','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(35,'ISD-AFF-62','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(36,'ISD-AFF-03','Faculty','Current','24','3');
INSERT INTO "hed__Affiliation__c" VALUES(37,'ISD-AFF-04','Faculty','Current','24','4');
INSERT INTO "hed__Affiliation__c" VALUES(38,'ISD-AFF-01','Faculty','Current','24','7');
INSERT INTO "hed__Affiliation__c" VALUES(39,'ISD-AFF-02','Faculty','Current','24','10');
INSERT INTO "hed__Affiliation__c" VALUES(40,'ISD-AFF-05','','Current','31','5');
INSERT INTO "hed__Affiliation__c" VALUES(41,'ISD-AFF-06','','Former','31','6');
INSERT INTO "hed__Affiliation__c" VALUES(42,'ISD-AFF-07','','Current','31','6');
INSERT INTO "hed__Affiliation__c" VALUES(43,'ISD-AFF-08','','Current','31','8');
INSERT INTO "hed__Affiliation__c" VALUES(44,'ISD-AFF-09','','Current','31','9');
INSERT INTO "hed__Affiliation__c" VALUES(45,'ISD-AFF-27','','Current','31','13');
INSERT INTO "hed__Affiliation__c" VALUES(46,'ISD-AFF-10','','Current','31','14');
INSERT INTO "hed__Affiliation__c" VALUES(47,'ISD-AFF-11','','Current','31','15');
INSERT INTO "hed__Affiliation__c" VALUES(48,'ISD-AFF-12','','Current','31','16');
INSERT INTO "hed__Affiliation__c" VALUES(49,'ISD-AFF-13','','Current','31','17');
INSERT INTO "hed__Affiliation__c" VALUES(50,'ISD-AFF-14','','Current','31','18');
INSERT INTO "hed__Affiliation__c" VALUES(51,'ISD-AFF-15','','Former','31','18');
INSERT INTO "hed__Affiliation__c" VALUES(52,'ISD-AFF-16','','Former','31','18');
INSERT INTO "hed__Affiliation__c" VALUES(53,'ISD-AFF-17','','Former','31','18');
INSERT INTO "hed__Affiliation__c" VALUES(54,'ISD-AFF-18','','Current','31','19');
INSERT INTO "hed__Affiliation__c" VALUES(55,'ISD-AFF-19','','Current','31','20');
INSERT INTO "hed__Affiliation__c" VALUES(56,'ISD-AFF-20','','Current','31','21');
INSERT INTO "hed__Affiliation__c" VALUES(57,'ISD-AFF-21','','Current','31','22');
INSERT INTO "hed__Affiliation__c" VALUES(58,'ISD-AFF-22','','Current','31','23');
INSERT INTO "hed__Affiliation__c" VALUES(59,'ISD-AFF-23','','Current','31','24');
INSERT INTO "hed__Affiliation__c" VALUES(60,'ISD-AFF-24','','Current','31','25');
INSERT INTO "hed__Affiliation__c" VALUES(61,'ISD-AFF-25','','Current','31','26');
INSERT INTO "hed__Affiliation__c" VALUES(62,'ISD-AFF-26','','Current','31','27');
INSERT INTO "hed__Affiliation__c" VALUES(63,'ISD-AFF-63','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(64,'ISD-AFF-64','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(65,'ISD-AFF-65','','Former','31','');
INSERT INTO "hed__Affiliation__c" VALUES(66,'ISD-AFF-66','','Former','31','');
CREATE TABLE "hed__Course_Enrollment__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"hed__Credits_Attempted__c" VARCHAR(255), 
	"hed__Credits_Earned__c" VARCHAR(255), 
	"hed__Grade__c" VARCHAR(255), 
	"hed__Primary__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"rio_ed__Attempt_Number__c" VARCHAR(255), 
	"rio_ed__Census_Date__c" VARCHAR(255), 
	"rio_ed__Due_Date__c" VARCHAR(255), 
	"rio_ed__Enrollment_Date__c" VARCHAR(255), 
	"rio_ed__Enrollment_Status__c" VARCHAR(255), 
	"rio_ed__Fee_Amount__c" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Grade_Points__c" VARCHAR(255), 
	"rio_ed__Grade_Result__c" VARCHAR(255), 
	"rio_ed__Grade_Setting_Type__c" VARCHAR(255), 
	"rio_ed__Grade_Value__c" VARCHAR(255), 
	"rio_ed__Non_Tuition_Fee_Type__c" VARCHAR(255), 
	"rio_ed__Release_Grades__c" VARCHAR(255), 
	"rio_ed__Requirement_Met__c" VARCHAR(255), 
	"rio_ed__Session_Rules_Matching_Status__c" VARCHAR(255), 
	"rio_ed__Session_Rules_Result__c" VARCHAR(255), 
	"rio_ed__Start_Date__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Affiliation__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	"hed__Course_Offering__c" VARCHAR(255), 
	"hed__Program_Enrollment__c" VARCHAR(255), 
	"rio_ed__PE_Group__c" VARCHAR(255), 
	"rio_ed__PE_Pathway__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Course_Enrollment__c" VALUES(1,'ISD-CE-148','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(2,'ISD-CE-149','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(3,'ISD-CE-150','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(4,'ISD-CE-154','0128a000000tbcEAAQ','10.0','10.0','96.0','False','Current','1.0','','2022-06-04','2021-12-10','Enrolled','1000.0','Self Paid','7.0','Pass','Educational Institution','HD - High Distinction','Self Paid','True','True','Insufficient','','2022-01-06','31','','6','19','17','26','28','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(5,'ISD-CE-202','0128a000000tbcEAAQ','10.0','10.0','81.0','False','Current','1.0','2022-03-06','2022-06-04','2021-12-26','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-06','31','','14','19','1','30','43','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(6,'ISD-CE-138','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(7,'ISD-CE-139','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(8,'ISD-CE-131','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(9,'ISD-CE-129','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(10,'ISD-CE-130','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','27','','14','24','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(11,'ISD-CE-132','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(12,'ISD-CE-133','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(13,'ISD-CE-134','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(14,'ISD-CE-135','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(15,'ISD-CE-140','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-02','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','27','15','14','24','20','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(16,'ISD-CE-155','0128a000000tbcEAAQ','','','','False','Current','1.0','','2022-06-04','2021-12-10','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','2022-01-06','31','','6','19','17','26','28','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(17,'ISD-CE-156','0128a000000tbcEAAQ','','','','False','Current','1.0','','2022-06-04','2021-12-09','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','6','19','17','26','28','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(18,'ISD-CE-157','0128a000000tbcEAAQ','','','','False','Current','1.0','','2022-06-04','2021-12-09','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','6','46','17','26','28','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(19,'ISD-CE-158','0128a000000tbcEAAQ','10.0','10.0','84.0','False','Current','1.0','2022-03-06','2022-06-04','2021-12-10','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-06','31','','6','46','17','26','28','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(20,'ISD-CE-159','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-10','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','6','58','17','26','28','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(21,'ISD-CE-160','0128a000000tbcEAAQ','10.0','10.0','78.0','False','Current','1.0','2022-03-06','2022-06-04','2021-12-10','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-06','31','','6','58','17','26','28','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(22,'ISD-CE-203','0128a000000tbcEAAQ','','','','False','Current','1.0','','2022-06-04','2021-12-30','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','14','31','1','30','43','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(23,'ISD-CE-204','0128a000000tbcEAAQ','10.0','10.0','79.0','False','Current','1.0','2022-03-06','2022-06-04','2021-12-26','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-06','31','','14','46','1','30','43','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(24,'ISD-CE-205','0128a000000tbcEAAQ','10.0','10.0','83.0','False','Current','1.0','2022-03-06','2022-06-04','2021-12-26','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-06','31','','14','58','1','30','43','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(25,'ISD-CE-206','0128a000000tbcEAAQ','10.0','10.0','85.0','False','Current','1.0','2022-03-06','2022-06-04','2021-12-26','Completed','1000.0','Self Paid','6.0','Pass','University Department','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2021-12-06','31','','14','15','1','30','43','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(26,'ISD-CE-214','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(27,'ISD-CE-215','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(28,'ISD-CE-209','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(29,'ISD-CE-216','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(30,'ISD-CE-217','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(31,'ISD-CE-207','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(32,'ISD-CE-208','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','15','','2','20','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(33,'ISD-CE-210','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(34,'ISD-CE-211','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(35,'ISD-CE-212','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(36,'ISD-CE-161','0128a000000tbcEAAQ','','','','False','Current','1.0','','2022-06-04','2021-12-09','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','6','58','17','26','28','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(37,'ISD-CE-162','0128a000000tbcEAAQ','10.0','10.0','77.0','False','Current','1.0','','2022-06-04','2021-12-09','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Insufficient','','2022-01-06','31','','6','15','17','26','28','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(38,'ISD-CE-213','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','15','','2','20','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(39,'ISD-CE-218','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-02','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','15','15','2','20','4','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(40,'ISD-CE-226','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(41,'ISD-CE-227','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(42,'ISD-CE-221','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(43,'ISD-CE-228','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(44,'ISD-CE-229','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(45,'ISD-CE-219','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(46,'ISD-CE-220','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','16','','3','31','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(47,'ISD-CE-222','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(48,'ISD-CE-223','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(49,'ISD-CE-224','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(50,'ISD-CE-225','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','16','','3','31','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(51,'ISD-CE-230','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','16','15','3','31','48','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(52,'ISD-CE-238','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(53,'ISD-CE-239','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(54,'ISD-CE-170','0128a000000tbcEAAQ','','','','False','Current','1.0','','2022-06-04','2021-12-09','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','6','15','17','26','28','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(55,'ISD-CE-177','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(56,'ISD-CE-178','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(57,'ISD-CE-233','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(58,'ISD-CE-240','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(59,'ISD-CE-241','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(60,'ISD-CE-231','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(61,'ISD-CE-232','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','17','','4','32','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(62,'ISD-CE-234','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(63,'ISD-CE-235','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(64,'ISD-CE-236','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(65,'ISD-CE-237','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','17','','4','32','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(66,'ISD-CE-242','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','17','15','4','32','52','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(67,'ISD-CE-250','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(68,'ISD-CE-251','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(69,'ISD-CE-245','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(70,'ISD-CE-252','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(71,'ISD-CE-253','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(72,'ISD-CE-243','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(73,'ISD-CE-244','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','18','','5','33','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(74,'ISD-CE-246','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(75,'ISD-CE-247','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(76,'ISD-CE-179','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(77,'ISD-CE-180','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(78,'ISD-CE-248','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(79,'ISD-CE-249','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','18','','5','33','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(80,'ISD-CE-254','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','18','15','5','33','60','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(81,'ISD-CE-262','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(82,'ISD-CE-263','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(83,'ISD-CE-257','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(84,'ISD-CE-264','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(85,'ISD-CE-265','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(86,'ISD-CE-255','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(87,'ISD-CE-256','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','19','','6','34','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(88,'ISD-CE-258','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(89,'ISD-CE-181','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(90,'ISD-CE-171','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(91,'ISD-CE-172','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','8','','18','27','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(92,'ISD-CE-173','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(93,'ISD-CE-174','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(94,'ISD-CE-175','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(95,'ISD-CE-176','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','8','','18','27','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(96,'ISD-CE-272','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(97,'ISD-CE-273','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(98,'ISD-CE-278','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','20','15','7','35','68','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(99,'ISD-CE-286','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(100,'ISD-CE-287','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(101,'ISD-CE-281','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(102,'ISD-CE-001','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(103,'ISD-CE-002','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(104,'ISD-CE-279','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(105,'ISD-CE-280','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','21','','8','36','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(106,'ISD-CE-282','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(107,'ISD-CE-283','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(108,'ISD-CE-284','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(109,'ISD-CE-182','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','','31','','8','','18','27','32','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(110,'ISD-CE-188','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(111,'ISD-CE-184','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(112,'ISD-CE-189','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(113,'ISD-CE-190','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(114,'ISD-CE-183','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','9','','19','28','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(115,'ISD-CE-185','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(116,'ISD-CE-186','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(117,'ISD-CE-187','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','9','','19','28','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(118,'ISD-CE-191','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','9','19','19','28','36','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(119,'ISD-CE-192','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','9','46','19','28','36','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(120,'ISD-CE-193','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-06','31','','9','58','19','28','36','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(121,'ISD-CE-194','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-06','31','','9','15','19','28','36','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(122,'ISD-CE-285','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','21','','8','36','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(123,'ISD-CE-003','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','21','15','8','36','72','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(124,'ISD-CE-011','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(125,'ISD-CE-012','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(126,'ISD-CE-006','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(127,'ISD-CE-013','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(128,'ISD-CE-014','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(129,'ISD-CE-004','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(130,'ISD-CE-005','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','22','','9','37','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(131,'ISD-CE-007','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(132,'ISD-CE-008','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(133,'ISD-CE-009','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(134,'ISD-CE-010','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','22','','9','37','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(135,'ISD-CE-015','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','22','15','9','37','76','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(136,'ISD-CE-045','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(137,'ISD-CE-046','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(138,'ISD-CE-018','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(139,'ISD-CE-047','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(140,'ISD-CE-048','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(141,'ISD-CE-016','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(142,'ISD-CE-017','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','23','','10','38','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(143,'ISD-CE-019','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(144,'ISD-CE-020','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(145,'ISD-CE-043','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(146,'ISD-CE-044','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','23','','10','38','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(147,'ISD-CE-049','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','23','15','10','38','80','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(148,'ISD-CE-259','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(149,'ISD-CE-260','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(150,'ISD-CE-261','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','19','','6','34','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(151,'ISD-CE-057','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(152,'ISD-CE-058','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(153,'ISD-CE-052','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(154,'ISD-CE-059','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(155,'ISD-CE-060','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(156,'ISD-CE-050','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(157,'ISD-CE-051','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','24','','11','21','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(158,'ISD-CE-053','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(159,'ISD-CE-054','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(160,'ISD-CE-055','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(161,'ISD-CE-056','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','24','','11','21','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(162,'ISD-CE-061','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','24','15','11','21','8','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(163,'ISD-CE-091','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(164,'ISD-CE-042','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','20','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(165,'ISD-CE-063','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','21','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(166,'ISD-CE-064','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','22','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(167,'ISD-CE-065','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','26','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(168,'ISD-CE-066','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','27','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(169,'ISD-CE-067','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','42','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(170,'ISD-CE-068','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','49','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(171,'ISD-CE-069','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','38','7','50','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(172,'ISD-CE-070','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(173,'ISD-CE-071','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(174,'ISD-CE-266','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','19','15','6','34','64','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(175,'ISD-CE-274','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(176,'ISD-CE-275','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(177,'ISD-CE-269','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(178,'ISD-CE-276','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(179,'ISD-CE-277','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(180,'ISD-CE-267','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(181,'ISD-CE-268','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','20','','7','35','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(182,'ISD-CE-270','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(183,'ISD-CE-271','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','20','','7','35','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(184,'ISD-CE-092','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(185,'ISD-CE-086','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(186,'ISD-CE-093','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(187,'ISD-CE-094','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(188,'ISD-CE-072','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','46','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(189,'ISD-CE-073','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','48','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(190,'ISD-CE-074','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(191,'ISD-CE-075','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','60','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(192,'ISD-CE-076','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','66','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(193,'ISD-CE-077','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','24','39','10','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(194,'ISD-CE-021','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','30','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(195,'ISD-CE-022','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','31','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(196,'ISD-CE-023','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(197,'ISD-CE-024','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','33','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(198,'ISD-CE-025','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','36','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(199,'ISD-CE-026','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','37','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(200,'ISD-CE-027','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','11','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(201,'ISD-CE-028','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(202,'ISD-CE-029','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','41','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(203,'ISD-CE-030','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(204,'ISD-CE-031','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','51','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(205,'ISD-CE-032','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','52','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(206,'ISD-CE-033','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','53','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(207,'ISD-CE-034','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','54','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(208,'ISD-CE-062','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(209,'ISD-CE-085','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','25','','12','22','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(210,'ISD-CE-087','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(211,'ISD-CE-088','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(212,'ISD-CE-089','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(213,'ISD-CE-090','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','25','','12','22','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(214,'ISD-CE-036','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','62','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(215,'ISD-CE-037','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','63','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(216,'ISD-CE-038','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','64','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(217,'ISD-CE-039','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','67','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(218,'ISD-CE-040','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','68','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(219,'ISD-CE-041','0128a000000tbcDAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(220,'ISD-CE-078','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','18','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(221,'ISD-CE-079','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(222,'ISD-CE-080','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','23','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(223,'ISD-CE-081','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(224,'ISD-CE-082','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','45','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(225,'ISD-CE-083','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','46','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(226,'ISD-CE-084','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','47','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(227,'ISD-CE-105','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','48','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(228,'ISD-CE-035','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','36','3','61','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(229,'ISD-CE-095','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','25','15','12','22','12','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(230,'ISD-CE-106','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','57','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(231,'ISD-CE-107','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(232,'ISD-CE-108','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','59','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(233,'ISD-CE-109','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','60','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(234,'ISD-CE-110','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','65','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(235,'ISD-CE-111','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','66','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(236,'ISD-CE-112','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','25','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(237,'ISD-CE-113','0128a000000tbcDAAQ','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','24','37','4','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(238,'ISD-CE-121','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(239,'ISD-CE-122','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(240,'ISD-CE-116','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(241,'ISD-CE-123','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(242,'ISD-CE-124','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(243,'ISD-CE-145','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(244,'ISD-CE-163','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(245,'ISD-CE-164','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(246,'ISD-CE-141','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','13','','15','29','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(247,'ISD-CE-142','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(248,'ISD-CE-143','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(249,'ISD-CE-144','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(250,'ISD-CE-103','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(251,'ISD-CE-104','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(252,'ISD-CE-098','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(253,'ISD-CE-126','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(254,'ISD-CE-127','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(255,'ISD-CE-114','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(256,'ISD-CE-115','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','5','','16','25','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(257,'ISD-CE-117','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(258,'ISD-CE-118','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(259,'ISD-CE-119','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(260,'ISD-CE-120','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','5','','16','25','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(261,'ISD-CE-125','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-01','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','5','15','16','25','24','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(262,'ISD-CE-151','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(263,'ISD-CE-147','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(264,'ISD-CE-152','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(265,'ISD-CE-153','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','6','','17','26','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(266,'ISD-CE-146','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','6','','17','26','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(267,'ISD-CE-165','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','13','','15','29','39','81');
INSERT INTO "hed__Course_Enrollment__c" VALUES(268,'ISD-CE-166','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-06','31','','13','19','15','29','39','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(269,'ISD-CE-167','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-06','31','','13','46','15','29','39','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(270,'ISD-CE-168','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-06','31','','13','58','15','29','39','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(271,'ISD-CE-169','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2021-12-29','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-06','31','','13','15','15','29','39','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(272,'ISD-CE-199','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','75');
INSERT INTO "hed__Course_Enrollment__c" VALUES(273,'ISD-CE-200','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(274,'ISD-CE-201','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','87');
INSERT INTO "hed__Course_Enrollment__c" VALUES(275,'ISD-CE-195','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(276,'ISD-CE-196','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(277,'ISD-CE-197','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(278,'ISD-CE-198','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','14','','1','30','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(279,'ISD-CE-096','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','91');
INSERT INTO "hed__Course_Enrollment__c" VALUES(280,'ISD-CE-097','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','31','','26','','13','23','','93');
INSERT INTO "hed__Course_Enrollment__c" VALUES(281,'ISD-CE-099','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','101');
INSERT INTO "hed__Course_Enrollment__c" VALUES(282,'ISD-CE-100','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','103');
INSERT INTO "hed__Course_Enrollment__c" VALUES(283,'ISD-CE-101','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','109');
INSERT INTO "hed__Course_Enrollment__c" VALUES(284,'ISD-CE-102','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','26','','13','23','','119');
INSERT INTO "hed__Course_Enrollment__c" VALUES(285,'ISD-CE-128','0128a000000tbcEAAQ','','','','False','Current','1.0','2022-03-06','2022-06-04','2022-01-02','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-06','31','','26','15','13','23','16','67');
INSERT INTO "hed__Course_Enrollment__c" VALUES(286,'ISD-CE-136','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','69');
INSERT INTO "hed__Course_Enrollment__c" VALUES(287,'ISD-CE-137','0128a000000tbcEAAQ','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','31','','27','','14','24','','75');
CREATE TABLE "hed__Course_Enrollment__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0128a000000tbcCAAQ','Default');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0128a000000tbcDAAQ','Faculty');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0128a000000tbcEAAQ','Student');
CREATE TABLE "hed__Course_Offering__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__Capacity__c" VARCHAR(255), 
	"hed__End_Date__c" VARCHAR(255), 
	"hed__Start_Date__c" VARCHAR(255), 
	"rio_ed__Booked_Places__c" VARCHAR(255), 
	"rio_ed__Census_Date__c" VARCHAR(255), 
	"rio_ed__Fee_Amount_Domestic__c" VARCHAR(255), 
	"rio_ed__Fee_Amount_International__c" VARCHAR(255), 
	"rio_ed__Grading_Period_Type__c" VARCHAR(255), 
	"rio_ed__Scheduled_Duration_Unit__c" VARCHAR(255), 
	"rio_ed__Use_Cohort_Enrollment__c" VARCHAR(255), 
	"rio_ed__Waitlist_Places__c" VARCHAR(255), 
	"hed__Course__c" VARCHAR(255), 
	"hed__Faculty__c" VARCHAR(255), 
	"hed__Term__c" VARCHAR(255), 
	"rio_ed__Campus__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule_Term__c" VARCHAR(255), 
	"rio_ed__Fee__c" VARCHAR(255), 
	"rio_ed__Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Course_Offering__c" VALUES(1,'ISD-CO-61','2022 Term 1 COR109 B','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','14','','5','29','7','2','36');
INSERT INTO "hed__Course_Offering__c" VALUES(2,'ISD-CO-62','2022 Term 1 ICT221','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','24','','5','29','7','2','38');
INSERT INTO "hed__Course_Offering__c" VALUES(3,'ISD-CO-63','2022 Term 1 COR109 C','0.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','14','','5','29','7','2','40');
INSERT INTO "hed__Course_Offering__c" VALUES(4,'ISD-CO-64','2022 Term 1 COR109 A','50.0','2022-06-04','2022-01-06','','1999-08-03','1000.0','1000.0','Final Grade','Hour','False','','14','','5','29','7','2','42');
INSERT INTO "hed__Course_Offering__c" VALUES(5,'ISD-CO-65','2022 Term 1 ICT310','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','10','','5','29','7','2','44');
INSERT INTO "hed__Course_Offering__c" VALUES(6,'ISD-CO-66','2022 Term 1 ETC101','50.0','2022-06-04','2022-01-06','','','','','Final Grade','Hour','False','','2','','5','29','','','46');
INSERT INTO "hed__Course_Offering__c" VALUES(7,'ISD-CO-67','2022 Term 1 ETC102','50.0','2022-06-04','2022-01-06','','','','','Final Grade','Hour','False','','1','','5','29','','','48');
INSERT INTO "hed__Course_Offering__c" VALUES(8,'ISD-CO-68','2022 Term 1 BUS106','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','20','','5','29','7','2','50');
INSERT INTO "hed__Course_Offering__c" VALUES(9,'ISD-CO-01','Last Year Term 2 BUS102','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','3','','1','29','','2','84');
INSERT INTO "hed__Course_Offering__c" VALUES(10,'ISD-CO-02','Last Year Term 1 BUS102','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','3','','2','29','','2','79');
INSERT INTO "hed__Course_Offering__c" VALUES(11,'ISD-CO-03','2023 Term 1 BUS102','','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','3','3','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(12,'ISD-CO-04','2022 Term 1 BUS102','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','3','3','5','29','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(13,'ISD-CO-05','Last Year Term 2 ICT112','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','12','','1','29','','2','83');
INSERT INTO "hed__Course_Offering__c" VALUES(14,'ISD-CO-06','Last Year Term 1 ICT112','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','12','','2','29','','2','73');
INSERT INTO "hed__Course_Offering__c" VALUES(15,'ISD-CO-08','2022 Term 1 ICT112','50.0','2022-06-04','2021-12-06','18.0','2022-03-06','1000.0','1000.0','Final Grade','Hour','False','0.0','12','4','5','29','7','2','63');
INSERT INTO "hed__Course_Offering__c" VALUES(16,'ISD-CO-09','Last Year Term 2 ICT115','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','13','','1','29','','2','81');
INSERT INTO "hed__Course_Offering__c" VALUES(17,'ISD-CO-10','Last Year Term 1 ICT115','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','13','','2','29','','2','77');
INSERT INTO "hed__Course_Offering__c" VALUES(18,'ISD-CO-11','2023 Term 2 ICT115','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','13','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(19,'ISD-CO-12','2022 Term 1 ICT115','50.0','2022-06-04','2022-01-06','4.0','2022-03-06','1000.0','1000.0','Final Grade','Hour','False','0.0','13','4','5','29','7','2','62');
INSERT INTO "hed__Course_Offering__c" VALUES(20,'ISD-CO-13','2023 Term 1 COR109','','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','14','7','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(21,'ISD-CO-14','2023 Term 2 COR109','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','14','7','4','','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(22,'ISD-CO-15','2023 Term 2 MGT210','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','15','7','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(23,'ISD-CO-16','2023 Term 2 ICT320','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','16','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(24,'ISD-CO-17','2022 Term 2 ICT320','','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','16','4','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(25,'ISD-CO-07','2023 Term 2 ICT112','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','12','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(26,'ISD-CO-18','2023 Term 2 HRM321','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','17','7','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(27,'ISD-CO-19','2023 Term 2 IBS220','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','18','7','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(28,'ISD-CO-20','Last Year Term 2 BUS101','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','19','','1','29','','2','58');
INSERT INTO "hed__Course_Offering__c" VALUES(29,'ISD-CO-21','Last Year Term 1 BUS101','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','19','','2','29','','2','71');
INSERT INTO "hed__Course_Offering__c" VALUES(30,'ISD-CO-22','2023 Term 1 BUS101','','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','19','3','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(31,'ISD-CO-23','2022 Term 1 BUS101','50.0','2022-06-04','2022-01-06','1.0','','1000.0','1000.0','Final Grade','Hour','False','0.0','19','3','5','29','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(32,'ISD-CO-24','2023 Term 2 BUS106','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','20','3','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(33,'ISD-CO-25','2022 Term 2 BUS106','50.0','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','20','3','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(34,'ISD-CO-26','Last Year Term 2 BUS105','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','21','','1','29','','2','52');
INSERT INTO "hed__Course_Offering__c" VALUES(35,'ISD-CO-27','Last Year Term 1 BUS105','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','21','','2','29','','2','67');
INSERT INTO "hed__Course_Offering__c" VALUES(36,'ISD-CO-28','2023 Term 1 BUS105','','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','21','3','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(37,'ISD-CO-29','2022 Term 1 BUS105','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','21','3','5','29','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(38,'ISD-CO-30','Last Year Term 2 BUS104','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','4','','1','29','','2','56');
INSERT INTO "hed__Course_Offering__c" VALUES(39,'ISD-CO-31','Last Year Term 1 BUS104','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','4','','2','29','','2','65');
INSERT INTO "hed__Course_Offering__c" VALUES(40,'ISD-CO-32','2023 Term 1 BUS104','','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','4','3','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(41,'ISD-CO-33','2022 Term 1 BUS104','50.0','2022-06-04','2022-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','4','3','5','29','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(42,'ISD-CO-34','2023 Term 2 MGT310','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','22','7','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(43,'ISD-CO-35','Last Year Term 2 ICT211','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','23','','1','29','','2','54');
INSERT INTO "hed__Course_Offering__c" VALUES(44,'ISD-CO-36','Last Year Term 1 ICT211','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','23','','2','29','','2','75');
INSERT INTO "hed__Course_Offering__c" VALUES(45,'ISD-CO-37','2023 Term 2 ICT211','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','23','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(46,'ISD-CO-38','2022 Term 1 ICT211','50.0','2022-06-04','2022-01-06','4.0','2022-03-06','1000.0','1000.0','Final Grade','Hour','False','0.0','23','4','5','29','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(47,'ISD-CO-39','2023 Term 2 ICT221','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','24','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(48,'ISD-CO-40','2022 Term 2 ICT221','','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','24','4','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(49,'ISD-CO-41','2023 Term 1 HRM311','','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','25','7','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(50,'ISD-CO-42','2023 Term 2 HRM311','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','25','7','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(51,'ISD-CO-43','2023 Term 1 BUS320','50.0','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','26','3','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(52,'ISD-CO-44','2023 Term 2 BUS320','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','26','3','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(53,'ISD-CO-45','2023 Term 2 BUS203','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','5','3','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(54,'ISD-CO-46','2022 Term 2 BUS203','50.0','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','5','3','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(55,'ISD-CO-47','Last Year Term 2 ICT120','50.0','2021-11-04','2021-06-18','','','','','Final Grade','Hour','False','','6','','1','29','','2','60');
INSERT INTO "hed__Course_Offering__c" VALUES(56,'ISD-CO-48','Last Year Term 1 ICT120','50.0','2021-06-04','2020-12-06','','','','','Final Grade','Hour','False','','6','','2','29','','2','69');
INSERT INTO "hed__Course_Offering__c" VALUES(57,'ISD-CO-49','2023 Term 2 ICT120','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','6','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(58,'ISD-CO-50','2022 Term 1 ICT120','50.0','2022-06-04','2022-01-06','4.0','2022-03-06','1000.0','1000.0','Final Grade','Hour','False','0.0','6','4','5','29','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(59,'ISD-CO-51','2023 Term 2 ICT352','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','7','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(60,'ISD-CO-52','2022 Term 2 ICT352','','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','7','4','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(61,'ISD-CO-53','2023 Term 1 BUS301','50.0','2023-06-04','2023-01-06','','','1000.0','1000.0','Final Grade','Hour','False','','8','3','3','29','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(62,'ISD-CO-54','2023 Term 2 BUS301','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','8','3','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(63,'ISD-CO-55','2023 Term 2 BUS108','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','9','3','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(64,'ISD-CO-56','2022 Term 2 BUS108','50.0','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','9','3','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(65,'ISD-CO-57','2023 Term 2 ICT310','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','10','4','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(66,'ISD-CO-58','2022 Term 2 ICT310','','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','10','4','6','29','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(67,'ISD-CO-59','2023 Term 2 BUS211','','2023-11-04','2023-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','11','3','4','29','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(68,'ISD-CO-60','2022 Term 2 BUS211','50.0','2022-11-04','2022-06-18','','','1000.0','1000.0','Final Grade','Hour','False','','11','3','6','29','8','2','');
CREATE TABLE "hed__Course__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__Course_ID__c" VARCHAR(255), 
	"hed__Credit_Hours__c" VARCHAR(255), 
	"rio_ed__Background_Colour__c" VARCHAR(255), 
	"rio_ed__Default_Scheduled_Duration_Unit__c" VARCHAR(255), 
	"rio_ed__Grade_Setting_Type__c" VARCHAR(255), 
	"rio_ed__Grade_Type__c" VARCHAR(255), 
	"rio_ed__Grading_Frequency__c" VARCHAR(255), 
	"rio_ed__Use_Default_Fee__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"rio_ed__Fee__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Course__c" VALUES(1,'ISD-ETC102','ETC102 Et Cetera B','ETC102','10.0','','Hour','Educational Institution','Value','Term','True','24','');
INSERT INTO "hed__Course__c" VALUES(2,'ISD-ETC101','ETC101 Et Cetera A','ETC101','10.0','','Hour','Educational Institution','Value','Term','True','24','');
INSERT INTO "hed__Course__c" VALUES(3,'ISD-BUS102','BUS102: Introduction to Economics','BUS102','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(4,'ISD-BUS104','BUS104 Introduction to Management','BUS104','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(5,'ISD-BUS203','BUS203 Business Law and Ethics','BUS203','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(6,'ISD-ICT120','ICT120 Introduction to Telecommunications and Networks','ICT120','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(7,'ISD-ICT352','ICT352 ICT Project Management','ICT352','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(8,'ISD-BUS301','BUS301 Business Analytics 2','BUS301','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(9,'ISD-BUS108','BUS108 Introduction to Informatics','BUS108','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(10,'ISD-ICT310','ICT310 Systems Analysis and Design','ICT310','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(11,'ISD-BUS211','BUS211 Strategic Management','BUS211','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(12,'ISD-ICT112','ICT112 Creative Problem Solving with Programming','ICT112','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(13,'ISD-ICT115','ICT115 Introduction to Systems Design','ICT115','10.0','#DC143C','Hour','','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(14,'ISD-COR109','COR109 Communication and Thought','COR109','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(15,'ISD-MGT210','MGT210 Project Management','MGT210','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(16,'ISD-ICT320','ICT320 Database Programming','ICT320','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(17,'ISD-HRM321','HRM321 Managing Organisational Change','HRM321','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(18,'ISD-IBS220','IBS220 Cross-Cultural Management','IBS220','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(19,'ISD-BUS101','BUS101: Business Analytics','BUS101','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(20,'ISD-BUS106','BUS106 Accounting for Business','BUS106','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(21,'ISD-BUS105','BUS105 Introduction to Marketing','BUS105','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(22,'ISD-MGT310','MGT310 Small Business and New Venture Management','MGT310','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(23,'ISD-ICT211','ICT211 Database Design','ICT211','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(24,'ISD-ICT221','ICT221 Software Development 1','ICT221','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(25,'ISD-HRM311','HRM311 Leadership and Team Dynamics','HRM311','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','24','2');
INSERT INTO "hed__Course__c" VALUES(26,'ISD-BUS320','BUS320 Corporate Governance and Social Responsibility','BUS320','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','24','2');
CREATE TABLE "hed__Facility__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__Capacity__c" VARCHAR(255), 
	"hed__Facility_Type__c" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Parent_Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Facility__c" VALUES(1,'ISD-FAC-01','Beta 101','10.0','Classroom','True','29','6');
INSERT INTO "hed__Facility__c" VALUES(2,'ISD-FAC-02','Beta 102','10.0','Classroom','True','29','6');
INSERT INTO "hed__Facility__c" VALUES(3,'ISD-FAC-03','Beta 103','10.0','Classroom','True','29','6');
INSERT INTO "hed__Facility__c" VALUES(4,'ISD-FAC-04','Beta 104','10.0','Computer Lab','True','29','6');
INSERT INTO "hed__Facility__c" VALUES(5,'ISD-FAC-05','Alpha Building','','Building','True','29','');
INSERT INTO "hed__Facility__c" VALUES(6,'ISD-FAC-06','Beta Building','','Building','True','29','');
INSERT INTO "hed__Facility__c" VALUES(7,'ISD-FAC-07','Alpha 103','10.0','Classroom','True','29','5');
INSERT INTO "hed__Facility__c" VALUES(8,'ISD-FAC-08','Beta 100','10.0','Classroom','True','29','6');
INSERT INTO "hed__Facility__c" VALUES(9,'ISD-FAC-09','Alpha 100','10.0','Classroom','True','29','5');
INSERT INTO "hed__Facility__c" VALUES(10,'ISD-FAC-10','Alpha 104','10.0','Computer Lab','True','29','5');
INSERT INTO "hed__Facility__c" VALUES(11,'ISD-FAC-11','Alpha 101','10.0','Classroom','True','29','5');
INSERT INTO "hed__Facility__c" VALUES(12,'ISD-FAC-12','Alpha 102','10.0','Classroom','True','29','5');
CREATE TABLE "hed__Plan_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"hed__Category__c" VARCHAR(255), 
	"hed__Credits__c" VARCHAR(255), 
	"hed__Sequence__c" VARCHAR(255), 
	"rio_ed__Allow_Pre_Enrollment__c" VARCHAR(255), 
	"rio_ed__Courses_Required__c" VARCHAR(255), 
	"rio_ed__Credits_equivalent_per_Course__c" VARCHAR(255), 
	"rio_ed__Hide_in_Enrollment__c" VARCHAR(255), 
	"rio_ed__Placeholder__c" VARCHAR(255), 
	"rio_ed__Requirement_Description__c" VARCHAR(255), 
	"rio_ed__Requirement_Logic__c" VARCHAR(255), 
	"rio_ed__Show_Child_Groups__c" VARCHAR(255), 
	"hed__Course__c" VARCHAR(255), 
	"hed__Plan_Requirement__c" VARCHAR(255), 
	"hed__Program_Plan__c" VARCHAR(255), 
	"rio_ed__Shared_Group__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Plan_Requirement__c" VALUES(1,'ISD-PR-55','RIOUNI06 - Mandatory','0128a000000tbcyAAA','Required','80.0','','False','','','False','False','','','False','','','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(2,'ISD-PR-56','RIOUNI07 - ICT112','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','12','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(3,'ISD-PR-57','RIOUNI07 - ICT120','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','6','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(4,'ISD-PR-58','RIOUNI07 - Mandatory','0128a000000tbcyAAA','Required','200.0','','False','','','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(5,'ISD-PR-59','RIOUNI07 - COR109','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','14','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(6,'ISD-PR-60','RIOUNI07 - ICT310','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','10','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(7,'ISD-PR-61','RIOUNI06 - BUS102','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','3','1','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(8,'ISD-PR-62','RIOUNI06 - ICT115','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','13','1','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(9,'ISD-PR-63','RIOUNI07 - ICT115','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','13','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(10,'ISD-PR-64','RIOUNI07 - ICT211','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','23','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(11,'ISD-PR-65','RIOUNI07 - ICT221','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','24','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(12,'ISD-PR-66','RIOUNI06 - BUS101','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','19','1','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(13,'ISD-PR-67','RIOUNI06 - ICT112','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','12','1','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(14,'ISD-PR-68','RIOUNI08 - ICT115','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','13','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(15,'ISD-PR-69','RIOUNI08 - ICT221','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','24','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(16,'ISD-PR-70','RIOUNI08 - BUS102','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A OR B','False','3','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(17,'ISD-PR-71','RIOUNI09 - Credit','0128a000000tbcyAAA','Required','20.0','','False','','','False','False','','','False','','','3','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(18,'ISD-PR-72','RIOUNI09 - ICT211','0128a000000tbcxAAA','Required','10.0','','False','','','False','False','','','False','23','63','3','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(19,'ISD-PR-73','RIOUNI03 - ETC102','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','1','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(20,'ISD-PR-74','RIOUNI03-Elective','0128a000000tbcyAAA','Required','40.0','2.0','False','','','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(21,'ISD-PR-75','RIOUNI02-Mandatory','0128a000000tbcyAAA','Required','120.0','1.0','False','','','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(22,'ISD-PR-76','RIOUNI02-Elective','0128a000000tbcyAAA','Required','40.0','2.0','False','','','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(23,'ISD-PR-77','RIOUNI03-Mandatory','0128a000000tbcyAAA','Required','120.0','1.0','False','','','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(24,'ISD-PR-78','RIOUNI02 - BUS102','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','3','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(25,'ISD-PR-79','RIOUNI02 - BUS104','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','4','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(26,'ISD-PR-80','RIOUNI02 - BUS203','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','5','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(27,'ISD-PR-81','RIOUNI02 - ICT120','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','6','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(28,'ISD-PR-82','RIOUNI02 - ICT352','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','7','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(29,'ISD-PR-83','RIOUNI02 - BUS301','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','8','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(30,'ISD-PR-84','RIOUNI02 - BUS108','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','9','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(31,'ISD-PR-85','RIOUNI02 - ICT310','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','10','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(32,'ISD-PR-86','RIOUNI02 - BUS211','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','11','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(33,'ISD-PR-87','RIOUNI02 - ICT112','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','12','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(34,'ISD-PR-88','RIOUNI02 - ICT115','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','13','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(35,'ISD-PR-89','RIOUNI02 - COR109','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','14','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(36,'ISD-PR-90','RIOUNI02 - MGT210','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','15','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(37,'ISD-PR-91','RIOUNI02 - ICT320','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','16','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(38,'ISD-PR-92','RIOUNI02 - HRM321','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','17','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(39,'ISD-PR-93','RIOUNI02 - IBS220','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','18','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(40,'ISD-PR-94','RIOUNI02 - BUS106','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','20','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(41,'ISD-PR-95','RIOUNI02 - BUS105','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','21','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(42,'ISD-PR-96','RIOUNI02 - MGT310','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','22','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(43,'ISD-PR-97','RIOUNI02 - ICT211','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','23','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(44,'ISD-PR-98','RIOUNI02 - ICT221','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','<p>ICT112 is the pre-requisite for this course.</p>','A','False','24','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(45,'ISD-PR-99','RIOUNI02 - HRM311','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','25','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(46,'ISD-PR-100','RIOUNI02 - BUS320','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','26','22','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(47,'ISD-PR-101','RIOUNI02 - BUS101','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','19','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(48,'ISD-PR-102','RIOUNI02 - ETC101','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','2','21','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(49,'ISD-PR-103','RIOUNI03 - ETC102','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','1','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(50,'ISD-PR-104','RIOUNI02 - ETC101','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','2','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(51,'ISD-PR-105','RIOUNI07 - BUS105','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A AND B','False','21','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(52,'ISD-PR-106','RIOUNI08 - Mandatory','0128a000000tbcyAAA','Required','160.0','','False','','','False','False','','','False','','','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(53,'ISD-PR-107','RIOUNI08 - ICT211','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','23','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(54,'ISD-PR-108','RIOUNI08 - BUS101','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A AND B','False','19','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(55,'ISD-PR-109','RIOUNI08 - BUS104','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A AND (B OR C OR (D AND E))','False','4','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(56,'ISD-PR-110','RIOUNI08 - ICT112','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','12','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(57,'ISD-PR-111','RIOUNI08 - ICT120','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','6','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(58,'ISD-PR-112','RIOUNI07 - BUS101','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A AND B','False','19','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(59,'ISD-PR-113','RIOUNI07 - BUS102','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A OR B','False','3','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(60,'ISD-PR-114','RIOUNI07 - BUS104','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A AND (B OR C OR (D AND E))','False','4','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(61,'ISD-PR-115','RIOUNI07 - BUS106','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A OR B','False','20','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(62,'ISD-PR-116','RIOUNI09 - ICT112','0128a000000tbcxAAA','Required','10.0','','False','','','False','False','','','False','12','17','3','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(63,'ISD-PR-117','RIOUNI09 - Non Credit','0128a000000tbcyAAA','Required','','','False','2.0','5.0','False','False','','','False','','','3','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(64,'ISD-PR-118','RIOUNI09 - ICT115','0128a000000tbcxAAA','Required','10.0','','False','','','False','False','','','False','13','17','3','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(65,'ISD-PR-119','RIOUNI09 - ICT120','0128a000000tbcxAAA','Required','10.0','','False','','','False','False','','','False','6','63','3','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(66,'ISD-PR-120','RIOUNI08 - ICT310','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','A','False','10','52','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(67,'ISD-PR-10','RIOUNI02 - ICT112','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','12','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(68,'ISD-PR-11','RIOUNI03 - ICT115','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','13','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(69,'ISD-PR-12','RIOUNI02 - ICT115','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','13','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(70,'ISD-PR-13','RIOUNI03 - COR109','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','14','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(71,'ISD-PR-14','RIOUNI02 - COR109','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','14','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(72,'ISD-PR-15','RIOUNI03 - MGT210','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','15','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(73,'ISD-PR-16','RIOUNI02 - MGT210','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','15','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(74,'ISD-PR-17','RIOUNI03 - ICT320','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','16','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(75,'ISD-PR-18','RIOUNI02 - ICT320','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','16','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(76,'ISD-PR-19','RIOUNI03 - HRM321','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','17','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(77,'ISD-PR-20','RIOUNI02 - HRM321','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','17','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(78,'ISD-PR-21','RIOUNI03 - IBS220','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','18','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(79,'ISD-PR-22','RIOUNI02 - IBS220','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','18','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(80,'ISD-PR-23','RIOUNI03 - BUS101','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','19','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(81,'ISD-PR-24','RIOUNI02 - BUS101','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','19','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(82,'ISD-PR-25','RIOUNI03 - BUS106','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','20','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(83,'ISD-PR-26','RIOUNI02 - BUS106','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','20','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(84,'ISD-PR-27','RIOUNI03 - BUS105','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','21','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(85,'ISD-PR-28','RIOUNI02 - BUS105','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','21','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(86,'ISD-PR-29','RIOUNI03 - BUS104','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','4','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(87,'ISD-PR-30','RIOUNI02 - BUS104','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','4','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(88,'ISD-PR-31','RIOUNI03 - MGT310','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','22','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(89,'ISD-PR-32','RIOUNI02 - MGT310','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','22','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(90,'ISD-PR-33','RIOUNI03 - ICT211','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','23','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(91,'ISD-PR-34','RIOUNI02 - ICT211','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','23','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(92,'ISD-PR-35','RIOUNI03 - ICT221','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','<p>ICT112 is a pre-requisite for this course.</p>','A','False','24','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(93,'ISD-PR-36','RIOUNI02 - ICT221','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','<p>ICT112 is the pre-requisite for this course.</p>','A','False','24','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(94,'ISD-PR-37','RIOUNI03 - HRM311','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','25','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(95,'ISD-PR-38','RIOUNI02 - HRM311','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','25','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(96,'ISD-PR-39','RIOUNI03 - BUS320','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','26','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(97,'ISD-PR-40','RIOUNI02 - BUS320','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','26','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(98,'ISD-PR-41','RIOUNI03 - BUS203','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','5','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(99,'ISD-PR-42','RIOUNI02 - BUS203','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','5','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(100,'ISD-PR-43','RIOUNI03 - ICT120','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','6','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(101,'ISD-PR-44','RIOUNI02 - ICT120','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','6','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(102,'ISD-PR-45','RIOUNI03 - ICT352','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','7','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(103,'ISD-PR-46','RIOUNI02 - ICT352','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','7','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(104,'ISD-PR-47','RIOUNI03 - BUS301','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','8','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(105,'ISD-PR-48','RIOUNI02 - BUS301','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','8','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(106,'ISD-PR-49','RIOUNI03 - BUS108','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','9','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(107,'ISD-PR-50','RIOUNI02 - BUS108','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','9','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(108,'ISD-PR-51','RIOUNI03 - ICT310','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','10','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(109,'ISD-PR-52','RIOUNI02 - ICT310','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','10','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(110,'ISD-PR-53','RIOUNI03 - BUS211','0128a000000tbcxAAA','Required','10.0','2.0','False','','','False','False','','','False','11','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(111,'ISD-PR-54','RIOUNI02 - BUS211','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','11','114','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(112,'ISD-PR-01','RIOUNI03-Elective','0128a000000tbcyAAA','Required','40.0','2.0','False','','','False','False','','','False','','','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(113,'ISD-PR-02','RIOUNI03-Mandatory','0128a000000tbcyAAA','Required','120.0','1.0','False','','','False','False','','','False','','','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(114,'ISD-PR-03','RIOUNI02-Elective','0128a000000tbcyAAA','Required','40.0','2.0','False','','','False','False','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(115,'ISD-PR-04','RIOUNI02-Mandatory','0128a000000tbcyAAA','Required','120.0','1.0','False','','','False','False','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(116,'ISD-PR-05','RIOUNI04-Electives','0128a000000tbcyAAA','Required','40.0','','False','','','False','False','','','False','','','8','114');
INSERT INTO "hed__Plan_Requirement__c" VALUES(117,'ISD-PR-06','RIOUNI04-Mandatory','0128a000000tbcyAAA','Required','120.0','','False','','','False','False','','','False','','','8','115');
INSERT INTO "hed__Plan_Requirement__c" VALUES(118,'ISD-PR-07','RIOUNI03 - BUS102','0128a000000tbcxAAA','Required','10.0','1.0','False','','','False','False','','','False','3','113','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(119,'ISD-PR-08','RIOUNI02 - BUS102','0128a000000tbcxAAA','Required','10.0','3.0','False','','','False','False','','','False','3','115','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(120,'ISD-PR-09','RIOUNI03 - ICT112','0128a000000tbcxAAA','Optional','10.0','','False','','','False','False','','','False','12','112','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(121,'ISD-PR-121','RIOUNI05 - Electives','0128a000000tbcyAAA','Optional','40.0','','False','','','False','False','','','False','','','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(122,'ISD-PR-122','RIOUNI05 - BUS102','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','3','125','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(123,'ISD-PR-123','RIOUNI05 - ICT112','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','12','121','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(124,'ISD-PR-124','RIOUNI05 - ICT115','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','13','121','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(125,'ISD-PR-125','RIOUNI05 - Mandatory','0128a000000tbcyAAA','Required','40.0','','False','','','False','False','','','False','','','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(126,'ISD-PR-126','RIOUNI05 - BUS101','0128a000000tbcxAAA','Required','20.0','','False','','','False','False','','','False','19','125','9','');
CREATE TABLE "hed__Plan_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0128a000000tbcxAAA','Course');
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0128a000000tbcyAAA','Group');
CREATE TABLE "hed__Program_Enrollment__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"hed__Admission_Date__c" VARCHAR(255), 
	"hed__Application_Submitted_Date__c" VARCHAR(255), 
	"hed__Credits_Attempted__c" VARCHAR(255), 
	"hed__Credits_Earned__c" VARCHAR(255), 
	"hed__Eligible_to_Enroll__c" VARCHAR(255), 
	"hed__Enrollment_Status__c" VARCHAR(255), 
	"hed__GPA__c" VARCHAR(255), 
	"rio_ed__Completion_Percentage__c" VARCHAR(255), 
	"rio_ed__Fee_Method__c" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Grade_Points__c" VARCHAR(255), 
	"rio_ed__Non_Tuition_Fee_Type__c" VARCHAR(255), 
	"rio_ed__Pay_Upfront__c" VARCHAR(255), 
	"rio_ed__Program_Status__c" VARCHAR(255), 
	"rio_ed__Study_Group__c" VARCHAR(255), 
	"rio_ed__Study_Pathway__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Affiliation__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	"hed__Program_Plan__c" VARCHAR(255), 
	"rio_ed__ProgramApplication__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Program_Enrollment__c" VALUES(1,'ISD-PE-19','2021-12-26','2021-12-26','40.0','40.0','True','Full-time','6.0','25.0','Course','Self Paid','24.0','Self Paid','Yes','Current','Group A','Default','31','46','14','7','7','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(2,'ISD-PE-01','2022-01-02','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','47','15','7','8','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(3,'ISD-PE-02','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','48','16','7','9','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(4,'ISD-PE-03','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','49','17','7','10','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(5,'ISD-PE-04','2022-01-01','','0.0','0.0','True','Half-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','50','18','7','11','8');
INSERT INTO "hed__Program_Enrollment__c" VALUES(6,'ISD-PE-05','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','54','19','7','12','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(7,'ISD-PE-06','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','55','20','7','13','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(8,'ISD-PE-07','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','56','21','7','14','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(9,'ISD-PE-08','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','57','22','7','19','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(10,'ISD-PE-09','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','58','23','7','15','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(11,'ISD-PE-10','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','59','24','7','16','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(12,'ISD-PE-11','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','60','25','7','17','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(13,'ISD-PE-12','2022-01-02','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','61','26','7','18','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(14,'ISD-PE-13','2022-01-02','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','62','27','7','20','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(15,'ISD-PE-18','2021-12-29','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group B','Default','31','45','13','7','6','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(16,'ISD-PE-14','2022-01-01','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','40','5','7','1','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(17,'ISD-PE-15','2021-12-09','2021-12-09','40.0','40.0','True','Full-time','6.25','25.0','Course','Self Paid','25.0','Self Paid','Yes','Current','','Default','31','42','6','7','2','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(18,'ISD-PE-16','2021-12-29','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group A','Default','31','43','8','7','3','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(19,'ISD-PE-17','2021-12-29','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','31','44','9','7','4','7');
CREATE TABLE "hed__Program_Plan__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__Is_Primary__c" VARCHAR(255), 
	"hed__Start_Date__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"rio_ed__Auto_Credit_Transfer__c" VARCHAR(255), 
	"rio_ed__Auto_Generate_Application_Student_Fee__c" VARCHAR(255), 
	"rio_ed__Auto_Generate_Deposit_Student_Fee__c" VARCHAR(255), 
	"rio_ed__Dual_Qualification__c" VARCHAR(255), 
	"rio_ed__Fee_Method__c" VARCHAR(255), 
	"rio_ed__Pay_Upfront__c" VARCHAR(255), 
	"rio_ed__Support_Pre_Acceptance_Enrollment__c" VARCHAR(255), 
	"rio_ed__Use_Default_Fee__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"rio_ed__Application_Fee__c" VARCHAR(255), 
	"rio_ed__Default_Program_Pathway__c" VARCHAR(255), 
	"rio_ed__Deposit_Fee__c" VARCHAR(255), 
	"rio_ed__Fee__c" VARCHAR(255), 
	"rio_ed__Primary_Program__c" VARCHAR(255), 
	"rio_ed__Secondary_Program__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Program_Plan__c" VALUES(1,'ISD-PPLAN-05','Bachelor of Business Information System V4','False','','Current','True','False','False','False','Course','No','For application fee only','True','31','','2','','2','','');
INSERT INTO "hed__Program_Plan__c" VALUES(2,'ISD-PPLAN-06','Bachelor of Business Information System Dual','False','','Current','True','False','False','True','Course','No','For application fee only','True','31','','','','2','31','25');
INSERT INTO "hed__Program_Plan__c" VALUES(3,'ISD-PPLAN-07','Bachelor of Business Information System V6','False','','Current','True','False','False','False','Course','No','For application fee only','True','31','','','','2','','');
INSERT INTO "hed__Program_Plan__c" VALUES(4,'ISD-PPLAN-08','Bachelor of Business Information System V5','False','','Current','True','False','False','False','Course','No','For application fee only','True','31','','5','','2','','');
INSERT INTO "hed__Program_Plan__c" VALUES(5,'ISD-PPLAN-09','Bachelor of Business Information System V3','False','','Current','True','False','False','False','Program','Yes','For application fee only','True','31','','3','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(6,'ISD-PPLAN-01','Bachelor of Business Management (Course-Upfront)','True','2022-01-06','Current','False','False','False','False','Course','Yes','Always','True','25','','','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(7,'ISD-PPLAN-02','Bachelor of Business Information System V1','True','2022-01-06','Current','False','False','False','False','Course','Yes','Always','True','31','','7','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(8,'ISD-PPLAN-03','Bachelor of Business Information System V1.5','False','2022-01-06','Current','True','False','False','False','Course','Yes','For application fee only','True','31','','','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(9,'ISD-PPLAN-04','Bachelor of Business Information System V2','False','2022-01-06','Current','True','True','True','False','Course','Yes','For application fee only','True','31','6','1','5','','','');
CREATE TABLE "hed__Term_Grade__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"hed__Credits_Attempted__c" VARCHAR(255), 
	"hed__Credits_Earned__c" VARCHAR(255), 
	"hed__Letter_Grade__c" VARCHAR(255), 
	"hed__Numerical_Grade__c" VARCHAR(255), 
	"hed__Percent_Grade__c" VARCHAR(255), 
	"hed__Result__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	"hed__Course_Connection__c" VARCHAR(255), 
	"hed__Course_Offering__c" VARCHAR(255), 
	"rio_ed__Session__c" VARCHAR(255), 
	"hed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Term_Grade__c" VALUES(1,'ISD-TG-01','','','','','','','6','37','15','','5');
INSERT INTO "hed__Term_Grade__c" VALUES(2,'ISD-TG-02','','','','','','','14','25','15','','5');
CREATE TABLE "hed__Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__End_Date__c" VARCHAR(255), 
	"hed__Start_Date__c" VARCHAR(255), 
	"hed__Type__c" VARCHAR(255), 
	"rio_ed__Census_Date__c" VARCHAR(255), 
	"rio_ed__Enrollment_Open_Date_Time__c" VARCHAR(255), 
	"rio_ed__Grading_Period_Type__c" VARCHAR(255), 
	"rio_ed__Term_Label__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"rio_ed__Previous_Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Term__c" VALUES(1,'ISD-TERM-01','Last Year Term 2','2021-11-04','2021-06-18','','2021-08-19','','Final Grade','Default','28','2');
INSERT INTO "hed__Term__c" VALUES(2,'ISD-TERM-02','Last Year Term 1','2021-06-04','2020-12-06','','2021-02-16','','Final Grade','Default','28','');
INSERT INTO "hed__Term__c" VALUES(3,'ISD-TERM-03','Next Year Term 1','2023-06-04','2023-01-06','Semester','2023-02-16','2023-01-05T14:00:00.000+0000','Final Grade','Default','28','6');
INSERT INTO "hed__Term__c" VALUES(4,'ISD-TERM-04','Next Year Term 2','2023-11-04','2023-06-18','Semester','2023-08-19','2023-06-17T14:00:00.000+0000','Final Grade','Default','28','3');
INSERT INTO "hed__Term__c" VALUES(5,'ISD-TERM-05','Current Year Term 1','2022-06-04','2022-01-06','Semester','2022-02-16','2021-12-05T14:00:00.000+0000','Final Grade','Default','28','');
INSERT INTO "hed__Term__c" VALUES(6,'ISD-TERM-06','Current Year Term 2','2022-11-04','2022-06-18','Semester','2022-08-19','2021-08-02T14:00:00.000+0000','Final Grade','Default','28','5');
CREATE TABLE "hed__Time_Block__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__End_Time__c" VARCHAR(255), 
	"hed__Start_Time__c" VARCHAR(255), 
	"rio_ed__Is_Extended__c" VARCHAR(255), 
	"hed__Educational_Institution__c" VARCHAR(255), 
	"rio_ed__Parent_Time_Block__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Time_Block__c" VALUES(1,'ISD-TB-01','Lunch','13:00:00.000Z','12:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(2,'ISD-TB-02','Noon #2','15:00:00.000Z','14:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(3,'ISD-TB-03','Noon #3','16:00:00.000Z','15:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(4,'ISD-TB-04','Evening #1','18:00:00.000Z','17:00:00.000Z','True','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(5,'ISD-TB-05','Morning #1','10:00:00.000Z','09:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(6,'ISD-TB-06','Default Time Block','','','False','28','');
INSERT INTO "hed__Time_Block__c" VALUES(7,'ISD-TB-07','Morning #2','11:00:00.000Z','10:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(8,'ISD-TB-08','Morning #3','12:00:00.000Z','11:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(9,'ISD-TB-09','Noon #4','17:00:00.000Z','16:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(10,'ISD-TB-10','Noon #1','14:00:00.000Z','13:00:00.000Z','False','28','6');
INSERT INTO "hed__Time_Block__c" VALUES(11,'ISD-TB-11','Afternoon','17:00:00.000Z','13:00:00.000Z','False','28','12');
INSERT INTO "hed__Time_Block__c" VALUES(12,'ISD-TB-12','Other Parent Time Block','17:00:00.000Z','09:00:00.000Z','False','28','');
INSERT INTO "hed__Time_Block__c" VALUES(13,'ISD-TB-13','Morning','12:00:00.000Z','09:00:00.000Z','False','28','12');
CREATE TABLE "rio_ed__Allocation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Booking_Display_Name__c" VARCHAR(255), 
	"rio_ed__Booking_Status__c" VARCHAR(255), 
	"rio_ed__End_Date_Non_TZ__c" VARCHAR(255), 
	"rio_ed__End_Time_Non_TZ__c" VARCHAR(255), 
	"rio_ed__End__c" VARCHAR(255), 
	"rio_ed__Session_Time_Id__c" VARCHAR(255), 
	"rio_ed__Start_Date_Non_TZ__c" VARCHAR(255), 
	"rio_ed__Start_Time_Non_TZ__c" VARCHAR(255), 
	"rio_ed__Start__c" VARCHAR(255), 
	"rio_ed__Status_Reason__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Updated_Booking__c" VARCHAR(255), 
	"rio_ed__Resource__c" VARCHAR(255), 
	"rio_ed__Role__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Allocation__c" VALUES(1,'ISD-BK-462','Tuesday','Tentative','2022-01-28','16:00:00.000Z','2022-01-28T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-01-28','15:00:00.000Z','2022-01-28T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(2,'ISD-BK-463','Tuesday','Tentative','2022-02-04','16:00:00.000Z','2022-02-04T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-02-04','15:00:00.000Z','2022-02-04T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(3,'ISD-BK-464','Tuesday','Tentative','2022-02-11','16:00:00.000Z','2022-02-11T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-02-11','15:00:00.000Z','2022-02-11T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(4,'ISD-BK-465','Tuesday','Tentative','2022-02-18','16:00:00.000Z','2022-02-18T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-02-18','15:00:00.000Z','2022-02-18T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(5,'ISD-BK-466','Tuesday','Tentative','2022-02-25','16:00:00.000Z','2022-02-25T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-02-25','15:00:00.000Z','2022-02-25T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(6,'ISD-BK-467','Tuesday','Tentative','2022-03-04','16:00:00.000Z','2022-03-04T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-03-04','15:00:00.000Z','2022-03-04T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(7,'ISD-BK-468','Tuesday','Tentative','2022-03-11','16:00:00.000Z','2022-03-11T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-03-11','15:00:00.000Z','2022-03-11T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(8,'ISD-BK-469','Tuesday','Tentative','2022-03-18','16:00:00.000Z','2022-03-18T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-03-18','15:00:00.000Z','2022-03-18T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(9,'ISD-BK-470','Tuesday','Tentative','2022-03-25','16:00:00.000Z','2022-03-25T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-03-25','15:00:00.000Z','2022-03-25T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(10,'ISD-BK-471','Tuesday','Tentative','2022-04-01','16:00:00.000Z','2022-04-01T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-04-01','15:00:00.000Z','2022-04-01T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(11,'ISD-BK-472','Tuesday','Tentative','2022-04-08','16:00:00.000Z','2022-04-08T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-04-08','15:00:00.000Z','2022-04-08T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(12,'ISD-BK-473','Tuesday','Tentative','2022-04-15','16:00:00.000Z','2022-04-15T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-04-15','15:00:00.000Z','2022-04-15T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(13,'ISD-BK-474','Tuesday','Tentative','2022-04-22','16:00:00.000Z','2022-04-22T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-04-22','15:00:00.000Z','2022-04-22T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(14,'ISD-BK-475','Tuesday','Tentative','2022-04-29','16:00:00.000Z','2022-04-29T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-04-29','15:00:00.000Z','2022-04-29T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(15,'ISD-BK-476','Tuesday','Tentative','2022-05-06','16:00:00.000Z','2022-05-06T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-05-06','15:00:00.000Z','2022-05-06T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(16,'ISD-BK-477','Tuesday','Tentative','2022-05-13','16:00:00.000Z','2022-05-13T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-05-13','15:00:00.000Z','2022-05-13T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(17,'ISD-BK-478','Tuesday','Tentative','2022-05-20','16:00:00.000Z','2022-05-20T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-05-20','15:00:00.000Z','2022-05-20T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(18,'ISD-BK-479','Tuesday','Tentative','2022-05-27','16:00:00.000Z','2022-05-27T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-05-27','15:00:00.000Z','2022-05-27T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(19,'ISD-BK-480','Tuesday','Tentative','2022-06-03','16:00:00.000Z','2022-06-03T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-06-03','15:00:00.000Z','2022-06-03T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(20,'ISD-BK-216','','Tentative','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-07','10:00:00.000Z','2022-10-06T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(21,'ISD-BK-217','','Tentative','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-14','10:00:00.000Z','2022-10-13T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(22,'ISD-BK-218','','Tentative','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(23,'ISD-BK-219','','Tentative','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(24,'ISD-BK-220','','Tentative','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(25,'ISD-BK-221','','Tentative','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(26,'ISD-BK-222','','Tentative','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(27,'ISD-BK-223','','Tentative','2022-09-09','13:00:00.000Z','2022-09-09T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-09','12:00:00.000Z','2022-09-09T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(28,'ISD-BK-224','','Tentative','2022-09-16','13:00:00.000Z','2022-09-16T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-16','12:00:00.000Z','2022-09-16T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(29,'ISD-BK-225','','Tentative','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(30,'ISD-BK-226','','Tentative','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(31,'ISD-BK-227','','Tentative','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(32,'ISD-BK-228','','Tentative','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(33,'ISD-BK-073','','Tentative','2023-06-30','16:00:00.000Z','2023-06-30T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-06-30','15:00:00.000Z','2023-06-30T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(34,'ISD-BK-074','','Tentative','2023-07-07','16:00:00.000Z','2023-07-07T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(35,'ISD-BK-075','','Tentative','2023-07-14','16:00:00.000Z','2023-07-14T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(36,'ISD-BK-076','','Tentative','2023-07-21','16:00:00.000Z','2023-07-21T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(37,'ISD-BK-077','','Tentative','2023-07-28','16:00:00.000Z','2023-07-28T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(38,'ISD-BK-078','','Tentative','2023-08-04','16:00:00.000Z','2023-08-04T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(39,'ISD-BK-279','','Tentative','2022-08-19','17:00:00.000Z','2022-08-19T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-19','16:00:00.000Z','2022-08-19T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(40,'ISD-BK-280','','Tentative','2022-10-07','17:00:00.000Z','2022-10-07T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-07','16:00:00.000Z','2022-10-07T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(41,'ISD-BK-281','','Tentative','2022-08-26','17:00:00.000Z','2022-08-26T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-26','16:00:00.000Z','2022-08-26T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(42,'ISD-BK-282','','Tentative','2022-10-14','17:00:00.000Z','2022-10-14T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-14','16:00:00.000Z','2022-10-14T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(43,'ISD-BK-283','','Tentative','2022-09-02','17:00:00.000Z','2022-09-02T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-02','16:00:00.000Z','2022-09-02T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(44,'ISD-BK-284','','Tentative','2022-09-09','17:00:00.000Z','2022-09-09T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-09','16:00:00.000Z','2022-09-09T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(45,'ISD-BK-285','','Tentative','2022-09-16','17:00:00.000Z','2022-09-16T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-16','16:00:00.000Z','2022-09-16T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(46,'ISD-BK-286','','Tentative','2022-09-23','17:00:00.000Z','2022-09-23T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-23','16:00:00.000Z','2022-09-23T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(47,'ISD-BK-307','','Tentative','2022-09-30','17:00:00.000Z','2022-09-30T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-30','16:00:00.000Z','2022-09-30T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(48,'ISD-BK-308','','Tentative','2022-10-21','17:00:00.000Z','2022-10-21T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-21','16:00:00.000Z','2022-10-21T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(49,'ISD-BK-278','','Tentative','2022-08-12','17:00:00.000Z','2022-08-12T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-12','16:00:00.000Z','2022-08-12T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(50,'ISD-BK-363','','Tentative','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(51,'ISD-BK-364','','Tentative','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(52,'ISD-BK-365','','Tentative','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(53,'ISD-BK-366','','Tentative','2022-09-09','12:00:00.000Z','2022-09-09T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-09','11:00:00.000Z','2022-09-09T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(54,'ISD-BK-291','','Tentative','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-03','13:00:00.000Z','2022-08-03T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(55,'ISD-BK-292','','Tentative','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-10','13:00:00.000Z','2022-08-10T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(56,'ISD-BK-293','','Tentative','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-17','13:00:00.000Z','2022-08-17T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(57,'ISD-BK-294','','Tentative','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-24','13:00:00.000Z','2022-08-24T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(58,'ISD-BK-295','','Tentative','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-31','13:00:00.000Z','2022-08-31T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(59,'ISD-BK-053','','Tentative','2022-08-31','16:00:00.000Z','2022-08-31T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(60,'ISD-BK-052','','Tentative','2022-08-24','16:00:00.000Z','2022-08-24T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(61,'ISD-BK-054','','Tentative','2022-09-07','16:00:00.000Z','2022-09-07T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-07','15:00:00.000Z','2022-09-07T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(62,'ISD-BK-055','','Tentative','2022-09-21','16:00:00.000Z','2022-09-21T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(63,'ISD-BK-056','','Tentative','2022-09-14','16:00:00.000Z','2022-09-14T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-14','15:00:00.000Z','2022-09-14T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(64,'ISD-BK-057','','Tentative','2022-09-28','16:00:00.000Z','2022-09-28T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(65,'ISD-BK-058','','Tentative','2022-10-05','16:00:00.000Z','2022-10-05T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(66,'ISD-BK-059','','Tentative','2022-10-12','16:00:00.000Z','2022-10-12T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(67,'ISD-BK-080','','Tentative','2023-09-15','16:00:00.000Z','2023-09-15T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-15','15:00:00.000Z','2023-09-15T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(68,'ISD-BK-101','','Tentative','2023-09-22','16:00:00.000Z','2023-09-22T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(69,'ISD-BK-102','','Tentative','2023-09-29','16:00:00.000Z','2023-09-29T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(70,'ISD-BK-103','','Tentative','2023-10-06','16:00:00.000Z','2023-10-06T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(71,'ISD-BK-104','','Tentative','2023-10-13','16:00:00.000Z','2023-10-13T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(72,'ISD-BK-105','','Tentative','2023-10-20','16:00:00.000Z','2023-10-20T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(73,'ISD-BK-106','','Tentative','2023-10-27','16:00:00.000Z','2023-10-27T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(74,'ISD-BK-107','','Tentative','2023-11-03','16:00:00.000Z','2023-11-03T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(75,'ISD-BK-079','','Tentative','2023-08-11','16:00:00.000Z','2023-08-11T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(76,'ISD-BK-108','','Tentative','2023-09-08','16:00:00.000Z','2023-09-08T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-08','15:00:00.000Z','2023-09-08T04:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(77,'ISD-BK-109','','Tentative','2022-01-09','10:00:00.000Z','2022-01-08T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-09','09:00:00.000Z','2022-01-08T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(78,'ISD-BK-110','','Tentative','2022-01-16','10:00:00.000Z','2022-01-15T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-16','09:00:00.000Z','2022-01-15T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(79,'ISD-BK-309','','Tentative','2022-10-28','17:00:00.000Z','2022-10-28T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-28','16:00:00.000Z','2022-10-28T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(80,'ISD-BK-310','','Tentative','2022-11-04','17:00:00.000Z','2022-11-04T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-04','16:00:00.000Z','2022-11-04T05:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(81,'ISD-BK-311','','Tentative','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(82,'ISD-BK-312','','Tentative','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(83,'ISD-BK-313','','Tentative','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(84,'ISD-BK-314','','Tentative','2022-09-07','15:00:00.000Z','2022-09-07T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-07','14:00:00.000Z','2022-09-07T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(85,'ISD-BK-315','','Tentative','2022-09-14','15:00:00.000Z','2022-09-14T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-14','14:00:00.000Z','2022-09-14T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(86,'ISD-BK-316','','Tentative','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(87,'ISD-BK-317','','Tentative','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(88,'ISD-BK-318','','Tentative','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(89,'ISD-BK-296','','Tentative','2022-09-07','14:00:00.000Z','2022-09-07T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-07','13:00:00.000Z','2022-09-07T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(90,'ISD-BK-297','','Tentative','2022-06-22','14:00:00.000Z','2022-06-22T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-06-22','13:00:00.000Z','2022-06-22T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(91,'ISD-BK-298','','Tentative','2022-06-29','14:00:00.000Z','2022-06-29T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-06-29','13:00:00.000Z','2022-06-29T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(92,'ISD-BK-299','','Tentative','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-06','13:00:00.000Z','2022-07-06T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(93,'ISD-BK-300','','Tentative','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-13','13:00:00.000Z','2022-07-13T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(94,'ISD-BK-301','','Tentative','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-20','13:00:00.000Z','2022-07-20T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(95,'ISD-BK-111','','Tentative','2022-01-23','10:00:00.000Z','2022-01-22T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-23','09:00:00.000Z','2022-01-22T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(96,'ISD-BK-112','','Tentative','2022-01-30','10:00:00.000Z','2022-01-29T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-30','09:00:00.000Z','2022-01-29T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(97,'ISD-BK-113','','Tentative','2022-02-06','10:00:00.000Z','2022-02-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-06','09:00:00.000Z','2022-02-05T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(98,'ISD-BK-114','','Tentative','2022-02-13','10:00:00.000Z','2022-02-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-13','09:00:00.000Z','2022-02-12T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(99,'ISD-BK-115','','Tentative','2022-02-20','10:00:00.000Z','2022-02-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-20','09:00:00.000Z','2022-02-19T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(100,'ISD-BK-116','','Tentative','2022-02-27','10:00:00.000Z','2022-02-26T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-27','09:00:00.000Z','2022-02-26T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(101,'ISD-BK-117','','Tentative','2022-03-06','10:00:00.000Z','2022-03-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-06','09:00:00.000Z','2022-03-05T22:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(102,'ISD-BK-118','','Tentative','2022-03-13','10:00:00.000Z','2022-03-13T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-13','09:00:00.000Z','2022-03-12T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(103,'ISD-BK-119','','Tentative','2022-03-20','10:00:00.000Z','2022-03-20T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-20','09:00:00.000Z','2022-03-19T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(104,'ISD-BK-120','','Tentative','2022-03-27','10:00:00.000Z','2022-03-27T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-27','09:00:00.000Z','2022-03-26T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(105,'ISD-BK-141','','Tentative','2022-04-03','10:00:00.000Z','2022-04-03T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-03','09:00:00.000Z','2022-04-02T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(106,'ISD-BK-142','','Tentative','2022-04-10','10:00:00.000Z','2022-04-10T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-10','09:00:00.000Z','2022-04-09T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(107,'ISD-BK-143','','Tentative','2022-04-17','10:00:00.000Z','2022-04-17T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-17','09:00:00.000Z','2022-04-16T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(108,'ISD-BK-144','','Tentative','2022-04-24','10:00:00.000Z','2022-04-24T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-24','09:00:00.000Z','2022-04-23T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(109,'ISD-BK-319','','Tentative','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(110,'ISD-BK-320','','Tentative','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(111,'ISD-BK-321','','Tentative','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(112,'ISD-BK-322','','Tentative','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(113,'ISD-BK-323','','Tentative','2022-06-22','15:00:00.000Z','2022-06-22T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-06-22','14:00:00.000Z','2022-06-22T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(114,'ISD-BK-302','','Tentative','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-27','13:00:00.000Z','2022-07-27T03:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(115,'ISD-BK-303','','Tentative','2022-09-14','14:00:00.000Z','2022-09-14T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-14','13:00:00.000Z','2022-09-14T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(116,'ISD-BK-304','','Tentative','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-21','13:00:00.000Z','2022-09-21T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(117,'ISD-BK-305','','Tentative','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-28','13:00:00.000Z','2022-09-28T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(118,'ISD-BK-306','','Tentative','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-05','13:00:00.000Z','2022-10-05T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(119,'ISD-BK-327','','Tentative','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-12','13:00:00.000Z','2022-10-12T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(120,'ISD-BK-328','','Tentative','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-19','13:00:00.000Z','2022-10-19T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(121,'ISD-BK-329','','Tentative','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-26','13:00:00.000Z','2022-10-26T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(122,'ISD-BK-330','','Tentative','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-02','13:00:00.000Z','2022-11-02T02:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(123,'ISD-BK-331','','Tentative','2022-01-06','16:00:00.000Z','2022-01-06T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-06','15:00:00.000Z','2022-01-06T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(124,'ISD-BK-060','','Tentative','2022-10-19','16:00:00.000Z','2022-10-19T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(125,'ISD-BK-081','','Tentative','2022-10-26','16:00:00.000Z','2022-10-26T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(126,'ISD-BK-082','','Tentative','2022-11-02','16:00:00.000Z','2022-11-02T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(127,'ISD-BK-083','','Tentative','2022-04-08','10:00:00.000Z','2022-04-08T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-08','09:00:00.000Z','2022-04-07T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(128,'ISD-BK-146','','Tentative','2022-01-12','12:00:00.000Z','2022-01-12T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-01-12','11:00:00.000Z','2022-01-12T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(129,'ISD-BK-147','','Tentative','2022-01-19','12:00:00.000Z','2022-01-19T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-01-19','11:00:00.000Z','2022-01-19T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(130,'ISD-BK-148','','Tentative','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(131,'ISD-BK-149','','Tentative','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(132,'ISD-BK-150','','Tentative','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(133,'ISD-BK-151','','Tentative','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(134,'ISD-BK-152','','Tentative','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(135,'ISD-BK-153','','Tentative','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(136,'ISD-BK-154','','Tentative','2022-03-09','12:00:00.000Z','2022-03-09T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-09','11:00:00.000Z','2022-03-09T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(137,'ISD-BK-155','','Tentative','2022-03-16','12:00:00.000Z','2022-03-16T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-16','11:00:00.000Z','2022-03-16T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(138,'ISD-BK-156','','Tentative','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(139,'ISD-BK-157','','Tentative','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(140,'ISD-BK-158','','Tentative','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(141,'ISD-BK-145','','Tentative','2022-05-01','10:00:00.000Z','2022-05-01T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-01','09:00:00.000Z','2022-04-30T23:00:00.000+0000','Good','Allocated','True','12','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(142,'ISD-BK-324','','Tentative','2022-06-29','15:00:00.000Z','2022-06-29T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-06-29','14:00:00.000Z','2022-06-29T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(143,'ISD-BK-325','','Tentative','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(144,'ISD-BK-326','','Tentative','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(145,'ISD-BK-347','','Tentative','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(146,'ISD-BK-348','','Tentative','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(147,'ISD-BK-349','','Tentative','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(148,'ISD-BK-350','','Tentative','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(149,'ISD-BK-287','','Tentative','2022-09-16','12:00:00.000Z','2022-09-16T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-16','11:00:00.000Z','2022-09-16T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(150,'ISD-BK-288','','Tentative','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(151,'ISD-BK-084','','Tentative','2022-04-15','10:00:00.000Z','2022-04-15T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-15','09:00:00.000Z','2022-04-14T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(152,'ISD-BK-159','','Tentative','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(153,'ISD-BK-160','','Tentative','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(154,'ISD-BK-181','','Tentative','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(155,'ISD-BK-182','','Tentative','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(156,'ISD-BK-183','','Tentative','2023-02-09','12:00:00.000Z','2023-02-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(157,'ISD-BK-184','','Tentative','2023-02-16','12:00:00.000Z','2023-02-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(158,'ISD-BK-185','','Tentative','2023-02-23','12:00:00.000Z','2023-02-23T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(159,'ISD-BK-186','','Tentative','2023-03-02','12:00:00.000Z','2023-03-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(160,'ISD-BK-187','','Tentative','2023-03-09','12:00:00.000Z','2023-03-09T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-09','11:00:00.000Z','2023-03-09T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(161,'ISD-BK-188','','Tentative','2023-03-16','12:00:00.000Z','2023-03-16T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-16','11:00:00.000Z','2023-03-16T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(162,'ISD-BK-289','','Tentative','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(163,'ISD-BK-290','','Tentative','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(164,'ISD-BK-351','','Tentative','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(165,'ISD-BK-352','','Tentative','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(166,'ISD-BK-353','','Tentative','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(167,'ISD-BK-354','','Tentative','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(168,'ISD-BK-355','','Tentative','2022-07-01','12:00:00.000Z','2022-07-01T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-01','11:00:00.000Z','2022-07-01T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(169,'ISD-BK-356','','Tentative','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(170,'ISD-BK-357','','Tentative','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(171,'ISD-BK-358','','Tentative','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(172,'ISD-BK-085','','Tentative','2022-04-22','10:00:00.000Z','2022-04-22T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-22','09:00:00.000Z','2022-04-21T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(173,'ISD-BK-086','','Tentative','2022-04-29','10:00:00.000Z','2022-04-29T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-29','09:00:00.000Z','2022-04-28T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(174,'ISD-BK-087','','Tentative','2022-01-07','10:00:00.000Z','2022-01-06T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-07','09:00:00.000Z','2022-01-06T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(175,'ISD-BK-088','','Tentative','2022-01-14','10:00:00.000Z','2022-01-13T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-14','09:00:00.000Z','2022-01-13T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(176,'ISD-BK-089','','Tentative','2022-01-21','10:00:00.000Z','2022-01-20T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-21','09:00:00.000Z','2022-01-20T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(177,'ISD-BK-090','','Tentative','2022-01-28','10:00:00.000Z','2022-01-27T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-28','09:00:00.000Z','2022-01-27T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(178,'ISD-BK-091','','Tentative','2022-02-04','10:00:00.000Z','2022-02-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-04','09:00:00.000Z','2022-02-03T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(179,'ISD-BK-189','','Tentative','2023-01-12','12:00:00.000Z','2023-01-12T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-01-12','11:00:00.000Z','2023-01-12T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(180,'ISD-BK-190','','Tentative','2023-01-19','12:00:00.000Z','2023-01-19T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-01-19','11:00:00.000Z','2023-01-19T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(181,'ISD-BK-191','','Tentative','2023-01-26','12:00:00.000Z','2023-01-26T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(182,'ISD-BK-192','','Tentative','2023-02-02','12:00:00.000Z','2023-02-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(183,'ISD-BK-193','','Tentative','2023-03-23','12:00:00.000Z','2023-03-23T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(184,'ISD-BK-194','','Tentative','2023-03-30','12:00:00.000Z','2023-03-30T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(185,'ISD-BK-195','','Tentative','2023-04-06','12:00:00.000Z','2023-04-06T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(186,'ISD-BK-196','','Tentative','2023-04-13','12:00:00.000Z','2023-04-13T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(187,'ISD-BK-197','','Tentative','2023-04-20','12:00:00.000Z','2023-04-20T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(188,'ISD-BK-198','','Tentative','2023-04-27','12:00:00.000Z','2023-04-27T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(189,'ISD-BK-199','','Tentative','2023-05-04','12:00:00.000Z','2023-05-04T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(190,'ISD-BK-200','','Tentative','2023-05-11','12:00:00.000Z','2023-05-11T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(191,'ISD-BK-237','','Tentative','2023-05-18','12:00:00.000Z','2023-05-18T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(192,'ISD-BK-238','','Tentative','2023-05-25','12:00:00.000Z','2023-05-25T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(193,'ISD-BK-359','','Tentative','2022-06-24','12:00:00.000Z','2022-06-24T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-06-24','11:00:00.000Z','2022-06-24T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(194,'ISD-BK-360','','Tentative','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(195,'ISD-BK-361','','Tentative','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(196,'ISD-BK-362','','Tentative','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(197,'ISD-BK-388','','Tentative','2022-01-12','13:00:00.000Z','2022-01-12T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-01-12','12:00:00.000Z','2022-01-12T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(198,'ISD-BK-389','','Tentative','2022-01-19','13:00:00.000Z','2022-01-19T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-01-19','12:00:00.000Z','2022-01-19T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(199,'ISD-BK-390','','Tentative','2022-01-26','13:00:00.000Z','2022-01-26T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(200,'ISD-BK-391','','Tentative','2022-02-02','13:00:00.000Z','2022-02-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(201,'ISD-BK-392','','Tentative','2022-02-09','13:00:00.000Z','2022-02-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(202,'ISD-BK-393','','Tentative','2022-02-16','13:00:00.000Z','2022-02-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(203,'ISD-BK-394','','Tentative','2022-02-23','13:00:00.000Z','2022-02-23T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(204,'ISD-BK-395','','Tentative','2022-03-02','13:00:00.000Z','2022-03-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(205,'ISD-BK-396','','Tentative','2022-03-09','13:00:00.000Z','2022-03-09T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-09','12:00:00.000Z','2022-03-09T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(206,'ISD-BK-397','','Tentative','2022-03-16','13:00:00.000Z','2022-03-16T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-16','12:00:00.000Z','2022-03-16T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(207,'ISD-BK-398','','Tentative','2022-03-23','13:00:00.000Z','2022-03-23T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(208,'ISD-BK-399','','Tentative','2022-03-30','13:00:00.000Z','2022-03-30T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(209,'ISD-BK-400','','Tentative','2022-04-06','13:00:00.000Z','2022-04-06T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(210,'ISD-BK-401','','Tentative','2022-04-13','13:00:00.000Z','2022-04-13T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(211,'ISD-BK-402','','Tentative','2022-04-20','13:00:00.000Z','2022-04-20T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(212,'ISD-BK-403','','Tentative','2022-04-27','13:00:00.000Z','2022-04-27T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(213,'ISD-BK-092','','Tentative','2022-02-11','10:00:00.000Z','2022-02-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-11','09:00:00.000Z','2022-02-10T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(214,'ISD-BK-093','','Tentative','2022-02-18','10:00:00.000Z','2022-02-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-18','09:00:00.000Z','2022-02-17T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(215,'ISD-BK-094','','Tentative','2022-02-25','10:00:00.000Z','2022-02-24T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-25','09:00:00.000Z','2022-02-24T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(216,'ISD-BK-229','','Tentative','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(217,'ISD-BK-230','','Tentative','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(218,'ISD-BK-231','','Tentative','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(219,'ISD-BK-232','','Tentative','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(220,'ISD-BK-233','','Tentative','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(221,'ISD-BK-234','','Tentative','2022-06-24','13:00:00.000Z','2022-06-24T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-06-24','12:00:00.000Z','2022-06-24T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(222,'ISD-BK-235','','Tentative','2022-07-01','13:00:00.000Z','2022-07-01T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-01','12:00:00.000Z','2022-07-01T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(223,'ISD-BK-236','','Tentative','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(224,'ISD-BK-404','','Tentative','2022-05-04','13:00:00.000Z','2022-05-04T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(225,'ISD-BK-405','','Tentative','2023-03-16','11:00:00.000Z','2023-03-16T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-16','10:00:00.000Z','2023-03-16T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(226,'ISD-BK-406','','Tentative','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(227,'ISD-BK-407','','Tentative','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(228,'ISD-BK-408','','Tentative','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(229,'ISD-BK-409','','Tentative','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(230,'ISD-BK-410','','Tentative','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(231,'ISD-BK-411','','Tentative','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(232,'ISD-BK-412','','Tentative','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(233,'ISD-BK-413','','Tentative','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(234,'ISD-BK-414','','Tentative','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(235,'ISD-BK-415','','Tentative','2023-01-12','11:00:00.000Z','2023-01-12T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-01-12','10:00:00.000Z','2023-01-11T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(236,'ISD-BK-416','','Tentative','2023-01-19','11:00:00.000Z','2023-01-19T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-01-19','10:00:00.000Z','2023-01-18T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(237,'ISD-BK-417','','Tentative','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(238,'ISD-BK-418','','Tentative','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(239,'ISD-BK-419','','Tentative','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(240,'ISD-BK-420','','Tentative','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(241,'ISD-BK-095','','Tentative','2022-03-04','10:00:00.000Z','2022-03-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-04','09:00:00.000Z','2022-03-03T22:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(242,'ISD-BK-096','','Tentative','2022-03-11','10:00:00.000Z','2022-03-11T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-11','09:00:00.000Z','2022-03-10T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(243,'ISD-BK-097','','Tentative','2022-03-18','10:00:00.000Z','2022-03-18T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-18','09:00:00.000Z','2022-03-17T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(244,'ISD-BK-098','','Tentative','2022-03-25','10:00:00.000Z','2022-03-25T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-25','09:00:00.000Z','2022-03-24T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(245,'ISD-BK-099','','Tentative','2022-04-01','10:00:00.000Z','2022-04-01T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-01','09:00:00.000Z','2022-03-31T23:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(246,'ISD-BK-100','','Tentative','2022-02-10','17:00:00.000Z','2022-02-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(247,'ISD-BK-121','','Tentative','2022-02-17','17:00:00.000Z','2022-02-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(248,'ISD-BK-122','','Tentative','2022-02-24','17:00:00.000Z','2022-02-24T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(249,'ISD-BK-123','','Tentative','2022-03-03','17:00:00.000Z','2022-03-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(250,'ISD-BK-257','','Tentative','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','Good','Allocated','True','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(251,'ISD-BK-258','','Tentative','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-20','14:00:00.000Z','2023-10-20T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(252,'ISD-BK-259','','Tentative','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-27','14:00:00.000Z','2023-10-27T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(253,'ISD-BK-260','','Tentative','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-03','14:00:00.000Z','2023-11-03T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(254,'ISD-BK-261','','Tentative','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-28','14:00:00.000Z','2023-07-28T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(255,'ISD-BK-262','','Tentative','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-04','14:00:00.000Z','2023-08-04T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(256,'ISD-BK-263','','Tentative','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-11','14:00:00.000Z','2023-08-11T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(257,'ISD-BK-264','','Tentative','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-18','14:00:00.000Z','2023-08-18T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(258,'ISD-BK-265','','Tentative','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-25','14:00:00.000Z','2023-08-25T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(259,'ISD-BK-266','','Tentative','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-01','14:00:00.000Z','2023-09-01T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(260,'ISD-BK-124','','Tentative','2022-03-10','17:00:00.000Z','2022-03-10T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-10','16:00:00.000Z','2022-03-10T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(261,'ISD-BK-125','','Tentative','2022-03-17','17:00:00.000Z','2022-03-17T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-17','16:00:00.000Z','2022-03-17T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(262,'ISD-BK-126','','Tentative','2022-03-24','17:00:00.000Z','2022-03-24T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(263,'ISD-BK-127','','Tentative','2022-03-31','17:00:00.000Z','2022-03-31T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(264,'ISD-BK-128','','Tentative','2022-04-07','17:00:00.000Z','2022-04-07T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(265,'ISD-BK-129','','Tentative','2022-04-14','17:00:00.000Z','2022-04-14T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(266,'ISD-BK-442','','Tentative','2023-09-08','15:00:00.000Z','2023-09-08T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-08','14:00:00.000Z','2023-09-08T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(267,'ISD-BK-443','','Tentative','2023-09-15','15:00:00.000Z','2023-09-15T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-15','14:00:00.000Z','2023-09-15T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(268,'ISD-BK-444','','Tentative','2023-06-23','15:00:00.000Z','2023-06-23T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-06-23','14:00:00.000Z','2023-06-23T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(269,'ISD-BK-445','','Tentative','2023-06-30','15:00:00.000Z','2023-06-30T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-06-30','14:00:00.000Z','2023-06-30T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(270,'ISD-BK-446','','Tentative','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-22','14:00:00.000Z','2023-09-22T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(271,'ISD-BK-447','','Tentative','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-29','14:00:00.000Z','2023-09-29T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(272,'ISD-BK-448','','Tentative','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-06','14:00:00.000Z','2023-10-06T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(273,'ISD-BK-449','','Tentative','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-13','14:00:00.000Z','2023-10-13T03:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(274,'ISD-BK-450','','Tentative','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-07','14:00:00.000Z','2023-07-07T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(275,'ISD-BK-451','','Tentative','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-14','14:00:00.000Z','2023-07-14T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(276,'ISD-BK-452','','Tentative','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-21','14:00:00.000Z','2023-07-21T04:00:00.000+0000','Good','Allocated','False','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(277,'ISD-BK-239','','Tentative','2023-06-01','12:00:00.000Z','2023-06-01T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(278,'ISD-BK-130','','Tentative','2022-04-21','17:00:00.000Z','2022-04-21T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(279,'ISD-BK-131','','Tentative','2022-04-28','17:00:00.000Z','2022-04-28T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(280,'ISD-BK-132','','Tentative','2022-05-05','17:00:00.000Z','2022-05-05T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(281,'ISD-BK-133','','Tentative','2022-01-06','17:00:00.000Z','2022-01-06T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-06','16:00:00.000Z','2022-01-06T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(282,'ISD-BK-134','','Tentative','2022-01-13','17:00:00.000Z','2022-01-13T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-13','16:00:00.000Z','2022-01-13T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(283,'ISD-BK-135','','Tentative','2022-01-20','17:00:00.000Z','2022-01-20T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(284,'ISD-BK-136','','Tentative','2022-01-27','17:00:00.000Z','2022-01-27T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(285,'ISD-BK-137','','Tentative','2022-02-03','17:00:00.000Z','2022-02-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(286,'ISD-BK-138','','Tentative','2022-06-24','14:00:00.000Z','2022-06-24T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-06-24','13:00:00.000Z','2022-06-24T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(287,'ISD-BK-240','','Tentative','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-01-26','09:00:00.000Z','2023-01-25T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(288,'ISD-BK-241','','Tentative','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-02','09:00:00.000Z','2023-02-01T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(289,'ISD-BK-242','','Tentative','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-09','09:00:00.000Z','2023-02-08T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(290,'ISD-BK-243','','Tentative','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-16','09:00:00.000Z','2023-02-15T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(291,'ISD-BK-244','','Tentative','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-23','09:00:00.000Z','2023-02-22T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(292,'ISD-BK-245','','Tentative','2023-01-12','10:00:00.000Z','2023-01-11T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-01-12','09:00:00.000Z','2023-01-11T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(293,'ISD-BK-246','','Tentative','2023-01-19','10:00:00.000Z','2023-01-18T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-01-19','09:00:00.000Z','2023-01-18T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(294,'ISD-BK-421','','Tentative','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(295,'ISD-BK-422','','Tentative','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(296,'ISD-BK-423','','Tentative','2023-03-09','11:00:00.000Z','2023-03-09T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-09','10:00:00.000Z','2023-03-09T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(297,'ISD-BK-424','','Tentative','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(298,'ISD-BK-139','','Tentative','2022-07-01','14:00:00.000Z','2022-07-01T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-01','13:00:00.000Z','2022-07-01T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(299,'ISD-BK-140','','Tentative','2022-07-08','14:00:00.000Z','2022-07-08T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(300,'ISD-BK-161','','Tentative','2022-07-15','14:00:00.000Z','2022-07-15T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(301,'ISD-BK-162','','Tentative','2022-07-22','14:00:00.000Z','2022-07-22T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(302,'ISD-BK-163','','Tentative','2022-08-05','14:00:00.000Z','2022-08-05T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(303,'ISD-BK-164','','Tentative','2022-08-12','14:00:00.000Z','2022-08-12T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(304,'ISD-BK-165','','Tentative','2022-08-19','14:00:00.000Z','2022-08-19T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(305,'ISD-BK-166','','Tentative','2022-08-26','14:00:00.000Z','2022-08-26T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(306,'ISD-BK-167','','Tentative','2022-09-02','14:00:00.000Z','2022-09-02T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(307,'ISD-BK-168','','Tentative','2022-09-09','14:00:00.000Z','2022-09-09T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-09','13:00:00.000Z','2022-09-09T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(308,'ISD-BK-247','','Tentative','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-02','09:00:00.000Z','2023-03-01T22:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(309,'ISD-BK-248','','Tentative','2023-03-09','10:00:00.000Z','2023-03-09T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-09','09:00:00.000Z','2023-03-08T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(310,'ISD-BK-249','','Tentative','2023-03-16','10:00:00.000Z','2023-03-16T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-16','09:00:00.000Z','2023-03-15T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(311,'ISD-BK-332','','Tentative','2022-01-13','16:00:00.000Z','2022-01-13T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-13','15:00:00.000Z','2022-01-13T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(312,'ISD-BK-333','','Tentative','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(313,'ISD-BK-334','','Tentative','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(314,'ISD-BK-335','','Tentative','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(315,'ISD-BK-336','','Tentative','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(316,'ISD-BK-425','','Tentative','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(317,'ISD-BK-001','','Tentative','2023-05-17','17:00:00.000Z','2023-05-17T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-17','16:00:00.000Z','2023-05-17T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(318,'ISD-BK-002','','Tentative','2023-05-24','17:00:00.000Z','2023-05-24T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-24','16:00:00.000Z','2023-05-24T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(319,'ISD-BK-003','','Tentative','2023-05-31','17:00:00.000Z','2023-05-31T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-31','16:00:00.000Z','2023-05-31T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(320,'ISD-BK-004','','Tentative','2023-01-11','17:00:00.000Z','2023-01-11T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-01-11','16:00:00.000Z','2023-01-11T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(321,'ISD-BK-005','','Tentative','2023-01-18','17:00:00.000Z','2023-01-18T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-01-18','16:00:00.000Z','2023-01-18T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(322,'ISD-BK-426','','Tentative','2023-01-25','17:00:00.000Z','2023-01-25T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-01-25','16:00:00.000Z','2023-01-25T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(323,'ISD-BK-427','','Tentative','2023-02-01','17:00:00.000Z','2023-02-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-01','16:00:00.000Z','2023-02-01T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(324,'ISD-BK-428','','Tentative','2023-02-08','17:00:00.000Z','2023-02-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-08','16:00:00.000Z','2023-02-08T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(325,'ISD-BK-021','','Tentative','2022-01-19','10:00:00.000Z','2022-01-18T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-01-19','09:00:00.000Z','2022-01-18T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(326,'ISD-BK-022','','Tentative','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-01-26','09:00:00.000Z','2022-01-25T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(327,'ISD-BK-023','','Tentative','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-02','09:00:00.000Z','2022-02-01T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(328,'ISD-BK-024','','Tentative','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-09','09:00:00.000Z','2022-02-08T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(329,'ISD-BK-025','','Tentative','2022-03-09','10:00:00.000Z','2022-03-09T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-09','09:00:00.000Z','2022-03-08T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(330,'ISD-BK-026','','Tentative','2022-03-16','10:00:00.000Z','2022-03-16T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-16','09:00:00.000Z','2022-03-15T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(331,'ISD-BK-027','','Tentative','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-23','09:00:00.000Z','2022-03-22T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(332,'ISD-BK-250','','Tentative','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-23','09:00:00.000Z','2023-03-22T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(333,'ISD-BK-251','','Tentative','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-30','09:00:00.000Z','2023-03-29T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(334,'ISD-BK-252','','Tentative','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-06','09:00:00.000Z','2023-04-05T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(335,'ISD-BK-253','','Tentative','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-13','09:00:00.000Z','2023-04-12T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(336,'ISD-BK-254','','Tentative','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-20','09:00:00.000Z','2023-04-19T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(337,'ISD-BK-255','','Tentative','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-27','09:00:00.000Z','2023-04-26T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(338,'ISD-BK-256','','Tentative','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-04','09:00:00.000Z','2023-05-03T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(339,'ISD-BK-267','','Tentative','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-18','09:00:00.000Z','2023-05-17T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(340,'ISD-BK-268','','Tentative','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-25','09:00:00.000Z','2023-05-24T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(341,'ISD-BK-269','','Tentative','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-01','09:00:00.000Z','2023-05-31T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(342,'ISD-BK-270','','Tentative','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-11','09:00:00.000Z','2023-05-10T23:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(343,'ISD-BK-271','','Tentative','2022-06-24','17:00:00.000Z','2022-06-24T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-06-24','16:00:00.000Z','2022-06-24T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(344,'ISD-BK-337','','Tentative','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(345,'ISD-BK-338','','Tentative','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(346,'ISD-BK-339','','Tentative','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(347,'ISD-BK-340','','Tentative','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(348,'ISD-BK-341','','Tentative','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(349,'ISD-BK-342','','Tentative','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(350,'ISD-BK-343','','Tentative','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(351,'ISD-BK-344','','Tentative','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(352,'ISD-BK-429','','Tentative','2023-02-15','17:00:00.000Z','2023-02-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-15','16:00:00.000Z','2023-02-15T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(353,'ISD-BK-430','','Tentative','2023-02-22','17:00:00.000Z','2023-02-22T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-22','16:00:00.000Z','2023-02-22T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(354,'ISD-BK-431','','Tentative','2023-03-01','17:00:00.000Z','2023-03-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-01','16:00:00.000Z','2023-03-01T05:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(355,'ISD-BK-432','','Tentative','2023-03-08','17:00:00.000Z','2023-03-08T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-08','16:00:00.000Z','2023-03-08T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(356,'ISD-BK-433','','Tentative','2023-03-22','17:00:00.000Z','2023-03-22T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-22','16:00:00.000Z','2023-03-22T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(357,'ISD-BK-434','','Tentative','2023-03-29','17:00:00.000Z','2023-03-29T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-29','16:00:00.000Z','2023-03-29T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(358,'ISD-BK-435','','Tentative','2023-04-05','17:00:00.000Z','2023-04-05T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-05','16:00:00.000Z','2023-04-05T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(359,'ISD-BK-436','','Tentative','2023-04-12','17:00:00.000Z','2023-04-12T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-12','16:00:00.000Z','2023-04-12T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(360,'ISD-BK-437','','Tentative','2023-04-19','17:00:00.000Z','2023-04-19T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-19','16:00:00.000Z','2023-04-19T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(361,'ISD-BK-345','','Tentative','2022-03-10','16:00:00.000Z','2022-03-10T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-10','15:00:00.000Z','2022-03-10T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(362,'ISD-BK-346','','Tentative','2022-03-17','16:00:00.000Z','2022-03-17T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-17','15:00:00.000Z','2022-03-17T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(363,'ISD-BK-367','','Tentative','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(364,'ISD-BK-368','','Tentative','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(365,'ISD-BK-369','','Tentative','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-24','14:00:00.000Z','2022-02-24T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(366,'ISD-BK-370','','Tentative','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-03','14:00:00.000Z','2022-03-03T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(367,'ISD-BK-371','','Tentative','2022-03-10','15:00:00.000Z','2022-03-10T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-10','14:00:00.000Z','2022-03-10T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(368,'ISD-BK-372','','Tentative','2022-03-17','15:00:00.000Z','2022-03-17T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-17','14:00:00.000Z','2022-03-17T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(369,'ISD-BK-373','','Tentative','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-24','14:00:00.000Z','2022-03-24T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(370,'ISD-BK-374','','Tentative','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-31','14:00:00.000Z','2022-03-31T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(371,'ISD-BK-439','','Tentative','2023-04-26','17:00:00.000Z','2023-04-26T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-26','16:00:00.000Z','2023-04-26T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(372,'ISD-BK-440','','Tentative','2023-05-03','17:00:00.000Z','2023-05-03T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-03','16:00:00.000Z','2023-05-03T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(373,'ISD-BK-441','','Tentative','2023-05-10','17:00:00.000Z','2023-05-10T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-10','16:00:00.000Z','2023-05-10T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(374,'ISD-BK-006','','Tentative','2022-01-12','11:00:00.000Z','2022-01-12T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-01-12','10:00:00.000Z','2022-01-11T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(375,'ISD-BK-438','','Tentative','2023-03-15','17:00:00.000Z','2023-03-15T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-15','16:00:00.000Z','2023-03-15T06:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(376,'ISD-BK-007','','Tentative','2022-01-19','11:00:00.000Z','2022-01-19T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-01-19','10:00:00.000Z','2022-01-18T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(377,'ISD-BK-028','','Tentative','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-30','09:00:00.000Z','2022-03-29T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(378,'ISD-BK-453','','Tentative','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-06','09:00:00.000Z','2022-04-05T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(379,'ISD-BK-454','','Tentative','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-13','09:00:00.000Z','2022-04-12T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(380,'ISD-BK-455','','Tentative','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-20','09:00:00.000Z','2022-04-19T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(381,'ISD-BK-456','','Tentative','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-27','09:00:00.000Z','2022-04-26T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(382,'ISD-BK-457','','Tentative','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-16','09:00:00.000Z','2022-02-15T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(383,'ISD-BK-458','','Tentative','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-23','09:00:00.000Z','2022-02-22T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(384,'ISD-BK-459','','Tentative','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-02','09:00:00.000Z','2022-03-01T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(385,'ISD-BK-460','','Tentative','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-04','09:00:00.000Z','2022-05-03T23:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(386,'ISD-BK-461','','Tentative','2022-01-12','10:00:00.000Z','2022-01-11T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-01-12','09:00:00.000Z','2022-01-11T22:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(387,'ISD-BK-029','','Tentative','2023-10-19','13:00:00.000Z','2023-10-19T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-19','12:00:00.000Z','2023-10-19T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(388,'ISD-BK-030','','Tentative','2023-10-26','13:00:00.000Z','2023-10-26T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-26','12:00:00.000Z','2023-10-26T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(389,'ISD-BK-031','','Tentative','2023-11-02','13:00:00.000Z','2023-11-02T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-02','12:00:00.000Z','2023-11-02T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(390,'ISD-BK-032','','Tentative','2023-08-17','13:00:00.000Z','2023-08-17T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-17','12:00:00.000Z','2023-08-17T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(391,'ISD-BK-033','','Tentative','2023-08-24','13:00:00.000Z','2023-08-24T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-24','12:00:00.000Z','2023-08-24T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(392,'ISD-BK-034','','Tentative','2023-08-31','13:00:00.000Z','2023-08-31T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-31','12:00:00.000Z','2023-08-31T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(393,'ISD-BK-035','','Tentative','2023-09-07','13:00:00.000Z','2023-09-07T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-07','12:00:00.000Z','2023-09-07T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(394,'ISD-BK-036','','Tentative','2023-06-22','13:00:00.000Z','2023-06-22T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-06-22','12:00:00.000Z','2023-06-22T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(395,'ISD-BK-037','','Tentative','2023-06-29','13:00:00.000Z','2023-06-29T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-06-29','12:00:00.000Z','2023-06-29T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(396,'ISD-BK-038','','Tentative','2023-07-06','13:00:00.000Z','2023-07-06T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-06','12:00:00.000Z','2023-07-06T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(397,'ISD-BK-375','','Tentative','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-07','14:00:00.000Z','2022-04-07T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(398,'ISD-BK-376','','Tentative','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-14','14:00:00.000Z','2022-04-14T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(399,'ISD-BK-377','','Tentative','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-21','14:00:00.000Z','2022-04-21T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(400,'ISD-BK-378','','Tentative','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-05','14:00:00.000Z','2022-05-05T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(401,'ISD-BK-379','','Tentative','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-28','14:00:00.000Z','2022-04-28T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(402,'ISD-BK-380','','Tentative','2021-12-30','15:00:00.000Z','2021-12-30T04:00:00.000+0000','a1b5j000000TZG8AAO','2021-12-30','14:00:00.000Z','2021-12-30T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(403,'ISD-BK-381','','Tentative','2022-01-06','15:00:00.000Z','2022-01-06T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-06','14:00:00.000Z','2022-01-06T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(404,'ISD-BK-008','','Tentative','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(405,'ISD-BK-009','','Tentative','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(406,'ISD-BK-010','','Tentative','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(407,'ISD-BK-011','','Tentative','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(408,'ISD-BK-012','','Tentative','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(409,'ISD-BK-013','','Tentative','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(410,'ISD-BK-014','','Tentative','2022-03-09','11:00:00.000Z','2022-03-09T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-09','10:00:00.000Z','2022-03-09T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(411,'ISD-BK-015','','Tentative','2022-03-16','11:00:00.000Z','2022-03-16T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-16','10:00:00.000Z','2022-03-16T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(412,'ISD-BK-016','','Tentative','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(413,'ISD-BK-017','','Tentative','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(414,'ISD-BK-018','','Tentative','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(415,'ISD-BK-019','','Tentative','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(416,'ISD-BK-169','','Tentative','2022-07-29','14:00:00.000Z','2022-07-29T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(417,'ISD-BK-170','','Tentative','2022-09-16','14:00:00.000Z','2022-09-16T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-16','13:00:00.000Z','2022-09-16T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(418,'ISD-BK-171','','Tentative','2022-09-23','14:00:00.000Z','2022-09-23T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(419,'ISD-BK-172','','Tentative','2022-09-30','14:00:00.000Z','2022-09-30T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(420,'ISD-BK-173','','Tentative','2022-10-07','14:00:00.000Z','2022-10-07T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(421,'ISD-BK-039','','Tentative','2023-07-13','13:00:00.000Z','2023-07-13T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-13','12:00:00.000Z','2023-07-13T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(422,'ISD-BK-040','','Tentative','2023-07-20','13:00:00.000Z','2023-07-20T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-20','12:00:00.000Z','2023-07-20T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(423,'ISD-BK-061','','Tentative','2023-07-27','13:00:00.000Z','2023-07-27T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-27','12:00:00.000Z','2023-07-27T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(424,'ISD-BK-062','','Tentative','2023-08-03','13:00:00.000Z','2023-08-03T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-03','12:00:00.000Z','2023-08-03T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(425,'ISD-BK-063','','Tentative','2023-08-10','13:00:00.000Z','2023-08-10T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-10','12:00:00.000Z','2023-08-10T02:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(426,'ISD-BK-064','','Tentative','2023-09-28','13:00:00.000Z','2023-09-28T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-28','12:00:00.000Z','2023-09-28T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(427,'ISD-BK-382','','Tentative','2022-01-13','15:00:00.000Z','2022-01-13T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-13','14:00:00.000Z','2022-01-13T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(428,'ISD-BK-383','','Tentative','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-20','14:00:00.000Z','2022-01-20T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(429,'ISD-BK-384','','Tentative','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-27','14:00:00.000Z','2022-01-27T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(430,'ISD-BK-385','','Tentative','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-03','14:00:00.000Z','2022-02-03T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(431,'ISD-BK-386','','Tentative','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-10','14:00:00.000Z','2022-02-10T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(432,'ISD-BK-387','','Tentative','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-17','14:00:00.000Z','2022-02-17T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(433,'ISD-BK-020','','Tentative','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(434,'ISD-BK-041','','Tentative','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(435,'ISD-BK-174','','Tentative','2022-10-14','14:00:00.000Z','2022-10-14T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(436,'ISD-BK-175','','Tentative','2022-10-21','14:00:00.000Z','2022-10-21T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(437,'ISD-BK-176','','Tentative','2022-10-28','14:00:00.000Z','2022-10-28T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(438,'ISD-BK-177','','Tentative','2022-11-04','14:00:00.000Z','2022-11-04T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(439,'ISD-BK-178','','Tentative','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-19','10:00:00.000Z','2022-08-19T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(440,'ISD-BK-179','','Tentative','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-26','10:00:00.000Z','2022-08-26T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(441,'ISD-BK-180','','Tentative','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-02','10:00:00.000Z','2022-09-02T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(442,'ISD-BK-201','','Tentative','2022-09-09','11:00:00.000Z','2022-09-09T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-09','10:00:00.000Z','2022-09-08T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(443,'ISD-BK-202','','Tentative','2022-09-16','11:00:00.000Z','2022-09-16T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-16','10:00:00.000Z','2022-09-15T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(444,'ISD-BK-203','','Tentative','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-23','10:00:00.000Z','2022-09-22T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(445,'ISD-BK-204','','Tentative','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-28','10:00:00.000Z','2022-10-27T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(446,'ISD-BK-205','','Tentative','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-21','10:00:00.000Z','2022-10-20T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(447,'ISD-BK-206','','Tentative','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-04','10:00:00.000Z','2022-11-03T23:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(448,'ISD-BK-207','','Tentative','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-22','10:00:00.000Z','2022-07-22T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(449,'ISD-BK-208','','Tentative','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-29','10:00:00.000Z','2022-07-29T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(450,'ISD-BK-209','','Tentative','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-05','10:00:00.000Z','2022-08-05T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(451,'ISD-BK-065','','Tentative','2023-09-14','13:00:00.000Z','2023-09-14T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-14','12:00:00.000Z','2023-09-14T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(452,'ISD-BK-066','','Tentative','2023-09-21','13:00:00.000Z','2023-09-21T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-21','12:00:00.000Z','2023-09-21T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(453,'ISD-BK-067','','Tentative','2023-10-05','13:00:00.000Z','2023-10-05T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-05','12:00:00.000Z','2023-10-05T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(454,'ISD-BK-068','','Tentative','2023-10-12','13:00:00.000Z','2023-10-12T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-12','12:00:00.000Z','2023-10-12T01:00:00.000+0000','Good','Allocated','True','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(455,'ISD-BK-069','','Tentative','2023-08-18','16:00:00.000Z','2023-08-18T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(456,'ISD-BK-070','','Tentative','2023-08-25','16:00:00.000Z','2023-08-25T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(457,'ISD-BK-071','','Tentative','2023-09-01','16:00:00.000Z','2023-09-01T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(458,'ISD-BK-072','','Tentative','2023-06-23','16:00:00.000Z','2023-06-23T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-06-23','15:00:00.000Z','2023-06-23T05:00:00.000+0000','Good','Allocated','False','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(459,'ISD-BK-272','','Tentative','2022-07-01','17:00:00.000Z','2022-07-01T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-01','16:00:00.000Z','2022-07-01T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(460,'ISD-BK-273','','Tentative','2022-07-08','17:00:00.000Z','2022-07-08T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-08','16:00:00.000Z','2022-07-08T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(461,'ISD-BK-274','','Tentative','2022-07-15','17:00:00.000Z','2022-07-15T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-15','16:00:00.000Z','2022-07-15T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(462,'ISD-BK-275','','Tentative','2022-07-22','17:00:00.000Z','2022-07-22T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-22','16:00:00.000Z','2022-07-22T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(463,'ISD-BK-276','','Tentative','2022-07-29','17:00:00.000Z','2022-07-29T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-29','16:00:00.000Z','2022-07-29T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(464,'ISD-BK-277','','Tentative','2022-08-05','17:00:00.000Z','2022-08-05T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-05','16:00:00.000Z','2022-08-05T06:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(465,'ISD-BK-042','','Tentative','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(466,'ISD-BK-043','','Tentative','2022-07-06','16:00:00.000Z','2022-07-06T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(467,'ISD-BK-044','','Tentative','2022-07-13','16:00:00.000Z','2022-07-13T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(468,'ISD-BK-045','','Tentative','2022-07-20','16:00:00.000Z','2022-07-20T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(469,'ISD-BK-046','','Tentative','2022-06-22','16:00:00.000Z','2022-06-22T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-06-22','15:00:00.000Z','2022-06-22T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(470,'ISD-BK-047','','Tentative','2022-06-29','16:00:00.000Z','2022-06-29T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-06-29','15:00:00.000Z','2022-06-29T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(471,'ISD-BK-048','','Tentative','2022-07-27','16:00:00.000Z','2022-07-27T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(472,'ISD-BK-049','','Tentative','2022-08-03','16:00:00.000Z','2022-08-03T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(473,'ISD-BK-050','','Tentative','2022-08-10','16:00:00.000Z','2022-08-10T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(474,'ISD-BK-051','','Tentative','2022-08-17','16:00:00.000Z','2022-08-17T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(475,'ISD-BK-210','','Tentative','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-12','10:00:00.000Z','2022-08-12T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(476,'ISD-BK-211','','Tentative','2022-06-24','11:00:00.000Z','2022-06-24T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-06-24','10:00:00.000Z','2022-06-24T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(477,'ISD-BK-212','','Tentative','2022-07-01','11:00:00.000Z','2022-07-01T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-01','10:00:00.000Z','2022-07-01T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(478,'ISD-BK-213','','Tentative','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-08','10:00:00.000Z','2022-07-08T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(479,'ISD-BK-214','','Tentative','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-15','10:00:00.000Z','2022-07-15T00:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(480,'ISD-BK-215','','Tentative','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-30','10:00:00.000Z','2022-09-29T23:00:00.000+0000','Good','Allocated','True','12','41');
CREATE TABLE "rio_ed__Appointment_Availability__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(1,'ISD-AAV-01','1','','12');
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(2,'ISD-AAV-02','1','10','');
CREATE TABLE "rio_ed__Appointment_Time__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"rio_ed__Appointment_Duration__c" VARCHAR(255), 
	"rio_ed__Appointment_Gap__c" VARCHAR(255), 
	"rio_ed__Day_of_the_Week__c" VARCHAR(255), 
	"rio_ed__End_Time__c" VARCHAR(255), 
	"rio_ed__Start_Time__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Campus__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(1,'ISD-APTIME-01','Available Time','True','60.0','0.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','27');
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(2,'ISD-APTIME-02','Available Time','True','60.0','0.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','29');
CREATE TABLE "rio_ed__Appointment_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"rio_ed__Allow_Students_to_book__c" VARCHAR(255), 
	"rio_ed__Editable_Time__c" VARCHAR(255), 
	"rio_ed__Event_Type__c" VARCHAR(255), 
	"rio_ed__Faculty_Auto_Accept__c" VARCHAR(255), 
	"rio_ed__Jump_to_Start_Date__c" VARCHAR(255), 
	"rio_ed__Location_Only__c" VARCHAR(255), 
	"rio_ed__Location_Required__c" VARCHAR(255), 
	"rio_ed__Student_Auto_Accept__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Type__c" VALUES(1,'ISD-ATYPE-01','Academic Counsel','True','True','False','Academic Counsel','None','False','False','True','None');
CREATE TABLE "rio_ed__Assigned_Location__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Location__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Assigned_Location__c" VALUES(1,'ISD-AL-01','29','10');
CREATE TABLE "rio_ed__Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Session_Date__c" VARCHAR(255), 
	"rio_ed__Booking__c" VARCHAR(255), 
	"rio_ed__Session_Connection__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Attendance__c" VALUES(1,'ISD-ATT-116','2023-02-02','182','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(2,'ISD-ATT-117','2023-03-23','183','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(3,'ISD-ATT-118','2023-03-30','184','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(4,'ISD-ATT-119','2023-04-06','185','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(5,'ISD-ATT-120','2023-04-13','186','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(6,'ISD-ATT-121','2023-04-20','187','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(7,'ISD-ATT-122','2023-04-27','188','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(8,'ISD-ATT-124','2023-05-04','189','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(9,'ISD-ATT-258','2023-05-24','318','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(10,'ISD-ATT-322','2022-04-20','433','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(11,'ISD-ATT-125','2023-05-11','190','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(12,'ISD-ATT-029','2022-09-09','442','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(13,'ISD-ATT-030','2022-09-16','443','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(14,'ISD-ATT-031','2022-09-23','444','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(15,'ISD-ATT-032','2022-10-28','445','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(16,'ISD-ATT-384','2022-10-19','124','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(17,'ISD-ATT-255','2023-07-27','423','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(18,'ISD-ATT-266','2023-08-03','424','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(19,'ISD-ATT-277','2023-08-10','425','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(20,'ISD-ATT-288','2023-09-28','426','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(21,'ISD-ATT-264','2022-01-26','404','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(22,'ISD-ATT-385','2022-10-26','125','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(23,'ISD-ATT-386','2022-11-02','126','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(24,'ISD-ATT-387','2022-04-08','127','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(25,'ISD-ATT-388','2022-04-15','151','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(26,'ISD-ATT-389','2022-04-22','172','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(27,'ISD-ATT-390','2022-04-29','173','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(28,'ISD-ATT-391','2022-01-07','174','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(29,'ISD-ATT-392','2022-01-14','175','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(30,'ISD-ATT-393','2022-01-21','176','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(31,'ISD-ATT-265','2022-02-02','405','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(32,'ISD-ATT-394','2022-01-28','177','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(33,'ISD-ATT-395','2022-02-04','178','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(34,'ISD-ATT-034','2022-10-21','446','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(35,'ISD-ATT-035','2022-11-04','447','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(36,'ISD-ATT-036','2022-07-22','448','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(37,'ISD-ATT-037','2022-07-29','449','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(38,'ISD-ATT-038','2022-08-05','450','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(39,'ISD-ATT-068','2022-01-19','325','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(40,'ISD-ATT-039','2022-08-12','475','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(41,'ISD-ATT-040','2022-06-24','476','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(42,'ISD-ATT-041','2022-07-01','477','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(43,'ISD-ATT-042','2022-07-08','478','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(44,'ISD-ATT-043','2022-07-15','479','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(45,'ISD-ATT-044','2022-09-30','480','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(46,'ISD-ATT-045','2022-10-07','20','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(47,'ISD-ATT-046','2022-10-14','21','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(48,'ISD-ATT-047','2022-07-22','22','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(49,'ISD-ATT-048','2022-07-29','23','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(50,'ISD-ATT-069','2022-01-26','326','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(51,'ISD-ATT-049','2022-08-05','24','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(52,'ISD-ATT-050','2022-08-26','25','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(53,'ISD-ATT-051','2022-09-02','26','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(54,'ISD-ATT-299','2023-09-14','451','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(55,'ISD-ATT-310','2023-09-21','452','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(56,'ISD-ATT-321','2023-10-05','453','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(57,'ISD-ATT-332','2023-10-12','454','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(58,'ISD-ATT-263','2022-01-19','376','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(59,'ISD-ATT-224','2022-08-31','58','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(60,'ISD-ATT-225','2022-09-07','89','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(61,'ISD-ATT-226','2022-06-22','90','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(62,'ISD-ATT-227','2022-06-29','91','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(63,'ISD-ATT-228','2022-07-06','92','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(64,'ISD-ATT-259','2023-05-31','319','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(65,'ISD-ATT-112','2023-10-26','388','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(66,'ISD-ATT-229','2022-07-13','93','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(67,'ISD-ATT-230','2022-07-20','94','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(68,'ISD-ATT-252','2022-07-27','114','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(69,'ISD-ATT-297','2022-09-14','115','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(70,'ISD-ATT-298','2022-09-21','116','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(71,'ISD-ATT-300','2022-09-28','117','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(72,'ISD-ATT-301','2022-10-05','118','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(73,'ISD-ATT-275','2022-09-30','47','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(74,'ISD-ATT-276','2022-10-21','48','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(75,'ISD-ATT-278','2022-10-28','79','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(76,'ISD-ATT-052','2022-09-09','27','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(77,'ISD-ATT-053','2022-09-16','28','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(78,'ISD-ATT-054','2022-08-12','29','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(79,'ISD-ATT-055','2022-08-19','30','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(80,'ISD-ATT-056','2022-09-23','31','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(81,'ISD-ATT-057','2022-09-30','32','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(82,'ISD-ATT-058','2022-10-07','216','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(83,'ISD-ATT-070','2022-02-02','327','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(84,'ISD-ATT-059','2022-10-14','217','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(85,'ISD-ATT-060','2022-10-21','218','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(86,'ISD-ATT-061','2022-10-28','219','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(87,'ISD-ATT-062','2022-11-04','220','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(88,'ISD-ATT-063','2022-06-24','221','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(89,'ISD-ATT-064','2022-07-01','222','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(90,'ISD-ATT-065','2022-07-08','223','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(91,'ISD-ATT-148','2023-05-18','191','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(92,'ISD-ATT-149','2023-05-25','192','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(93,'ISD-ATT-150','2023-06-01','277','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(94,'ISD-ATT-071','2022-02-09','328','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(95,'ISD-ATT-151','2023-01-26','287','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(96,'ISD-ATT-123','2023-11-02','389','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(97,'ISD-ATT-279','2022-11-04','80','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(98,'ISD-ATT-280','2022-08-17','81','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(99,'ISD-ATT-281','2022-08-24','82','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(100,'ISD-ATT-282','2022-08-31','83','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(101,'ISD-ATT-283','2022-09-07','84','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(102,'ISD-ATT-284','2022-09-14','85','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(103,'ISD-ATT-285','2022-09-21','86','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(104,'ISD-ATT-286','2022-09-28','87','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(105,'ISD-ATT-287','2022-10-05','88','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(106,'ISD-ATT-289','2022-10-12','109','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(107,'ISD-ATT-134','2023-08-17','390','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(108,'ISD-ATT-290','2022-10-19','110','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(109,'ISD-ATT-291','2022-10-26','111','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(110,'ISD-ATT-292','2022-11-02','112','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(111,'ISD-ATT-293','2022-06-22','113','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(112,'ISD-ATT-294','2022-06-29','142','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(113,'ISD-ATT-295','2022-07-13','143','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(114,'ISD-ATT-152','2023-02-02','288','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(115,'ISD-ATT-153','2023-02-09','289','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(116,'ISD-ATT-154','2023-02-16','290','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(117,'ISD-ATT-155','2023-02-23','291','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(118,'ISD-ATT-157','2023-01-12','292','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(119,'ISD-ATT-158','2023-01-19','293','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(120,'ISD-ATT-159','2023-03-02','308','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(121,'ISD-ATT-160','2023-03-09','309','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(122,'ISD-ATT-161','2023-03-16','310','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(123,'ISD-ATT-072','2022-03-09','329','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(124,'ISD-ATT-162','2023-03-23','332','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(125,'ISD-ATT-163','2023-03-30','333','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(126,'ISD-ATT-164','2023-04-06','334','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(127,'ISD-ATT-165','2023-04-13','335','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(128,'ISD-ATT-166','2023-04-20','336','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(129,'ISD-ATT-168','2023-04-27','337','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(130,'ISD-ATT-169','2023-05-04','338','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(131,'ISD-ATT-296','2022-07-20','144','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(132,'ISD-ATT-302','2022-10-12','119','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(133,'ISD-ATT-303','2022-10-19','120','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(134,'ISD-ATT-304','2022-10-26','121','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(135,'ISD-ATT-145','2023-08-24','391','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(136,'ISD-ATT-305','2022-11-02','122','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(137,'ISD-ATT-306','2022-01-06','123','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(138,'ISD-ATT-307','2022-01-13','311','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(139,'ISD-ATT-308','2022-01-20','312','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(140,'ISD-ATT-309','2022-01-27','313','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(141,'ISD-ATT-311','2022-02-03','314','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(142,'ISD-ATT-396','2022-02-11','213','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(143,'ISD-ATT-397','2022-02-18','214','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(144,'ISD-ATT-398','2022-02-25','215','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(145,'ISD-ATT-399','2022-03-04','241','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(146,'ISD-ATT-400','2022-03-11','242','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(147,'ISD-ATT-401','2022-03-18','243','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(148,'ISD-ATT-066','2022-07-15','250','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(149,'ISD-ATT-073','2022-03-16','330','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(150,'ISD-ATT-192','2023-05-18','339','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(151,'ISD-ATT-193','2023-05-25','340','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(152,'ISD-ATT-194','2023-06-01','341','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(153,'ISD-ATT-074','2022-03-23','331','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(154,'ISD-ATT-195','2023-05-11','342','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(155,'ISD-ATT-196','2022-06-24','343','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(156,'ISD-ATT-197','2022-07-01','459','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(157,'ISD-ATT-198','2022-07-08','460','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(158,'ISD-ATT-199','2022-07-15','461','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(159,'ISD-ATT-201','2022-07-22','462','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(160,'ISD-ATT-202','2022-07-29','463','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(161,'ISD-ATT-203','2022-08-05','464','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(162,'ISD-ATT-204','2022-08-12','49','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(163,'ISD-ATT-205','2022-08-19','39','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(164,'ISD-ATT-075','2022-03-30','377','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(165,'ISD-ATT-206','2022-10-07','40','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(166,'ISD-ATT-207','2022-08-26','41','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(167,'ISD-ATT-208','2022-10-14','42','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(168,'ISD-ATT-209','2022-09-02','43','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(169,'ISD-ATT-210','2022-09-09','44','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(170,'ISD-ATT-407','2022-03-25','244','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(171,'ISD-ATT-408','2022-04-01','245','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(172,'ISD-ATT-212','2022-09-16','45','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(173,'ISD-ATT-213','2022-09-23','46','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(174,'ISD-ATT-358','2022-09-16','149','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(175,'ISD-ATT-359','2022-09-23','150','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(176,'ISD-ATT-360','2022-09-30','162','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(177,'ISD-ATT-241','2023-10-19','387','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(178,'ISD-ATT-361','2022-10-07','163','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(179,'ISD-ATT-218','2022-08-03','54','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(180,'ISD-ATT-219','2022-08-10','55','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(181,'ISD-ATT-220','2022-08-17','56','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(182,'ISD-ATT-221','2022-08-24','57','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(183,'ISD-ATT-312','2022-02-10','315','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(184,'ISD-ATT-313','2022-02-17','344','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(185,'ISD-ATT-314','2022-02-24','345','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(186,'ISD-ATT-315','2022-03-03','346','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(187,'ISD-ATT-156','2023-08-31','392','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(188,'ISD-ATT-316','2022-04-14','347','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(189,'ISD-ATT-317','2022-03-31','348','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(190,'ISD-ATT-318','2022-04-07','349','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(191,'ISD-ATT-362','2022-04-21','350','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(192,'ISD-ATT-363','2022-04-28','351','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(193,'ISD-ATT-364','2022-03-10','361','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(194,'ISD-ATT-365','2022-03-17','362','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(195,'ISD-ATT-341','2022-07-27','145','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(196,'ISD-ATT-342','2022-07-06','146','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(197,'ISD-ATT-343','2022-08-03','147','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(198,'ISD-ATT-167','2023-09-07','393','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(199,'ISD-ATT-344','2022-08-10','148','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(200,'ISD-ATT-214','2022-10-14','164','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(201,'ISD-ATT-215','2022-10-21','165','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(202,'ISD-ATT-216','2022-11-04','166','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(203,'ISD-ATT-413','2022-03-10','260','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(204,'ISD-ATT-414','2022-03-17','261','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(205,'ISD-ATT-415','2022-03-24','262','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(206,'ISD-ATT-416','2022-03-31','263','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(207,'ISD-ATT-417','2022-04-07','264','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(208,'ISD-ATT-418','2022-04-14','265','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(209,'ISD-ATT-270','2022-03-02','409','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(210,'ISD-ATT-419','2022-04-21','278','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(211,'ISD-ATT-420','2022-04-28','279','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(212,'ISD-ATT-421','2022-05-05','280','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(213,'ISD-ATT-001','2022-01-06','281','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(214,'ISD-ATT-002','2022-01-13','282','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(215,'ISD-ATT-217','2022-10-28','167','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(216,'ISD-ATT-345','2022-07-01','168','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(217,'ISD-ATT-346','2022-07-08','169','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(218,'ISD-ATT-347','2022-07-15','170','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(219,'ISD-ATT-348','2022-07-22','171','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(220,'ISD-ATT-349','2022-06-24','193','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(221,'ISD-ATT-178','2023-06-22','394','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(222,'ISD-ATT-350','2022-07-29','194','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(223,'ISD-ATT-351','2022-08-05','195','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(224,'ISD-ATT-352','2022-08-12','196','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(225,'ISD-ATT-354','2022-08-19','50','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(226,'ISD-ATT-355','2022-08-26','51','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(227,'ISD-ATT-356','2022-09-02','52','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(228,'ISD-ATT-357','2022-09-09','53','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(229,'ISD-ATT-366','2022-03-24','363','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(230,'ISD-ATT-003','2022-01-20','283','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(231,'ISD-ATT-004','2022-01-27','284','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(232,'ISD-ATT-005','2022-02-03','285','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(233,'ISD-ATT-006','2022-06-24','286','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(234,'ISD-ATT-007','2022-07-01','298','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(235,'ISD-ATT-271','2022-03-09','410','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(236,'ISD-ATT-008','2022-07-08','299','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(237,'ISD-ATT-090','2022-04-03','105','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(238,'ISD-ATT-091','2022-04-10','106','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(239,'ISD-ATT-092','2022-04-17','107','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(240,'ISD-ATT-093','2022-04-24','108','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(241,'ISD-ATT-094','2022-05-01','141','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(242,'ISD-ATT-367','2022-05-05','364','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(243,'ISD-ATT-368','2022-02-24','365','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(244,'ISD-ATT-189','2023-06-29','395','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(245,'ISD-ATT-369','2022-03-03','366','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(246,'ISD-ATT-370','2022-03-10','367','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(247,'ISD-ATT-371','2022-03-17','368','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(248,'ISD-ATT-372','2022-03-24','369','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(249,'ISD-ATT-373','2022-03-31','370','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(250,'ISD-ATT-374','2022-04-07','397','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(251,'ISD-ATT-375','2022-04-14','398','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(252,'ISD-ATT-376','2022-04-21','399','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(253,'ISD-ATT-377','2022-05-05','400','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(254,'ISD-ATT-378','2022-04-28','401','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(255,'ISD-ATT-200','2023-07-06','396','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(256,'ISD-ATT-379','2021-12-30','402','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(257,'ISD-ATT-380','2022-01-06','403','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(258,'ISD-ATT-381','2022-01-13','427','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(259,'ISD-ATT-402','2022-01-20','428','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(260,'ISD-ATT-403','2022-01-27','429','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(261,'ISD-ATT-404','2022-02-03','430','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(262,'ISD-ATT-405','2022-02-10','431','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(263,'ISD-ATT-406','2022-02-17','432','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(264,'ISD-ATT-232','2022-01-12','197','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(265,'ISD-ATT-233','2022-01-19','198','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(266,'ISD-ATT-211','2023-07-13','421','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(267,'ISD-ATT-234','2022-01-26','199','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(268,'ISD-ATT-095','2022-01-12','128','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(269,'ISD-ATT-096','2022-01-19','129','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(270,'ISD-ATT-097','2022-01-26','130','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(271,'ISD-ATT-098','2022-02-02','131','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(272,'ISD-ATT-272','2022-03-16','411','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(273,'ISD-ATT-100','2022-02-09','132','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(274,'ISD-ATT-101','2022-02-16','133','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(275,'ISD-ATT-102','2022-02-23','134','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(276,'ISD-ATT-103','2022-03-02','135','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(277,'ISD-ATT-104','2022-03-09','136','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(278,'ISD-ATT-105','2022-03-16','137','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(279,'ISD-ATT-106','2022-03-23','138','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(280,'ISD-ATT-107','2022-03-30','139','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(281,'ISD-ATT-108','2022-04-06','140','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(282,'ISD-ATT-109','2022-04-13','152','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(283,'ISD-ATT-273','2022-03-23','412','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(284,'ISD-ATT-231','2022-04-20','153','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(285,'ISD-ATT-009','2022-07-15','300','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(286,'ISD-ATT-010','2022-07-22','301','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(287,'ISD-ATT-011','2022-08-05','302','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(288,'ISD-ATT-235','2022-02-02','200','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(289,'ISD-ATT-236','2022-02-09','201','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(290,'ISD-ATT-237','2022-02-16','202','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(291,'ISD-ATT-238','2022-02-23','203','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(292,'ISD-ATT-239','2022-03-02','204','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(293,'ISD-ATT-240','2022-03-09','205','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(294,'ISD-ATT-242','2022-03-16','206','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(295,'ISD-ATT-243','2022-03-23','207','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(296,'ISD-ATT-126','2022-03-30','208','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(297,'ISD-ATT-260','2023-01-11','320','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(298,'ISD-ATT-223','2023-07-20','422','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(299,'ISD-ATT-127','2022-04-06','209','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(300,'ISD-ATT-128','2022-04-13','210','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(301,'ISD-ATT-129','2022-04-20','211','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(302,'ISD-ATT-130','2022-04-27','212','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(303,'ISD-ATT-131','2022-05-04','224','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(304,'ISD-ATT-132','2023-03-16','225','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(305,'ISD-ATT-133','2023-03-23','226','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(306,'ISD-ATT-135','2023-03-30','227','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(307,'ISD-ATT-136','2023-04-06','228','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(308,'ISD-ATT-012','2022-08-12','303','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(309,'ISD-ATT-013','2022-08-19','304','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(310,'ISD-ATT-014','2022-08-26','305','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(311,'ISD-ATT-015','2022-09-02','306','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(312,'ISD-ATT-016','2022-09-09','307','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(313,'ISD-ATT-017','2022-07-29','416','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(314,'ISD-ATT-274','2022-03-30','413','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(315,'ISD-ATT-018','2022-09-16','417','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(316,'ISD-ATT-019','2022-09-23','418','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(317,'ISD-ATT-137','2023-04-13','229','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(318,'ISD-ATT-323','2022-04-27','434','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(319,'ISD-ATT-138','2023-04-20','230','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(320,'ISD-ATT-139','2023-04-27','231','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(321,'ISD-ATT-140','2023-05-04','232','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(322,'ISD-ATT-141','2023-05-11','233','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(323,'ISD-ATT-142','2023-05-18','234','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(324,'ISD-ATT-143','2023-01-12','235','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(325,'ISD-ATT-144','2023-01-19','236','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(326,'ISD-ATT-146','2023-01-26','237','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(327,'ISD-ATT-147','2023-02-02','238','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(328,'ISD-ATT-170','2023-02-09','239','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(329,'ISD-ATT-020','2022-09-30','419','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(330,'ISD-ATT-021','2022-10-07','420','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(331,'ISD-ATT-324','2022-05-04','465','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(332,'ISD-ATT-171','2023-02-16','240','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(333,'ISD-ATT-172','2023-02-23','294','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(334,'ISD-ATT-173','2023-03-02','295','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(335,'ISD-ATT-174','2023-03-09','296','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(336,'ISD-ATT-175','2023-05-25','297','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(337,'ISD-ATT-176','2023-06-01','316','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(338,'ISD-ATT-177','2023-01-25','322','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(339,'ISD-ATT-179','2023-02-01','323','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(340,'ISD-ATT-180','2023-02-08','324','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(341,'ISD-ATT-181','2023-02-15','352','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(342,'ISD-ATT-325','2022-07-06','466','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(343,'ISD-ATT-182','2023-02-22','353','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(344,'ISD-ATT-183','2023-03-01','354','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(345,'ISD-ATT-184','2023-03-08','355','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(346,'ISD-ATT-185','2023-03-22','356','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(347,'ISD-ATT-186','2023-03-29','357','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(348,'ISD-ATT-187','2023-04-05','358','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(349,'ISD-ATT-188','2023-04-12','359','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(350,'ISD-ATT-190','2023-04-19','360','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(351,'ISD-ATT-022','2022-10-14','435','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(352,'ISD-ATT-023','2022-10-21','436','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(353,'ISD-ATT-024','2022-10-28','437','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(354,'ISD-ATT-025','2022-11-04','438','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(355,'ISD-ATT-026','2022-08-19','439','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(356,'ISD-ATT-027','2022-08-26','440','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(357,'ISD-ATT-319','2022-04-06','414','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(358,'ISD-ATT-191','2023-03-15','375','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(359,'ISD-ATT-253','2023-04-26','371','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(360,'ISD-ATT-326','2022-07-13','467','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(361,'ISD-ATT-254','2023-05-03','372','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(362,'ISD-ATT-256','2023-05-10','373','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(363,'ISD-ATT-327','2022-07-20','468','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(364,'ISD-ATT-111','2022-04-06','378','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(365,'ISD-ATT-257','2023-05-17','317','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(366,'ISD-ATT-267','2022-02-09','406','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(367,'ISD-ATT-409','2022-02-10','246','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(368,'ISD-ATT-076','2022-01-09','77','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(369,'ISD-ATT-268','2022-02-16','407','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(370,'ISD-ATT-078','2022-01-16','78','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(371,'ISD-ATT-079','2022-01-23','95','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(372,'ISD-ATT-080','2022-01-30','96','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(373,'ISD-ATT-081','2022-02-06','97','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(374,'ISD-ATT-082','2022-02-13','98','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(375,'ISD-ATT-083','2022-02-20','99','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(376,'ISD-ATT-084','2022-02-27','100','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(377,'ISD-ATT-085','2022-03-06','101','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(378,'ISD-ATT-086','2022-03-13','102','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(379,'ISD-ATT-087','2022-03-20','103','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(380,'ISD-ATT-269','2022-02-23','408','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(381,'ISD-ATT-089','2022-03-27','104','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(382,'ISD-ATT-410','2022-02-17','247','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(383,'ISD-ATT-411','2022-02-24','248','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(384,'ISD-ATT-412','2022-03-03','249','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(385,'ISD-ATT-028','2022-09-02','441','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(386,'ISD-ATT-244','2022-04-27','154','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(387,'ISD-ATT-245','2022-05-04','155','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(388,'ISD-ATT-246','2023-02-09','156','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(389,'ISD-ATT-247','2023-02-16','157','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(390,'ISD-ATT-248','2023-02-23','158','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(391,'ISD-ATT-249','2023-03-02','159','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(392,'ISD-ATT-250','2023-03-09','160','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(393,'ISD-ATT-251','2023-03-16','161','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(394,'ISD-ATT-113','2023-01-12','179','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(395,'ISD-ATT-320','2022-04-13','415','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(396,'ISD-ATT-114','2023-01-19','180','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(397,'ISD-ATT-115','2023-01-26','181','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(398,'ISD-ATT-222','2022-04-13','379','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(399,'ISD-ATT-353','2022-04-20','380','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(400,'ISD-ATT-033','2022-04-27','381','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(401,'ISD-ATT-077','2022-02-16','382','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(402,'ISD-ATT-088','2022-02-23','383','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(403,'ISD-ATT-099','2022-03-02','384','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(404,'ISD-ATT-328','2022-06-22','469','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(405,'ISD-ATT-110','2022-05-04','385','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(406,'ISD-ATT-067','2022-01-12','386','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(407,'ISD-ATT-329','2022-06-29','470','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(408,'ISD-ATT-330','2022-07-27','471','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(409,'ISD-ATT-331','2022-08-03','472','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(410,'ISD-ATT-261','2023-01-18','321','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(411,'ISD-ATT-333','2022-08-10','473','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(412,'ISD-ATT-334','2022-08-17','474','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(413,'ISD-ATT-335','2022-08-24','60','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(414,'ISD-ATT-336','2022-08-31','59','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(415,'ISD-ATT-337','2022-09-07','61','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(416,'ISD-ATT-338','2022-09-21','62','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(417,'ISD-ATT-339','2022-09-14','63','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(418,'ISD-ATT-340','2022-09-28','64','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(419,'ISD-ATT-382','2022-10-05','65','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(420,'ISD-ATT-383','2022-10-12','66','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(421,'ISD-ATT-262','2022-01-12','374','24');
CREATE TABLE "rio_ed__Availability_Time__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__All_Locations__c" VARCHAR(255), 
	"rio_ed__Day_of_the_Week__c" VARCHAR(255), 
	"rio_ed__End_Time__c" VARCHAR(255), 
	"rio_ed__From_Date__c" VARCHAR(255), 
	"rio_ed__Start_Time__c" VARCHAR(255), 
	"rio_ed__To_Date__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Availability_Time__c" VALUES(1,'ISD-AVTIME-01','All Time','True','Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;Sunday','23:45:00.000Z','','00:00:00.000Z','','10');
CREATE TABLE "rio_ed__Contact_Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Primary_Contact__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(1,'ISD-CA-01','True','Tentative','');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(2,'ISD-CA-02','True','Tentative','');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(3,'ISD-CA-03','True','Tentative','10');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(4,'ISD-CA-04','True','Tentative','12');
CREATE TABLE "rio_ed__Course_Connection_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Requirement_ID__c" VARCHAR(255), 
	"rio_ed__Requirement_Met__c" VARCHAR(255), 
	"rio_ed__Requirement_Type__c" VARCHAR(255), 
	"rio_ed__Course_Connection__c" VARCHAR(255), 
	"rio_ed__Related_Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(1,'ISD-CCR-13','ICT112 Pre-Requisite','A','False','Pre-Requisite','256','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(2,'ISD-CCR-11','ICT112 Pre-Requisite','A','False','Pre-Requisite','10','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(3,'ISD-CCR-15','ICT112 Pre-Requisite','A','False','Pre-Requisite','246','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(4,'ISD-CCR-14','ICT112 Pre-Requisite','A','False','Pre-Requisite','266','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(5,'ISD-CCR-04','ICT112 Pre-Requisite','A','False','Pre-Requisite','142','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(6,'ISD-CCR-03','ICT112 Pre-Requisite','A','False','Pre-Requisite','91','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(7,'ISD-CCR-12','ICT112 Pre-Requisite','A','False','Pre-Requisite','114','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(8,'ISD-CCR-16','ICT112 Pre-Requisite','A','True','Pre-Requisite','275','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(9,'ISD-CCR-17','ICT112 Pre-Requisite','A','False','Pre-Requisite','32','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(10,'ISD-CCR-18','ICT112 Pre-Requisite','A','False','Pre-Requisite','46','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(11,'ISD-CCR-01','ICT112 Pre-Requisite','A','False','Pre-Requisite','61','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(12,'ISD-CCR-05','ICT112 Pre-Requisite','A','False','Pre-Requisite','73','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(13,'ISD-CCR-06','ICT112 Pre-Requisite','A','False','Pre-Requisite','87','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(14,'ISD-CCR-08','ICT112 Pre-Requisite','A','False','Pre-Requisite','181','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(15,'ISD-CCR-19','ICT112 Pre-Requisite','A','False','Pre-Requisite','105','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(16,'ISD-CCR-02','ICT112 Pre-Requisite','A','False','Pre-Requisite','130','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(17,'ISD-CCR-07','ICT112 Pre-Requisite','A','False','Pre-Requisite','157','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(18,'ISD-CCR-09','ICT112 Pre-Requisite','A','False','Pre-Requisite','209','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(19,'ISD-CCR-10','ICT112 Pre-Requisite','A','False','Pre-Requisite','280','12');
CREATE TABLE "rio_ed__Discipline_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Requirement__c" VARCHAR(255), 
	"rio_ed__Parent__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	"rio_ed__Program_Discipline__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(1,'ISD-DR-01','Major Group A','0128a000000tbcoAAA','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(2,'ISD-DR-02','Major Group B','0128a000000tbcoAAA','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(3,'ISD-DR-06','ICT115','0128a000000tbcnAAA','','Optional','2','68','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(4,'ISD-DR-03','BUS101','0128a000000tbcnAAA','','Mandatory','1','80','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(5,'ISD-DR-04','BUS102','0128a000000tbcnAAA','','Optional','1','118','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(6,'ISD-DR-05','ICT112','0128a000000tbcnAAA','','Mandatory','2','120','1');
CREATE TABLE "rio_ed__Discipline_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0128a000000tbcnAAA','Course');
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0128a000000tbcoAAA','Group');
CREATE TABLE "rio_ed__Fee_Line__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Commencement_Date__c" VARCHAR(255), 
	"rio_ed__Completion_Date__c" VARCHAR(255), 
	"rio_ed__Course_Connection_Fee_Amount__c" VARCHAR(255), 
	"rio_ed__Course_Connection_Fee_Type__c" VARCHAR(255), 
	"rio_ed__Discount_Amount__c" VARCHAR(255), 
	"rio_ed__Other_Fee_Type__c" VARCHAR(255), 
	"rio_ed__Course_Connection__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule_Term__c" VARCHAR(255), 
	"rio_ed__Student_Fee__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Line__c" VALUES(1,'ISD-FL-11','2021-12-06','','1000.0','Self Paid','','Self Paid','261','7','6');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(2,'ISD-FL-08','2021-12-06','','1000.0','Self Paid','','Self Paid','285','7','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(3,'ISD-FL-09','2021-12-06','','1000.0','Self Paid','','Self Paid','15','7','5');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(4,'ISD-FL-02','2021-12-06','','1000.0','Self Paid','','Self Paid','135','7','18');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(5,'ISD-FL-13','2022-01-06','','1000.0','Self Paid','','Self Paid','4','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(6,'ISD-FL-14','2022-01-06','','1000.0','Self Paid','','Self Paid','19','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(7,'ISD-FL-16','2022-01-06','','1000.0','Self Paid','','Self Paid','21','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(8,'ISD-FL-22','2022-01-06','','1000.0','Self Paid','','Self Paid','37','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(9,'ISD-FL-18','2022-01-06','','1000.0','Self Paid','','Self Paid','268','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(10,'ISD-FL-19','2022-01-06','','1000.0','Self Paid','','Self Paid','269','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(11,'ISD-FL-20','2022-01-06','','1000.0','Self Paid','','Self Paid','270','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(12,'ISD-FL-21','2021-12-06','','1000.0','Self Paid','','Self Paid','271','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(13,'ISD-FL-10','2022-01-06','','1000.0','Self Paid','','Self Paid','118','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(14,'ISD-FL-12','2022-01-06','','1000.0','Self Paid','','Self Paid','119','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(15,'ISD-FL-15','2022-01-06','','1000.0','Self Paid','','Self Paid','120','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(16,'ISD-FL-17','2021-12-06','','1000.0','Self Paid','','Self Paid','121','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(17,'ISD-FL-23','2022-01-06','2021-12-26','1000.0','Self Paid','','Self Paid','5','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(18,'ISD-FL-24','2022-01-06','2021-12-26','1000.0','Self Paid','','Self Paid','23','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(19,'ISD-FL-25','2022-01-06','2021-12-26','1000.0','Self Paid','','Self Paid','24','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(20,'ISD-FL-26','2021-12-06','2021-12-26','1000.0','Self Paid','','Self Paid','25','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(21,'ISD-FL-27','2021-12-06','','1000.0','Self Paid','','Self Paid','39','7','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(22,'ISD-FL-30','2021-12-06','','1000.0','Self Paid','','Self Paid','51','7','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(23,'ISD-FL-01','2021-12-06','','1000.0','Self Paid','','Self Paid','66','7','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(24,'ISD-FL-04','2021-12-06','','1000.0','Self Paid','','Self Paid','80','7','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(25,'ISD-FL-05','2021-12-06','','1000.0','Self Paid','','Self Paid','174','7','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(26,'ISD-FL-28','2021-12-06','','1000.0','Self Paid','','Self Paid','98','7','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(27,'ISD-FL-29','2021-12-06','','1000.0','Self Paid','','Self Paid','123','7','17');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(28,'ISD-FL-03','2021-12-06','','1000.0','Self Paid','','Self Paid','147','7','19');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(29,'ISD-FL-06','2021-12-06','','1000.0','Self Paid','','Self Paid','162','7','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(30,'ISD-FL-07','2021-12-06','','1000.0','Self Paid','','Self Paid','229','7','3');
CREATE TABLE "rio_ed__Fee_Schedule_Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(1,'ISD-FST-01','1','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(2,'ISD-FST-02','1','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(3,'ISD-FST-03','1','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(4,'ISD-FST-04','1','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(5,'ISD-FST-05','2','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(6,'ISD-FST-06','2','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(7,'ISD-FST-07','2','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(8,'ISD-FST-08','2','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(9,'ISD-FST-09','3','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(10,'ISD-FST-10','3','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(11,'ISD-FST-11','3','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(12,'ISD-FST-12','3','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(13,'ISD-FST-13','4','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(14,'ISD-FST-14','4','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(15,'ISD-FST-15','4','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(16,'ISD-FST-16','4','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(17,'ISD-FST-17','5','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(18,'ISD-FST-18','5','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(19,'ISD-FST-20','5','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(20,'ISD-FST-21','6','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(21,'ISD-FST-22','6','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(22,'ISD-FST-23','6','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(23,'ISD-FST-24','6','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(24,'ISD-FST-19','5','5');
CREATE TABLE "rio_ed__Fee_Schedule__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Current__c" VARCHAR(255), 
	"rio_ed__Discountable__c" VARCHAR(255), 
	"rio_ed__Fee_Amount_Domestic__c" VARCHAR(255), 
	"rio_ed__Fee_Amount_International__c" VARCHAR(255), 
	"rio_ed__Fee_End_Date__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule_Fee_Unit__c" VARCHAR(255), 
	"rio_ed__Fee_Start_Date__c" VARCHAR(255), 
	"rio_ed__Non_repeatable__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Fee__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(1,'ISD-FS-01','Default','False','False','2000.0','2000.0','2032-01-06','Term','2022-01-06','False','Draft','1');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(2,'ISD-FS-02','Default','True','False','1000.0','1000.0','2032-01-06','Course','2022-01-06','False','Draft','2');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(3,'ISD-FS-03','Discountable Default','False','False','1000.0','1000.0','2032-01-06','Course','2022-01-06','False','Draft','3');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(4,'ISD-FS-04','Default','True','False','2500.0','2500.0','2032-01-06','Program','2022-01-06','False','Draft','4');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(5,'ISD-FS-05','Default','True','False','1000.0','1000.0','2032-01-06','Deposit','2022-01-06','False','Draft','5');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(6,'ISD-FS-06','Default','True','False','500.0','500.0','2032-01-06','Application','2022-01-06','False','Draft','6');
CREATE TABLE "rio_ed__Fee__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Fee_Unit__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee__c" VALUES(1,'ISD-FEE-01','Standard Term Fee','Tuition','Term');
INSERT INTO "rio_ed__Fee__c" VALUES(2,'ISD-FEE-02','Standard Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(3,'ISD-FEE-03','Discountable Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(4,'ISD-FEE-04','Standard Program Fee','Tuition','Program');
INSERT INTO "rio_ed__Fee__c" VALUES(5,'ISD-FEE-05','Standard Deposit Fee','Deposit','Deposit');
INSERT INTO "rio_ed__Fee__c" VALUES(6,'ISD-FEE-06','Standard Application Fee','Application','Application');
CREATE TABLE "rio_ed__Funding__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Discount_Amount__c" VARCHAR(255), 
	"rio_ed__Discount_Percent__c" VARCHAR(255), 
	"rio_ed__Filter_by_Fee_Unit__c" VARCHAR(255), 
	"rio_ed__Funding_Type__c" VARCHAR(255), 
	"rio_ed__Max_Amount_per_Student__c" VARCHAR(255), 
	"rio_ed__Max_Amount_per_Term__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Student_Selectable_Amount__c" VARCHAR(255), 
	"rio_ed__Total_Fund__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Funding__c" VALUES(1,'ISD-FUN-01','Standard Funding (Scholarship)','','','False','Scholarship','100.0','250.0','Active','False','500.0');
INSERT INTO "rio_ed__Funding__c" VALUES(2,'ISD-FUN-02','Standard Funding (Sponsor)','','','False','Sponsor','50.0','75.0','Active','False','250.0');
INSERT INTO "rio_ed__Funding__c" VALUES(3,'ISD-FUN-03','Standard Funding (Discount %)','','10.0','False','Discount %','','','Active','False','');
INSERT INTO "rio_ed__Funding__c" VALUES(4,'ISD-FUN-04','Standard Funding (Discount Amount)','100.0','','False','Discount','','','Active','False','');
CREATE TABLE "rio_ed__Grade_Criteria__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(1,'ISD-GC-01','ICT112 Assignment 2','2.0','30.0','12');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(2,'ISD-GC-02','ICT112 Final Exam','3.0','50.0','12');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(3,'ISD-GC-03','ICT112 Assignment 1','1.0','20.0','12');
CREATE TABLE "rio_ed__Grade_Setting__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__For_Fail_Absent__c" VARCHAR(255), 
	"rio_ed__Grade_Points__c" VARCHAR(255), 
	"rio_ed__Grade_Range__c" VARCHAR(255), 
	"rio_ed__Grade_Result__c" VARCHAR(255), 
	"rio_ed__Grade_Setting_Scope__c" VARCHAR(255), 
	"rio_ed__Grade_Setting_Unique_Key__c" VARCHAR(255), 
	"rio_ed__Grade_Value_Scoring_Range__c" VARCHAR(255), 
	"rio_ed__Grade_Value__c" VARCHAR(255), 
	"rio_ed__Grade_Setting_Group__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(1,'ISD-GS-12','RIOUNI-FA','True','0.0','0-0','Fail','Educational Institution','0018a00001qG3c3AAC-FA - Fail Absent','Higher Range','FA - Fail Absent','28');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(2,'ISD-GS-13','RIOBIS-0','False','5.0','0-99','Pass','Educational Institution','0018a00001qG3c6AAC-CR - Credit','Higher Range','CR - Credit','31');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(3,'ISD-GS-01','RIOSOB-HD','False','7.0','91-100','Pass','University Department','0015j00000EQs5IAAT-HD - High Distinction','Higher Range','HD - High Distinction','24');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(4,'ISD-GS-02','RIOSOB-D','False','6.0','81-90','Pass','University Department','0015j00000EQs5IAAT-D - Distinction','Higher Range','D - Distinction','24');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(5,'ISD-GS-03','RIOSOB-FA','True','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FA - Fail Absent','Higher Range','FA - Fail Absent','24');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(6,'ISD-GS-04','RIOSOB-FL','False','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FL - Fail','Higher Range','FL - Fail','24');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(7,'ISD-GS-05','RIOSOB-CR','False','5.0','61-80','Pass','University Department','0015j00000EQs5IAAT-CR - Credit','Higher Range','CR - Credit','24');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(8,'ISD-GS-06','RIOSOB-PS','False','4.0','50-60','Pass','University Department','0015j00000EQs5IAAT-PS - Pass','Higher Range','PS - Pass','24');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(9,'ISD-GS-07','RIOUNI-FL','False','0.0','0 - 49','Fail','Educational Institution','0015j00000EQs58AAD-FL - Fail','Higher Range','FL - Fail','28');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(10,'ISD-GS-08','RIOUNI-D','False','6.0','75 - 84','Pass','Educational Institution','0015j00000EQs58AAD-D - Distinction','Higher Range','D - Distinction','28');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(11,'ISD-GS-09','RIOUNI-CR','False','5.0','65 - 74','Pass','Educational Institution','0015j00000EQs58AAD-CR - Credit','Higher Range','CR - Credit','28');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(12,'ISD-GS-10','RIOUNI-PS','False','4.0','50 - 64','Pass','Educational Institution','0015j00000EQs58AAD-PS - Pass','Higher Range','PS - Pass','28');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(13,'ISD-GS-11','RIOUNI-HD','False','7.0','85 - 100','Pass','Educational Institution','0015j00000EQs58AAD-HD - High Distinction','Higher Range','HD - High Distinction','28');
CREATE TABLE "rio_ed__Grade__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Grade_Criteria_Id__c" VARCHAR(255), 
	"rio_ed__Grade_Value__c" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Term_Grade__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade__c" VALUES(1,'ISD-GRADE-01','ICT112 Assignment 1','0128a000000tbcpAAA','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(2,'ISD-GRADE-02','ICT112 Assignment 2','0128a000000tbcpAAA','a0y5j000000hDmoAAE','HD - High Distinction','2.0','30.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(3,'ISD-GRADE-03','ICT112 Final Exam','0128a000000tbcpAAA','a0y5j000000hDmtAAE','HD - High Distinction','3.0','50.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(4,'ISD-GRADE-04','ICT112 Assignment 1','0128a000000tbcpAAA','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(5,'ISD-GRADE-05','ICT112 Assignment 2','0128a000000tbcpAAA','a0y5j000000hDmoAAE','D - Distinction','2.0','30.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(6,'ISD-GRADE-06','ICT112 Final Exam','0128a000000tbcpAAA','a0y5j000000hDmtAAE','D - Distinction','3.0','50.0','2');
CREATE TABLE "rio_ed__Grade__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0128a000000tbcpAAA','Grade');
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0128a000000tbcqAAA','Sub_Grade');
CREATE TABLE "rio_ed__PE_Group_Status__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Category__c" VARCHAR(255), 
	"rio_ed__Completion_Percentage__c" VARCHAR(255), 
	"rio_ed__Courses_Passed__c" VARCHAR(255), 
	"rio_ed__Credits_Attempted__c" VARCHAR(255), 
	"rio_ed__Credits_Earned__c" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Grade_Points__c" VARCHAR(255), 
	"rio_ed__Group_Status__c" VARCHAR(255), 
	"rio_ed__Hide_in_Enrollment__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	"rio_ed__Program_Enrollment__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(1,'ISD-PEG-10','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(2,'ISD-PEG-26','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(3,'ISD-PEG-09','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(4,'ISD-PEG-11','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(5,'ISD-PEG-12','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(6,'ISD-PEG-14','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(7,'ISD-PEG-19','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(8,'ISD-PEG-20','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(9,'ISD-PEG-23','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(10,'ISD-PEG-21','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(11,'ISD-PEG-22','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(12,'ISD-PEG-15','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(13,'ISD-PEG-16','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(14,'ISD-PEG-08','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(15,'ISD-PEG-13','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(16,'ISD-PEG-17','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(17,'ISD-PEG-18','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(18,'ISD-PEG-24','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(19,'ISD-PEG-25','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','114','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(20,'ISD-PEG-29','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(21,'ISD-PEG-07','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(22,'ISD-PEG-28','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(23,'ISD-PEG-30','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(24,'ISD-PEG-31','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(25,'ISD-PEG-33','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(26,'ISD-PEG-38','RIOUNI02-Mandatory','Required','33.333333333333336','0.0','40.0','40.0','120.0','25.0','In Progress','False','115','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(27,'ISD-PEG-01','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','Not Started','False','115','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(28,'ISD-PEG-04','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(29,'ISD-PEG-02','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(30,'ISD-PEG-03','RIOUNI02-Mandatory','Required','33.333333333333336','4.0','40.0','40.0','120.0','24.0','In Progress','False','115','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(31,'ISD-PEG-34','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(32,'ISD-PEG-35','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(33,'ISD-PEG-27','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(34,'ISD-PEG-32','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(35,'ISD-PEG-36','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(36,'ISD-PEG-37','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(37,'ISD-PEG-05','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(38,'ISD-PEG-06','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','115','10');
CREATE TABLE "rio_ed__PE_Pathway_Status__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__All_Courses_Completed__c" VARCHAR(255), 
	"rio_ed__All_Courses_Passed__c" VARCHAR(255), 
	"rio_ed__Automatically_Enroll_in_Courses__c" VARCHAR(255), 
	"rio_ed__Credits_Attempted__c" VARCHAR(255), 
	"rio_ed__Credits_Earned__c" VARCHAR(255), 
	"rio_ed__Deferred__c" VARCHAR(255), 
	"rio_ed__Enrolled_Courses__c" VARCHAR(255), 
	"rio_ed__Fixed_Term_Fee_Status__c" VARCHAR(255), 
	"rio_ed__GPA__c" VARCHAR(255), 
	"rio_ed__Grade_Points__c" VARCHAR(255), 
	"rio_ed__My_Term__c" VARCHAR(255), 
	"rio_ed__Number_of_Terms__c" VARCHAR(255), 
	"rio_ed__Study_Mode__c" VARCHAR(255), 
	"rio_ed__Program_Enrollment__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(1,'ISD-PEP-43','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','2','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(2,'ISD-PEP-44','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','2','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(3,'ISD-PEP-45','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','2','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(4,'ISD-PEP-46','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','2','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(5,'ISD-PEP-77','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','11','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(6,'ISD-PEP-78','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','11','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(7,'ISD-PEP-79','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','11','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(8,'ISD-PEP-80','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','11','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(9,'ISD-PEP-39','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','12','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(10,'ISD-PEP-40','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','12','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(11,'ISD-PEP-41','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','12','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(12,'ISD-PEP-42','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','12','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(13,'ISD-PEP-47','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','13','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(14,'ISD-PEP-48','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','13','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(15,'ISD-PEP-49','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','13','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(16,'ISD-PEP-50','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','13','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(17,'ISD-PEP-51','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','14','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(18,'ISD-PEP-52','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','14','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(19,'ISD-PEP-53','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','14','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(20,'ISD-PEP-54','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','14','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(21,'ISD-PEP-01','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','16','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(22,'ISD-PEP-59','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','16','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(23,'ISD-PEP-60','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','16','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(24,'ISD-PEP-02','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','16','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(25,'ISD-PEP-19','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','17','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(26,'ISD-PEP-20','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','17','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(27,'ISD-PEP-21','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','17','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(28,'ISD-PEP-22','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','17','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(29,'ISD-PEP-23','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','18','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(30,'ISD-PEP-24','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','18','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(31,'ISD-PEP-25','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','18','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(32,'ISD-PEP-26','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','1.0','4.0','Full-time','18','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(33,'ISD-PEP-65','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','19','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(34,'ISD-PEP-66','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','19','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(35,'ISD-PEP-67','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','19','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(36,'ISD-PEP-68','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','19','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(37,'ISD-PEP-27','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','15','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(38,'ISD-PEP-28','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','15','7','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(39,'ISD-PEP-29','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','15','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(40,'ISD-PEP-30','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','15','7','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(41,'ISD-PEP-61','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','1','7','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(42,'ISD-PEP-62','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','4.0','4.0','Full-time','1','7','4');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(43,'ISD-PEP-63','False','False','False','40.0','40.0','False','5.0','Not generated','6.0','24.0','1.0','4.0','Full-time','1','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(44,'ISD-PEP-64','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','1','7','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(45,'ISD-PEP-03','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','3','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(46,'ISD-PEP-04','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','3','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(47,'ISD-PEP-05','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','3','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(48,'ISD-PEP-06','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','3','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(49,'ISD-PEP-07','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','4','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(50,'ISD-PEP-08','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','4','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(51,'ISD-PEP-09','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','4','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(52,'ISD-PEP-10','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','4','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(53,'ISD-PEP-31','False','False','False','','','False','0.0','Not generated','','','2.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(54,'ISD-PEP-32','False','False','False','','','False','0.0','Not generated','','','8.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(55,'ISD-PEP-33','False','False','False','','','False','0.0','Not generated','','','3.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(56,'ISD-PEP-34','False','False','False','','','False','0.0','Not generated','','','5.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(57,'ISD-PEP-35','False','False','False','','','False','0.0','Not generated','','','4.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(58,'ISD-PEP-36','False','False','False','','','False','0.0','Not generated','','','6.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(59,'ISD-PEP-37','False','False','False','','','False','0.0','Not generated','','','7.0','8.0','Half-time','5','8','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(60,'ISD-PEP-38','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','8.0','Half-time','5','8','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(61,'ISD-PEP-55','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','6','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(62,'ISD-PEP-56','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','6','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(63,'ISD-PEP-57','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','6','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(64,'ISD-PEP-58','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','6','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(65,'ISD-PEP-11','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','7','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(66,'ISD-PEP-12','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','7','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(67,'ISD-PEP-13','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','7','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(68,'ISD-PEP-14','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','7','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(69,'ISD-PEP-15','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','8','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(70,'ISD-PEP-16','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','8','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(71,'ISD-PEP-17','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','8','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(72,'ISD-PEP-18','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','8','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(73,'ISD-PEP-69','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','9','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(74,'ISD-PEP-70','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','9','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(75,'ISD-PEP-71','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','9','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(76,'ISD-PEP-72','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','9','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(77,'ISD-PEP-73','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(78,'ISD-PEP-74','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(79,'ISD-PEP-75','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(80,'ISD-PEP-76','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','10','7','5');
CREATE TABLE "rio_ed__Pathway_Unit__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Term_Number__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Group__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(1,'ISD-PU-45','','1.0','13','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(2,'ISD-PU-46','','1.0','12','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(3,'ISD-PU-47','','1.0','9','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(4,'ISD-PU-48','','1.0','6','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(5,'ISD-PU-49','','1.0','10','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(6,'ISD-PU-50','','1.0','11','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(7,'ISD-PU-51','','1.0','7','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(8,'ISD-PU-52','','1.0','8','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(9,'ISD-PU-53','','1.0','2','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(10,'ISD-PU-54','','1.0','3','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(11,'ISD-PU-55','','1.0','3','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(12,'ISD-PU-56','','1.0','11','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(13,'ISD-PU-57','','1.0','62','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(14,'ISD-PU-58','','1.0','64','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(15,'ISD-PU-59','','1.0','65','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(16,'ISD-PU-60','','1.0','18','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(17,'ISD-PU-61','','1.0','61','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(18,'ISD-PU-62','','1.0','66','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(19,'ISD-PU-63','','1.0','60','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(20,'ISD-PU-64','','1.0','59','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(21,'ISD-PU-65','','1.0','2','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(22,'ISD-PU-66','','1.0','9','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(23,'ISD-PU-67','','1.0','59','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(24,'ISD-PU-68','','1.0','10','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(25,'ISD-PU-69','','1.0','58','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(26,'ISD-PU-70','','1.0','60','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(27,'ISD-PU-71','','1.0','51','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(28,'ISD-PU-72','','1.0','5','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(29,'ISD-PU-73','','1.0','58','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(30,'ISD-PU-01','','4.0','','112','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(31,'ISD-PU-02','','4.0','','114','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(32,'ISD-PU-03','','8.0','','114','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(33,'ISD-PU-04','','7.0','','114','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(34,'ISD-PU-05','','4.0','','116','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(35,'ISD-PU-06','','2.0','','117','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(36,'ISD-PU-07','','3.0','','117','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(37,'ISD-PU-08','','1.0','','117','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(38,'ISD-PU-32','','1.0','67','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(39,'ISD-PU-33','','1.0','67','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(40,'ISD-PU-34','','1.0','69','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(41,'ISD-PU-35','','1.0','69','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(42,'ISD-PU-36','','3.0','70','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(43,'ISD-PU-38','','2.0','75','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(44,'ISD-PU-39','','3.0','75','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(45,'ISD-PU-09','','1.0','80','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(46,'ISD-PU-17','','3.0','81','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(47,'ISD-PU-18','','5.0','81','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(48,'ISD-PU-25','','2.0','82','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(49,'ISD-PU-37','','1.0','84','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(50,'ISD-PU-40','','3.0','85','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(51,'ISD-PU-41','','6.0','85','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(52,'ISD-PU-42','','1.0','86','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(53,'ISD-PU-43','','3.0','87','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(54,'ISD-PU-44','','6.0','87','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(55,'ISD-PU-11','','2.0','91','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(56,'ISD-PU-12','','2.0','93','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(57,'ISD-PU-13','','3.0','93','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(58,'ISD-PU-14','','3.0','94','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(59,'ISD-PU-15','','3.0','96','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(60,'ISD-PU-16','','2.0','98','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(61,'ISD-PU-19','','1.0','101','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(62,'ISD-PU-20','','2.0','101','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(63,'ISD-PU-21','','2.0','103','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(64,'ISD-PU-22','','4.0','103','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(65,'ISD-PU-23','','3.0','104','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(66,'ISD-PU-24','','2.0','106','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(67,'ISD-PU-26','','2.0','109','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(68,'ISD-PU-27','','4.0','109','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(69,'ISD-PU-28','','2.0','110','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(70,'ISD-PU-29','','1.0','118','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(71,'ISD-PU-30','','3.0','119','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(72,'ISD-PU-10','','1.0','91','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(73,'ISD-PU-31','','5.0','119','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(74,'ISD-PU-74','','1.0','126','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(75,'ISD-PU-75','','1.0','122','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(76,'ISD-PU-76','','2.0','123','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(77,'ISD-PU-77','','2.0','124','','1');
CREATE TABLE "rio_ed__Plan__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Active_on_Planner__c" VARCHAR(255), 
	"rio_ed__Course_Offering_Id__c" VARCHAR(255), 
	"rio_ed__End_Date__c" VARCHAR(255), 
	"rio_ed__Plan_Line_Label__c" VARCHAR(255), 
	"rio_ed__Resource_Label__c" VARCHAR(255), 
	"rio_ed__Show_on_Planner__c" VARCHAR(255), 
	"rio_ed__Start_Date__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Plan__c" VALUES(1,'ISD','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(2,'ISD','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(3,'ISD','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(4,'ISD','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(5,'ISD','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(6,'ISD','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-06-04','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(7,'ISD','Appointments','False','','2071-12-29','Role','Resource','False','2021-12-29');
INSERT INTO "rio_ed__Plan__c" VALUES(8,'ISD','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(9,'ISD','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(10,'ISD','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(11,'ISD','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(12,'ISD','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(13,'ISD','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(14,'ISD','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(15,'ISD','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(16,'ISD','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(17,'ISD','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(18,'ISD','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(19,'ISD','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(20,'ISD','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(21,'ISD','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(22,'ISD','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(23,'ISD','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(24,'ISD','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(25,'ISD','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(26,'ISD','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(27,'ISD','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(28,'ISD','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(29,'ISD','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(30,'ISD','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(31,'ISD','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(32,'ISD','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(33,'ISD','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(34,'ISD','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(35,'ISD','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(36,'ISD','2022 Term 1 COR109 B','False','a0C8a00000swonyEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(37,'ISD','2022 Term 1 COR109 B','False','a0C8a00000swonyEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(38,'ISD','2022 Term 1 ICT221','False','a0C8a00000swonjEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(39,'ISD','2022 Term 1 ICT221','False','a0C8a00000swonjEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(40,'ISD','2022 Term 1 COR109 C','False','a0C8a00000swoo3EAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(41,'ISD','2022 Term 1 COR109 C','False','a0C8a00000swoo3EAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(42,'ISD','2022 Term 1 COR109 A','False','a0C8a00000swontEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(43,'ISD','2022 Term 1 COR109 A','False','a0C8a00000swontEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(44,'ISD','2022 Term 1 ICT310','False','a0C8a00000swonoEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(45,'ISD','2022 Term 1 ICT310','False','a0C8a00000swonoEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(46,'ISD','2022 Term 1 ETC101','False','a0C8a00000swtOXEAY','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(47,'ISD','2022 Term 1 ETC101','False','a0C8a00000swtOXEAY','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(48,'ISD','2022 Term 1 ETC102','False','a0C8a00000swtOcEAI','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(49,'ISD','2022 Term 1 ETC102','False','a0C8a00000swtOcEAI','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(50,'ISD','2022 Term 1 BUS106','False','a0C8a00000swtOSEAY','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(51,'ISD','2022 Term 1 BUS106','False','a0C8a00000swtOSEAY','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(52,'ISD','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(53,'ISD','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(54,'ISD','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(55,'ISD','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(56,'ISD','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(57,'ISD','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(58,'ISD','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(59,'ISD','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(60,'ISD','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(61,'ISD','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(62,'ISD','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-06-04','Role','Resource','False','2022-01-06');
INSERT INTO "rio_ed__Plan__c" VALUES(63,'ISD','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-06-04','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(64,'ISD','Appointments','False','','2071-12-29','Role','Resource','False','2021-12-29');
INSERT INTO "rio_ed__Plan__c" VALUES(65,'ISD','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(66,'ISD','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(67,'ISD','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(68,'ISD','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(69,'ISD','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(70,'ISD','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(71,'ISD','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(72,'ISD','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(73,'ISD','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(74,'ISD','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(75,'ISD','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(76,'ISD','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(77,'ISD','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(78,'ISD','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(79,'ISD','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(80,'ISD','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-04','Role','Resource','False','2020-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(81,'ISD','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(82,'ISD','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(83,'ISD','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(84,'ISD','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(85,'ISD','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-04','Role','Resource','False','2021-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(86,'ISD','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-04','Role','Resource','False','2021-06-18');
CREATE TABLE "rio_ed__Program_Application__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Fee_Method__c" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Non_Tuition_Fee_Type__c" VARCHAR(255), 
	"rio_ed__Pay_Upfront__c" VARCHAR(255), 
	"rio_ed__Prerequisites_Met__c" VARCHAR(255), 
	"rio_ed__Start_Month__c" VARCHAR(255), 
	"rio_ed__Start_Year__c" VARCHAR(255), 
	"rio_ed__Status_Date__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Study_Mode__c" VARCHAR(255), 
	"rio_ed__Applicant__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	"rio_ed__Program__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Application__c" VALUES(1,'ISD-PA-01','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:45:14.000+0000','Approved','Full-time','5','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(2,'ISD-PA-02','Course','Self Paid','Self Paid','Yes','False','January','2020','2021-12-09T07:16:53.000+0000','Approved','Full-time','6','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(3,'ISD-PA-03','Course','Self Paid','Self Paid','Yes','False','January','2022','2021-12-29T05:38:16.000+0000','Approved','Full-time','8','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(4,'ISD-PA-04','Course','Self Paid','Self Paid','Yes','False','January','2022','2021-12-29T05:34:24.000+0000','Approved','Full-time','9','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(5,'ISD-PA-05','Course','Self Paid','Self Paid','Yes','False','January','2022','2021-12-29T05:39:12.000+0000','Draft','Full-time','11','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(6,'ISD-PA-20','Course','Self Paid','Self Paid','Yes','False','January','2022','2021-12-29T05:17:49.000+0000','Approved','Full-time','13','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(7,'ISD-PA-06','Course','Self Paid','Self Paid','Yes','False','January','2022','2021-12-26T05:52:53.000+0000','Approved','Full-time','14','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(8,'ISD-PA-07','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-02T00:06:48.000+0000','Approved','Full-time','15','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(9,'ISD-PA-08','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:52:05.000+0000','Approved','Full-time','16','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(10,'ISD-PA-09','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:53:44.000+0000','Approved','Full-time','17','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(11,'ISD-PA-10','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:43:21.000+0000','Approved','Half-time','18','8','7','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(12,'ISD-PA-11','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:49:27.000+0000','Approved','Full-time','19','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(13,'ISD-PA-12','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:57:54.000+0000','Approved','Full-time','20','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(14,'ISD-PA-13','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:59:07.000+0000','Approved','Full-time','21','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(15,'ISD-PA-15','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T08:03:30.000+0000','Approved','Full-time','23','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(16,'ISD-PA-16','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T08:04:25.000+0000','Approved','Full-time','24','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(17,'ISD-PA-17','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T08:08:59.000+0000','Approved','Full-time','25','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(18,'ISD-PA-18','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-02T00:08:16.000+0000','Approved','Full-time','26','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(19,'ISD-PA-14','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-01T07:47:51.000+0000','Approved','Full-time','22','','','31');
INSERT INTO "rio_ed__Program_Application__c" VALUES(20,'ISD-PA-19','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-02T00:03:57.000+0000','Approved','Full-time','27','','','31');
CREATE TABLE "rio_ed__Program_Course_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Requirement_ID__c" VARCHAR(255), 
	"rio_ed__Requirement_Type__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(1,'ISD-PCR-05','ICT211:ICT112:C','A','Co-Requisite','12','10');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(2,'ISD-PCR-06','ICT115:ICT112:P','A','Pre-Requisite','12','9');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(3,'ISD-PCR-07','ICT120:ICT112:PEC','A','Pre-Requisite (Enrolled or Completed)','12','3');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(4,'ISD-PCR-08','ICT310:O','A','Other','','6');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(5,'ISD-PCR-09','ICT221:CP','A','Credit Points','','11');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(6,'ISD-PCR-10','BUS101:ICT112:P','A','Pre-Requisite','12','58');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(7,'ISD-PCR-11','BUS104:ICT112:P','A','Pre-Requisite','12','60');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(8,'ISD-PCR-12','BUS104:ICT310:P','C','Pre-Requisite','10','60');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(9,'ISD-PCR-13','BUS101:ICT211:P','B','Co-Requisite','23','54');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(10,'ISD-PCR-14','BUS104:ICT115:P','B','Co-Requisite','13','55');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(11,'ISD-PCR-15','BUS104:ICT310:P','C','Co-Requisite','10','55');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(12,'ISD-PCR-16','BUS106:O1','A','Other','','61');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(13,'ISD-PCR-17','BUS105:O1','A','Other','','51');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(14,'ISD-PCR-18','BUS104:ICT112:P','A','Co-Requisite','12','55');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(15,'ISD-PCR-19','BUS104:ICT120:P','D','Co-Requisite','6','55');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(16,'ISD-PCR-20','BUS105:O2','B','Other','','51');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(17,'ISD-PCR-21','BUS102:ICT112:P','A','Pre-Requisite','12','59');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(18,'ISD-PCR-22','BUS104:ICT120:P','D','Pre-Requisite','6','60');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(19,'ISD-PCR-23','BUS104:ICT211:P','E','Pre-Requisite','23','60');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(20,'ISD-PCR-24','ICT310:O','A','Other','','66');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(21,'ISD-PCR-25','ICT115:ICT112:P','A','Co-Requisite','12','14');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(22,'ISD-PCR-26','BUS101:ICT112:P','A','Co-Requisite','12','54');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(23,'ISD-PCR-27','BUS102:ICT112:P','A','Co-Requisite','12','16');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(24,'ISD-PCR-28','BUS102:ICT211:P','B','Co-Requisite','23','16');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(25,'ISD-PCR-29','ICT221:CP','A','Credit Points','','15');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(26,'ISD-PCR-30','BUS101:ICT211:P','B','Pre-Requisite','23','58');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(27,'ISD-PCR-31','BUS104:ICT115:P','B','Pre-Requisite','13','60');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(28,'ISD-PCR-32','BUS104:ICT211:P','E','Co-Requisite','23','55');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(29,'ISD-PCR-33','BUS106:O2','B','Other','','61');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(30,'ISD-PCR-34','BUS102:ICT211:P','B','Pre-Requisite','23','59');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(31,'ISD-PCR-01','ICT112 pre-requisite','A','Pre-Requisite','12','92');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(32,'ISD-PCR-03','BUS101 pre-requisite','A','Pre-Requisite','19','104');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(33,'ISD-PCR-04','BUS101 pre-requisite','A','Pre-Requisite','19','105');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(34,'ISD-PCR-02','ICT112 Pre-Requisite','A','Pre-Requisite','12','93');
CREATE TABLE "rio_ed__Program_Discipline__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Discipline__c" VALUES(1,'ISD-PD-01','BUS Major','20.0','Major','6');
CREATE TABLE "rio_ed__Program_Pathway__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Enrollment_Method__c" VARCHAR(255), 
	"rio_ed__Name__c" VARCHAR(255), 
	"rio_ed__Number_of_Terms__c" VARCHAR(255), 
	"rio_ed__Study_Mode__c" VARCHAR(255), 
	"rio_ed__Term_Label__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(1,'ISD-PPATH-05','Manual','Full Time V2','2.0','Full-time','Default','9');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(2,'ISD-PPATH-06','Manual','Full Time V4','1.0','Full-time','Default','1');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(3,'ISD-PPATH-07','Manual','Full Time V3','1.0','Full-time','Default','5');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(4,'ISD-PPATH-08','Manual','Full Time V6','1.0','Full-time','Default','3');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(5,'ISD-PPATH-09','Manual','Full Time V5','1.0','Full-time','Default','4');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(6,'ISD-PPATH-01','Manual','Full Time','4.0','Full-time','Default','6');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(7,'ISD-PPATH-02','Manual','Full Time V1','4.0','Full-time','Default','7');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(8,'ISD-PPATH-03','Manual','Half Time','8.0','Half-time','Default','7');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(9,'ISD-PPATH-04','Manual','Full Time','4.0','Full-time','Default','8');
CREATE TABLE "rio_ed__Qualified_Faculty__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Roles__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(1,'ISD-QF-01','Lecturer','3','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(2,'ISD-QF-03','Lecturer','12','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(3,'ISD-QF-02','Lecturer','12','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(4,'ISD-QF-05','Lecturer','13','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(5,'ISD-QF-04','Lecturer','13','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(6,'ISD-QF-06','Lecturer','14','7');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(7,'ISD-QF-07','Lecturer','15','7');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(8,'ISD-QF-09','Lecturer','16','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(9,'ISD-QF-08','Lecturer','16','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(10,'ISD-QF-10','Lecturer','17','7');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(11,'ISD-QF-11','Lecturer','18','7');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(12,'ISD-QF-12','Lecturer','19','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(13,'ISD-QF-13','Lecturer','20','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(14,'ISD-QF-14','Lecturer','21','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(15,'ISD-QF-15','Lecturer','4','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(16,'ISD-QF-16','Lecturer','22','7');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(17,'ISD-QF-18','Lecturer','23','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(18,'ISD-QF-17','Lecturer','23','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(19,'ISD-QF-20','Lecturer','24','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(20,'ISD-QF-19','Lecturer','24','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(21,'ISD-QF-21','Lecturer','25','7');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(22,'ISD-QF-22','Lecturer','26','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(23,'ISD-QF-23','Lecturer','5','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(24,'ISD-QF-25','Lecturer','6','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(25,'ISD-QF-24','Lecturer','6','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(26,'ISD-QF-27','Lecturer','7','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(27,'ISD-QF-26','Lecturer','7','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(28,'ISD-QF-28','Lecturer','8','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(29,'ISD-QF-29','Lecturer','9','3');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(30,'ISD-QF-31','Lecturer','10','4');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(31,'ISD-QF-30','Lecturer','10','10');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(32,'ISD-QF-32','Lecturer','11','3');
CREATE TABLE "rio_ed__Resource_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource_Type__c" VALUES(1,'ISD-RT-02','Location');
INSERT INTO "rio_ed__Resource_Type__c" VALUES(2,'ISD-RT-01','Location');
CREATE TABLE "rio_ed__Resource__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"rio_ed__Public__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	"rio_ed__Resource_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource__c" VALUES(1,'ISD','Beta 101','True','False','1','2');
INSERT INTO "rio_ed__Resource__c" VALUES(2,'ISD','Alpha 104','True','False','10','2');
INSERT INTO "rio_ed__Resource__c" VALUES(3,'ISD','Alpha 101','True','False','11','2');
INSERT INTO "rio_ed__Resource__c" VALUES(4,'ISD','Alpha 102','True','False','12','2');
INSERT INTO "rio_ed__Resource__c" VALUES(5,'ISD','Beta 102','True','False','2','2');
INSERT INTO "rio_ed__Resource__c" VALUES(6,'ISD','Beta 103','True','False','3','2');
INSERT INTO "rio_ed__Resource__c" VALUES(7,'ISD','Beta 104','True','False','4','2');
INSERT INTO "rio_ed__Resource__c" VALUES(8,'ISD','Alpha Building','True','False','5','2');
INSERT INTO "rio_ed__Resource__c" VALUES(9,'ISD','Beta Building','True','False','6','2');
INSERT INTO "rio_ed__Resource__c" VALUES(10,'ISD','Alpha 103','True','False','7','2');
INSERT INTO "rio_ed__Resource__c" VALUES(11,'ISD','Beta 100','True','False','8','2');
INSERT INTO "rio_ed__Resource__c" VALUES(12,'ISD','Alpha 100','True','False','9','2');
CREATE TABLE "rio_ed__Role__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Auto_Allocate__c" VARCHAR(255), 
	"rio_ed__Double_Booking_Count__c" VARCHAR(255), 
	"rio_ed__Published__c" VARCHAR(255), 
	"rio_ed__Session_Id__c" VARCHAR(255), 
	"rio_ed__Plan__c" VARCHAR(255), 
	"rio_ed__Resource_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Role__c" VALUES(1,'ISD','BUS105 Lecture #1','False','0.0','True','a1c5j000000UtGlAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(2,'ISD','BUS101 Lecture #1','False','0.0','True','a1c5j000000UtGWAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(3,'ISD','BUS104 Lecture #1','False','0.0','True','a1c5j000000UtGgAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(4,'ISD','HRM311 Lecture #1','False','0.0','True','a1c5j000000UtHFAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(5,'ISD','BUS320 Lecture #1','False','0.0','True','a1c5j000000UtHAAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(6,'ISD','BUS106 Lecture #1','False','0.0','True','a1c5j000000UtGqAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(7,'ISD','BUS203 Lecture #1','False','0.0','True','a1c5j000000UtGvAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(8,'ISD','ICT310 Lecture #1','False','0.0','True','a1c5j000000UtHeAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(9,'ISD','BUS108 Lecture #1','False','0.0','True','a1c5j000000UtGhAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(10,'ISD','COR109 Lecture #1','False','0.0','True','a1c5j000000UtGXAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(11,'ISD','BUS301 Lecture #1','False','0.0','True','a1c5j000000UtH5AAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(12,'ISD','BUS102 Lecture #1','False','0.0','True','a1c5j000000UtGbAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(13,'ISD','BUS211 Lecture #1','False','0.0','True','a1c5j000000UtH0AAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(14,'ISD','ICT211 Lecture #1','False','0.0','True','a1c5j000000UtHUAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(15,'ISD','ICT120 Lecture #1','False','0.0','True','a1c5j000000UtHBAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(16,'ISD','ICT352 Lecture #1','False','0.0','True','a1c5j000000UtH6AAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(17,'ISD','ICT221 Lecture #1','False','0.0','True','a1c5j000000UtHZAA0','','');
INSERT INTO "rio_ed__Role__c" VALUES(18,'ISD','ICT320 Lecture #1','False','0.0','True','a1c5j000000UtHjAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(19,'ISD','MGT210 Lecture #1','False','0.0','True','a1c5j000000UuKpAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(20,'ISD','HRM321 Lecture #1','False','0.0','True','a1c5j000000UuKkAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(21,'ISD','MGT310 Lecture #1','False','0.0','True','a1c5j000000UuKuAAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(22,'ISD','BUS101 Lecture #2 (Session Group)','False','0.0','True','a1c5j000000UunKAAS','','');
INSERT INTO "rio_ed__Role__c" VALUES(23,'ISD','ICT115 Tutorial Series #1','False','0.0','False','a1c5j000000UfN7AAK','','');
INSERT INTO "rio_ed__Role__c" VALUES(24,'ISD','ICT115 Lecture #2','False','0.0','True','a1d8a000009cG39AAE','62','1');
INSERT INTO "rio_ed__Role__c" VALUES(25,'ISD','BUS105 Lecture #1','False','0.0','True','a1c5j000000UtGlAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(26,'ISD','BUS101 Lecture #1','False','0.0','True','a1c5j000000UtGWAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(27,'ISD','BUS104 Lecture #1','False','0.0','True','a1c5j000000UtGgAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(28,'ISD','HRM311 Lecture #1','False','0.0','True','a1c5j000000UtHFAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(29,'ISD','BUS320 Lecture #1','False','0.0','True','a1c5j000000UtHAAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(30,'ISD','BUS106 Lecture #1','False','0.0','True','a1c5j000000UtGqAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(31,'ISD','BUS203 Lecture #1','False','0.0','True','a1c5j000000UtGvAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(32,'ISD','ICT310 Lecture #1','False','0.0','True','a1c5j000000UtHeAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(33,'ISD','BUS108 Lecture #1','False','0.0','True','a1c5j000000UtGhAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(34,'ISD','COR109 Lecture #1','False','0.0','True','a1c5j000000UtGXAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(35,'ISD','BUS301 Lecture #1','False','0.0','True','a1c5j000000UtH5AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(36,'ISD','BUS102 Lecture #1','False','0.0','True','a1c5j000000UtGbAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(37,'ISD','BUS211 Lecture #1','False','0.0','True','a1c5j000000UtH0AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(38,'ISD','ICT211 Lecture #1','False','0.0','True','a1c5j000000UtHUAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(39,'ISD','ICT120 Lecture #1','False','0.0','True','a1c5j000000UtHBAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(40,'ISD','ICT352 Lecture #1','False','0.0','True','a1c5j000000UtH6AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(41,'ISD','ICT221 Lecture #1','False','0.0','True','a1c5j000000UtHZAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(42,'ISD','ICT320 Lecture #1','False','0.0','True','a1c5j000000UtHjAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(43,'ISD','MGT210 Lecture #1','False','0.0','True','a1c5j000000UuKpAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(44,'ISD','HRM321 Lecture #1','False','0.0','True','a1c5j000000UuKkAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(45,'ISD','MGT310 Lecture #1','False','0.0','True','a1c5j000000UuKuAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(46,'ISD','BUS101 Lecture #2 (Session Group)','False','0.0','True','a1c5j000000UunKAAS','','2');
INSERT INTO "rio_ed__Role__c" VALUES(47,'ISD','ICT115 Tutorial Series #1','False','0.0','False','a1c5j000000UfN7AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(48,'ISD','ICT115 Lecture #1','False','0.0','True','a1c5j000000UtHKAA0','62','2');
INSERT INTO "rio_ed__Role__c" VALUES(49,'ISD','ICT112 Lecture #1','False','0.0','True','a1c5j000000UtGSAA0','63','2');
INSERT INTO "rio_ed__Role__c" VALUES(50,'ISD','Appointments','False','0.0','False','','64','2');
CREATE TABLE "rio_ed__Session_Connection__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Auto_Attendance_Creation__c" VARCHAR(255), 
	"rio_ed__End_Date__c" VARCHAR(255), 
	"rio_ed__Faculty_Confirmed__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	"rio_ed__Relief_Faculty__c" VARCHAR(255), 
	"rio_ed__Start_Date__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Course_Connection__c" VARCHAR(255), 
	"rio_ed__Session_Time__c" VARCHAR(255), 
	"rio_ed__Session__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Session_Connection__c" VALUES(1,'ISD-SC-31','CC-0188 - Test Student 8','False','','','False','False','','Current','261','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(2,'ISD-SC-08','CC-0308 - Test Student 20','False','','','False','False','','Current','15','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(3,'ISD-SC-02','CC-0200 - Test Student 9','False','','','False','False','','Current','135','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(4,'ISD-SC-32','CC-0104 - Test Student 2','False','','','False','False','','Current','268','','28');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(5,'ISD-SC-33','CC-0106 - Test Student 2','False','','','False','False','','Current','269','','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(6,'ISD-SC-34','CC-0095 - Test Student 2','False','','','False','False','','Current','270','','44');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(7,'ISD-SC-35','CC-0102 - Test Student 2','False','','','False','False','','Current','271','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(8,'ISD-SC-36','CC-0084 - Test Student 1','False','','','False','False','','Current','5','','28');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(9,'ISD-SC-37','CC-0086 - Test Student 1','False','','','False','False','','Current','23','','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(10,'ISD-SC-38','CC-0075 - Test Student 1','False','','','False','False','','Current','24','','44');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(11,'ISD-SC-39','CC-0082 - Test Student 1','False','','','False','False','','Current','25','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(12,'ISD-SC-40','CC-0320 - Test Student 18','False','','','False','False','','Current','39','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(13,'ISD-SC-09','CC-0000 - Fran Fisher','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','195','40','33');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(14,'ISD-SC-10','CC-0000 - Fran Fisher','False','2022-05-01','Confirmed','True','False','2022-01-09','Current','195','44','34');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(15,'ISD-SC-43','CC-0224 - Test Student 11','False','','','False','False','','Current','51','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(16,'ISD-SC-11','CC-0015 - Fran Fisher','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','197','45','35');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(17,'ISD-SC-01','CC-0236 - Test Student 12','False','','','False','False','','Current','66','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(18,'ISD-SC-04','CC-0176 - Test Student 7','False','','','False','False','','Current','80','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(19,'ISD-SC-12','CC-0008 - Fran Fisher','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','199','51','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(20,'ISD-SC-05','CC-0212 - Test Student 10','False','','','False','False','','Current','174','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(21,'ISD-SC-41','CC-0248 - Test Student 13','False','','','False','False','','Current','98','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(22,'ISD-SC-13','CC-0007 - Fran Fisher','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','202','46','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(23,'ISD-SC-42','CC-0260 - Test Student 14','False','','','False','False','','Current','123','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(24,'ISD-SC-14','CC-0006 - Fran Fisher','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','203','49','40');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(25,'ISD-SC-15','CC-0021 - Fran Fisher','True','2023-06-04','Confirmed','True','False','2023-01-06','Current','204','3','46');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(26,'ISD-SC-16','CC-0016 - Fran Fisher','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','207','4','43');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(27,'ISD-SC-17','CC-0022 - Fran Fisher','True','2023-06-04','Confirmed','True','False','2023-01-06','Current','228','7','47');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(28,'ISD-SC-18','CC-0014 - Fran Fisher','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','216','8','48');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(29,'ISD-SC-19','CC-0013 - Fran Fisher','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','218','10','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(30,'ISD-SC-28','CC-0023 - Fiona Forton','True','2023-06-04','Confirmed','True','False','2023-01-06','Current','164','39','29');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(31,'ISD-SC-03','CC-0272 - Test Student 15','False','','','False','False','','Current','147','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(32,'ISD-SC-06','CC-0284 - Test Student 16','False','','','False','False','','Current','162','','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(33,'ISD-SC-29','CC-0034 - Fiona Forton','True','2023-11-04','Confirmed','True','False','2023-06-18','Current','167','43','32');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(34,'ISD-SC-30','CC-0024 - Fiona Forton','True','2023-06-04','Confirmed','True','False','2023-01-06','Current','170','2','42');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(35,'ISD-SC-20','CC-0088 - Edward Educator','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','172','19','28');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(36,'ISD-SC-21','CC-0093 - Edward Educator','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','173','42','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(37,'ISD-SC-22','CC-0090 - Edward Educator','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','188','48','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(38,'ISD-SC-23','CC-0091 - Edward Educator','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','189','50','41');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(39,'ISD-SC-24','CC-0089 - Edward Educator','True','2022-06-04','Confirmed','True','False','2022-01-06','Current','190','5','44');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(40,'ISD-SC-25','CC-0094 - Edward Educator','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','191','6','45');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(41,'ISD-SC-26','CC-0092 - Edward Educator','True','2022-11-04','Confirmed','True','False','2022-06-18','Current','192','9','49');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(42,'ISD-SC-27','CC-0087 - Edward Educator','True','2022-06-04','Confirmed','True','False','2021-12-29','Current','193','21','51');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(43,'ISD-SC-07','CC-0296 - Test Student 17','False','','','False','False','','Current','229','','51');
CREATE TABLE "rio_ed__Session_Time__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Booking_Action__c" VARCHAR(255), 
	"rio_ed__Change_Log__c" VARCHAR(255), 
	"rio_ed__Day_of_week__c" VARCHAR(255), 
	"rio_ed__End_Date__c" VARCHAR(255), 
	"rio_ed__End_Time__c" VARCHAR(255), 
	"rio_ed__Historical_Recurrence__c" VARCHAR(255), 
	"rio_ed__Ignore_Holidays__c" VARCHAR(255), 
	"rio_ed__Label__c" VARCHAR(255), 
	"rio_ed__Recurrence__c" VARCHAR(255), 
	"rio_ed__Start_Date__c" VARCHAR(255), 
	"rio_ed__Start_Time__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Update_Settings__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	"rio_ed__Session__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Session_Time__c" VALUES(1,'ISD-ST-51','Recreate','Session booking generation log 6/23/2022, 6:09 PM:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-04','16:00','Weekly','False','Tuesday','Weekly','2022-01-06','15:00','Active','Create/Update after today','','1');
INSERT INTO "rio_ed__Session_Time__c" VALUES(2,'ISD-ST-12','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-04','12:00','Weekly','False','Tuesday','Weekly','2023-01-06','11:00','Active','Create/Update after today','9','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(3,'ISD-ST-13','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-04','10:00','Weekly','False','Tuesday','Weekly','2023-01-06','09:00','Active','Create/Update after today','9','46');
INSERT INTO "rio_ed__Session_Time__c" VALUES(4,'ISD-ST-14','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-04','15:00','Weekly','False','Monday','Weekly','2022-06-18','14:00','Active','Create/Update after today','9','43');
INSERT INTO "rio_ed__Session_Time__c" VALUES(5,'ISD-ST-15','Recreate','Session booking generation log 21/1/2022, 6:03 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-04','17:00','Weekly','False','Tuesday','Weekly','2022-01-06','16:00','Active','Create/Update after today','9','44');
INSERT INTO "rio_ed__Session_Time__c" VALUES(6,'ISD-ST-16','Recreate','Session booking generation log 21/1/2022, 6:09 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-04','14:00','Weekly','False','Wednesday','Weekly','2022-06-18','13:00','Active','Create/Update after today','9','45');
INSERT INTO "rio_ed__Session_Time__c" VALUES(7,'ISD-ST-17','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-06-04','17:00','Weekly','False','Monday','Weekly','2023-01-06','16:00','Active','Create/Update after today','9','47');
INSERT INTO "rio_ed__Session_Time__c" VALUES(8,'ISD-ST-19','Recreate','Session booking generation log 21/1/2022, 5:45 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-04','14:00','Weekly','False','Monday','Weekly','2022-06-18','13:00','Active','Create/Update after today','9','48');
INSERT INTO "rio_ed__Session_Time__c" VALUES(9,'ISD-ST-20','Recreate','Session booking generation log 21/1/2022, 6:06 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-04','12:00','Weekly','False','Wednesday','Weekly','2022-06-18','11:00','Active','Create/Update after today','9','49');
INSERT INTO "rio_ed__Session_Time__c" VALUES(10,'ISD-ST-21','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-04','16:00','Weekly','False','Monday','Weekly','2022-06-18','15:00','Active','Create/Update after today','9','50');
INSERT INTO "rio_ed__Session_Time__c" VALUES(11,'ISD-ST-23','','','Tuesday','','11:00','','False','Tuesday','Weekly','','10:00','Active','Create/Update after today','9','6');
INSERT INTO "rio_ed__Session_Time__c" VALUES(12,'ISD-ST-24','','','Wednesday','','15:00','','False','Wednesday','Weekly','','14:00','Active','Create/Update after today','9','7');
INSERT INTO "rio_ed__Session_Time__c" VALUES(13,'ISD-ST-26','','','Wednesday','','13:00','','False','Wednesday','Weekly','','12:00','Active','Create/Update after today','9','8');
INSERT INTO "rio_ed__Session_Time__c" VALUES(14,'ISD-ST-27','','','Tuesday','','13:00','','False','Tuesday','Weekly','','12:00','Active','Create/Update after today','9','9');
INSERT INTO "rio_ed__Session_Time__c" VALUES(15,'ISD-ST-28','','','Tuesday','','14:00','','False','Tuesday','Weekly','','13:00','Active','Create/Update after today','9','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(16,'ISD-ST-01','','','Thursday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(17,'ISD-ST-02','','','Friday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(18,'ISD-ST-04','','','Tuesday','','15:00','','False','Tuesday','Weekly','','14:00','Active','Create/Update after today','10','3');
INSERT INTO "rio_ed__Session_Time__c" VALUES(19,'ISD-ST-06','Recreate','Session booking generation log 21/1/2022, 5:53 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-04','16:00','Weekly','False','Tuesday','Weekly','2022-01-06','15:00','Active','Create/Update after today','10','28');
INSERT INTO "rio_ed__Session_Time__c" VALUES(20,'ISD-ST-05','','','Tuesday','','16:00','','False','Tuesday','Weekly','','15:00','Active','Create/Update after today','10','5');
INSERT INTO "rio_ed__Session_Time__c" VALUES(21,'ISD-ST-03','Recreate','Session booking generation log 21/1/2022, 5:49 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-04','15:00','Weekly','False','Tuesday','Weekly','2021-12-06','14:00','Active','Create/Update after today','10','51');
INSERT INTO "rio_ed__Session_Time__c" VALUES(22,'ISD-ST-22','','','Monday','','11:00','','False','Monday','Weekly','','10:00','Active','Create/Update after today','9','2');
INSERT INTO "rio_ed__Session_Time__c" VALUES(23,'ISD-ST-29','','','Monday','','10:00','','False','Monday','Weekly','','09:00','Active','Create/Update after today','9','12');
INSERT INTO "rio_ed__Session_Time__c" VALUES(24,'ISD-ST-30','','','Wednesday','','17:00','','False','Wednesday','Weekly','','16:00','Active','Create/Update after today','9','13');
INSERT INTO "rio_ed__Session_Time__c" VALUES(25,'ISD-ST-31','','','Monday','','13:00','','False','Monday','Weekly','','12:00','Active','Create/Update after today','9','14');
INSERT INTO "rio_ed__Session_Time__c" VALUES(26,'ISD-ST-32','','','Monday','','12:00','','False','Monday','Weekly','','11:00','Active','Create/Update after today','9','15');
INSERT INTO "rio_ed__Session_Time__c" VALUES(27,'ISD-ST-33','','','Wednesday','','16:00','','False','Wednesday','Weekly','','15:00','Active','Create/Update after today','9','16');
INSERT INTO "rio_ed__Session_Time__c" VALUES(28,'ISD-ST-34','','','Wednesday','','10:00','','False','Wednesday','Weekly','','09:00','Active','Create/Update after today','9','17');
INSERT INTO "rio_ed__Session_Time__c" VALUES(29,'ISD-ST-36','','','Wednesday','','11:00','','False','Wednesday','Weekly','','10:00','Active','Create/Update after today','9','18');
INSERT INTO "rio_ed__Session_Time__c" VALUES(30,'ISD-ST-37','','','Tuesday','','12:00','','False','Tuesday','Weekly','','11:00','Active','Create/Update after today','9','19');
INSERT INTO "rio_ed__Session_Time__c" VALUES(31,'ISD-ST-38','','','Tuesday','','10:00','','False','Tuesday','Weekly','','09:00','Active','Create/Update after today','9','20');
INSERT INTO "rio_ed__Session_Time__c" VALUES(32,'ISD-ST-39','','','Monday','','15:00','','False','Monday','Weekly','','14:00','Active','Create/Update after today','9','21');
INSERT INTO "rio_ed__Session_Time__c" VALUES(33,'ISD-ST-40','','','Tuesday','','17:00','','False','Tuesday','Weekly','','16:00','Active','Create/Update after today','9','22');
INSERT INTO "rio_ed__Session_Time__c" VALUES(34,'ISD-ST-41','','','Wednesday','','14:00','','False','Wednesday','Weekly','','13:00','Active','Create/Update after today','9','23');
INSERT INTO "rio_ed__Session_Time__c" VALUES(35,'ISD-ST-42','','','Monday','','17:00','','False','Monday','Weekly','','16:00','Active','Create/Update after today','9','24');
INSERT INTO "rio_ed__Session_Time__c" VALUES(36,'ISD-ST-43','','','Monday','','14:00','','False','Monday','Weekly','','13:00','Active','Create/Update after today','9','25');
INSERT INTO "rio_ed__Session_Time__c" VALUES(37,'ISD-ST-44','','','Wednesday','','12:00','','False','Wednesday','Weekly','','11:00','Active','Create/Update after today','9','26');
INSERT INTO "rio_ed__Session_Time__c" VALUES(38,'ISD-ST-45','','','Monday','','16:00','','False','Monday','Weekly','','15:00','Active','Create/Update after today','9','27');
INSERT INTO "rio_ed__Session_Time__c" VALUES(39,'ISD-ST-07','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-04','11:00','Weekly','False','Tuesday','Weekly','2023-01-06','10:00','Active','Create/Update after today','9','29');
INSERT INTO "rio_ed__Session_Time__c" VALUES(40,'ISD-ST-46','Upsert','Session booking generation log 6/15/2022, 6:52 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2022-06-04','10:00','Weekly','False','Monday','Weekly','2022-01-06','09:00','Active','Create/Update all','9','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(41,'ISD-ST-18','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-04','15:00','Weekly','False','Wednesday','Weekly','2023-06-18','14:00','Active','Create/Update after today','9','30');
INSERT INTO "rio_ed__Session_Time__c" VALUES(42,'ISD-ST-25','Recreate','Session booking generation log 21/1/2022, 6:07 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-04','13:00','Weekly','False','Wednesday','Weekly','2022-06-18','12:00','Active','Create/Update after today','9','31');
INSERT INTO "rio_ed__Session_Time__c" VALUES(43,'ISD-ST-35','Recreate','Session booking generation log 24/1/2022, 3:58 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-04','13:00','Weekly','False','Tuesday','Weekly','2023-06-18','12:00','Active','Create/Update after today','9','32');
INSERT INTO "rio_ed__Session_Time__c" VALUES(44,'ISD-ST-47','Upsert','Session booking generation log 25/1/2022, 4:29 pm:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert
[Custom Booking Updated]: a0a5j000002WUmeAAG from Friday 04 February 2022, 09:00-10:00 to Friday 04 February 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmfAAG from Friday 11 February 2022, 09:00-10:00 to Friday 11 February 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmgAAG from Friday 18 February 2022, 09:00-10:00 to Friday 18 February 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmhAAG from Friday 25 February 2022, 09:00-10:00 to Friday 25 February 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmiAAG from Friday 04 March 2022, 09:00-10:00 to Friday 04 March 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmjAAG from Friday 11 March 2022, 09:00-10:00 to Friday 11 March 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmkAAG from Friday 18 March 2022, 09:00-10:00 to Friday 18 March 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmlAAG from Friday 25 March 2022, 09:00-10:00 to Friday 25 March 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmmAAG from Friday 01 April 2022, 09:00-10:00 to Friday 01 April 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmnAAG from Friday 08 April 2022, 09:00-10:00 to Friday 08 April 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmoAAG from Friday 15 April 2022, 09:00-10:00 to Friday 15 April 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmpAAG from Friday 22 April 2022, 09:00-10:00 to Friday 22 April 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmqAAG from Friday 29 April 2022, 09:00-10:00 to Friday 29 April 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmrAAG from Friday 06 May 2022, 09:00-10:00 to Friday 06 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmsAAG from Friday 13 May 2022, 09:00-10:00 to Friday 13 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmtAAG from Friday 20 May 2022, 09:00-10:00 to Friday 20 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100
[Custom Booking Updated]: a0a5j000002WUmuAAG from Friday 27 May 2022, 09:00-10:00 to Friday 27 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100','Friday','2022-06-04','10:00','Weekly','False','Friday','Weekly','2022-01-06','09:00','Active','Create/Update all','9','34');
INSERT INTO "rio_ed__Session_Time__c" VALUES(45,'ISD-ST-48','Recreate','Session booking generation log 21/1/2022, 5:43 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-04','17:00','Weekly','False','Wednesday','Weekly','2022-06-18','16:00','Active','Create/Update after today','9','35');
INSERT INTO "rio_ed__Session_Time__c" VALUES(46,'ISD-ST-50','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-04','12:00','Weekly','False','Monday','Weekly','2022-01-06','11:00','Active','Create/Update after today','9','37');
INSERT INTO "rio_ed__Session_Time__c" VALUES(47,'ISD-ST-08','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-04','16:00','Weekly','False','Wednesday','Weekly','2023-06-18','15:00','Active','Create/Update after today','9','38');
INSERT INTO "rio_ed__Session_Time__c" VALUES(48,'ISD-ST-09','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-06-04','10:00','Weekly','False','Wednesday','Weekly','2022-01-06','09:00','Active','Create/Update after today','9','39');
INSERT INTO "rio_ed__Session_Time__c" VALUES(49,'ISD-ST-10','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-04','11:00','Weekly','False','Monday','Weekly','2022-01-06','10:00','Active','Create/Update after today','9','40');
INSERT INTO "rio_ed__Session_Time__c" VALUES(50,'ISD-ST-11','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-04','11:00','Weekly','False','Wednesday','Weekly','2022-06-18','10:00','Active','Create/Update after today','9','41');
INSERT INTO "rio_ed__Session_Time__c" VALUES(51,'ISD-ST-49','Recreate','Session booking generation log 21/1/2022, 5:42 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-04','13:00','Weekly','False','Monday','Weekly','2022-01-06','12:00','Active','Create/Update after today','9','36');
CREATE TABLE "rio_ed__Session__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Attendance_Marking__c" VARCHAR(255), 
	"rio_ed__Band__c" VARCHAR(255), 
	"rio_ed__Booked_Places__c" VARCHAR(255), 
	"rio_ed__Capacity__c" VARCHAR(255), 
	"rio_ed__Faculty_Status__c" VARCHAR(255), 
	"rio_ed__Last_Booking_Generation_Date__c" VARCHAR(255), 
	"rio_ed__Number_of_Booked_Sessions__c" VARCHAR(255), 
	"rio_ed__Published__c" VARCHAR(255), 
	"rio_ed__Required_Facility_Type__c" VARCHAR(255), 
	"rio_ed__Session_Type__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Waitlist_Places__c" VARCHAR(255), 
	"rio_ed__Course_Offering__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Plan_Line__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Session__c" VALUES(1,'ISD-SESS-51','ICT115 Lecture #2','0128a000000tbcvAAA','Each Session Time','','0.0','50.0','No Faculty Assigned','2022-01-23T08:09:42.000+0000','19.0','True','Computer Lab','Lecture','Booked','','19','','24');
INSERT INTO "rio_ed__Session__c" VALUES(2,'ISD-SESS-01','BUS102 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','3','');
INSERT INTO "rio_ed__Session__c" VALUES(3,'ISD-SESS-02','ICT112 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(4,'ISD-SESS-03','ICT112 Practical Series #2','0128a000000tbcwAAA','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(5,'ISD-SESS-04','ICT115 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','Draft','','','13','47');
INSERT INTO "rio_ed__Session__c" VALUES(6,'ISD-SESS-05','COR109 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','14','');
INSERT INTO "rio_ed__Session__c" VALUES(7,'ISD-SESS-06','MGT210 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','15','');
INSERT INTO "rio_ed__Session__c" VALUES(8,'ISD-SESS-07','ICT320 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','16','');
INSERT INTO "rio_ed__Session__c" VALUES(9,'ISD-SESS-08','HRM321 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(10,'ISD-SESS-09','IBS220 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','18','');
INSERT INTO "rio_ed__Session__c" VALUES(11,'ISD-SESS-10','BUS101 Tutorial Series #2','0128a000000tbcwAAA','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Classroom','','','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(12,'ISD-SESS-11','BUS101 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(13,'ISD-SESS-12','BUS106 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','20','');
INSERT INTO "rio_ed__Session__c" VALUES(14,'ISD-SESS-13','BUS105 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','21','');
INSERT INTO "rio_ed__Session__c" VALUES(15,'ISD-SESS-14','BUS104 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','4','');
INSERT INTO "rio_ed__Session__c" VALUES(16,'ISD-SESS-15','MGT310 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','22','');
INSERT INTO "rio_ed__Session__c" VALUES(17,'ISD-SESS-16','ICT211 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','23','');
INSERT INTO "rio_ed__Session__c" VALUES(18,'ISD-SESS-17','ICT221 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','24','');
INSERT INTO "rio_ed__Session__c" VALUES(19,'ISD-SESS-18','HRM311 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','25','');
INSERT INTO "rio_ed__Session__c" VALUES(20,'ISD-SESS-19','BUS320 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','26','');
INSERT INTO "rio_ed__Session__c" VALUES(21,'ISD-SESS-20','BUS203 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','5','');
INSERT INTO "rio_ed__Session__c" VALUES(22,'ISD-SESS-21','ICT120 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','6','');
INSERT INTO "rio_ed__Session__c" VALUES(23,'ISD-SESS-22','ICT352 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','7','');
INSERT INTO "rio_ed__Session__c" VALUES(24,'ISD-SESS-23','BUS301 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','8','');
INSERT INTO "rio_ed__Session__c" VALUES(25,'ISD-SESS-24','BUS108 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','9','');
INSERT INTO "rio_ed__Session__c" VALUES(26,'ISD-SESS-25','ICT310 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(27,'ISD-SESS-26','BUS211 Lecture #1','0128a000000tbcwAAA','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','11','');
INSERT INTO "rio_ed__Session__c" VALUES(28,'ISD-SESS-27','ICT115 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','2.0','15.0','All Confirmed','2021-12-26T06:53:46.000+0000','22.0','True','Computer Lab','Lecture','Booked','0.0','19','','48');
INSERT INTO "rio_ed__Session__c" VALUES(29,'ISD-SESS-28','COR109 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:48:11.000+0000','21.0','True','Classroom','Lecture','Booked','','20','','34');
INSERT INTO "rio_ed__Session__c" VALUES(30,'ISD-SESS-29','MGT210 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','No Faculty Assigned','2021-12-29T04:59:16.000+0000','20.0','True','Classroom','Lecture','Booked','','22','','43');
INSERT INTO "rio_ed__Session__c" VALUES(31,'ISD-SESS-30','ICT320 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T07:07:37.000+0000','20.0','True','Classroom','Lecture','Booked','','24','','42');
INSERT INTO "rio_ed__Session__c" VALUES(32,'ISD-SESS-31','HRM321 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-29T04:58:35.000+0000','20.0','True','Classroom','Lecture','Booked','','26','','44');
INSERT INTO "rio_ed__Session__c" VALUES(33,'ISD-SESS-32','BUS101 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','0.0','15.0','All Confirmed','2021-12-26T06:40:46.000+0000','21.0','True','Classroom','Lecture','Create/Update Bookings','','31','','26');
INSERT INTO "rio_ed__Session__c" VALUES(34,'ISD-SESS-33','BUS101 Lecture #2 (Session Group)','0128a000000tbcvAAA','Each Session Time','A','0.0','10.0','All Confirmed','2021-12-30T05:29:44.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','31','','46');
INSERT INTO "rio_ed__Session__c" VALUES(35,'ISD-SESS-34','BUS106 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:44:00.000+0000','20.0','True','Classroom','Lecture','Booked','','33','','30');
INSERT INTO "rio_ed__Session__c" VALUES(36,'ISD-SESS-35','BUS105 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:42:12.000+0000','21.0','True','Classroom','Lecture','Booked','','37','','25');
INSERT INTO "rio_ed__Session__c" VALUES(37,'ISD-SESS-36','BUS104 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:41:48.000+0000','21.0','True','Classroom','Lecture','Booked','','41','','27');
INSERT INTO "rio_ed__Session__c" VALUES(38,'ISD-SESS-37','MGT310 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','No Faculty Assigned','2021-12-29T04:59:39.000+0000','20.0','True','Classroom','Lecture','Booked','','42','','45');
INSERT INTO "rio_ed__Session__c" VALUES(39,'ISD-SESS-38','ICT211 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','2.0','15.0','All Confirmed','2021-12-26T07:05:28.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','46','','38');
INSERT INTO "rio_ed__Session__c" VALUES(40,'ISD-SESS-39','BUS102 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:41:16.000+0000','21.0','True','Classroom','Lecture','Booked','','12','','36');
INSERT INTO "rio_ed__Session__c" VALUES(41,'ISD-SESS-40','ICT221 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T07:05:59.000+0000','20.0','True','Classroom','Lecture','Booked','','48','','41');
INSERT INTO "rio_ed__Session__c" VALUES(42,'ISD-SESS-41','HRM311 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:48:54.000+0000','21.0','True','Classroom','Lecture','Booked','','49','','28');
INSERT INTO "rio_ed__Session__c" VALUES(43,'ISD-SESS-43','BUS203 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:46:06.000+0000','20.0','True','Classroom','Lecture','Booked','','54','','31');
INSERT INTO "rio_ed__Session__c" VALUES(44,'ISD-SESS-44','ICT120 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','2.0','15.0','All Confirmed','2021-12-26T07:03:19.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','58','','39');
INSERT INTO "rio_ed__Session__c" VALUES(45,'ISD-SESS-45','ICT352 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T07:09:21.000+0000','20.0','True','Classroom','Lecture','Booked','','60','','40');
INSERT INTO "rio_ed__Session__c" VALUES(46,'ISD-SESS-42','BUS320 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:47:35.000+0000','21.0','True','Classroom','Lecture','Booked','','51','','29');
INSERT INTO "rio_ed__Session__c" VALUES(47,'ISD-SESS-46','BUS301 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:47:04.000+0000','21.0','True','Classroom','Lecture','Booked','','61','','35');
INSERT INTO "rio_ed__Session__c" VALUES(48,'ISD-SESS-47','BUS108 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:45:44.000+0000','20.0','True','Classroom','Lecture','Booked','','64','','33');
INSERT INTO "rio_ed__Session__c" VALUES(49,'ISD-SESS-48','ICT310 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T07:06:55.000+0000','20.0','True','Classroom','Lecture','Booked','','66','','32');
INSERT INTO "rio_ed__Session__c" VALUES(50,'ISD-SESS-49','BUS211 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','','15.0','All Confirmed','2021-12-26T06:46:39.000+0000','20.0','True','Classroom','Lecture','Booked','','68','','37');
INSERT INTO "rio_ed__Session__c" VALUES(51,'ISD-SESS-50','ICT112 Lecture #1','0128a000000tbcvAAA','Each Session Time','A','15.0','15.0','All Confirmed','2021-12-26T06:49:56.000+0000','23.0','True','Computer Lab','Lecture','Booked','0.0','15','','49');
CREATE TABLE "rio_ed__Session__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0128a000000tbcvAAA','Class');
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0128a000000tbcwAAA','Template');
CREATE TABLE "rio_ed__Student_Fee__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Due_Date__c" VARCHAR(255), 
	"rio_ed__Fee_Reference__c" VARCHAR(255), 
	"rio_ed__Student_Fee_Label__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Enrollment__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Student_Fee__c" VALUES(1,'ISD','2022-01-02','F-000000002','Bachelor of Business Information System','Tuition','2');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(2,'ISD','2022-01-01','F-000000018','Bachelor of Business Information System','Tuition','11');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(3,'ISD','2022-01-01','F-000000001','Bachelor of Business Information System','Tuition','12');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(4,'ISD','2022-01-02','F-000000003','Bachelor of Business Information System','Tuition','13');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(5,'ISD','2022-01-02','F-000000004','Bachelor of Business Information System','Tuition','14');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(6,'ISD','2022-01-01','F-000000006','Bachelor of Business Information System','Tuition','16');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(7,'ISD','2021-12-09','F-000000011','Bachelor of Business Information System','Tuition','17');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(8,'ISD','2021-12-30','F-000000012','Bachelor of Business Information System','Tuition','18');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(9,'ISD','2021-12-29','F-000000015','Bachelor of Business Information System','Tuition','19');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(10,'ISD','2021-12-29','F-000000013','Bachelor of Business Information System','Tuition','15');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(11,'ISD','2021-12-26','F-000000014','Bachelor of Business Information System','Tuition','1');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(12,'ISD','2022-01-01','F-000000007','Bachelor of Business Information System','Tuition','3');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(13,'ISD','2022-01-01','F-000000008','Bachelor of Business Information System','Tuition','4');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(14,'ISD','2022-01-01','F-000000000','Bachelor of Business Information System','Tuition','5');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(15,'ISD','2022-01-01','F-000000005','Bachelor of Business Information System','Tuition','6');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(16,'ISD','2022-01-01','F-000000009','Bachelor of Business Information System','Tuition','7');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(17,'ISD','2022-01-01','F-000000010','Bachelor of Business Information System','Tuition','8');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(18,'ISD','2022-01-01','F-000000016','Bachelor of Business Information System','Tuition','9');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(19,'ISD','2022-01-01','F-000000017','Bachelor of Business Information System','Tuition','10');
COMMIT;
