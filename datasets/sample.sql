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
INSERT INTO "Account" VALUES(13,'ISD-21','Poole Administrative Account','01268000000gPNvAAM','False','','Full Program','','','21');
INSERT INTO "Account" VALUES(14,'ISD-22','Vance Administrative Account','01268000000gPNvAAM','False','','Full Program','','','22');
INSERT INTO "Account" VALUES(15,'ISD-23','Steward Administrative Account','01268000000gPNvAAM','False','','Full Program','','','23');
INSERT INTO "Account" VALUES(16,'ISD-24','Mack Administrative Account','01268000000gPNvAAM','False','','Full Program','','','24');
INSERT INTO "Account" VALUES(17,'ISD-25','Shay Administrative Account','01268000000gPNvAAM','False','','Full Program','','','25');
INSERT INTO "Account" VALUES(18,'ISD-26','Richards Administrative Account','01268000000gPNvAAM','False','','Full Program','','','26');
INSERT INTO "Account" VALUES(19,'ISD-27','Hunter Administrative Account','01268000000gPNvAAM','False','','Full Program','','','27');
INSERT INTO "Account" VALUES(20,'ISD-28','Daily Administrative Account','01268000000gPNvAAM','False','','Full Program','','','28');
INSERT INTO "Account" VALUES(21,'ISD-29','Short Administrative Account','01268000000gPNvAAM','False','','Full Program','','','29');
INSERT INTO "Account" VALUES(22,'ISD-30','Shelton Administrative Account','01268000000gPNvAAM','False','','Full Program','','','30');
INSERT INTO "Account" VALUES(23,'ISD-31','Underwood Administrative Account','01268000000gPNvAAM','False','','Full Program','','','31');
INSERT INTO "Account" VALUES(24,'ISD-32','Kramer Administrative Account','01268000000gPNvAAM','False','','Full Program','','','32');
INSERT INTO "Account" VALUES(25,'ISD-1','School of Business','01268000000gPO0AAM','False','','Full Program','','29','33');
INSERT INTO "Account" VALUES(26,'ISD-2','Bachelor of Business Management','01268000000gPNuAAM','False','RIOUNI03','Full Program','','25','');
INSERT INTO "Account" VALUES(27,'ISD-3','Campus: Sunshine Coast','01268000000gPOPAA2','True','','Full Program','Australia/Brisbane','29','');
INSERT INTO "Account" VALUES(28,'ISD-4','Campus: Brisbane','01268000000gPOPAA2','True','','Full Program','Australia/Brisbane','29','');
INSERT INTO "Account" VALUES(29,'ISD-5','RIO University','01268000000gPNxAAM','False','','Full Program','','','');
INSERT INTO "Account" VALUES(30,'ISD-6','Campus: Sydney','01268000000gPOPAA2','True','','Full Program','Australia/Sydney','29','');
INSERT INTO "Account" VALUES(31,'ISD-7','School of Art','01268000000gPO0AAM','False','','Full Program','','29','');
INSERT INTO "Account" VALUES(32,'ISD-8','Bachelor of Business Information System','01268000000gPNuAAM','False','RIOUNI02','Full Program','','25','');
INSERT INTO "Account" VALUES(33,'ISD-9','Freeman Administrative Account','01268000000gPNvAAM','False','','Full Program','','','34');
INSERT INTO "Account" VALUES(34,'ISD-10','Christensen Administrative Account','01268000000gPNvAAM','False','','Full Program','','','35');
INSERT INTO "Account" VALUES(35,'ISD-11','Smith Administrative Account','01268000000gPNvAAM','False','','Full Program','','','36');
INSERT INTO "Account" VALUES(36,'ISD-12','Forton Administrative Account','01268000000gPNvAAM','False','','Full Program','','','37');
INSERT INTO "Account" VALUES(37,'ISD-15','Educator Administrative Account','01268000000gPNvAAM','False','','Full Program','','','38');
INSERT INTO "Account" VALUES(38,'ISD-16','Cruz Administrative Account','01268000000gPNvAAM','False','','Full Program','','','39');
INSERT INTO "Account" VALUES(39,'ISD-17','Randall Administrative Account','01268000000gPNvAAM','False','','Full Program','','','40');
INSERT INTO "Account" VALUES(40,'ISD-18','Robinson Administrative Account','01268000000gPNvAAM','False','','Full Program','','','41');
INSERT INTO "Account" VALUES(41,'ISD-19','Burton Administrative Account','01268000000gPNvAAM','False','','Full Program','','','42');
INSERT INTO "Account" VALUES(42,'ISD-20','Wang Administrative Account','01268000000gPNvAAM','False','','Full Program','','','43');
INSERT INTO "Account" VALUES(43,'ISD-13','Huber Administrative Account','01268000000gPNvAAM','False','','Full Program','','','44');
INSERT INTO "Account" VALUES(44,'ISD-14','Andrews Administrative Account','01268000000gPNvAAM','False','','Full Program','','','45');
INSERT INTO "Account" VALUES(45,'ISD-33','Educator Administrative Account','01268000000gPNvAAM','False','','Full Program','','','46');
INSERT INTO "Account" VALUES(46,'ISD-34','Educator Administrative Account','01268000000gPNvAAM','False','','Full Program','','','47');
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPNuAAM','Academic_Program');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPNvAAM','Administrative');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPNwAAM','Business_Organization');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPNxAAM','Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPOOAA2','External_Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPNyAAM','HH_Account');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPOPAA2','Location');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPNzAAM','Sports_Organization');
INSERT INTO "Account_rt_mapping" VALUES('01268000000gPO0AAM','University_Department');
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
INSERT INTO "Contact" VALUES(21,'ISD-14','2001-12-16','spoole@riouni.com','Sidney','Poole','Alabaster','USA','35007','AL','276 Essex Ave.','','','United States of America (the)','Male','University Email','spoole@riouni.com','','','False','rio000000019','13');
INSERT INTO "Contact" VALUES(22,'ISD-15','2001-08-06','bvance@riouni.com','Brenda','Vance','Maineville','USA','45039','OH','7514 Westport Ave.','','','United States of America (the)','Female','University Email','bvance@riouni.com','','','False','rio000000020','14');
INSERT INTO "Contact" VALUES(23,'ISD-16','2003-06-10','ksteward@riouni.com','Kristin','Steward','Edison','USA','08817','NJ','925 Princess Ave.','','','United States of America (the)','Female','University Email','ksteward@riouni.com','','','False','rio000000010','15');
INSERT INTO "Contact" VALUES(24,'ISD-17','2003-02-20','emack@riouni.com','Emmanuel','Mack','Taylors','USA','29687','SC','8591 Blackburn Street','','','United States of America (the)','Male','University Email','emack@riouni.com','','','False','rio000000009','16');
INSERT INTO "Contact" VALUES(25,'ISD-18','2003-08-16','cshay@riouni.com','Christy','Shay','Decatur','USA','30030','GA','7717 Tower St.','','','United States of America (the)','Female','University Email','cshay@riouni.com','','','False','rio000000008','17');
INSERT INTO "Contact" VALUES(26,'ISD-19','2001-12-01','brichards@riouni.com','Brandy','Richards','Hanover Park','USA','60133','IL','8 Fulton St.','','','United States of America (the)','Female','University Email','brichards@riouni.com','','','False','rio000000007','18');
INSERT INTO "Contact" VALUES(27,'ISD-20','2003-08-26','shunter@riouni.com','Sammy','Hunter','Niles','USA','49120','MI','209 Greenview Drive','','','United States of America (the)','Male','University Email','shunter@riouni.com','','','False','rio000000006','19');
INSERT INTO "Contact" VALUES(28,'ISD-21','2002-01-28','ldaily@riouni.com','Lorna','Daily','Gallatin','USA','37066','TN','9 Arnold Rd.','','','','Female','University Email','ldaily@riouni.com','','','False','rio000000005','20');
INSERT INTO "Contact" VALUES(29,'ISD-22','2003-03-24','bshort@riouni.com','Buddy','Short','Dearborn','USA','48124','MI','9420 West Drive','','','United States of America (the)','Male','University Email','bshort@riouni.com','','','False','rio000000004','21');
INSERT INTO "Contact" VALUES(30,'ISD-23','2002-05-07','mshelton@riouni.com','Madeline','Shelton','Niceville','USA','32578','FL','7200 Hartford Drive','','','United States of America (the)','Female','University Email','mshelton@riouni.com','','','False','rio000000003','22');
INSERT INTO "Contact" VALUES(31,'ISD-24','2003-04-06','dunderwood@riouni.com','Donna','Underwood','Madisonville','USA','42431','KY','32 Orange Lane','','','United States of America (the)','Female','University Email','dunderwood@riouni.com','','','False','rio000000002','23');
INSERT INTO "Contact" VALUES(32,'ISD-25','2003-07-07','dkramer@riouni.com','Doris','Kramer','Powder Springs','USA','30127','GA','967 Fordham St.','','','United States of America (the)','Female','University Email','dkramer@riouni.com','','','False','rio000000001','24');
INSERT INTO "Contact" VALUES(33,'ISD-1','','fran@riouni.edu','Fran','Fisher','','','','','','Ms.','','','Female','University Email','fran@riouni.edu','','','True','','25');
INSERT INTO "Contact" VALUES(34,'ISD-2','','fred@riouni.edu','Freddie','Freeman','','','','','','Mr.','','','Male','University Email','fred@riouni.edu','','','True','','33');
INSERT INTO "Contact" VALUES(35,'ISD-3','2002-10-13','bchristensen@riouni.com','Bonnie','Christensen','Montgomery','USA','36109','AL','7253 Snake Hill Lane','','','United States of America (the)','Female','University Email','bchristensen@riouni.com','','','False','rio000000011','34');
INSERT INTO "Contact" VALUES(36,'ISD-4','','jsmith@riouni.edu','John','Smith','','','','','','','jsmith@riouni.edu','','Male','Alternate Email','','john.smith','john.smith@rioedplayground.com','False','','35');
INSERT INTO "Contact" VALUES(37,'ISD-5','','fiona@riouni.edu','Fiona','Forton','','','','','','Ms.','','','Female','University Email','fiona@riouni.edu','','','True','','36');
INSERT INTO "Contact" VALUES(38,'ISD-8','','eef@eef.eef','Edward','Educator','','','','','','','','','Male','University Email','eef@eef.eef','','','True','','37');
INSERT INTO "Contact" VALUES(39,'ISD-9','2001-10-10','tcruz@riouni.com','Tim','Cruz','Latrobe','USA','15650','PA','9867 Windfall Ave.','','','United States of America (the)','Male','University Email','tcruz@riouni.com','','','False','rio000000014','38');
INSERT INTO "Contact" VALUES(40,'ISD-10','2002-04-04','hrandall@riouni.com','Howard','Randall','Dalton','USA','30721','GA','880 Chapel Street','','','United States of America (the)','Male','University Email','hrandall@riouni.com','','','False','rio000000015','39');
INSERT INTO "Contact" VALUES(41,'ISD-11','2001-08-02','grobinson@riouni.com','Gregg','Robinson','Billerica','USA','01821','MA','302 W. Cardinal Lane','','','United States of America (the)','Male','University Email','grobinson@riouni.com','','','False','rio000000016','40');
INSERT INTO "Contact" VALUES(42,'ISD-12','2002-04-27','gburton@riouni.com','Gwen','Burton','Hinesville','USA','31313','GA','7778 Canterbury Street','','','United States of America (the)','Female','University Email','gburton@riouni.com','','','False','rio000000017','41');
INSERT INTO "Contact" VALUES(43,'ISD-13','2002-07-02','lwang@riouni.com','Lucy','Wang','Lynchburg','USA','24502','VA','7364 W. Arlington Street','','','United States of America (the)','Female','University Email','lwang@riouni.com','','','False','rio000000018','42');
INSERT INTO "Contact" VALUES(44,'ISD-6','2004-01-15','ehuber@riouni.com','Eleanor','Huber','Charlotte','USA','28205','NC','301 W. Wild Rose Street','','','United States of America (the)','Female','University Email','ehuber@riouni.com','','','False','rio000000012','43');
INSERT INTO "Contact" VALUES(45,'ISD-7','2003-09-11','candrews@riouni.com','Charlotte','Andrews','Pickerington','USA','43147','OH','9946 Ocean St.','','','United States of America (the)','Female','University Email','candrews@riouni.com','','','False','rio000000013','44');
INSERT INTO "Contact" VALUES(46,'ISD-26','','gef@gef.gef','Gary','Educator','','','','','','','','','','University Email','gef@gef.gef','','','True','','45');
INSERT INTO "Contact" VALUES(47,'ISD-27','','fef@fef.fef','Fendi','Educator','','','','','','','','','','University Email','fef@fef.fef','','','True','','46');
CREATE TABLE "hed__Affiliation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"hed__Role__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Affiliation__c" VALUES(1,'ISD-2','Faculty','Current','25','38');
INSERT INTO "hed__Affiliation__c" VALUES(2,'ISD-3','Faculty','Current','25','33');
INSERT INTO "hed__Affiliation__c" VALUES(3,'ISD-4','Faculty','Current','25','34');
INSERT INTO "hed__Affiliation__c" VALUES(4,'ISD-31','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(5,'ISD-1','Faculty','Current','25','37');
INSERT INTO "hed__Affiliation__c" VALUES(6,'ISD-28','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(7,'ISD-29','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(8,'ISD-32','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(9,'ISD-33','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(10,'ISD-34','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(11,'ISD-36','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(12,'ISD-44','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(13,'ISD-45','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(14,'ISD-46','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(15,'ISD-47','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(16,'ISD-48','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(17,'ISD-49','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(18,'ISD-50','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(19,'ISD-51','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(20,'ISD-52','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(21,'ISD-53','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(22,'ISD-54','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(23,'ISD-55','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(24,'ISD-56','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(25,'ISD-57','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(26,'ISD-58','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(27,'ISD-59','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(28,'ISD-60','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(29,'ISD-61','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(30,'ISD-62','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(31,'ISD-63','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(32,'ISD-64','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(33,'ISD-65','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(34,'ISD-66','','Former','32','');
INSERT INTO "hed__Affiliation__c" VALUES(35,'ISD-14','','Current','32','23');
INSERT INTO "hed__Affiliation__c" VALUES(36,'ISD-15','','Former','32','23');
INSERT INTO "hed__Affiliation__c" VALUES(37,'ISD-16','','Former','32','23');
INSERT INTO "hed__Affiliation__c" VALUES(38,'ISD-17','','Former','32','23');
INSERT INTO "hed__Affiliation__c" VALUES(39,'ISD-18','','Current','32','24');
INSERT INTO "hed__Affiliation__c" VALUES(40,'ISD-19','','Current','32','25');
INSERT INTO "hed__Affiliation__c" VALUES(41,'ISD-20','','Current','32','26');
INSERT INTO "hed__Affiliation__c" VALUES(42,'ISD-21','','Current','32','27');
INSERT INTO "hed__Affiliation__c" VALUES(43,'ISD-22','','Current','32','28');
INSERT INTO "hed__Affiliation__c" VALUES(44,'ISD-23','','Current','32','29');
INSERT INTO "hed__Affiliation__c" VALUES(45,'ISD-24','','Current','32','30');
INSERT INTO "hed__Affiliation__c" VALUES(46,'ISD-25','','Current','32','31');
INSERT INTO "hed__Affiliation__c" VALUES(47,'ISD-26','','Current','32','32');
INSERT INTO "hed__Affiliation__c" VALUES(48,'ISD-5','','Current','32','35');
INSERT INTO "hed__Affiliation__c" VALUES(49,'ISD-6','','Former','32','36');
INSERT INTO "hed__Affiliation__c" VALUES(50,'ISD-7','','Current','32','36');
INSERT INTO "hed__Affiliation__c" VALUES(51,'ISD-8','','Current','32','44');
INSERT INTO "hed__Affiliation__c" VALUES(52,'ISD-9','','Current','32','45');
INSERT INTO "hed__Affiliation__c" VALUES(53,'ISD-43','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(54,'ISD-30','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(55,'ISD-35','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(56,'ISD-37','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(57,'ISD-38','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(58,'ISD-39','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(59,'ISD-40','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(60,'ISD-41','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(61,'ISD-42','','Former','32','40');
INSERT INTO "hed__Affiliation__c" VALUES(62,'ISD-27','','Current','32','41');
INSERT INTO "hed__Affiliation__c" VALUES(63,'ISD-10','','Current','32','42');
INSERT INTO "hed__Affiliation__c" VALUES(64,'ISD-11','','Current','32','43');
INSERT INTO "hed__Affiliation__c" VALUES(65,'ISD-12','','Current','32','21');
INSERT INTO "hed__Affiliation__c" VALUES(66,'ISD-13','','Current','32','22');
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
INSERT INTO "hed__Course_Enrollment__c" VALUES(1,'ISD-98','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(2,'ISD-126','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(3,'ISD-96','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(4,'ISD-97','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','31','','7','10','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(5,'ISD-102','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(6,'ISD-127','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(7,'ISD-99','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(8,'ISD-100','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(9,'ISD-120','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(10,'ISD-124','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(11,'ISD-117','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(12,'ISD-118','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(13,'ISD-125','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','35','24','10','1','75','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(14,'ISD-151','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(15,'ISD-149','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(16,'ISD-147','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(17,'ISD-152','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(18,'ISD-146','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','36','','13','12','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(19,'ISD-150','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(20,'ISD-153','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(21,'ISD-148','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','36','','13','12','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(22,'ISD-159','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-03-26','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','36','39','13','12','69','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(23,'ISD-160','01268000000gPOLAA2','10.0','10.0','78.0','False','Current','1.0','2022-06-20','2022-09-18','2022-03-26','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-04-22','32','','36','39','13','12','69','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(24,'ISD-161','01268000000gPOLAA2','','','','False','Current','1.0','','2022-09-18','2022-03-25','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','36','39','13','12','69','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(25,'ISD-162','01268000000gPOLAA2','10.0','10.0','77.0','False','Current','1.0','','2022-09-18','2022-03-25','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Insufficient','','2022-04-22','32','','36','24','13','12','69','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(26,'ISD-170','01268000000gPOLAA2','','','','False','Current','1.0','','2022-09-18','2022-03-25','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','36','24','13','12','69','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(27,'ISD-154','01268000000gPOLAA2','10.0','10.0','96.0','False','Current','1.0','','2022-09-18','2022-03-26','Enrolled','1000.0','Self Paid','7.0','Pass','Educational Institution','HD - High Distinction','Self Paid','True','True','Insufficient','','2022-04-22','32','','36','2','13','12','69','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(28,'ISD-155','01268000000gPOLAA2','','','','False','Current','1.0','','2022-09-18','2022-03-26','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','2022-04-22','32','','36','2','13','12','69','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(29,'ISD-128','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-03-22','32','','31','24','7','10','61','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(30,'ISD-136','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(31,'ISD-137','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(32,'ISD-134','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(33,'ISD-131','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(34,'ISD-138','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(35,'ISD-129','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(36,'ISD-130','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','32','','6','11','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(37,'ISD-135','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(38,'ISD-139','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(39,'ISD-132','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(40,'ISD-133','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','32','','6','11','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(41,'ISD-140','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','32','24','6','11','65','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(42,'ISD-121','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(43,'ISD-7','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(44,'ISD-8','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(45,'ISD-15','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','27','24','17','6','45','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(46,'ISD-45','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(47,'ISD-46','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(48,'ISD-43','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(49,'ISD-18','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(50,'ISD-47','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(51,'ISD-16','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(52,'ISD-17','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','28','','18','7','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(53,'ISD-44','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(54,'ISD-48','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(55,'ISD-19','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(56,'ISD-20','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','28','','18','7','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(57,'ISD-49','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','28','24','18','7','49','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(58,'ISD-57','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(59,'ISD-58','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(60,'ISD-55','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(61,'ISD-52','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(62,'ISD-59','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(63,'ISD-50','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(64,'ISD-51','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','29','','19','8','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(65,'ISD-56','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(66,'ISD-60','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(67,'ISD-53','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(68,'ISD-54','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','29','','19','8','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(69,'ISD-61','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','29','24','19','8','53','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(70,'ISD-91','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(71,'ISD-92','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(72,'ISD-89','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(73,'ISD-86','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(74,'ISD-93','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(75,'ISD-62','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(76,'ISD-85','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','30','','12','9','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(77,'ISD-90','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(78,'ISD-94','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(79,'ISD-87','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(80,'ISD-88','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','30','','12','9','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(81,'ISD-95','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','30','24','12','9','57','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(82,'ISD-103','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(83,'ISD-104','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(84,'ISD-101','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','31','','7','10','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(85,'ISD-263','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(86,'ISD-260','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(87,'ISD-257','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(88,'ISD-264','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(89,'ISD-255','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(90,'ISD-256','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','24','','4','3','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(91,'ISD-261','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(92,'ISD-265','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(93,'ISD-258','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(94,'ISD-259','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(95,'ISD-266','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','24','24','4','3','33','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(96,'ISD-274','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(97,'ISD-275','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(98,'ISD-272','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(99,'ISD-269','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(100,'ISD-276','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(101,'ISD-267','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(102,'ISD-268','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','25','','5','4','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(103,'ISD-273','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(104,'ISD-277','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(105,'ISD-270','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(106,'ISD-271','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','25','','5','4','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(107,'ISD-82','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','57','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(108,'ISD-83','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(109,'ISD-68','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','37','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(110,'ISD-69','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','38','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(111,'ISD-42','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','43','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(112,'ISD-63','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','44','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(113,'ISD-64','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','45','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(114,'ISD-65','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','27','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(115,'ISD-66','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','28','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(116,'ISD-67','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','5','37','54','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(117,'ISD-250','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(118,'ISD-251','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(119,'ISD-248','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(120,'ISD-245','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(121,'ISD-252','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(122,'ISD-243','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(123,'ISD-244','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','23','','3','2','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(124,'ISD-249','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(125,'ISD-73','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','61','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(126,'ISD-74','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','39','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(127,'ISD-75','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(128,'ISD-76','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','18','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(129,'ISD-77','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(130,'ISD-70','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','2','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(131,'ISD-71','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','47','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(132,'ISD-72','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','25','1','38','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(133,'ISD-30','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','65','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(134,'ISD-253','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(135,'ISD-246','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(136,'ISD-247','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','23','','3','2','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(137,'ISD-254','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','23','24','3','2','29','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(138,'ISD-262','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','24','','4','3','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(139,'ISD-41','01268000000gPOKAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(140,'ISD-31','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','48','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(141,'ISD-21','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','31','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(142,'ISD-22','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(143,'ISD-23','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','35','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(144,'ISD-24','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','36','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(145,'ISD-32','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','49','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(146,'ISD-25','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','52','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(147,'ISD-26','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','53','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(148,'ISD-27','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','64','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(149,'ISD-84','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','60','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(150,'ISD-106','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','14','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(151,'ISD-105','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','61','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(152,'ISD-107','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','39','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(153,'ISD-108','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','3','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(154,'ISD-109','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(155,'ISD-110','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','17','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(156,'ISD-111','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','18','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(157,'ISD-80','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','46','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(158,'ISD-28','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','68','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(159,'ISD-112','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','23','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(160,'ISD-113','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(161,'ISD-78','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','1','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(162,'ISD-79','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','2','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(163,'ISD-81','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','3','34','47','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(164,'ISD-122','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(165,'ISD-119','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(166,'ISD-116','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(167,'ISD-123','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(168,'ISD-114','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','35','','10','1','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(169,'ISD-115','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','35','','10','1','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(170,'ISD-278','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','25','24','5','4','37','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(171,'ISD-286','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(172,'ISD-287','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(173,'ISD-284','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(174,'ISD-281','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(175,'ISD-1','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(176,'ISD-279','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(177,'ISD-280','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','26','','11','5','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(178,'ISD-285','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(179,'ISD-2','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(180,'ISD-282','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(181,'ISD-283','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','26','','11','5','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(182,'ISD-3','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','26','24','11','5','41','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(183,'ISD-11','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(184,'ISD-12','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(185,'ISD-9','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(186,'ISD-6','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(187,'ISD-13','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(188,'ISD-14','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(189,'ISD-4','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(190,'ISD-5','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','27','','17','6','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(191,'ISD-10','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','27','','17','6','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(192,'ISD-29','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','9','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(193,'ISD-33','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','10','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(194,'ISD-34','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','11','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(195,'ISD-35','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','5','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(196,'ISD-36','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','6','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(197,'ISD-37','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','7','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(198,'ISD-38','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(199,'ISD-39','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(200,'ISD-40','01268000000gPOKAA2','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','25','2','33','20','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(201,'ISD-166','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-04-22','32','','41','2','16','15','13','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(202,'ISD-167','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-04-22','32','','41','58','16','15','13','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(203,'ISD-199','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(204,'ISD-197','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(205,'ISD-200','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(206,'ISD-195','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(207,'ISD-198','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(208,'ISD-201','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(209,'ISD-196','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','42','','8','16','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(210,'ISD-205','01268000000gPOLAA2','10.0','10.0','83.0','False','Current','1.0','2022-06-20','2022-09-18','2022-04-11','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-04-22','32','','42','39','8','16','17','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(211,'ISD-206','01268000000gPOLAA2','10.0','10.0','85.0','False','Current','1.0','2022-06-20','2022-09-18','2022-04-11','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-03-22','32','','42','24','8','16','17','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(212,'ISD-202','01268000000gPOLAA2','10.0','10.0','81.0','False','Current','1.0','2022-06-20','2022-09-18','2022-04-11','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-04-22','32','','42','2','8','16','17','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(213,'ISD-203','01268000000gPOLAA2','','','','False','Current','1.0','','2022-09-18','2022-04-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','42','32','8','16','17','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(214,'ISD-204','01268000000gPOLAA2','10.0','10.0','79.0','False','Current','1.0','2022-06-20','2022-09-18','2022-04-11','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-04-22','32','','42','58','8','16','17','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(215,'ISD-214','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(216,'ISD-215','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(217,'ISD-212','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(218,'ISD-209','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(219,'ISD-216','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(220,'ISD-207','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(221,'ISD-208','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','43','','9','17','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(222,'ISD-213','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(223,'ISD-217','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(224,'ISD-210','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(225,'ISD-211','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','43','','9','17','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(226,'ISD-218','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','43','24','9','17','22','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(227,'ISD-226','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(228,'ISD-178','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(229,'ISD-156','01268000000gPOLAA2','','','','False','Current','1.0','','2022-09-18','2022-03-25','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','36','2','13','12','69','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(230,'ISD-157','01268000000gPOLAA2','','','','False','Current','1.0','','2022-09-18','2022-03-25','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','36','58','13','12','69','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(231,'ISD-158','01268000000gPOLAA2','10.0','10.0','84.0','False','Current','1.0','2022-06-20','2022-09-18','2022-03-26','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-04-22','32','','36','58','13','12','69','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(232,'ISD-179','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(233,'ISD-228','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(234,'ISD-227','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(235,'ISD-224','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(236,'ISD-221','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(237,'ISD-219','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(238,'ISD-220','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','21','','1','18','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(239,'ISD-175','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(240,'ISD-180','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(241,'ISD-171','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(242,'ISD-172','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','44','','14','13','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(243,'ISD-176','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(244,'ISD-181','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(245,'ISD-173','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(246,'ISD-174','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(247,'ISD-177','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','44','','14','13','','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(248,'ISD-182','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','','32','','44','','14','13','73','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(249,'ISD-188','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(250,'ISD-186','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(251,'ISD-165','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','13','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(252,'ISD-169','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','41','24','16','15','13','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(253,'ISD-168','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-04-22','32','','41','39','16','15','13','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(254,'ISD-225','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(255,'ISD-229','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(256,'ISD-222','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(257,'ISD-223','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','21','','1','18','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(258,'ISD-230','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','21','24','1','18','3','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(259,'ISD-238','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(260,'ISD-239','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(261,'ISD-236','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(262,'ISD-233','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(263,'ISD-240','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(264,'ISD-231','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(265,'ISD-232','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','22','','2','19','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(266,'ISD-237','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(267,'ISD-241','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(268,'ISD-234','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(269,'ISD-235','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','22','','2','19','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(270,'ISD-242','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-17','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-03-22','32','','22','24','2','19','7','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(271,'ISD-184','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','102');
INSERT INTO "hed__Course_Enrollment__c" VALUES(272,'ISD-189','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(273,'ISD-183','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','45','','15','14','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(274,'ISD-187','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(275,'ISD-190','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(276,'ISD-185','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','45','','15','14','','73');
INSERT INTO "hed__Course_Enrollment__c" VALUES(277,'ISD-193','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','45','39','15','14','10','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(278,'ISD-194','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-03-22','32','','45','24','15','14','10','57');
INSERT INTO "hed__Course_Enrollment__c" VALUES(279,'ISD-191','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','45','2','15','14','10','65');
INSERT INTO "hed__Course_Enrollment__c" VALUES(280,'ISD-192','01268000000gPOLAA2','','','','False','Current','1.0','2022-06-20','2022-09-18','2022-04-14','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-04-22','32','','45','58','15','14','10','41');
INSERT INTO "hed__Course_Enrollment__c" VALUES(281,'ISD-145','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','','124');
INSERT INTO "hed__Course_Enrollment__c" VALUES(282,'ISD-143','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','','49');
INSERT INTO "hed__Course_Enrollment__c" VALUES(283,'ISD-163','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','','34');
INSERT INTO "hed__Course_Enrollment__c" VALUES(284,'ISD-141','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','32','','41','','16','15','','4');
INSERT INTO "hed__Course_Enrollment__c" VALUES(285,'ISD-144','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(286,'ISD-164','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','','16');
INSERT INTO "hed__Course_Enrollment__c" VALUES(287,'ISD-142','01268000000gPOLAA2','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','32','','41','','16','15','','73');
CREATE TABLE "hed__Course_Enrollment__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('01268000000gPOJAA2','Default');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('01268000000gPOKAA2','Faculty');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('01268000000gPOLAA2','Student');
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
INSERT INTO "hed__Course_Offering__c" VALUES(1,'ISD-11','2023 Term 2 ICT115','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','11','34','4','30','4','4','38');
INSERT INTO "hed__Course_Offering__c" VALUES(2,'ISD-12','2022 Term 1 ICT115','50.0','2022-09-18','2022-04-22','4.0','2022-06-20','1000.0','1000.0','Final Grade','Hour','False','0.0','11','34','5','30','5','4','78');
INSERT INTO "hed__Course_Offering__c" VALUES(3,'ISD-51','2023 Term 2 ICT352','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','12','34','4','30','4','4','3');
INSERT INTO "hed__Course_Offering__c" VALUES(4,'ISD-52','2022 Term 2 ICT352','','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','12','34','6','30','6','4','6');
INSERT INTO "hed__Course_Offering__c" VALUES(5,'ISD-53','2023 Term 1 BUS301','50.0','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','13','33','3','30','3','4','51');
INSERT INTO "hed__Course_Offering__c" VALUES(6,'ISD-54','2023 Term 2 BUS301','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','13','33','4','30','4','4','43');
INSERT INTO "hed__Course_Offering__c" VALUES(7,'ISD-55','2023 Term 2 BUS108','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','33','4','30','4','4','46');
INSERT INTO "hed__Course_Offering__c" VALUES(8,'ISD-56','2022 Term 2 BUS108','50.0','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','33','6','30','6','4','5');
INSERT INTO "hed__Course_Offering__c" VALUES(9,'ISD-33','2022 Term 1 BUS104','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','2','33','5','30','5','4','121');
INSERT INTO "hed__Course_Offering__c" VALUES(10,'ISD-45','2023 Term 2 BUS203','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','33','4','30','4','4','34');
INSERT INTO "hed__Course_Offering__c" VALUES(11,'ISD-46','2022 Term 2 BUS203','50.0','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','33','6','30','6','4','117');
INSERT INTO "hed__Course_Offering__c" VALUES(12,'ISD-47','Last Year Term 2 ICT120','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','4','','1','30','','4','25');
INSERT INTO "hed__Course_Offering__c" VALUES(13,'ISD-48','Last Year Term 1 ICT120','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','4','','2','30','','4','82');
INSERT INTO "hed__Course_Offering__c" VALUES(14,'ISD-49','2023 Term 2 ICT120','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','4','34','4','30','4','4','120');
INSERT INTO "hed__Course_Offering__c" VALUES(15,'ISD-67','2022 Term 1 ETC102','50.0','2022-09-18','2022-04-22','','','','','Final Grade','Hour','False','','25','','5','30','','','13');
INSERT INTO "hed__Course_Offering__c" VALUES(16,'ISD-65','2022 Term 1 ICT310','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','8','','5','30','5','4','127');
INSERT INTO "hed__Course_Offering__c" VALUES(17,'ISD-57','2023 Term 2 ICT310','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','34','4','30','4','4','45');
INSERT INTO "hed__Course_Offering__c" VALUES(18,'ISD-58','2022 Term 2 ICT310','','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','34','6','30','6','4','32');
INSERT INTO "hed__Course_Offering__c" VALUES(19,'ISD-59','2023 Term 2 BUS211','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','33','4','30','4','4','47');
INSERT INTO "hed__Course_Offering__c" VALUES(20,'ISD-60','2022 Term 2 BUS211','50.0','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','33','6','30','6','4','30');
INSERT INTO "hed__Course_Offering__c" VALUES(21,'ISD-5','Last Year Term 2 ICT112','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','10','','1','30','','4','113');
INSERT INTO "hed__Course_Offering__c" VALUES(22,'ISD-6','Last Year Term 1 ICT112','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','10','','2','30','','4','103');
INSERT INTO "hed__Course_Offering__c" VALUES(23,'ISD-7','2023 Term 2 ICT112','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','10','34','4','30','4','4','119');
INSERT INTO "hed__Course_Offering__c" VALUES(24,'ISD-8','2022 Term 1 ICT112','50.0','2022-09-18','2022-04-22','18.0','2022-06-20','1000.0','1000.0','Final Grade','Hour','False','0.0','10','34','5','30','5','4','79');
INSERT INTO "hed__Course_Offering__c" VALUES(25,'ISD-9','Last Year Term 2 ICT115','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','11','','1','30','','4','111');
INSERT INTO "hed__Course_Offering__c" VALUES(26,'ISD-10','Last Year Term 1 ICT115','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','11','','2','30','','4','107');
INSERT INTO "hed__Course_Offering__c" VALUES(27,'ISD-18','2023 Term 2 HRM321','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','15','37','4','30','4','4','53');
INSERT INTO "hed__Course_Offering__c" VALUES(28,'ISD-19','2023 Term 2 IBS220','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','16','37','4','30','4','4','1');
INSERT INTO "hed__Course_Offering__c" VALUES(29,'ISD-20','Last Year Term 2 BUS101','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','17','','1','30','','4','23');
INSERT INTO "hed__Course_Offering__c" VALUES(30,'ISD-21','Last Year Term 1 BUS101','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','17','','2','30','','4','87');
INSERT INTO "hed__Course_Offering__c" VALUES(31,'ISD-22','2023 Term 1 BUS101','','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','17','33','3','30','3','4','7');
INSERT INTO "hed__Course_Offering__c" VALUES(32,'ISD-23','2022 Term 1 BUS101','50.0','2022-09-18','2022-04-22','1.0','','1000.0','1000.0','Final Grade','Hour','False','0.0','17','33','5','30','5','4','48');
INSERT INTO "hed__Course_Offering__c" VALUES(33,'ISD-66','2022 Term 1 ETC101','50.0','2022-09-18','2022-04-22','','','','','Final Grade','Hour','False','','26','','5','30','','','11');
INSERT INTO "hed__Course_Offering__c" VALUES(34,'ISD-68','2022 Term 1 BUS106','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','18','','5','30','5','4','15');
INSERT INTO "hed__Course_Offering__c" VALUES(35,'ISD-24','2023 Term 2 BUS106','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','33','4','30','4','4','42');
INSERT INTO "hed__Course_Offering__c" VALUES(36,'ISD-25','2022 Term 2 BUS106','50.0','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','33','6','30','6','4','29');
INSERT INTO "hed__Course_Offering__c" VALUES(37,'ISD-41','2023 Term 1 HRM311','','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','19','37','3','30','3','4','33');
INSERT INTO "hed__Course_Offering__c" VALUES(38,'ISD-42','2023 Term 2 HRM311','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','19','37','4','30','4','4','37');
INSERT INTO "hed__Course_Offering__c" VALUES(39,'ISD-50','2022 Term 1 ICT120','50.0','2022-09-18','2022-04-22','4.0','2022-06-20','1000.0','1000.0','Final Grade','Hour','False','0.0','4','34','5','30','5','4','28');
INSERT INTO "hed__Course_Offering__c" VALUES(40,'ISD-61','2022 Term 1 COR109 B','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','5','','5','30','5','4','99');
INSERT INTO "hed__Course_Offering__c" VALUES(41,'ISD-63','2022 Term 1 COR109 C','0.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','5','','5','30','5','4','124');
INSERT INTO "hed__Course_Offering__c" VALUES(42,'ISD-64','2022 Term 1 COR109 A','50.0','2022-09-18','2022-04-22','','1999-11-17','','','Final Grade','Hour','False','','5','','5','30','5','','122');
INSERT INTO "hed__Course_Offering__c" VALUES(43,'ISD-13','2023 Term 1 COR109','','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','5','37','3','30','3','4','52');
INSERT INTO "hed__Course_Offering__c" VALUES(44,'ISD-14','2023 Term 2 COR109','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','37','4','30','4','4','36');
INSERT INTO "hed__Course_Offering__c" VALUES(45,'ISD-15','2023 Term 2 MGT210','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','6','37','4','30','4','4','8');
INSERT INTO "hed__Course_Offering__c" VALUES(46,'ISD-16','2023 Term 2 ICT320','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','34','4','30','4','4','9');
INSERT INTO "hed__Course_Offering__c" VALUES(47,'ISD-17','2022 Term 2 ICT320','','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','34','6','30','6','4','118');
INSERT INTO "hed__Course_Offering__c" VALUES(48,'ISD-43','2023 Term 1 BUS320','50.0','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','20','33','3','30','3','4','41');
INSERT INTO "hed__Course_Offering__c" VALUES(49,'ISD-44','2023 Term 2 BUS320','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','20','33','4','30','4','4','35');
INSERT INTO "hed__Course_Offering__c" VALUES(50,'ISD-26','Last Year Term 2 BUS105','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','21','','1','30','','4','17');
INSERT INTO "hed__Course_Offering__c" VALUES(51,'ISD-27','Last Year Term 1 BUS105','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','21','','2','30','','4','84');
INSERT INTO "hed__Course_Offering__c" VALUES(52,'ISD-28','2023 Term 1 BUS105','','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','21','33','3','30','3','4','50');
INSERT INTO "hed__Course_Offering__c" VALUES(53,'ISD-29','2022 Term 1 BUS105','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','21','33','5','30','5','4','27');
INSERT INTO "hed__Course_Offering__c" VALUES(54,'ISD-34','2023 Term 2 MGT310','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','37','4','30','4','4','10');
INSERT INTO "hed__Course_Offering__c" VALUES(55,'ISD-35','Last Year Term 2 ICT211','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','23','','1','30','','4','19');
INSERT INTO "hed__Course_Offering__c" VALUES(56,'ISD-36','Last Year Term 1 ICT211','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','23','','2','30','','4','105');
INSERT INTO "hed__Course_Offering__c" VALUES(57,'ISD-37','2023 Term 2 ICT211','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','23','34','4','30','4','4','44');
INSERT INTO "hed__Course_Offering__c" VALUES(58,'ISD-38','2022 Term 1 ICT211','50.0','2022-09-18','2022-04-22','4.0','2022-06-20','1000.0','1000.0','Final Grade','Hour','False','0.0','23','34','5','30','5','4','49');
INSERT INTO "hed__Course_Offering__c" VALUES(59,'ISD-62','2022 Term 1 ICT221','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','24','','5','30','5','4','102');
INSERT INTO "hed__Course_Offering__c" VALUES(60,'ISD-39','2023 Term 2 ICT221','','2024-02-18','2023-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','24','34','4','30','4','4','2');
INSERT INTO "hed__Course_Offering__c" VALUES(61,'ISD-40','2022 Term 2 ICT221','','2023-02-18','2022-10-02','','','1000.0','1000.0','Final Grade','Hour','False','','24','34','6','30','6','4','31');
INSERT INTO "hed__Course_Offering__c" VALUES(62,'ISD-1','Last Year Term 2 BUS102','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','1','','1','30','','4','114');
INSERT INTO "hed__Course_Offering__c" VALUES(63,'ISD-2','Last Year Term 1 BUS102','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','1','','2','30','','4','109');
INSERT INTO "hed__Course_Offering__c" VALUES(64,'ISD-3','2023 Term 1 BUS102','','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','1','33','3','30','3','4','39');
INSERT INTO "hed__Course_Offering__c" VALUES(65,'ISD-4','2022 Term 1 BUS102','50.0','2022-09-18','2022-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','1','33','5','30','5','4','4');
INSERT INTO "hed__Course_Offering__c" VALUES(66,'ISD-30','Last Year Term 2 BUS104','50.0','2022-02-18','2021-10-02','','','','','Final Grade','Hour','False','','2','','1','30','','4','21');
INSERT INTO "hed__Course_Offering__c" VALUES(67,'ISD-31','Last Year Term 1 BUS104','50.0','2021-09-18','2021-03-22','','','','','Final Grade','Hour','False','','2','','2','30','','4','81');
INSERT INTO "hed__Course_Offering__c" VALUES(68,'ISD-32','2023 Term 1 BUS104','','2023-09-18','2023-04-22','','','1000.0','1000.0','Final Grade','Hour','False','','2','33','3','30','3','4','40');
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
INSERT INTO "hed__Course__c" VALUES(1,'ISD-3','BUS102: Introduction to Economics','BUS102','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(2,'ISD-4','BUS104 Introduction to Management','BUS104','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(3,'ISD-5','BUS203 Business Law and Ethics','BUS203','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(4,'ISD-6','ICT120 Introduction to Telecommunications and Networks','ICT120','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(5,'ISD-14','COR109 Communication and Thought','COR109','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(6,'ISD-15','MGT210 Project Management','MGT210','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(7,'ISD-16','ICT320 Database Programming','ICT320','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(8,'ISD-10','ICT310 Systems Analysis and Design','ICT310','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(9,'ISD-11','BUS211 Strategic Management','BUS211','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(10,'ISD-12','ICT112 Creative Problem Solving with Programming','ICT112','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(11,'ISD-13','ICT115 Introduction to Systems Design','ICT115','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(12,'ISD-7','ICT352 ICT Project Management','ICT352','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(13,'ISD-8','BUS301 Business Analytics 2','BUS301','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(14,'ISD-9','BUS108 Introduction to Informatics','BUS108','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(15,'ISD-17','HRM321 Managing Organisational Change','HRM321','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(16,'ISD-18','IBS220 Cross-Cultural Management','IBS220','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(17,'ISD-19','BUS101: Business Analytics','BUS101','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(18,'ISD-20','BUS106 Accounting for Business','BUS106','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(19,'ISD-25','HRM311 Leadership and Team Dynamics','HRM311','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(20,'ISD-26','BUS320 Corporate Governance and Social Responsibility','BUS320','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(21,'ISD-21','BUS105 Introduction to Marketing','BUS105','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(22,'ISD-22','MGT310 Small Business and New Venture Management','MGT310','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(23,'ISD-23','ICT211 Database Design','ICT211','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(24,'ISD-24','ICT221 Software Development 1','ICT221','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','25','4');
INSERT INTO "hed__Course__c" VALUES(25,'ISD-1','ETC102 Et Cetera B','ETC102','10.0','','Hour','Educational Institution','Value','Term','True','25','');
INSERT INTO "hed__Course__c" VALUES(26,'ISD-2','ETC101 Et Cetera A','ETC101','10.0','','Hour','Educational Institution','Value','Term','True','25','');
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
INSERT INTO "hed__Facility__c" VALUES(1,'ISD-1','Beta 101','10.0','Classroom','True','30','6');
INSERT INTO "hed__Facility__c" VALUES(2,'ISD-2','Beta 102','10.0','Classroom','True','30','6');
INSERT INTO "hed__Facility__c" VALUES(3,'ISD-3','Beta 103','10.0','Classroom','True','30','6');
INSERT INTO "hed__Facility__c" VALUES(4,'ISD-4','Beta 104','10.0','Computer Lab','True','30','6');
INSERT INTO "hed__Facility__c" VALUES(5,'ISD-5','Alpha Building','','Building','True','30','');
INSERT INTO "hed__Facility__c" VALUES(6,'ISD-6','Beta Building','','Building','True','30','');
INSERT INTO "hed__Facility__c" VALUES(7,'ISD-7','Alpha 103','10.0','Classroom','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(8,'ISD-8','Beta 100','10.0','Classroom','True','30','6');
INSERT INTO "hed__Facility__c" VALUES(9,'ISD-9','Alpha 100','10.0','Classroom','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(10,'ISD-10','Alpha 104','10.0','Computer Lab','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(11,'ISD-11','Alpha 101','10.0','Classroom','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(12,'ISD-12','Alpha 102','10.0','Classroom','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(13,'ISD-13','Alpha 105','10.0','Classroom','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(14,'ISD-14','Beta 105','10.0','Classroom','True','30','6');
INSERT INTO "hed__Facility__c" VALUES(15,'ISD-15','Alpha 106','10.0','Classroom','True','30','5');
INSERT INTO "hed__Facility__c" VALUES(16,'ISD-16','Beta 106','10.0','Classroom','True','30','6');
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
	"rio_ed__Reporting_Program__c" VARCHAR(255), 
	"rio_ed__Requirement_Description__c" VARCHAR(255), 
	"rio_ed__Requirement_Logic__c" VARCHAR(255), 
	"rio_ed__Show_Child_Groups__c" VARCHAR(255), 
	"hed__Course__c" VARCHAR(255), 
	"hed__Plan_Requirement__c" VARCHAR(255), 
	"hed__Program_Plan__c" VARCHAR(255), 
	"rio_ed__Shared_Group__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Plan_Requirement__c" VALUES(1,'ISD-107','RIOUNI08 - ICT211','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','23','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(2,'ISD-97','RIOUNI02 - ICT211','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','Both','','','False','23','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(3,'ISD-35','RIOUNI03 - ICT221','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','<p>ICT112 is a pre-requisite for this course.</p>','A','False','24','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(4,'ISD-36','RIOUNI02 - ICT221','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','<p>ICT112 is the pre-requisite for this course.</p>','A','False','24','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(5,'ISD-65','RIOUNI07 - ICT221','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','24','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(6,'ISD-69','RIOUNI08 - ICT221','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','24','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(7,'ISD-98','RIOUNI02 - ICT221','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','Both','<p>ICT112 is the pre-requisite for this course.</p>','A','False','24','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(8,'ISD-7','RIOUNI03 - BUS102','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','1','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(9,'ISD-8','RIOUNI02 - BUS102','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','1','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(10,'ISD-113','RIOUNI07 - BUS102','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A OR B','False','1','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(11,'ISD-70','RIOUNI08 - BUS102','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A OR B','False','1','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(12,'ISD-78','RIOUNI02 - BUS102','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','Both','','','False','1','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(13,'ISD-61','RIOUNI06 - BUS102','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','1','131','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(14,'ISD-122','RIOUNI05 - BUS102','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','1','45','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(15,'ISD-29','RIOUNI03 - BUS104','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','2','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(16,'ISD-30','RIOUNI02 - BUS104','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','2','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(17,'ISD-114','RIOUNI07 - BUS104','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A AND (B OR C OR (D AND E))','False','2','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(18,'ISD-109','RIOUNI08 - BUS104','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A AND (B OR C OR (D AND E))','False','2','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(19,'ISD-79','RIOUNI02 - BUS104','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','Both','','','False','2','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(20,'ISD-41','RIOUNI03 - BUS203','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','3','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(21,'ISD-42','RIOUNI02 - BUS203','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','3','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(22,'ISD-80','RIOUNI02 - BUS203','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','3','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(23,'ISD-43','RIOUNI03 - ICT120','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','4','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(24,'ISD-44','RIOUNI02 - ICT120','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','4','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(25,'ISD-57','RIOUNI07 - ICT120','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','4','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(26,'ISD-119','RIOUNI09 - ICT120','01268000000gPOaAAM','Required','','','False','','','False','False','','','','False','4','83','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(27,'ISD-111','RIOUNI08 - ICT120','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','4','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(28,'ISD-81','RIOUNI02 - ICT120','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','Both','','','False','4','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(29,'ISD-13','RIOUNI03 - COR109','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','5','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(30,'ISD-14','RIOUNI02 - COR109','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','5','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(31,'ISD-59','RIOUNI07 - COR109','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','5','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(32,'ISD-100','RIOUNI02 - BUS320','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','20','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(33,'ISD-27','RIOUNI03 - BUS105','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','21','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(34,'ISD-28','RIOUNI02 - BUS105','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','21','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(35,'ISD-105','RIOUNI07 - BUS105','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A AND B','False','21','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(36,'ISD-95','RIOUNI02 - BUS105','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','Both','','','False','21','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(37,'ISD-31','RIOUNI03 - MGT310','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','22','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(38,'ISD-32','RIOUNI02 - MGT310','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','22','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(39,'ISD-96','RIOUNI02 - MGT310','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','22','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(40,'ISD-33','RIOUNI03 - ICT211','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','23','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(41,'ISD-34','RIOUNI02 - ICT211','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','23','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(42,'ISD-64','RIOUNI07 - ICT211','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','23','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(43,'ISD-72','RIOUNI09 - ICT211','01268000000gPOaAAM','Required','','','False','','','False','False','','','','False','23','83','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(44,'ISD-121','RIOUNI05 - Electives','01268000000gPObAAM','Optional','40.0','','False','','','False','False','','','','False','','','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(45,'ISD-125','RIOUNI05 - Mandatory','01268000000gPObAAM','Required','40.0','','False','','','False','False','','','','False','','','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(46,'ISD-73','RIOUNI03 - ETC102','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','25','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(47,'ISD-103','RIOUNI03 - ETC102','01268000000gPOaAAM','Required','20.0','','False','','','False','False','Secondary','','','False','25','88','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(48,'ISD-51','RIOUNI03 - ICT310','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','8','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(49,'ISD-52','RIOUNI02 - ICT310','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','8','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(50,'ISD-60','RIOUNI07 - ICT310','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','8','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(51,'ISD-120','RIOUNI08 - ICT310','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','8','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(52,'ISD-85','RIOUNI02 - ICT310','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','Both','','','False','8','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(53,'ISD-53','RIOUNI03 - BUS211','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','9','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(54,'ISD-54','RIOUNI02 - BUS211','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','9','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(55,'ISD-86','RIOUNI02 - BUS211','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','9','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(56,'ISD-9','RIOUNI03 - ICT112','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','10','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(57,'ISD-10','RIOUNI02 - ICT112','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','10','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(58,'ISD-56','RIOUNI07 - ICT112','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','10','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(59,'ISD-116','RIOUNI09 - ICT112','01268000000gPOaAAM','Required','10.0','','False','','','False','False','','','','False','10','82','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(60,'ISD-110','RIOUNI08 - ICT112','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','10','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(61,'ISD-87','RIOUNI02 - ICT112','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','Both','','','False','10','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(62,'ISD-67','RIOUNI06 - ICT112','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','10','131','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(63,'ISD-123','RIOUNI05 - ICT112','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','10','44','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(64,'ISD-11','RIOUNI03 - ICT115','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','11','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(65,'ISD-12','RIOUNI02 - ICT115','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','11','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(66,'ISD-63','RIOUNI07 - ICT115','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','11','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(67,'ISD-118','RIOUNI09 - ICT115','01268000000gPOaAAM','Required','10.0','','False','','','False','False','','','','False','11','82','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(68,'ISD-68','RIOUNI08 - ICT115','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A','False','11','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(69,'ISD-88','RIOUNI02 - ICT115','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','Both','','','False','11','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(70,'ISD-62','RIOUNI06 - ICT115','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','11','131','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(71,'ISD-124','RIOUNI05 - ICT115','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','11','44','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(72,'ISD-45','RIOUNI03 - ICT352','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','12','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(73,'ISD-46','RIOUNI02 - ICT352','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','12','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(74,'ISD-82','RIOUNI02 - ICT352','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','Both','','','False','12','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(75,'ISD-1','RIOUNI03-Elective','01268000000gPObAAM','Required','40.0','2.0','False','','','False','False','','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(76,'ISD-2','RIOUNI03-Mandatory','01268000000gPObAAM','Required','120.0','1.0','False','','','False','False','','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(77,'ISD-3','RIOUNI02-Elective','01268000000gPObAAM','Required','40.0','2.0','False','','','False','False','','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(78,'ISD-4','RIOUNI02-Mandatory','01268000000gPObAAM','Required','120.0','1.0','False','','','False','False','','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(79,'ISD-5','RIOUNI04-Electives','01268000000gPObAAM','Required','40.0','','False','','','False','False','','','','False','','','3','77');
INSERT INTO "hed__Plan_Requirement__c" VALUES(80,'ISD-6','RIOUNI04-Mandatory','01268000000gPObAAM','Required','120.0','','False','','','False','False','','','','False','','','3','78');
INSERT INTO "hed__Plan_Requirement__c" VALUES(81,'ISD-58','RIOUNI07 - Mandatory','01268000000gPObAAM','Required','200.0','','False','','','False','False','','','','False','','','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(82,'ISD-71','RIOUNI09 - Credit','01268000000gPObAAM','Required','20.0','','False','','','False','False','','','','False','','','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(83,'ISD-117','RIOUNI09 - Non Credit','01268000000gPObAAM','Required','','','False','2.0','5.0','False','False','','','','False','','','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(84,'ISD-106','RIOUNI08 - Mandatory','01268000000gPObAAM','Required','160.0','','False','','','False','False','','','','False','','','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(85,'ISD-74','RIOUNI03-Elective','01268000000gPObAAM','Required','40.0','2.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(86,'ISD-75','RIOUNI02-Mandatory','01268000000gPObAAM','Required','120.0','1.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(87,'ISD-76','RIOUNI02-Elective','01268000000gPObAAM','Required','40.0','2.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(88,'ISD-77','RIOUNI03-Mandatory','01268000000gPObAAM','Required','120.0','1.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(89,'ISD-47','RIOUNI03 - BUS301','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','13','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(90,'ISD-48','RIOUNI02 - BUS301','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','13','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(91,'ISD-83','RIOUNI02 - BUS301','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','13','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(92,'ISD-49','RIOUNI03 - BUS108','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','14','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(93,'ISD-50','RIOUNI02 - BUS108','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','14','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(94,'ISD-84','RIOUNI02 - BUS108','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','14','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(95,'ISD-19','RIOUNI03 - HRM321','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','15','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(96,'ISD-20','RIOUNI02 - HRM321','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','15','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(97,'ISD-92','RIOUNI02 - HRM321','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','15','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(98,'ISD-21','RIOUNI03 - IBS220','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','16','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(99,'ISD-22','RIOUNI02 - IBS220','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','16','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(100,'ISD-93','RIOUNI02 - IBS220','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','16','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(101,'ISD-23','RIOUNI03 - BUS101','01268000000gPOaAAM','Required','10.0','1.0','False','','','False','False','','','','False','17','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(102,'ISD-24','RIOUNI02 - BUS101','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','17','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(103,'ISD-112','RIOUNI07 - BUS101','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A AND B','False','17','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(104,'ISD-108','RIOUNI08 - BUS101','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A AND B','False','17','84','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(105,'ISD-101','RIOUNI02 - BUS101','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','Both','','','False','17','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(106,'ISD-66','RIOUNI06 - BUS101','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','17','131','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(107,'ISD-126','RIOUNI05 - BUS101','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','17','45','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(108,'ISD-104','RIOUNI02 - ETC101','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','','False','26','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(109,'ISD-102','RIOUNI02 - ETC101','01268000000gPOaAAM','Required','20.0','','False','','','False','False','Primary','','','False','26','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(110,'ISD-25','RIOUNI03 - BUS106','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','18','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(111,'ISD-26','RIOUNI02 - BUS106','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','18','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(112,'ISD-115','RIOUNI07 - BUS106','01268000000gPOaAAM','Required','20.0','','False','','','False','False','','','A OR B','False','18','81','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(113,'ISD-94','RIOUNI02 - BUS106','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','18','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(114,'ISD-37','RIOUNI03 - HRM311','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','19','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(115,'ISD-40','RIOUNI02 - BUS320','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','20','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(116,'ISD-38','RIOUNI02 - HRM311','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','19','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(117,'ISD-99','RIOUNI02 - HRM311','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','19','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(118,'ISD-39','RIOUNI03 - BUS320','01268000000gPOaAAM','Required','10.0','3.0','False','','','False','False','','','','False','20','76','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(119,'ISD-89','RIOUNI02 - COR109','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','5','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(120,'ISD-15','RIOUNI03 - MGT210','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','6','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(121,'ISD-16','RIOUNI02 - MGT210','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','6','77','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(122,'ISD-90','RIOUNI02 - MGT210','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','Both','','','False','6','87','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(123,'ISD-17','RIOUNI03 - ICT320','01268000000gPOaAAM','Optional','10.0','','False','','','False','False','','','','False','7','75','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(124,'ISD-18','RIOUNI02 - ICT320','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','','','','False','7','78','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(125,'ISD-91','RIOUNI02 - ICT320','01268000000gPOaAAM','Required','10.0','2.0','False','','','False','False','Both','','','False','7','86','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(126,'ISD-127','RIOUNI10 - ICT310','01268000000gPOaAAM','Required','10.0','','False','','','False','False','','','','False','8','128','10','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(127,'ISD-128','RIOUNI10 - ICT115','01268000000gPOaAAM','Required','10.0','','False','','','False','False','','','','False','11','128','10','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(128,'ISD-129','RIOUNI10 - Mandatory','01268000000gPObAAM','Required','40.0','','False','','','False','False','','','','False','','','10','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(129,'ISD-130','RIOUNI10 - ICT112','01268000000gPOaAAM','Required','10.0','','False','','','False','False','','','','False','10','128','10','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(130,'ISD-131','RIOUNI10 - ICT221','01268000000gPOaAAM','Required','10.0','','False','','','False','False','','','','False','24','128','10','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(131,'ISD-55','RIOUNI06 - Mandatory','01268000000gPObAAM','Required','80.0','','False','','','False','False','','','','False','','','8','');
CREATE TABLE "hed__Plan_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('01268000000gPOaAAM','Course');
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('01268000000gPObAAM','Group');
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
INSERT INTO "hed__Program_Enrollment__c" VALUES(1,'ISD-2','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','65','21','2','12','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(2,'ISD-3','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','66','22','2','13','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(3,'ISD-4','2022-04-17','','0.0','0.0','True','Half-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','35','23','2','14','4');
INSERT INTO "hed__Program_Enrollment__c" VALUES(4,'ISD-5','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','39','24','2','15','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(5,'ISD-6','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','40','25','2','16','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(6,'ISD-13','2022-04-18','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','47','32','2','3','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(7,'ISD-12','2022-04-18','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','46','31','2','2','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(8,'ISD-19','2022-04-11','2022-04-11','40.0','40.0','True','Full-time','6.0','25.0','Course','Self Paid','24.0','Self Paid','Yes','Current','Group A','Default','32','63','42','2','10','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(9,'ISD-1','2022-04-18','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','64','43','2','11','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(10,'ISD-14','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','48','35','2','5','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(11,'ISD-7','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','41','26','2','17','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(12,'ISD-11','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','45','30','2','1','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(13,'ISD-15','2022-03-25','2022-03-25','40.0','40.0','True','Full-time','6.25','25.0','Course','Self Paid','25.0','Self Paid','Yes','Current','','Default','32','50','36','2','6','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(14,'ISD-16','2022-04-14','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group A','Default','32','51','44','2','7','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(15,'ISD-17','2022-04-14','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','52','45','2','8','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(16,'ISD-18','2022-04-14','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group B','Default','32','62','41','2','9','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(17,'ISD-8','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','42','27','2','18','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(18,'ISD-9','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','43','28','2','19','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(19,'ISD-10','2022-04-17','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','32','44','29','2','20','3');
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
INSERT INTO "hed__Program_Plan__c" VALUES(1,'ISD-1','Bachelor of Business Management (Course-Upfront)','True','2022-04-22','Current','False','False','False','False','Course','Yes','Always','True','26','','','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(2,'ISD-2','Bachelor of Business Information System V1','True','2022-04-22','Current','True','False','False','False','Course','Yes','Always','True','32','','3','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(3,'ISD-3','Bachelor of Business Information System V1.5','False','2022-04-22','Current','True','False','False','False','Course','Yes','For application fee only','True','32','','','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(4,'ISD-5','Bachelor of Business Information System V4','False','','Current','True','False','False','False','Course','No','For application fee only','True','32','','6','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(5,'ISD-7','Bachelor of Business Information System V6','False','','Current','True','False','False','False','Course','No','For application fee only','True','32','','7','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(6,'ISD-8','Bachelor of Business Information System V5','False','','Current','True','False','False','False','Course','No','For application fee only','True','32','','8','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(7,'ISD-6','Bachelor of Business Information System Dual','False','','Current','True','False','False','True','Course','No','For application fee only','True','32','','','','4','32','26');
INSERT INTO "hed__Program_Plan__c" VALUES(8,'ISD-9','Bachelor of Business Information System V3','False','','Current','True','False','False','False','Program','Yes','For application fee only','True','32','','9','','6','','');
INSERT INTO "hed__Program_Plan__c" VALUES(9,'ISD-4','Bachelor of Business Information System V2','False','2022-04-22','Current','True','True','True','False','Course','Yes','For application fee only','True','32','2','10','1','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(10,'ISD-10','Bachelor of Business Information System V7','False','','Current','True','False','False','False','Course','No','For application fee only','True','32','','1','','','','');
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
INSERT INTO "hed__Term_Grade__c" VALUES(1,'ISD-2','','','','','','','42','211','24','','5');
INSERT INTO "hed__Term_Grade__c" VALUES(2,'ISD-1','','','','','','','36','25','24','','5');
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
INSERT INTO "hed__Term__c" VALUES(1,'ISD-1','Last Year Term 2','2022-02-18','2021-10-02','','2021-12-03','','Final Grade','Default','29','2');
INSERT INTO "hed__Term__c" VALUES(2,'ISD-2','Last Year Term 1','2021-09-18','2021-03-22','','2021-06-02','','Final Grade','Default','29','');
INSERT INTO "hed__Term__c" VALUES(3,'ISD-3','Next Year Term 1','2023-09-18','2023-04-22','Semester','2023-06-02','2023-04-21T14:00:00.000+0000','Final Grade','Default','29','6');
INSERT INTO "hed__Term__c" VALUES(4,'ISD-4','Next Year Term 2','2024-02-18','2023-10-02','Semester','2023-12-03','2023-10-01T14:00:00.000+0000','Final Grade','Default','29','3');
INSERT INTO "hed__Term__c" VALUES(5,'ISD-5','Current Year Term 1','2022-09-18','2022-04-22','Semester','2022-06-02','2022-03-21T14:00:00.000+0000','Final Grade','Default','29','');
INSERT INTO "hed__Term__c" VALUES(6,'ISD-6','Current Year Term 2','2023-02-18','2022-10-02','Semester','2022-12-03','2021-11-16T14:00:00.000+0000','Final Grade','Default','29','5');
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
INSERT INTO "hed__Time_Block__c" VALUES(1,'ISD-1','Lunch','13:00:00.000Z','12:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(2,'ISD-2','Noon #2','15:00:00.000Z','14:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(3,'ISD-3','Noon #3','16:00:00.000Z','15:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(4,'ISD-4','Evening #1','18:00:00.000Z','17:00:00.000Z','True','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(5,'ISD-5','Morning #1','10:00:00.000Z','09:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(6,'ISD-6','Default Time Block','','','False','29','');
INSERT INTO "hed__Time_Block__c" VALUES(7,'ISD-7','Morning #2','11:00:00.000Z','10:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(8,'ISD-8','Morning #3','12:00:00.000Z','11:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(9,'ISD-9','Noon #4','17:00:00.000Z','16:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(10,'ISD-10','Noon #1','14:00:00.000Z','13:00:00.000Z','False','29','6');
INSERT INTO "hed__Time_Block__c" VALUES(11,'ISD-11','Afternoon','17:00:00.000Z','13:00:00.000Z','False','29','12');
INSERT INTO "hed__Time_Block__c" VALUES(12,'ISD-12','Other Parent Time Block','17:00:00.000Z','09:00:00.000Z','False','29','');
INSERT INTO "hed__Time_Block__c" VALUES(13,'ISD-13','Morning','12:00:00.000Z','09:00:00.000Z','False','29','12');
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
INSERT INTO "rio_ed__Allocation__c" VALUES(1,'ISD-1','Monday','Tentative','2022-11-19','15:00:00.000Z','2022-11-19T05:00:00.000+0000','a1k68000000x1azAAA','2022-11-19','14:00:00.000Z','2022-11-19T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(2,'ISD-2','Monday','Tentative','2022-11-26','15:00:00.000Z','2022-11-26T05:00:00.000+0000','a1k68000000x1azAAA','2022-11-26','14:00:00.000Z','2022-11-26T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(3,'ISD-3','Monday','Tentative','2022-12-03','15:00:00.000Z','2022-12-03T05:00:00.000+0000','a1k68000000x1azAAA','2022-12-03','14:00:00.000Z','2022-12-03T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(4,'ISD-4','Monday','Tentative','2022-12-10','15:00:00.000Z','2022-12-10T05:00:00.000+0000','a1k68000000x1azAAA','2022-12-10','14:00:00.000Z','2022-12-10T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(5,'ISD-5','Monday','Tentative','2022-12-17','15:00:00.000Z','2022-12-17T05:00:00.000+0000','a1k68000000x1azAAA','2022-12-17','14:00:00.000Z','2022-12-17T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(6,'ISD-6','Monday','Tentative','2022-12-24','15:00:00.000Z','2022-12-24T05:00:00.000+0000','a1k68000000x1azAAA','2022-12-24','14:00:00.000Z','2022-12-24T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(7,'ISD-7','Monday','Tentative','2022-12-31','15:00:00.000Z','2022-12-31T05:00:00.000+0000','a1k68000000x1azAAA','2022-12-31','14:00:00.000Z','2022-12-31T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(8,'ISD-8','Monday','Tentative','2023-01-07','15:00:00.000Z','2023-01-07T05:00:00.000+0000','a1k68000000x1azAAA','2023-01-07','14:00:00.000Z','2023-01-07T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(9,'ISD-9','Monday','Tentative','2023-01-14','15:00:00.000Z','2023-01-14T04:00:00.000+0000','a1k68000000x1azAAA','2023-01-14','14:00:00.000Z','2023-01-14T03:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(10,'ISD-10','Monday','Tentative','2023-01-21','15:00:00.000Z','2023-01-21T04:00:00.000+0000','a1k68000000x1azAAA','2023-01-21','14:00:00.000Z','2023-01-21T03:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(11,'ISD-11','Monday','Tentative','2023-01-28','15:00:00.000Z','2023-01-28T04:00:00.000+0000','a1k68000000x1azAAA','2023-01-28','14:00:00.000Z','2023-01-28T03:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(12,'ISD-12','Monday','Tentative','2023-02-04','15:00:00.000Z','2023-02-04T04:00:00.000+0000','a1k68000000x1azAAA','2023-02-04','14:00:00.000Z','2023-02-04T03:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(13,'ISD-13','Monday','Tentative','2023-02-11','15:00:00.000Z','2023-02-11T04:00:00.000+0000','a1k68000000x1azAAA','2023-02-11','14:00:00.000Z','2023-02-11T03:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(14,'ISD-14','Monday','Tentative','2023-02-18','15:00:00.000Z','2023-02-18T04:00:00.000+0000','a1k68000000x1azAAA','2023-02-18','14:00:00.000Z','2023-02-18T03:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(15,'ISD-15','Wednesday','Tentative','2022-10-03','12:00:00.000Z','2022-10-03T02:00:00.000+0000','a1k68000000x1b5AAA','2022-10-03','11:00:00.000Z','2022-10-03T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(16,'ISD-16','Wednesday','Tentative','2022-10-10','12:00:00.000Z','2022-10-10T02:00:00.000+0000','a1k68000000x1b5AAA','2022-10-10','11:00:00.000Z','2022-10-10T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(17,'ISD-17','Wednesday','Tentative','2022-10-17','12:00:00.000Z','2022-10-17T02:00:00.000+0000','a1k68000000x1b5AAA','2022-10-17','11:00:00.000Z','2022-10-17T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(18,'ISD-18','Wednesday','Tentative','2022-10-24','12:00:00.000Z','2022-10-24T02:00:00.000+0000','a1k68000000x1b5AAA','2022-10-24','11:00:00.000Z','2022-10-24T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(19,'ISD-19','Wednesday','Tentative','2022-10-31','12:00:00.000Z','2022-10-31T02:00:00.000+0000','a1k68000000x1b5AAA','2022-10-31','11:00:00.000Z','2022-10-31T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(20,'ISD-20','Wednesday','Tentative','2022-11-07','12:00:00.000Z','2022-11-07T02:00:00.000+0000','a1k68000000x1b5AAA','2022-11-07','11:00:00.000Z','2022-11-07T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(21,'ISD-21','Wednesday','Tentative','2022-11-14','12:00:00.000Z','2022-11-14T02:00:00.000+0000','a1k68000000x1b5AAA','2022-11-14','11:00:00.000Z','2022-11-14T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(22,'ISD-22','Wednesday','Tentative','2022-11-21','12:00:00.000Z','2022-11-21T02:00:00.000+0000','a1k68000000x1b5AAA','2022-11-21','11:00:00.000Z','2022-11-21T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(23,'ISD-23','Wednesday','Tentative','2022-11-28','12:00:00.000Z','2022-11-28T02:00:00.000+0000','a1k68000000x1b5AAA','2022-11-28','11:00:00.000Z','2022-11-28T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(24,'ISD-24','Wednesday','Tentative','2022-12-05','12:00:00.000Z','2022-12-05T02:00:00.000+0000','a1k68000000x1b5AAA','2022-12-05','11:00:00.000Z','2022-12-05T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(25,'ISD-25','Wednesday','Tentative','2022-12-12','12:00:00.000Z','2022-12-12T02:00:00.000+0000','a1k68000000x1b5AAA','2022-12-12','11:00:00.000Z','2022-12-12T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(26,'ISD-26','Wednesday','Tentative','2022-12-19','12:00:00.000Z','2022-12-19T02:00:00.000+0000','a1k68000000x1b5AAA','2022-12-19','11:00:00.000Z','2022-12-19T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(27,'ISD-27','Wednesday','Tentative','2022-12-26','12:00:00.000Z','2022-12-26T02:00:00.000+0000','a1k68000000x1b5AAA','2022-12-26','11:00:00.000Z','2022-12-26T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(28,'ISD-28','Wednesday','Tentative','2023-01-02','12:00:00.000Z','2023-01-02T02:00:00.000+0000','a1k68000000x1b5AAA','2023-01-02','11:00:00.000Z','2023-01-02T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(29,'ISD-29','Wednesday','Tentative','2023-01-09','12:00:00.000Z','2023-01-09T02:00:00.000+0000','a1k68000000x1b5AAA','2023-01-09','11:00:00.000Z','2023-01-09T01:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(30,'ISD-30','Wednesday','Tentative','2023-01-16','12:00:00.000Z','2023-01-16T01:00:00.000+0000','a1k68000000x1b5AAA','2023-01-16','11:00:00.000Z','2023-01-16T00:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(31,'ISD-31','Wednesday','Tentative','2023-01-23','12:00:00.000Z','2023-01-23T01:00:00.000+0000','a1k68000000x1b5AAA','2023-01-23','11:00:00.000Z','2023-01-23T00:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(32,'ISD-32','Wednesday','Tentative','2023-01-30','12:00:00.000Z','2023-01-30T01:00:00.000+0000','a1k68000000x1b5AAA','2023-01-30','11:00:00.000Z','2023-01-30T00:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(33,'ISD-33','Wednesday','Tentative','2023-02-06','12:00:00.000Z','2023-02-06T01:00:00.000+0000','a1k68000000x1b5AAA','2023-02-06','11:00:00.000Z','2023-02-06T00:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(34,'ISD-34','Wednesday','Tentative','2023-02-13','12:00:00.000Z','2023-02-13T01:00:00.000+0000','a1k68000000x1b5AAA','2023-02-13','11:00:00.000Z','2023-02-13T00:00:00.000+0000','Good','Allocated','False','14','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(35,'ISD-35','Monday','Tentative','2022-10-08','14:00:00.000Z','2022-10-08T04:00:00.000+0000','a1k68000000x1b4AAA','2022-10-08','13:00:00.000Z','2022-10-08T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(36,'ISD-36','Monday','Tentative','2022-10-15','14:00:00.000Z','2022-10-15T04:00:00.000+0000','a1k68000000x1b4AAA','2022-10-15','13:00:00.000Z','2022-10-15T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(37,'ISD-37','Monday','Tentative','2022-10-22','14:00:00.000Z','2022-10-22T04:00:00.000+0000','a1k68000000x1b4AAA','2022-10-22','13:00:00.000Z','2022-10-22T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(38,'ISD-38','Monday','Tentative','2022-10-29','14:00:00.000Z','2022-10-29T04:00:00.000+0000','a1k68000000x1b4AAA','2022-10-29','13:00:00.000Z','2022-10-29T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(39,'ISD-39','Monday','Tentative','2022-11-05','14:00:00.000Z','2022-11-05T04:00:00.000+0000','a1k68000000x1b4AAA','2022-11-05','13:00:00.000Z','2022-11-05T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(40,'ISD-40','Monday','Tentative','2022-11-12','14:00:00.000Z','2022-11-12T04:00:00.000+0000','a1k68000000x1b4AAA','2022-11-12','13:00:00.000Z','2022-11-12T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(41,'ISD-41','Monday','Tentative','2022-11-19','14:00:00.000Z','2022-11-19T04:00:00.000+0000','a1k68000000x1b4AAA','2022-11-19','13:00:00.000Z','2022-11-19T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(42,'ISD-42','Monday','Tentative','2022-11-26','14:00:00.000Z','2022-11-26T04:00:00.000+0000','a1k68000000x1b4AAA','2022-11-26','13:00:00.000Z','2022-11-26T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(43,'ISD-43','Monday','Tentative','2022-12-03','14:00:00.000Z','2022-12-03T04:00:00.000+0000','a1k68000000x1b4AAA','2022-12-03','13:00:00.000Z','2022-12-03T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(44,'ISD-44','Monday','Tentative','2022-12-10','14:00:00.000Z','2022-12-10T04:00:00.000+0000','a1k68000000x1b4AAA','2022-12-10','13:00:00.000Z','2022-12-10T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(45,'ISD-45','Monday','Tentative','2022-12-17','14:00:00.000Z','2022-12-17T04:00:00.000+0000','a1k68000000x1b4AAA','2022-12-17','13:00:00.000Z','2022-12-17T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(46,'ISD-46','Monday','Tentative','2022-12-24','14:00:00.000Z','2022-12-24T04:00:00.000+0000','a1k68000000x1b4AAA','2022-12-24','13:00:00.000Z','2022-12-24T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(47,'ISD-47','Monday','Tentative','2022-12-31','14:00:00.000Z','2022-12-31T04:00:00.000+0000','a1k68000000x1b4AAA','2022-12-31','13:00:00.000Z','2022-12-31T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(48,'ISD-48','Monday','Tentative','2023-01-07','14:00:00.000Z','2023-01-07T04:00:00.000+0000','a1k68000000x1b4AAA','2023-01-07','13:00:00.000Z','2023-01-07T03:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(49,'ISD-49','Monday','Tentative','2023-01-14','14:00:00.000Z','2023-01-14T03:00:00.000+0000','a1k68000000x1b4AAA','2023-01-14','13:00:00.000Z','2023-01-14T02:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(50,'ISD-50','Monday','Tentative','2023-01-21','14:00:00.000Z','2023-01-21T03:00:00.000+0000','a1k68000000x1b4AAA','2023-01-21','13:00:00.000Z','2023-01-21T02:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(51,'ISD-51','Monday','Tentative','2023-01-28','14:00:00.000Z','2023-01-28T03:00:00.000+0000','a1k68000000x1b4AAA','2023-01-28','13:00:00.000Z','2023-01-28T02:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(52,'ISD-52','Monday','Tentative','2023-02-04','14:00:00.000Z','2023-02-04T03:00:00.000+0000','a1k68000000x1b4AAA','2023-02-04','13:00:00.000Z','2023-02-04T02:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(53,'ISD-53','Monday','Tentative','2023-02-11','14:00:00.000Z','2023-02-11T03:00:00.000+0000','a1k68000000x1b4AAA','2023-02-11','13:00:00.000Z','2023-02-11T02:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(54,'ISD-54','Monday','Tentative','2023-02-18','14:00:00.000Z','2023-02-18T03:00:00.000+0000','a1k68000000x1b4AAA','2023-02-18','13:00:00.000Z','2023-02-18T02:00:00.000+0000','Good','Allocated','False','14','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(55,'ISD-55','Tuesday','Tentative','2023-04-23','11:00:00.000Z','2023-04-23T00:00:00.000+0000','a1k68000000x1b3AAA','2023-04-23','10:00:00.000Z','2023-04-22T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(56,'ISD-56','Tuesday','Tentative','2023-04-30','11:00:00.000Z','2023-04-30T00:00:00.000+0000','a1k68000000x1b3AAA','2023-04-30','10:00:00.000Z','2023-04-29T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(57,'ISD-57','Tuesday','Tentative','2023-05-07','11:00:00.000Z','2023-05-07T00:00:00.000+0000','a1k68000000x1b3AAA','2023-05-07','10:00:00.000Z','2023-05-06T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(58,'ISD-58','Tuesday','Tentative','2023-05-14','11:00:00.000Z','2023-05-14T00:00:00.000+0000','a1k68000000x1b3AAA','2023-05-14','10:00:00.000Z','2023-05-13T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(59,'ISD-59','Tuesday','Tentative','2023-05-21','11:00:00.000Z','2023-05-21T00:00:00.000+0000','a1k68000000x1b3AAA','2023-05-21','10:00:00.000Z','2023-05-20T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(60,'ISD-60','Tuesday','Tentative','2023-05-28','11:00:00.000Z','2023-05-28T00:00:00.000+0000','a1k68000000x1b3AAA','2023-05-28','10:00:00.000Z','2023-05-27T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(61,'ISD-61','Tuesday','Tentative','2023-06-04','11:00:00.000Z','2023-06-04T00:00:00.000+0000','a1k68000000x1b3AAA','2023-06-04','10:00:00.000Z','2023-06-03T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(62,'ISD-62','Tuesday','Tentative','2023-06-11','11:00:00.000Z','2023-06-11T00:00:00.000+0000','a1k68000000x1b3AAA','2023-06-11','10:00:00.000Z','2023-06-10T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(63,'ISD-63','Tuesday','Tentative','2023-06-18','11:00:00.000Z','2023-06-18T00:00:00.000+0000','a1k68000000x1b3AAA','2023-06-18','10:00:00.000Z','2023-06-17T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(64,'ISD-64','Tuesday','Tentative','2023-06-25','11:00:00.000Z','2023-06-25T00:00:00.000+0000','a1k68000000x1b3AAA','2023-06-25','10:00:00.000Z','2023-06-24T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(65,'ISD-65','Tuesday','Tentative','2023-07-02','11:00:00.000Z','2023-07-02T00:00:00.000+0000','a1k68000000x1b3AAA','2023-07-02','10:00:00.000Z','2023-07-01T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(66,'ISD-66','Tuesday','Tentative','2023-07-09','11:00:00.000Z','2023-07-09T00:00:00.000+0000','a1k68000000x1b3AAA','2023-07-09','10:00:00.000Z','2023-07-08T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(67,'ISD-67','Tuesday','Tentative','2023-07-16','11:00:00.000Z','2023-07-16T00:00:00.000+0000','a1k68000000x1b3AAA','2023-07-16','10:00:00.000Z','2023-07-15T23:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(68,'ISD-68','Tuesday','Tentative','2023-07-23','11:00:00.000Z','2023-07-23T01:00:00.000+0000','a1k68000000x1b3AAA','2023-07-23','10:00:00.000Z','2023-07-23T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(69,'ISD-69','Tuesday','Tentative','2023-07-30','11:00:00.000Z','2023-07-30T01:00:00.000+0000','a1k68000000x1b3AAA','2023-07-30','10:00:00.000Z','2023-07-30T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(70,'ISD-70','Tuesday','Tentative','2023-08-06','11:00:00.000Z','2023-08-06T01:00:00.000+0000','a1k68000000x1b3AAA','2023-08-06','10:00:00.000Z','2023-08-06T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(71,'ISD-71','Tuesday','Tentative','2023-08-13','11:00:00.000Z','2023-08-13T01:00:00.000+0000','a1k68000000x1b3AAA','2023-08-13','10:00:00.000Z','2023-08-13T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(72,'ISD-72','Tuesday','Tentative','2023-08-20','11:00:00.000Z','2023-08-20T01:00:00.000+0000','a1k68000000x1b3AAA','2023-08-20','10:00:00.000Z','2023-08-20T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(73,'ISD-73','Tuesday','Tentative','2023-08-27','11:00:00.000Z','2023-08-27T01:00:00.000+0000','a1k68000000x1b3AAA','2023-08-27','10:00:00.000Z','2023-08-27T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(74,'ISD-74','Tuesday','Tentative','2023-09-03','11:00:00.000Z','2023-09-03T01:00:00.000+0000','a1k68000000x1b3AAA','2023-09-03','10:00:00.000Z','2023-09-03T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(75,'ISD-75','Tuesday','Tentative','2023-09-10','11:00:00.000Z','2023-09-10T01:00:00.000+0000','a1k68000000x1b3AAA','2023-09-10','10:00:00.000Z','2023-09-10T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(76,'ISD-76','Tuesday','Tentative','2023-09-17','11:00:00.000Z','2023-09-17T01:00:00.000+0000','a1k68000000x1b3AAA','2023-09-17','10:00:00.000Z','2023-09-17T00:00:00.000+0000','Good','Allocated','False','14','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(77,'ISD-77','Monday','Tentative','2023-04-22','17:00:00.000Z','2023-04-22T06:00:00.000+0000','a1k68000000x1b2AAA','2023-04-22','16:00:00.000Z','2023-04-22T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(78,'ISD-78','Monday','Tentative','2023-04-29','17:00:00.000Z','2023-04-29T06:00:00.000+0000','a1k68000000x1b2AAA','2023-04-29','16:00:00.000Z','2023-04-29T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(79,'ISD-79','Monday','Tentative','2023-05-06','17:00:00.000Z','2023-05-06T06:00:00.000+0000','a1k68000000x1b2AAA','2023-05-06','16:00:00.000Z','2023-05-06T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(80,'ISD-80','Monday','Tentative','2023-05-13','17:00:00.000Z','2023-05-13T06:00:00.000+0000','a1k68000000x1b2AAA','2023-05-13','16:00:00.000Z','2023-05-13T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(81,'ISD-81','Monday','Tentative','2023-05-20','17:00:00.000Z','2023-05-20T06:00:00.000+0000','a1k68000000x1b2AAA','2023-05-20','16:00:00.000Z','2023-05-20T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(82,'ISD-82','Monday','Tentative','2023-05-27','17:00:00.000Z','2023-05-27T06:00:00.000+0000','a1k68000000x1b2AAA','2023-05-27','16:00:00.000Z','2023-05-27T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(83,'ISD-83','Monday','Tentative','2023-06-03','17:00:00.000Z','2023-06-03T06:00:00.000+0000','a1k68000000x1b2AAA','2023-06-03','16:00:00.000Z','2023-06-03T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(84,'ISD-84','Monday','Tentative','2023-06-10','17:00:00.000Z','2023-06-10T06:00:00.000+0000','a1k68000000x1b2AAA','2023-06-10','16:00:00.000Z','2023-06-10T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(85,'ISD-85','Monday','Tentative','2023-06-17','17:00:00.000Z','2023-06-17T06:00:00.000+0000','a1k68000000x1b2AAA','2023-06-17','16:00:00.000Z','2023-06-17T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(86,'ISD-86','Monday','Tentative','2023-06-24','17:00:00.000Z','2023-06-24T06:00:00.000+0000','a1k68000000x1b2AAA','2023-06-24','16:00:00.000Z','2023-06-24T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(87,'ISD-87','Monday','Tentative','2023-07-01','17:00:00.000Z','2023-07-01T06:00:00.000+0000','a1k68000000x1b2AAA','2023-07-01','16:00:00.000Z','2023-07-01T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(88,'ISD-88','Monday','Tentative','2023-07-08','17:00:00.000Z','2023-07-08T06:00:00.000+0000','a1k68000000x1b2AAA','2023-07-08','16:00:00.000Z','2023-07-08T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(89,'ISD-89','Monday','Tentative','2023-07-15','17:00:00.000Z','2023-07-15T06:00:00.000+0000','a1k68000000x1b2AAA','2023-07-15','16:00:00.000Z','2023-07-15T05:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(90,'ISD-90','Monday','Tentative','2023-07-22','17:00:00.000Z','2023-07-22T07:00:00.000+0000','a1k68000000x1b2AAA','2023-07-22','16:00:00.000Z','2023-07-22T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(91,'ISD-91','Monday','Tentative','2023-07-29','17:00:00.000Z','2023-07-29T07:00:00.000+0000','a1k68000000x1b2AAA','2023-07-29','16:00:00.000Z','2023-07-29T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(92,'ISD-92','Monday','Tentative','2023-08-05','17:00:00.000Z','2023-08-05T07:00:00.000+0000','a1k68000000x1b2AAA','2023-08-05','16:00:00.000Z','2023-08-05T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(93,'ISD-93','Monday','Tentative','2023-08-12','17:00:00.000Z','2023-08-12T07:00:00.000+0000','a1k68000000x1b2AAA','2023-08-12','16:00:00.000Z','2023-08-12T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(94,'ISD-94','Monday','Tentative','2023-08-19','17:00:00.000Z','2023-08-19T07:00:00.000+0000','a1k68000000x1b2AAA','2023-08-19','16:00:00.000Z','2023-08-19T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(95,'ISD-95','Monday','Tentative','2023-08-26','17:00:00.000Z','2023-08-26T07:00:00.000+0000','a1k68000000x1b2AAA','2023-08-26','16:00:00.000Z','2023-08-26T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(96,'ISD-96','Monday','Tentative','2023-09-02','17:00:00.000Z','2023-09-02T07:00:00.000+0000','a1k68000000x1b2AAA','2023-09-02','16:00:00.000Z','2023-09-02T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(97,'ISD-97','Monday','Tentative','2023-09-09','17:00:00.000Z','2023-09-09T07:00:00.000+0000','a1k68000000x1b2AAA','2023-09-09','16:00:00.000Z','2023-09-09T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(98,'ISD-98','Monday','Tentative','2023-09-16','17:00:00.000Z','2023-09-16T07:00:00.000+0000','a1k68000000x1b2AAA','2023-09-16','16:00:00.000Z','2023-09-16T06:00:00.000+0000','Good','Allocated','False','14','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(99,'ISD-99','Monday','Tentative','2022-07-23','11:00:00.000Z','2022-07-23T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-07-23','10:00:00.000Z','2022-07-23T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(100,'ISD-100','Monday','Tentative','2022-07-30','11:00:00.000Z','2022-07-30T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-07-30','10:00:00.000Z','2022-07-30T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(101,'ISD-101','Monday','Tentative','2022-08-06','11:00:00.000Z','2022-08-06T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-08-06','10:00:00.000Z','2022-08-06T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(102,'ISD-102','Monday','Tentative','2022-08-13','11:00:00.000Z','2022-08-13T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-08-13','10:00:00.000Z','2022-08-13T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(103,'ISD-103','Monday','Tentative','2022-08-20','11:00:00.000Z','2022-08-20T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-08-20','10:00:00.000Z','2022-08-20T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(104,'ISD-104','Monday','Tentative','2022-08-27','11:00:00.000Z','2022-08-27T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-08-27','10:00:00.000Z','2022-08-27T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(105,'ISD-105','Monday','Tentative','2022-09-03','11:00:00.000Z','2022-09-03T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-09-03','10:00:00.000Z','2022-09-03T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(106,'ISD-106','Monday','Tentative','2022-09-10','11:00:00.000Z','2022-09-10T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-09-10','10:00:00.000Z','2022-09-10T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(107,'ISD-107','Monday','Tentative','2022-09-17','11:00:00.000Z','2022-09-17T01:00:00.000+0000','a1k68000000x1bVAAQ','2022-09-17','10:00:00.000Z','2022-09-17T00:00:00.000+0000','Good','Allocated','False','14','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(108,'ISD-108','Monday','Tentative','2022-10-08','16:00:00.000Z','2022-10-08T06:00:00.000+0000','a1k68000000x1b6AAA','2022-10-08','15:00:00.000Z','2022-10-08T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(109,'ISD-109','Monday','Tentative','2022-10-15','16:00:00.000Z','2022-10-15T06:00:00.000+0000','a1k68000000x1b6AAA','2022-10-15','15:00:00.000Z','2022-10-15T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(110,'ISD-110','Monday','Tentative','2022-10-22','16:00:00.000Z','2022-10-22T06:00:00.000+0000','a1k68000000x1b6AAA','2022-10-22','15:00:00.000Z','2022-10-22T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(111,'ISD-111','Monday','Tentative','2022-10-29','16:00:00.000Z','2022-10-29T06:00:00.000+0000','a1k68000000x1b6AAA','2022-10-29','15:00:00.000Z','2022-10-29T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(112,'ISD-112','Monday','Tentative','2022-11-05','16:00:00.000Z','2022-11-05T06:00:00.000+0000','a1k68000000x1b6AAA','2022-11-05','15:00:00.000Z','2022-11-05T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(113,'ISD-113','Monday','Tentative','2022-11-12','16:00:00.000Z','2022-11-12T06:00:00.000+0000','a1k68000000x1b6AAA','2022-11-12','15:00:00.000Z','2022-11-12T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(114,'ISD-114','Monday','Tentative','2022-11-19','16:00:00.000Z','2022-11-19T06:00:00.000+0000','a1k68000000x1b6AAA','2022-11-19','15:00:00.000Z','2022-11-19T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(115,'ISD-115','Monday','Tentative','2022-11-26','16:00:00.000Z','2022-11-26T06:00:00.000+0000','a1k68000000x1b6AAA','2022-11-26','15:00:00.000Z','2022-11-26T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(116,'ISD-116','Monday','Tentative','2022-12-03','16:00:00.000Z','2022-12-03T06:00:00.000+0000','a1k68000000x1b6AAA','2022-12-03','15:00:00.000Z','2022-12-03T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(117,'ISD-117','Monday','Tentative','2022-12-10','16:00:00.000Z','2022-12-10T06:00:00.000+0000','a1k68000000x1b6AAA','2022-12-10','15:00:00.000Z','2022-12-10T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(118,'ISD-118','Monday','Tentative','2022-12-17','16:00:00.000Z','2022-12-17T06:00:00.000+0000','a1k68000000x1b6AAA','2022-12-17','15:00:00.000Z','2022-12-17T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(119,'ISD-119','Monday','Tentative','2022-12-24','16:00:00.000Z','2022-12-24T06:00:00.000+0000','a1k68000000x1b6AAA','2022-12-24','15:00:00.000Z','2022-12-24T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(120,'ISD-120','Monday','Tentative','2022-12-31','16:00:00.000Z','2022-12-31T06:00:00.000+0000','a1k68000000x1b6AAA','2022-12-31','15:00:00.000Z','2022-12-31T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(121,'ISD-121','Monday','Tentative','2023-01-07','16:00:00.000Z','2023-01-07T06:00:00.000+0000','a1k68000000x1b6AAA','2023-01-07','15:00:00.000Z','2023-01-07T05:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(122,'ISD-122','Monday','Tentative','2023-01-14','16:00:00.000Z','2023-01-14T05:00:00.000+0000','a1k68000000x1b6AAA','2023-01-14','15:00:00.000Z','2023-01-14T04:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(123,'ISD-123','Monday','Tentative','2023-01-21','16:00:00.000Z','2023-01-21T05:00:00.000+0000','a1k68000000x1b6AAA','2023-01-21','15:00:00.000Z','2023-01-21T04:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(124,'ISD-124','Monday','Tentative','2023-01-28','16:00:00.000Z','2023-01-28T05:00:00.000+0000','a1k68000000x1b6AAA','2023-01-28','15:00:00.000Z','2023-01-28T04:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(125,'ISD-125','Monday','Tentative','2023-02-04','16:00:00.000Z','2023-02-04T05:00:00.000+0000','a1k68000000x1b6AAA','2023-02-04','15:00:00.000Z','2023-02-04T04:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(126,'ISD-126','Monday','Tentative','2023-02-11','16:00:00.000Z','2023-02-11T05:00:00.000+0000','a1k68000000x1b6AAA','2023-02-11','15:00:00.000Z','2023-02-11T04:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(127,'ISD-127','Monday','Tentative','2023-02-18','16:00:00.000Z','2023-02-18T05:00:00.000+0000','a1k68000000x1b6AAA','2023-02-18','15:00:00.000Z','2023-02-18T04:00:00.000+0000','Good','Allocated','False','14','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(128,'ISD-128','Wednesday','Tentative','2022-07-25','10:00:00.000Z','2022-07-25T00:00:00.000+0000','a1k68000000x1avAAA','2022-07-25','09:00:00.000Z','2022-07-24T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(129,'ISD-129','Wednesday','Tentative','2022-08-01','10:00:00.000Z','2022-08-01T00:00:00.000+0000','a1k68000000x1avAAA','2022-08-01','09:00:00.000Z','2022-07-31T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(130,'ISD-130','Wednesday','Tentative','2022-08-08','10:00:00.000Z','2022-08-08T00:00:00.000+0000','a1k68000000x1avAAA','2022-08-08','09:00:00.000Z','2022-08-07T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(131,'ISD-131','Wednesday','Tentative','2022-08-15','10:00:00.000Z','2022-08-15T00:00:00.000+0000','a1k68000000x1avAAA','2022-08-15','09:00:00.000Z','2022-08-14T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(132,'ISD-132','Wednesday','Tentative','2022-08-22','10:00:00.000Z','2022-08-22T00:00:00.000+0000','a1k68000000x1avAAA','2022-08-22','09:00:00.000Z','2022-08-21T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(133,'ISD-133','Wednesday','Tentative','2022-08-29','10:00:00.000Z','2022-08-29T00:00:00.000+0000','a1k68000000x1avAAA','2022-08-29','09:00:00.000Z','2022-08-28T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(134,'ISD-134','Wednesday','Tentative','2022-09-05','10:00:00.000Z','2022-09-05T00:00:00.000+0000','a1k68000000x1avAAA','2022-09-05','09:00:00.000Z','2022-09-04T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(135,'ISD-135','Wednesday','Tentative','2022-09-12','10:00:00.000Z','2022-09-12T00:00:00.000+0000','a1k68000000x1avAAA','2022-09-12','09:00:00.000Z','2022-09-11T23:00:00.000+0000','Good','Allocated','False','14','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(136,'ISD-136','Tuesday','Tentative','2022-07-24','17:00:00.000Z','2022-07-24T07:00:00.000+0000','a1k68000000x1b0AAA','2022-07-24','16:00:00.000Z','2022-07-24T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(137,'ISD-137','Tuesday','Tentative','2022-07-31','17:00:00.000Z','2022-07-31T07:00:00.000+0000','a1k68000000x1b0AAA','2022-07-31','16:00:00.000Z','2022-07-31T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(138,'ISD-138','Tuesday','Tentative','2022-08-07','17:00:00.000Z','2022-08-07T07:00:00.000+0000','a1k68000000x1b0AAA','2022-08-07','16:00:00.000Z','2022-08-07T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(139,'ISD-139','Tuesday','Tentative','2022-08-14','17:00:00.000Z','2022-08-14T07:00:00.000+0000','a1k68000000x1b0AAA','2022-08-14','16:00:00.000Z','2022-08-14T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(140,'ISD-140','Tuesday','Tentative','2022-08-21','17:00:00.000Z','2022-08-21T07:00:00.000+0000','a1k68000000x1b0AAA','2022-08-21','16:00:00.000Z','2022-08-21T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(141,'ISD-141','Tuesday','Tentative','2022-08-28','17:00:00.000Z','2022-08-28T07:00:00.000+0000','a1k68000000x1b0AAA','2022-08-28','16:00:00.000Z','2022-08-28T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(142,'ISD-142','Tuesday','Tentative','2022-09-04','17:00:00.000Z','2022-09-04T07:00:00.000+0000','a1k68000000x1b0AAA','2022-09-04','16:00:00.000Z','2022-09-04T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(143,'ISD-143','Tuesday','Tentative','2022-09-11','17:00:00.000Z','2022-09-11T07:00:00.000+0000','a1k68000000x1b0AAA','2022-09-11','16:00:00.000Z','2022-09-11T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(144,'ISD-144','Tuesday','Tentative','2022-09-18','17:00:00.000Z','2022-09-18T07:00:00.000+0000','a1k68000000x1b0AAA','2022-09-18','16:00:00.000Z','2022-09-18T06:00:00.000+0000','Good','Allocated','False','14','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(145,'ISD-145','Wednesday','Tentative','2022-10-03','14:00:00.000Z','2022-10-03T04:00:00.000+0000','a1k68000000x1b1AAA','2022-10-03','13:00:00.000Z','2022-10-03T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(146,'ISD-146','Wednesday','Tentative','2022-10-10','14:00:00.000Z','2022-10-10T04:00:00.000+0000','a1k68000000x1b1AAA','2022-10-10','13:00:00.000Z','2022-10-10T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(147,'ISD-147','Wednesday','Tentative','2022-10-17','14:00:00.000Z','2022-10-17T04:00:00.000+0000','a1k68000000x1b1AAA','2022-10-17','13:00:00.000Z','2022-10-17T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(148,'ISD-148','Wednesday','Tentative','2022-10-24','14:00:00.000Z','2022-10-24T04:00:00.000+0000','a1k68000000x1b1AAA','2022-10-24','13:00:00.000Z','2022-10-24T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(149,'ISD-149','Wednesday','Tentative','2022-10-31','14:00:00.000Z','2022-10-31T04:00:00.000+0000','a1k68000000x1b1AAA','2022-10-31','13:00:00.000Z','2022-10-31T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(150,'ISD-150','Wednesday','Tentative','2022-11-07','14:00:00.000Z','2022-11-07T04:00:00.000+0000','a1k68000000x1b1AAA','2022-11-07','13:00:00.000Z','2022-11-07T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(151,'ISD-151','Wednesday','Tentative','2022-11-14','14:00:00.000Z','2022-11-14T04:00:00.000+0000','a1k68000000x1b1AAA','2022-11-14','13:00:00.000Z','2022-11-14T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(152,'ISD-152','Wednesday','Tentative','2022-11-21','14:00:00.000Z','2022-11-21T04:00:00.000+0000','a1k68000000x1b1AAA','2022-11-21','13:00:00.000Z','2022-11-21T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(153,'ISD-153','Wednesday','Tentative','2022-11-28','14:00:00.000Z','2022-11-28T04:00:00.000+0000','a1k68000000x1b1AAA','2022-11-28','13:00:00.000Z','2022-11-28T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(154,'ISD-154','Wednesday','Tentative','2022-12-05','14:00:00.000Z','2022-12-05T04:00:00.000+0000','a1k68000000x1b1AAA','2022-12-05','13:00:00.000Z','2022-12-05T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(155,'ISD-155','Wednesday','Tentative','2022-12-12','14:00:00.000Z','2022-12-12T04:00:00.000+0000','a1k68000000x1b1AAA','2022-12-12','13:00:00.000Z','2022-12-12T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(156,'ISD-156','Wednesday','Tentative','2022-12-19','14:00:00.000Z','2022-12-19T04:00:00.000+0000','a1k68000000x1b1AAA','2022-12-19','13:00:00.000Z','2022-12-19T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(157,'ISD-157','Wednesday','Tentative','2022-12-26','14:00:00.000Z','2022-12-26T04:00:00.000+0000','a1k68000000x1b1AAA','2022-12-26','13:00:00.000Z','2022-12-26T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(158,'ISD-158','Wednesday','Tentative','2023-01-02','14:00:00.000Z','2023-01-02T04:00:00.000+0000','a1k68000000x1b1AAA','2023-01-02','13:00:00.000Z','2023-01-02T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(159,'ISD-159','Wednesday','Tentative','2023-01-09','14:00:00.000Z','2023-01-09T04:00:00.000+0000','a1k68000000x1b1AAA','2023-01-09','13:00:00.000Z','2023-01-09T03:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(160,'ISD-160','Wednesday','Tentative','2023-01-16','14:00:00.000Z','2023-01-16T03:00:00.000+0000','a1k68000000x1b1AAA','2023-01-16','13:00:00.000Z','2023-01-16T02:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(161,'ISD-161','Wednesday','Tentative','2023-01-23','14:00:00.000Z','2023-01-23T03:00:00.000+0000','a1k68000000x1b1AAA','2023-01-23','13:00:00.000Z','2023-01-23T02:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(162,'ISD-162','Wednesday','Tentative','2023-01-30','14:00:00.000Z','2023-01-30T03:00:00.000+0000','a1k68000000x1b1AAA','2023-01-30','13:00:00.000Z','2023-01-30T02:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(163,'ISD-163','Wednesday','Tentative','2023-02-06','14:00:00.000Z','2023-02-06T03:00:00.000+0000','a1k68000000x1b1AAA','2023-02-06','13:00:00.000Z','2023-02-06T02:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(164,'ISD-164','Wednesday','Tentative','2023-02-13','14:00:00.000Z','2023-02-13T03:00:00.000+0000','a1k68000000x1b1AAA','2023-02-13','13:00:00.000Z','2023-02-13T02:00:00.000+0000','Good','Allocated','False','14','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(165,'ISD-165','Wednesday','Tentative','2022-10-03','11:00:00.000Z','2022-10-03T01:00:00.000+0000','a1k68000000x1awAAA','2022-10-03','10:00:00.000Z','2022-10-03T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(166,'ISD-166','Wednesday','Tentative','2022-10-10','11:00:00.000Z','2022-10-10T01:00:00.000+0000','a1k68000000x1awAAA','2022-10-10','10:00:00.000Z','2022-10-10T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(167,'ISD-167','Wednesday','Tentative','2022-10-17','11:00:00.000Z','2022-10-17T01:00:00.000+0000','a1k68000000x1awAAA','2022-10-17','10:00:00.000Z','2022-10-17T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(168,'ISD-168','Wednesday','Tentative','2022-10-24','11:00:00.000Z','2022-10-24T01:00:00.000+0000','a1k68000000x1awAAA','2022-10-24','10:00:00.000Z','2022-10-24T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(169,'ISD-169','Wednesday','Tentative','2022-10-31','11:00:00.000Z','2022-10-31T01:00:00.000+0000','a1k68000000x1awAAA','2022-10-31','10:00:00.000Z','2022-10-31T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(170,'ISD-170','Wednesday','Tentative','2022-11-07','11:00:00.000Z','2022-11-07T01:00:00.000+0000','a1k68000000x1awAAA','2022-11-07','10:00:00.000Z','2022-11-07T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(171,'ISD-171','Wednesday','Tentative','2022-11-14','11:00:00.000Z','2022-11-14T01:00:00.000+0000','a1k68000000x1awAAA','2022-11-14','10:00:00.000Z','2022-11-14T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(172,'ISD-172','Wednesday','Tentative','2022-11-21','11:00:00.000Z','2022-11-21T01:00:00.000+0000','a1k68000000x1awAAA','2022-11-21','10:00:00.000Z','2022-11-21T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(173,'ISD-173','Wednesday','Tentative','2022-11-28','11:00:00.000Z','2022-11-28T01:00:00.000+0000','a1k68000000x1awAAA','2022-11-28','10:00:00.000Z','2022-11-28T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(174,'ISD-174','Wednesday','Tentative','2022-12-05','11:00:00.000Z','2022-12-05T01:00:00.000+0000','a1k68000000x1awAAA','2022-12-05','10:00:00.000Z','2022-12-05T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(175,'ISD-175','Wednesday','Tentative','2022-12-12','11:00:00.000Z','2022-12-12T01:00:00.000+0000','a1k68000000x1awAAA','2022-12-12','10:00:00.000Z','2022-12-12T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(176,'ISD-176','Wednesday','Tentative','2022-12-19','11:00:00.000Z','2022-12-19T01:00:00.000+0000','a1k68000000x1awAAA','2022-12-19','10:00:00.000Z','2022-12-19T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(177,'ISD-177','Wednesday','Tentative','2022-12-26','11:00:00.000Z','2022-12-26T01:00:00.000+0000','a1k68000000x1awAAA','2022-12-26','10:00:00.000Z','2022-12-26T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(178,'ISD-178','Wednesday','Tentative','2023-01-02','11:00:00.000Z','2023-01-02T01:00:00.000+0000','a1k68000000x1awAAA','2023-01-02','10:00:00.000Z','2023-01-02T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(179,'ISD-179','Wednesday','Tentative','2023-01-09','11:00:00.000Z','2023-01-09T01:00:00.000+0000','a1k68000000x1awAAA','2023-01-09','10:00:00.000Z','2023-01-09T00:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(180,'ISD-180','Wednesday','Tentative','2023-01-16','11:00:00.000Z','2023-01-16T00:00:00.000+0000','a1k68000000x1awAAA','2023-01-16','10:00:00.000Z','2023-01-15T23:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(181,'ISD-181','Wednesday','Tentative','2023-01-23','11:00:00.000Z','2023-01-23T00:00:00.000+0000','a1k68000000x1awAAA','2023-01-23','10:00:00.000Z','2023-01-22T23:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(182,'ISD-182','Wednesday','Tentative','2023-01-30','11:00:00.000Z','2023-01-30T00:00:00.000+0000','a1k68000000x1awAAA','2023-01-30','10:00:00.000Z','2023-01-29T23:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(183,'ISD-183','Wednesday','Tentative','2023-02-06','11:00:00.000Z','2023-02-06T00:00:00.000+0000','a1k68000000x1awAAA','2023-02-06','10:00:00.000Z','2023-02-05T23:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(184,'ISD-184','Wednesday','Tentative','2023-02-13','11:00:00.000Z','2023-02-13T00:00:00.000+0000','a1k68000000x1awAAA','2023-02-13','10:00:00.000Z','2023-02-12T23:00:00.000+0000','Good','Allocated','False','14','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(185,'ISD-185','Wednesday','Tentative','2022-10-03','13:00:00.000Z','2022-10-03T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-10-03','12:00:00.000Z','2022-10-03T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(186,'ISD-186','Wednesday','Tentative','2022-10-10','13:00:00.000Z','2022-10-10T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-10-10','12:00:00.000Z','2022-10-10T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(187,'ISD-187','Wednesday','Tentative','2022-10-17','13:00:00.000Z','2022-10-17T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-10-17','12:00:00.000Z','2022-10-17T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(188,'ISD-188','Wednesday','Tentative','2022-10-24','13:00:00.000Z','2022-10-24T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-10-24','12:00:00.000Z','2022-10-24T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(189,'ISD-189','Wednesday','Tentative','2022-10-31','13:00:00.000Z','2022-10-31T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-10-31','12:00:00.000Z','2022-10-31T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(190,'ISD-190','Wednesday','Tentative','2022-11-07','13:00:00.000Z','2022-11-07T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-11-07','12:00:00.000Z','2022-11-07T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(191,'ISD-191','Wednesday','Tentative','2022-11-14','13:00:00.000Z','2022-11-14T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-11-14','12:00:00.000Z','2022-11-14T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(192,'ISD-192','Wednesday','Tentative','2022-11-21','13:00:00.000Z','2022-11-21T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-11-21','12:00:00.000Z','2022-11-21T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(193,'ISD-193','Wednesday','Tentative','2022-11-28','13:00:00.000Z','2022-11-28T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-11-28','12:00:00.000Z','2022-11-28T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(194,'ISD-194','Wednesday','Tentative','2022-12-05','13:00:00.000Z','2022-12-05T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-12-05','12:00:00.000Z','2022-12-05T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(195,'ISD-195','Wednesday','Tentative','2022-12-12','13:00:00.000Z','2022-12-12T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-12-12','12:00:00.000Z','2022-12-12T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(196,'ISD-196','Wednesday','Tentative','2022-12-19','13:00:00.000Z','2022-12-19T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-12-19','12:00:00.000Z','2022-12-19T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(197,'ISD-197','Wednesday','Tentative','2022-12-26','13:00:00.000Z','2022-12-26T03:00:00.000+0000','a1k68000000x1bLAAQ','2022-12-26','12:00:00.000Z','2022-12-26T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(198,'ISD-198','Wednesday','Tentative','2023-01-02','13:00:00.000Z','2023-01-02T03:00:00.000+0000','a1k68000000x1bLAAQ','2023-01-02','12:00:00.000Z','2023-01-02T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(199,'ISD-199','Wednesday','Tentative','2023-01-09','13:00:00.000Z','2023-01-09T03:00:00.000+0000','a1k68000000x1bLAAQ','2023-01-09','12:00:00.000Z','2023-01-09T02:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(200,'ISD-200','Wednesday','Tentative','2023-01-16','13:00:00.000Z','2023-01-16T02:00:00.000+0000','a1k68000000x1bLAAQ','2023-01-16','12:00:00.000Z','2023-01-16T01:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(201,'ISD-201','Wednesday','Tentative','2023-01-23','13:00:00.000Z','2023-01-23T02:00:00.000+0000','a1k68000000x1bLAAQ','2023-01-23','12:00:00.000Z','2023-01-23T01:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(202,'ISD-202','Wednesday','Tentative','2023-01-30','13:00:00.000Z','2023-01-30T02:00:00.000+0000','a1k68000000x1bLAAQ','2023-01-30','12:00:00.000Z','2023-01-30T01:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(203,'ISD-203','Wednesday','Tentative','2023-02-06','13:00:00.000Z','2023-02-06T02:00:00.000+0000','a1k68000000x1bLAAQ','2023-02-06','12:00:00.000Z','2023-02-06T01:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(204,'ISD-204','Wednesday','Tentative','2023-02-13','13:00:00.000Z','2023-02-13T02:00:00.000+0000','a1k68000000x1bLAAQ','2023-02-13','12:00:00.000Z','2023-02-13T01:00:00.000+0000','Good','Allocated','False','14','46');
INSERT INTO "rio_ed__Allocation__c" VALUES(205,'ISD-205','Friday','Tentative','2022-04-27','10:00:00.000Z','2022-04-26T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-04-27','09:00:00.000Z','2022-04-26T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(206,'ISD-206','Friday','Tentative','2022-05-04','10:00:00.000Z','2022-05-03T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-05-04','09:00:00.000Z','2022-05-03T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(207,'ISD-207','Friday','Tentative','2022-05-11','10:00:00.000Z','2022-05-10T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-05-11','09:00:00.000Z','2022-05-10T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(208,'ISD-208','Friday','Tentative','2022-05-18','10:00:00.000Z','2022-05-17T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-05-18','09:00:00.000Z','2022-05-17T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(209,'ISD-209','Friday','Tentative','2022-05-25','10:00:00.000Z','2022-05-24T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-05-25','09:00:00.000Z','2022-05-24T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(210,'ISD-210','Friday','Tentative','2022-06-01','10:00:00.000Z','2022-05-31T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-06-01','09:00:00.000Z','2022-05-31T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(211,'ISD-211','Friday','Tentative','2022-06-08','10:00:00.000Z','2022-06-07T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-06-08','09:00:00.000Z','2022-06-07T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(212,'ISD-212','Friday','Tentative','2022-06-15','10:00:00.000Z','2022-06-14T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-06-15','09:00:00.000Z','2022-06-14T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(213,'ISD-213','Friday','Tentative','2022-06-22','10:00:00.000Z','2022-06-21T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-06-22','09:00:00.000Z','2022-06-21T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(214,'ISD-214','Friday','Tentative','2022-06-29','10:00:00.000Z','2022-06-28T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-06-29','09:00:00.000Z','2022-06-28T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(215,'ISD-215','Friday','Tentative','2022-07-06','10:00:00.000Z','2022-07-05T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-07-06','09:00:00.000Z','2022-07-05T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(216,'ISD-216','Friday','Tentative','2022-07-13','10:00:00.000Z','2022-07-12T23:00:00.000+0000','a1k68000000x1bYAAQ','2022-07-13','09:00:00.000Z','2022-07-12T22:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(217,'ISD-217','Friday','Tentative','2022-07-20','10:00:00.000Z','2022-07-20T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-07-20','09:00:00.000Z','2022-07-19T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(218,'ISD-218','Friday','Tentative','2022-07-27','10:00:00.000Z','2022-07-27T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-07-27','09:00:00.000Z','2022-07-26T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(219,'ISD-219','Friday','Tentative','2022-08-03','10:00:00.000Z','2022-08-03T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-08-03','09:00:00.000Z','2022-08-02T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(220,'ISD-220','Friday','Tentative','2022-08-10','10:00:00.000Z','2022-08-10T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-08-10','09:00:00.000Z','2022-08-09T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(221,'ISD-221','Friday','Tentative','2022-08-17','10:00:00.000Z','2022-08-17T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-08-17','09:00:00.000Z','2022-08-16T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(222,'ISD-222','Friday','Tentative','2022-08-24','10:00:00.000Z','2022-08-24T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-08-24','09:00:00.000Z','2022-08-23T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(223,'ISD-223','Friday','Tentative','2022-08-31','10:00:00.000Z','2022-08-31T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-08-31','09:00:00.000Z','2022-08-30T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(224,'ISD-224','Friday','Tentative','2022-09-07','10:00:00.000Z','2022-09-07T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-09-07','09:00:00.000Z','2022-09-06T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(225,'ISD-225','Friday','Tentative','2022-09-14','10:00:00.000Z','2022-09-14T00:00:00.000+0000','a1k68000000x1bYAAQ','2022-09-14','09:00:00.000Z','2022-09-13T23:00:00.000+0000','Good','Allocated','False','14','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(226,'ISD-226','Tuesday','Tentative','2022-07-24','16:00:00.000Z','2022-07-24T06:00:00.000+0000','a1k68000000x1aoAAA','2022-07-24','15:00:00.000Z','2022-07-24T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(227,'ISD-227','Tuesday','Tentative','2022-07-31','16:00:00.000Z','2022-07-31T06:00:00.000+0000','a1k68000000x1aoAAA','2022-07-31','15:00:00.000Z','2022-07-31T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(228,'ISD-228','Tuesday','Tentative','2022-08-07','16:00:00.000Z','2022-08-07T06:00:00.000+0000','a1k68000000x1aoAAA','2022-08-07','15:00:00.000Z','2022-08-07T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(229,'ISD-229','Tuesday','Tentative','2022-08-14','16:00:00.000Z','2022-08-14T06:00:00.000+0000','a1k68000000x1aoAAA','2022-08-14','15:00:00.000Z','2022-08-14T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(230,'ISD-230','Tuesday','Tentative','2022-08-21','16:00:00.000Z','2022-08-21T06:00:00.000+0000','a1k68000000x1aoAAA','2022-08-21','15:00:00.000Z','2022-08-21T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(231,'ISD-231','Tuesday','Tentative','2022-08-28','16:00:00.000Z','2022-08-28T06:00:00.000+0000','a1k68000000x1aoAAA','2022-08-28','15:00:00.000Z','2022-08-28T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(232,'ISD-232','Tuesday','Tentative','2022-09-04','16:00:00.000Z','2022-09-04T06:00:00.000+0000','a1k68000000x1aoAAA','2022-09-04','15:00:00.000Z','2022-09-04T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(233,'ISD-233','Tuesday','Tentative','2022-09-11','16:00:00.000Z','2022-09-11T06:00:00.000+0000','a1k68000000x1aoAAA','2022-09-11','15:00:00.000Z','2022-09-11T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(234,'ISD-234','Tuesday','Tentative','2022-09-18','16:00:00.000Z','2022-09-18T06:00:00.000+0000','a1k68000000x1aoAAA','2022-09-18','15:00:00.000Z','2022-09-18T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(235,'ISD-235','Tuesday','Tentative','2022-07-24','16:00:00.000Z','2022-07-24T06:00:00.000+0000','a1k68000000x1apAAA','2022-07-24','15:00:00.000Z','2022-07-24T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(236,'ISD-236','Tuesday','Tentative','2022-07-31','16:00:00.000Z','2022-07-31T06:00:00.000+0000','a1k68000000x1apAAA','2022-07-31','15:00:00.000Z','2022-07-31T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(237,'ISD-237','Tuesday','Tentative','2022-08-07','16:00:00.000Z','2022-08-07T06:00:00.000+0000','a1k68000000x1apAAA','2022-08-07','15:00:00.000Z','2022-08-07T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(238,'ISD-238','Tuesday','Tentative','2022-08-14','16:00:00.000Z','2022-08-14T06:00:00.000+0000','a1k68000000x1apAAA','2022-08-14','15:00:00.000Z','2022-08-14T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(239,'ISD-239','Tuesday','Tentative','2022-08-21','16:00:00.000Z','2022-08-21T06:00:00.000+0000','a1k68000000x1apAAA','2022-08-21','15:00:00.000Z','2022-08-21T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(240,'ISD-240','Tuesday','Tentative','2022-08-28','16:00:00.000Z','2022-08-28T06:00:00.000+0000','a1k68000000x1apAAA','2022-08-28','15:00:00.000Z','2022-08-28T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(241,'ISD-241','Tuesday','Tentative','2022-09-04','16:00:00.000Z','2022-09-04T06:00:00.000+0000','a1k68000000x1apAAA','2022-09-04','15:00:00.000Z','2022-09-04T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(242,'ISD-242','Tuesday','Tentative','2022-09-11','16:00:00.000Z','2022-09-11T06:00:00.000+0000','a1k68000000x1apAAA','2022-09-11','15:00:00.000Z','2022-09-11T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(243,'ISD-243','Tuesday','Tentative','2022-09-18','16:00:00.000Z','2022-09-18T06:00:00.000+0000','a1k68000000x1apAAA','2022-09-18','15:00:00.000Z','2022-09-18T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(244,'ISD-244','Tuesday','Tentative','2022-07-24','15:00:00.000Z','2022-07-24T05:00:00.000+0000','a1k68000000x1asAAA','2022-07-24','14:00:00.000Z','2022-07-24T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(245,'ISD-245','Tuesday','Tentative','2022-07-31','15:00:00.000Z','2022-07-31T05:00:00.000+0000','a1k68000000x1asAAA','2022-07-31','14:00:00.000Z','2022-07-31T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(246,'ISD-246','Tuesday','Tentative','2022-08-07','15:00:00.000Z','2022-08-07T05:00:00.000+0000','a1k68000000x1asAAA','2022-08-07','14:00:00.000Z','2022-08-07T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(247,'ISD-247','Tuesday','Tentative','2022-08-14','15:00:00.000Z','2022-08-14T05:00:00.000+0000','a1k68000000x1asAAA','2022-08-14','14:00:00.000Z','2022-08-14T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(248,'ISD-248','Tuesday','Tentative','2022-08-21','15:00:00.000Z','2022-08-21T05:00:00.000+0000','a1k68000000x1asAAA','2022-08-21','14:00:00.000Z','2022-08-21T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(249,'ISD-249','Tuesday','Tentative','2022-08-28','15:00:00.000Z','2022-08-28T05:00:00.000+0000','a1k68000000x1asAAA','2022-08-28','14:00:00.000Z','2022-08-28T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(250,'ISD-250','Tuesday','Tentative','2022-09-04','15:00:00.000Z','2022-09-04T05:00:00.000+0000','a1k68000000x1asAAA','2022-09-04','14:00:00.000Z','2022-09-04T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(251,'ISD-251','Tuesday','Tentative','2022-09-11','15:00:00.000Z','2022-09-11T05:00:00.000+0000','a1k68000000x1asAAA','2022-09-11','14:00:00.000Z','2022-09-11T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(252,'ISD-252','Tuesday','Tentative','2022-09-18','15:00:00.000Z','2022-09-18T05:00:00.000+0000','a1k68000000x1asAAA','2022-09-18','14:00:00.000Z','2022-09-18T04:00:00.000+0000','Good','Allocated','False','4','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(253,'ISD-253','Monday','Tentative','2022-07-23','13:00:00.000Z','2022-07-23T03:00:00.000+0000','a1k68000000x1baAAA','2022-07-23','12:00:00.000Z','2022-07-23T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(254,'ISD-254','Monday','Tentative','2022-07-30','13:00:00.000Z','2022-07-30T03:00:00.000+0000','a1k68000000x1baAAA','2022-07-30','12:00:00.000Z','2022-07-30T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(255,'ISD-255','Monday','Tentative','2022-08-06','13:00:00.000Z','2022-08-06T03:00:00.000+0000','a1k68000000x1baAAA','2022-08-06','12:00:00.000Z','2022-08-06T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(256,'ISD-256','Monday','Tentative','2022-08-13','13:00:00.000Z','2022-08-13T03:00:00.000+0000','a1k68000000x1baAAA','2022-08-13','12:00:00.000Z','2022-08-13T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(257,'ISD-257','Monday','Tentative','2022-08-20','13:00:00.000Z','2022-08-20T03:00:00.000+0000','a1k68000000x1baAAA','2022-08-20','12:00:00.000Z','2022-08-20T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(258,'ISD-258','Monday','Tentative','2022-08-27','13:00:00.000Z','2022-08-27T03:00:00.000+0000','a1k68000000x1baAAA','2022-08-27','12:00:00.000Z','2022-08-27T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(259,'ISD-259','Monday','Tentative','2022-09-03','13:00:00.000Z','2022-09-03T03:00:00.000+0000','a1k68000000x1baAAA','2022-09-03','12:00:00.000Z','2022-09-03T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(260,'ISD-260','Monday','Tentative','2022-09-10','13:00:00.000Z','2022-09-10T03:00:00.000+0000','a1k68000000x1baAAA','2022-09-10','12:00:00.000Z','2022-09-10T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(261,'ISD-261','Monday','Tentative','2022-09-17','13:00:00.000Z','2022-09-17T03:00:00.000+0000','a1k68000000x1baAAA','2022-09-17','12:00:00.000Z','2022-09-17T02:00:00.000+0000','Good','Allocated','False','14','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(262,'ISD-262','Monday','Tentative','2022-04-23','10:00:00.000Z','2022-04-22T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-04-23','09:00:00.000Z','2022-04-22T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(263,'ISD-263','Monday','Tentative','2022-04-30','10:00:00.000Z','2022-04-29T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-04-30','09:00:00.000Z','2022-04-29T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(264,'ISD-264','Monday','Tentative','2022-05-07','10:00:00.000Z','2022-05-06T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-05-07','09:00:00.000Z','2022-05-06T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(265,'ISD-265','Monday','Tentative','2022-05-14','10:00:00.000Z','2022-05-13T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-05-14','09:00:00.000Z','2022-05-13T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(266,'ISD-266','Monday','Tentative','2022-05-21','10:00:00.000Z','2022-05-20T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-05-21','09:00:00.000Z','2022-05-20T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(267,'ISD-267','Monday','Tentative','2022-05-28','10:00:00.000Z','2022-05-27T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-05-28','09:00:00.000Z','2022-05-27T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(268,'ISD-268','Monday','Tentative','2022-06-04','10:00:00.000Z','2022-06-03T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-06-04','09:00:00.000Z','2022-06-03T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(269,'ISD-269','Monday','Tentative','2022-06-11','10:00:00.000Z','2022-06-10T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-06-11','09:00:00.000Z','2022-06-10T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(270,'ISD-270','Monday','Tentative','2022-06-18','10:00:00.000Z','2022-06-17T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-06-18','09:00:00.000Z','2022-06-17T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(271,'ISD-271','Monday','Tentative','2022-06-25','10:00:00.000Z','2022-06-24T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-06-25','09:00:00.000Z','2022-06-24T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(272,'ISD-272','Monday','Tentative','2022-07-02','10:00:00.000Z','2022-07-01T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-07-02','09:00:00.000Z','2022-07-01T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(273,'ISD-273','Monday','Tentative','2022-07-09','10:00:00.000Z','2022-07-08T23:00:00.000+0000','a1k68000000x1bXAAQ','2022-07-09','09:00:00.000Z','2022-07-08T22:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(274,'ISD-274','Monday','Tentative','2022-07-16','10:00:00.000Z','2022-07-16T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-07-16','09:00:00.000Z','2022-07-15T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(275,'ISD-275','Monday','Tentative','2022-07-23','10:00:00.000Z','2022-07-23T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-07-23','09:00:00.000Z','2022-07-22T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(276,'ISD-276','Monday','Tentative','2022-07-30','10:00:00.000Z','2022-07-30T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-07-30','09:00:00.000Z','2022-07-29T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(277,'ISD-277','Monday','Tentative','2022-08-06','10:00:00.000Z','2022-08-06T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-08-06','09:00:00.000Z','2022-08-05T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(278,'ISD-278','Monday','Tentative','2022-08-13','10:00:00.000Z','2022-08-13T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-08-13','09:00:00.000Z','2022-08-12T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(279,'ISD-279','Monday','Tentative','2022-08-20','10:00:00.000Z','2022-08-20T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-08-20','09:00:00.000Z','2022-08-19T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(280,'ISD-280','Monday','Tentative','2022-08-27','10:00:00.000Z','2022-08-27T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-08-27','09:00:00.000Z','2022-08-26T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(281,'ISD-281','Monday','Tentative','2022-09-03','10:00:00.000Z','2022-09-03T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-09-03','09:00:00.000Z','2022-09-02T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(282,'ISD-282','Monday','Tentative','2022-09-10','10:00:00.000Z','2022-09-10T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-09-10','09:00:00.000Z','2022-09-09T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(283,'ISD-283','Monday','Tentative','2022-09-17','10:00:00.000Z','2022-09-17T00:00:00.000+0000','a1k68000000x1bXAAQ','2022-09-17','09:00:00.000Z','2022-09-16T23:00:00.000+0000','Good','Allocated','False','14','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(284,'ISD-284','Monday','Tentative','2022-07-23','12:00:00.000Z','2022-07-23T02:00:00.000+0000','a1k68000000x1atAAA','2022-07-23','11:00:00.000Z','2022-07-23T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(285,'ISD-285','Monday','Tentative','2022-07-30','12:00:00.000Z','2022-07-30T02:00:00.000+0000','a1k68000000x1atAAA','2022-07-30','11:00:00.000Z','2022-07-30T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(286,'ISD-286','Monday','Tentative','2022-08-06','12:00:00.000Z','2022-08-06T02:00:00.000+0000','a1k68000000x1atAAA','2022-08-06','11:00:00.000Z','2022-08-06T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(287,'ISD-287','Monday','Tentative','2022-08-13','12:00:00.000Z','2022-08-13T02:00:00.000+0000','a1k68000000x1atAAA','2022-08-13','11:00:00.000Z','2022-08-13T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(288,'ISD-288','Monday','Tentative','2022-08-20','12:00:00.000Z','2022-08-20T02:00:00.000+0000','a1k68000000x1atAAA','2022-08-20','11:00:00.000Z','2022-08-20T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(289,'ISD-289','Monday','Tentative','2022-08-27','12:00:00.000Z','2022-08-27T02:00:00.000+0000','a1k68000000x1atAAA','2022-08-27','11:00:00.000Z','2022-08-27T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(290,'ISD-290','Monday','Tentative','2022-09-03','12:00:00.000Z','2022-09-03T02:00:00.000+0000','a1k68000000x1atAAA','2022-09-03','11:00:00.000Z','2022-09-03T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(291,'ISD-291','Monday','Tentative','2022-09-10','12:00:00.000Z','2022-09-10T02:00:00.000+0000','a1k68000000x1atAAA','2022-09-10','11:00:00.000Z','2022-09-10T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(292,'ISD-292','Monday','Tentative','2022-09-17','12:00:00.000Z','2022-09-17T02:00:00.000+0000','a1k68000000x1atAAA','2022-09-17','11:00:00.000Z','2022-09-17T01:00:00.000+0000','Good','Allocated','False','14','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(293,'ISD-293','Tuesday','Tentative','2023-04-23','10:00:00.000Z','2023-04-22T23:00:00.000+0000','a1k68000000x1ayAAA','2023-04-23','09:00:00.000Z','2023-04-22T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(294,'ISD-294','Tuesday','Tentative','2023-04-30','10:00:00.000Z','2023-04-29T23:00:00.000+0000','a1k68000000x1ayAAA','2023-04-30','09:00:00.000Z','2023-04-29T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(295,'ISD-295','Tuesday','Tentative','2023-05-07','10:00:00.000Z','2023-05-06T23:00:00.000+0000','a1k68000000x1ayAAA','2023-05-07','09:00:00.000Z','2023-05-06T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(296,'ISD-296','Tuesday','Tentative','2023-05-14','10:00:00.000Z','2023-05-13T23:00:00.000+0000','a1k68000000x1ayAAA','2023-05-14','09:00:00.000Z','2023-05-13T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(297,'ISD-297','Tuesday','Tentative','2023-05-21','10:00:00.000Z','2023-05-20T23:00:00.000+0000','a1k68000000x1ayAAA','2023-05-21','09:00:00.000Z','2023-05-20T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(298,'ISD-298','Tuesday','Tentative','2023-05-28','10:00:00.000Z','2023-05-27T23:00:00.000+0000','a1k68000000x1ayAAA','2023-05-28','09:00:00.000Z','2023-05-27T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(299,'ISD-299','Tuesday','Tentative','2023-06-04','10:00:00.000Z','2023-06-03T23:00:00.000+0000','a1k68000000x1ayAAA','2023-06-04','09:00:00.000Z','2023-06-03T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(300,'ISD-300','Tuesday','Tentative','2023-06-11','10:00:00.000Z','2023-06-10T23:00:00.000+0000','a1k68000000x1ayAAA','2023-06-11','09:00:00.000Z','2023-06-10T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(301,'ISD-301','Tuesday','Tentative','2023-06-18','10:00:00.000Z','2023-06-17T23:00:00.000+0000','a1k68000000x1ayAAA','2023-06-18','09:00:00.000Z','2023-06-17T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(302,'ISD-302','Tuesday','Tentative','2023-06-25','10:00:00.000Z','2023-06-24T23:00:00.000+0000','a1k68000000x1ayAAA','2023-06-25','09:00:00.000Z','2023-06-24T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(303,'ISD-303','Tuesday','Tentative','2023-07-02','10:00:00.000Z','2023-07-01T23:00:00.000+0000','a1k68000000x1ayAAA','2023-07-02','09:00:00.000Z','2023-07-01T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(304,'ISD-304','Tuesday','Tentative','2023-07-09','10:00:00.000Z','2023-07-08T23:00:00.000+0000','a1k68000000x1ayAAA','2023-07-09','09:00:00.000Z','2023-07-08T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(305,'ISD-305','Tuesday','Tentative','2023-07-16','10:00:00.000Z','2023-07-15T23:00:00.000+0000','a1k68000000x1ayAAA','2023-07-16','09:00:00.000Z','2023-07-15T22:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(306,'ISD-306','Tuesday','Tentative','2023-07-23','10:00:00.000Z','2023-07-23T00:00:00.000+0000','a1k68000000x1ayAAA','2023-07-23','09:00:00.000Z','2023-07-22T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(307,'ISD-307','Tuesday','Tentative','2023-07-30','10:00:00.000Z','2023-07-30T00:00:00.000+0000','a1k68000000x1ayAAA','2023-07-30','09:00:00.000Z','2023-07-29T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(308,'ISD-308','Tuesday','Tentative','2023-08-06','10:00:00.000Z','2023-08-06T00:00:00.000+0000','a1k68000000x1ayAAA','2023-08-06','09:00:00.000Z','2023-08-05T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(309,'ISD-309','Tuesday','Tentative','2023-08-13','10:00:00.000Z','2023-08-13T00:00:00.000+0000','a1k68000000x1ayAAA','2023-08-13','09:00:00.000Z','2023-08-12T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(310,'ISD-310','Tuesday','Tentative','2023-08-20','10:00:00.000Z','2023-08-20T00:00:00.000+0000','a1k68000000x1ayAAA','2023-08-20','09:00:00.000Z','2023-08-19T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(311,'ISD-311','Tuesday','Tentative','2023-08-27','10:00:00.000Z','2023-08-27T00:00:00.000+0000','a1k68000000x1ayAAA','2023-08-27','09:00:00.000Z','2023-08-26T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(312,'ISD-312','Tuesday','Tentative','2023-09-03','10:00:00.000Z','2023-09-03T00:00:00.000+0000','a1k68000000x1ayAAA','2023-09-03','09:00:00.000Z','2023-09-02T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(313,'ISD-313','Tuesday','Tentative','2023-09-10','10:00:00.000Z','2023-09-10T00:00:00.000+0000','a1k68000000x1ayAAA','2023-09-10','09:00:00.000Z','2023-09-09T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(314,'ISD-314','Tuesday','Tentative','2023-09-17','10:00:00.000Z','2023-09-17T00:00:00.000+0000','a1k68000000x1ayAAA','2023-09-17','09:00:00.000Z','2023-09-16T23:00:00.000+0000','Good','Allocated','False','14','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(315,'ISD-315','Wednesday','Tentative','2022-10-03','17:00:00.000Z','2022-10-03T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-10-03','16:00:00.000Z','2022-10-03T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(316,'ISD-316','Wednesday','Tentative','2022-10-10','17:00:00.000Z','2022-10-10T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-10-10','16:00:00.000Z','2022-10-10T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(317,'ISD-317','Wednesday','Tentative','2022-10-17','17:00:00.000Z','2022-10-17T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-10-17','16:00:00.000Z','2022-10-17T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(318,'ISD-318','Wednesday','Tentative','2022-10-24','17:00:00.000Z','2022-10-24T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-10-24','16:00:00.000Z','2022-10-24T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(319,'ISD-319','Wednesday','Tentative','2022-10-31','17:00:00.000Z','2022-10-31T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-10-31','16:00:00.000Z','2022-10-31T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(320,'ISD-320','Wednesday','Tentative','2022-11-07','17:00:00.000Z','2022-11-07T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-11-07','16:00:00.000Z','2022-11-07T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(321,'ISD-321','Wednesday','Tentative','2022-11-14','17:00:00.000Z','2022-11-14T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-11-14','16:00:00.000Z','2022-11-14T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(322,'ISD-322','Wednesday','Tentative','2022-11-21','17:00:00.000Z','2022-11-21T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-11-21','16:00:00.000Z','2022-11-21T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(323,'ISD-323','Wednesday','Tentative','2022-11-28','17:00:00.000Z','2022-11-28T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-11-28','16:00:00.000Z','2022-11-28T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(324,'ISD-324','Wednesday','Tentative','2022-12-05','17:00:00.000Z','2022-12-05T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-12-05','16:00:00.000Z','2022-12-05T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(325,'ISD-325','Wednesday','Tentative','2022-12-12','17:00:00.000Z','2022-12-12T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-12-12','16:00:00.000Z','2022-12-12T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(326,'ISD-326','Wednesday','Tentative','2022-12-19','17:00:00.000Z','2022-12-19T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-12-19','16:00:00.000Z','2022-12-19T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(327,'ISD-327','Wednesday','Tentative','2022-12-26','17:00:00.000Z','2022-12-26T07:00:00.000+0000','a1k68000000x1bZAAQ','2022-12-26','16:00:00.000Z','2022-12-26T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(328,'ISD-328','Wednesday','Tentative','2023-01-02','17:00:00.000Z','2023-01-02T07:00:00.000+0000','a1k68000000x1bZAAQ','2023-01-02','16:00:00.000Z','2023-01-02T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(329,'ISD-329','Wednesday','Tentative','2023-01-09','17:00:00.000Z','2023-01-09T07:00:00.000+0000','a1k68000000x1bZAAQ','2023-01-09','16:00:00.000Z','2023-01-09T06:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(330,'ISD-330','Wednesday','Tentative','2023-01-16','17:00:00.000Z','2023-01-16T06:00:00.000+0000','a1k68000000x1bZAAQ','2023-01-16','16:00:00.000Z','2023-01-16T05:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(331,'ISD-331','Wednesday','Tentative','2023-01-23','17:00:00.000Z','2023-01-23T06:00:00.000+0000','a1k68000000x1bZAAQ','2023-01-23','16:00:00.000Z','2023-01-23T05:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(332,'ISD-332','Wednesday','Tentative','2023-01-30','17:00:00.000Z','2023-01-30T06:00:00.000+0000','a1k68000000x1bZAAQ','2023-01-30','16:00:00.000Z','2023-01-30T05:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(333,'ISD-333','Wednesday','Tentative','2023-02-06','17:00:00.000Z','2023-02-06T06:00:00.000+0000','a1k68000000x1bZAAQ','2023-02-06','16:00:00.000Z','2023-02-06T05:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(334,'ISD-334','Wednesday','Tentative','2023-02-13','17:00:00.000Z','2023-02-13T06:00:00.000+0000','a1k68000000x1bZAAQ','2023-02-13','16:00:00.000Z','2023-02-13T05:00:00.000+0000','Good','Allocated','False','14','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(335,'ISD-335','Monday','Tentative','2022-10-08','15:00:00.000Z','2022-10-08T05:00:00.000+0000','a1k68000000x1azAAA','2022-10-08','14:00:00.000Z','2022-10-08T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(336,'ISD-336','Monday','Tentative','2022-10-15','15:00:00.000Z','2022-10-15T05:00:00.000+0000','a1k68000000x1azAAA','2022-10-15','14:00:00.000Z','2022-10-15T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(337,'ISD-337','Monday','Tentative','2022-10-22','15:00:00.000Z','2022-10-22T05:00:00.000+0000','a1k68000000x1azAAA','2022-10-22','14:00:00.000Z','2022-10-22T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(338,'ISD-338','Monday','Tentative','2022-10-29','15:00:00.000Z','2022-10-29T05:00:00.000+0000','a1k68000000x1azAAA','2022-10-29','14:00:00.000Z','2022-10-29T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(339,'ISD-339','Monday','Tentative','2022-11-05','15:00:00.000Z','2022-11-05T05:00:00.000+0000','a1k68000000x1azAAA','2022-11-05','14:00:00.000Z','2022-11-05T04:00:00.000+0000','Good','Allocated','False','14','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(340,'ISD-340','Monday','Tentative','2022-11-12','15:00:00.000Z','2022-11-12T05:00:00.000+0000','a1k68000000x1azAAA','2022-11-12','14:00:00.000Z','2022-11-12T04:00:00.000+0000','Good','Allocated','False','14','35');
CREATE TABLE "rio_ed__Appointment_Availability__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(1,'ISD-1','1','','12');
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(2,'ISD-2','1','38','');
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
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(1,'ISD-1','Available Time','True','60.0','0.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','28');
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(2,'ISD-2','Available Time','True','60.0','0.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','30');
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
INSERT INTO "rio_ed__Appointment_Type__c" VALUES(1,'ISD-1','Academic Counsel','True','True','False','Academic Counsel','None','False','False','True','None');
CREATE TABLE "rio_ed__Assigned_Location__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Location__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Assigned_Location__c" VALUES(1,'ISD-1','30','38');
CREATE TABLE "rio_ed__Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Session_Date__c" VARCHAR(255), 
	"rio_ed__Booking__c" VARCHAR(255), 
	"rio_ed__Session_Connection__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Attendance__c" VALUES(1,'ISD-262','2022-04-28','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(2,'ISD-263','2022-05-05','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(3,'ISD-264','2022-05-12','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(4,'ISD-265','2022-05-19','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(5,'ISD-267','2022-05-26','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(6,'ISD-268','2022-06-02','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(7,'ISD-269','2022-06-09','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(8,'ISD-270','2022-06-16','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(9,'ISD-271','2022-06-23','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(10,'ISD-289','2023-01-26','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(11,'ISD-272','2022-06-30','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(12,'ISD-137','2023-07-28','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(13,'ISD-138','2023-08-04','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(14,'ISD-139','2023-08-11','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(15,'ISD-140','2023-08-18','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(16,'ISD-273','2022-07-07','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(17,'ISD-274','2022-07-14','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(18,'ISD-319','2022-07-21','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(19,'ISD-320','2022-07-28','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(20,'ISD-322','2022-08-04','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(21,'ISD-290','2023-02-02','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(22,'ISD-323','2022-08-11','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(23,'ISD-324','2022-08-18','','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(24,'ISD-336','2022-12-15','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(25,'ISD-335','2022-12-08','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(26,'ISD-337','2022-12-22','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(27,'ISD-338','2023-01-05','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(28,'ISD-339','2022-12-29','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(29,'ISD-340','2023-01-12','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(30,'ISD-382','2023-01-19','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(31,'ISD-383','2023-01-26','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(32,'ISD-291','2023-02-09','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(33,'ISD-384','2023-02-02','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(34,'ISD-385','2023-02-09','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(35,'ISD-386','2023-02-16','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(36,'ISD-325','2022-10-20','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(37,'ISD-326','2022-10-27','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(38,'ISD-327','2022-11-03','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(39,'ISD-328','2022-10-06','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(40,'ISD-329','2022-10-13','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(41,'ISD-330','2022-11-10','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(42,'ISD-331','2022-11-17','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(43,'ISD-292','2023-02-16','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(44,'ISD-333','2022-11-24','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(45,'ISD-334','2022-12-01','','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(46,'ISD-387','2022-07-23','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(47,'ISD-388','2022-07-30','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(48,'ISD-389','2022-08-06','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(49,'ISD-390','2022-08-13','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(50,'ISD-391','2022-04-23','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(51,'ISD-392','2022-04-30','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(52,'ISD-393','2022-05-07','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(53,'ISD-394','2022-05-14','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(54,'ISD-293','2022-10-06','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(55,'ISD-395','2022-05-21','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(56,'ISD-396','2022-05-28','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(57,'ISD-397','2022-06-04','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(58,'ISD-398','2022-06-11','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(59,'ISD-399','2022-06-18','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(60,'ISD-400','2022-06-25','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(61,'ISD-401','2022-07-02','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(62,'ISD-407','2022-07-09','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(63,'ISD-408','2022-07-16','','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(64,'ISD-409','2022-05-27','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(65,'ISD-294','2022-10-13','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(66,'ISD-410','2022-06-03','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(67,'ISD-202','2022-11-12','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(68,'ISD-287','2023-01-19','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(69,'ISD-191','2023-06-29','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(70,'ISD-51','2022-12-17','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(71,'ISD-52','2022-12-24','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(72,'ISD-53','2022-12-31','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(73,'ISD-54','2022-11-26','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(74,'ISD-55','2022-12-03','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(75,'ISD-56','2023-01-07','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(76,'ISD-57','2023-01-14','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(77,'ISD-58','2023-01-21','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(78,'ISD-59','2023-01-28','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(79,'ISD-354','2022-12-03','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(80,'ISD-60','2023-02-04','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(81,'ISD-61','2023-02-11','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(82,'ISD-62','2023-02-18','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(83,'ISD-63','2022-10-08','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(84,'ISD-64','2022-10-15','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(85,'ISD-65','2022-10-22','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(86,'ISD-66','2022-10-29','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(87,'ISD-355','2022-12-10','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(88,'ISD-356','2022-12-17','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(89,'ISD-357','2022-12-24','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(90,'ISD-358','2022-12-31','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(91,'ISD-359','2023-01-07','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(92,'ISD-232','2022-04-28','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(93,'ISD-360','2023-01-14','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(94,'ISD-12','2022-11-26','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(95,'ISD-13','2022-12-03','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(96,'ISD-14','2022-12-10','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(97,'ISD-15','2022-12-17','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(98,'ISD-16','2022-12-24','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(99,'ISD-17','2022-11-12','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(100,'ISD-18','2022-12-31','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(101,'ISD-341','2022-11-10','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(102,'ISD-19','2023-01-07','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(103,'ISD-20','2023-01-14','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(104,'ISD-21','2023-01-21','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(105,'ISD-22','2023-01-28','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(106,'ISD-23','2023-02-04','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(107,'ISD-24','2023-02-11','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(108,'ISD-25','2023-02-18','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(109,'ISD-233','2022-05-05','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(110,'ISD-234','2022-05-12','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(111,'ISD-235','2022-05-19','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(112,'ISD-236','2022-05-26','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(113,'ISD-237','2022-06-02','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(114,'ISD-238','2022-06-09','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(115,'ISD-239','2022-06-16','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(116,'ISD-240','2022-06-23','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(117,'ISD-242','2022-06-30','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(118,'ISD-280','2022-12-01','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(119,'ISD-361','2023-01-21','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(120,'ISD-243','2022-07-07','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(121,'ISD-126','2022-07-14','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(122,'ISD-127','2022-07-21','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(123,'ISD-128','2022-07-28','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(124,'ISD-129','2022-08-04','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(125,'ISD-130','2022-08-11','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(126,'ISD-131','2022-08-18','','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(127,'ISD-68','2022-05-05','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(128,'ISD-69','2022-05-12','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(129,'ISD-70','2022-05-19','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(130,'ISD-214','2023-01-28','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(131,'ISD-71','2022-05-26','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(132,'ISD-72','2022-06-23','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(133,'ISD-73','2022-06-30','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(134,'ISD-74','2022-07-07','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(135,'ISD-45','2023-01-21','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(136,'ISD-46','2023-01-28','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(137,'ISD-26','2022-12-03','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(138,'ISD-203','2022-11-19','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(139,'ISD-342','2022-10-20','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(140,'ISD-27','2022-12-10','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(141,'ISD-28','2022-12-17','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(142,'ISD-29','2022-12-24','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(143,'ISD-30','2022-12-31','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(144,'ISD-31','2023-01-07','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(145,'ISD-32','2023-02-11','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(146,'ISD-34','2023-02-04','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(147,'ISD-35','2023-02-18','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(148,'ISD-36','2022-11-05','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(149,'ISD-37','2022-11-12','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(150,'ISD-343','2022-11-17','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(151,'ISD-38','2022-11-19','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(152,'ISD-39','2022-11-26','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(153,'ISD-40','2022-10-08','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(154,'ISD-41','2022-10-15','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(155,'ISD-42','2022-10-22','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(156,'ISD-43','2022-10-29','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(157,'ISD-44','2023-01-14','','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(158,'ISD-47','2022-11-05','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(159,'ISD-48','2022-11-12','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(160,'ISD-49','2022-11-19','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(161,'ISD-344','2022-11-24','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(162,'ISD-50','2022-12-10','','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(163,'ISD-411','2022-06-10','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(164,'ISD-412','2022-06-17','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(165,'ISD-413','2022-06-24','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(166,'ISD-414','2022-07-01','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(167,'ISD-415','2022-07-08','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(168,'ISD-416','2022-07-15','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(169,'ISD-417','2022-07-22','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(170,'ISD-418','2022-07-29','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(171,'ISD-419','2022-08-05','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(172,'ISD-295','2022-10-27','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(173,'ISD-420','2022-08-12','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(174,'ISD-421','2022-08-19','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(175,'ISD-1','2022-04-22','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(176,'ISD-2','2022-04-29','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(177,'ISD-3','2022-05-06','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(178,'ISD-4','2022-05-13','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(179,'ISD-5','2022-05-20','','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(180,'ISD-6','2022-10-08','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(181,'ISD-7','2022-10-15','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(182,'ISD-8','2022-10-22','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(183,'ISD-296','2022-11-03','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(184,'ISD-9','2022-10-29','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(185,'ISD-10','2022-11-05','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(186,'ISD-11','2022-11-19','','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(187,'ISD-303','2023-02-02','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(188,'ISD-304','2023-02-09','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(189,'ISD-305','2023-02-16','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(190,'ISD-132','2023-06-30','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(191,'ISD-133','2023-07-07','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(192,'ISD-135','2023-07-14','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(193,'ISD-136','2023-07-21','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(194,'ISD-302','2023-01-26','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(195,'ISD-182','2023-06-08','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(196,'ISD-286','2023-01-12','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(197,'ISD-183','2023-06-15','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(198,'ISD-184','2023-06-22','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(199,'ISD-185','2023-07-06','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(200,'ISD-186','2023-07-13','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(201,'ISD-187','2023-07-20','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(202,'ISD-188','2023-07-27','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(203,'ISD-190','2023-08-03','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(204,'ISD-253','2023-08-10','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(205,'ISD-254','2023-08-17','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(206,'ISD-256','2023-08-24','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(207,'ISD-351','2022-11-19','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(208,'ISD-352','2022-11-26','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(209,'ISD-76','2022-04-25','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(210,'ISD-78','2022-05-02','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(211,'ISD-79','2022-05-09','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(212,'ISD-218','2022-11-17','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(213,'ISD-80','2022-05-16','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(214,'ISD-81','2022-05-23','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(215,'ISD-82','2022-05-30','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(216,'ISD-83','2022-06-06','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(217,'ISD-84','2022-06-13','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(218,'ISD-85','2022-06-20','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(219,'ISD-86','2022-06-27','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(220,'ISD-87','2022-07-04','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(221,'ISD-89','2022-07-11','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(222,'ISD-90','2022-07-18','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(223,'ISD-219','2022-11-24','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(224,'ISD-91','2022-07-25','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(225,'ISD-92','2022-08-01','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(226,'ISD-93','2022-08-08','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(227,'ISD-94','2022-08-15','','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(228,'ISD-306','2022-04-22','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(229,'ISD-307','2022-04-29','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(230,'ISD-308','2022-05-06','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(231,'ISD-309','2022-05-13','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(232,'ISD-311','2022-05-20','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(233,'ISD-312','2022-05-27','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(234,'ISD-141','2023-08-25','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(235,'ISD-313','2022-06-03','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(236,'ISD-314','2022-06-10','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(237,'ISD-315','2022-06-17','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(238,'ISD-316','2022-07-29','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(239,'ISD-317','2022-07-15','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(240,'ISD-75','2022-07-14','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(241,'ISD-98','2022-05-19','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(242,'ISD-100','2022-05-26','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(243,'ISD-101','2022-06-02','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(244,'ISD-216','2023-02-18','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(245,'ISD-102','2022-06-09','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(246,'ISD-103','2022-06-16','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(247,'ISD-104','2022-06-23','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(248,'ISD-105','2022-06-30','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(249,'ISD-106','2022-07-07','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(250,'ISD-107','2022-07-14','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(251,'ISD-108','2022-07-21','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(252,'ISD-109','2022-07-28','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(253,'ISD-231','2022-08-04','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(254,'ISD-111','2022-07-21','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(255,'ISD-222','2022-07-28','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(256,'ISD-353','2022-08-04','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(257,'ISD-33','2022-08-11','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(258,'ISD-77','2022-06-02','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(259,'ISD-215','2023-02-04','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(260,'ISD-88','2022-06-09','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(261,'ISD-99','2022-06-16','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(262,'ISD-110','2022-08-18','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(263,'ISD-67','2022-04-28','','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(264,'ISD-95','2022-04-28','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(265,'ISD-96','2022-05-05','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(266,'ISD-97','2022-05-12','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(267,'ISD-244','2022-08-11','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(268,'ISD-217','2023-02-11','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(269,'ISD-245','2022-08-18','','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(270,'ISD-345','2022-10-15','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(271,'ISD-346','2022-10-22','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(272,'ISD-151','2023-05-12','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(273,'ISD-152','2023-05-19','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(274,'ISD-169','2023-08-18','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(275,'ISD-192','2023-09-01','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(276,'ISD-348','2022-11-05','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(277,'ISD-193','2023-09-08','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(278,'ISD-194','2023-09-15','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(279,'ISD-195','2023-08-25','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(280,'ISD-205','2022-12-03','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(281,'ISD-206','2023-01-21','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(282,'ISD-153','2023-05-26','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(283,'ISD-154','2023-06-02','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(284,'ISD-155','2023-06-09','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(285,'ISD-157','2023-04-28','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(286,'ISD-158','2023-05-05','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(287,'ISD-159','2023-06-16','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(288,'ISD-347','2022-10-29','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(289,'ISD-160','2023-06-23','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(290,'ISD-161','2023-06-30','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(291,'ISD-162','2023-07-07','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(292,'ISD-163','2023-07-14','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(293,'ISD-164','2023-07-21','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(294,'ISD-165','2023-07-28','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(295,'ISD-166','2023-08-04','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(296,'ISD-168','2023-08-11','','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(297,'ISD-207','2022-12-10','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(298,'ISD-208','2023-01-28','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(299,'ISD-209','2022-12-17','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(300,'ISD-210','2022-12-24','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(301,'ISD-212','2022-12-31','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(302,'ISD-349','2022-10-08','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(303,'ISD-213','2023-01-07','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(304,'ISD-275','2023-01-14','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(305,'ISD-276','2023-02-04','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(306,'ISD-204','2022-11-26','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(307,'ISD-278','2023-02-11','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(308,'ISD-279','2023-02-18','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(309,'ISD-196','2022-10-08','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(310,'ISD-197','2022-10-15','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(311,'ISD-198','2022-10-22','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(312,'ISD-199','2022-10-29','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(313,'ISD-281','2022-12-08','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(314,'ISD-350','2022-11-12','','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(315,'ISD-201','2022-11-05','','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(316,'ISD-176','2023-09-15','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(317,'ISD-257','2023-08-31','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(318,'ISD-258','2023-09-07','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(319,'ISD-283','2022-12-22','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(320,'ISD-259','2023-09-14','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(321,'ISD-260','2023-04-27','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(322,'ISD-261','2023-05-04','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(323,'ISD-177','2023-05-11','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(324,'ISD-179','2023-05-18','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(325,'ISD-180','2023-05-25','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(326,'ISD-181','2023-06-01','','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(327,'ISD-220','2022-12-01','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(328,'ISD-221','2022-12-08','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(329,'ISD-224','2022-12-15','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(330,'ISD-284','2022-12-29','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(331,'ISD-225','2022-12-22','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(332,'ISD-226','2022-10-06','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(333,'ISD-227','2022-10-13','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(334,'ISD-228','2022-10-20','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(335,'ISD-229','2022-10-27','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(336,'ISD-230','2022-11-03','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(337,'ISD-252','2022-11-10','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(338,'ISD-297','2022-12-29','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(339,'ISD-298','2023-01-05','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(340,'ISD-300','2023-01-12','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(341,'ISD-285','2023-01-05','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(342,'ISD-301','2023-01-19','','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(343,'ISD-318','2022-07-22','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(344,'ISD-362','2022-08-05','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(345,'ISD-363','2022-08-12','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(346,'ISD-364','2022-06-24','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(347,'ISD-365','2022-07-01','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(348,'ISD-142','2023-09-01','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(349,'ISD-366','2022-07-08','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(350,'ISD-367','2022-08-19','','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(351,'ISD-368','2022-06-10','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(352,'ISD-369','2022-06-17','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(353,'ISD-370','2022-06-24','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(354,'ISD-371','2022-07-01','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(355,'ISD-372','2022-07-08','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(356,'ISD-373','2022-07-15','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(357,'ISD-374','2022-07-22','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(358,'ISD-375','2022-07-29','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(359,'ISD-143','2023-04-28','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(360,'ISD-376','2022-08-05','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(361,'ISD-377','2022-08-19','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(362,'ISD-378','2022-08-12','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(363,'ISD-380','2022-04-22','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(364,'ISD-381','2022-04-29','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(365,'ISD-402','2022-05-06','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(366,'ISD-403','2022-05-13','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(367,'ISD-404','2022-05-20','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(368,'ISD-405','2022-05-27','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(369,'ISD-144','2023-05-05','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(370,'ISD-406','2022-06-03','','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(371,'ISD-146','2023-05-12','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(372,'ISD-282','2022-12-15','','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(373,'ISD-147','2023-05-19','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(374,'ISD-170','2023-05-26','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(375,'ISD-171','2023-06-02','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(376,'ISD-172','2023-06-09','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(377,'ISD-173','2023-06-16','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(378,'ISD-174','2023-06-23','','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(379,'ISD-175','2023-09-08','','17');
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
INSERT INTO "rio_ed__Availability_Time__c" VALUES(1,'ISD-1','All Time','True','Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;Sunday','23:45:00.000Z','','00:00:00.000Z','','38');
CREATE TABLE "rio_ed__Contact_Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Primary_Contact__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(1,'ISD-1','True','Tentative','');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(2,'ISD-2','True','Tentative','');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(3,'ISD-3','True','Tentative','38');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(4,'ISD-4','True','Tentative','40');
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
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(1,'ISD-8','ICT112 Pre-Requisite','A','False','Pre-Requisite','102','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(2,'ISD-19','ICT112 Pre-Requisite','A','False','Pre-Requisite','177','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(3,'ISD-2','ICT112 Pre-Requisite','A','False','Pre-Requisite','190','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(4,'ISD-4','ICT112 Pre-Requisite','A','False','Pre-Requisite','52','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(5,'ISD-7','ICT112 Pre-Requisite','A','False','Pre-Requisite','64','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(6,'ISD-10','ICT112 Pre-Requisite','A','False','Pre-Requisite','4','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(7,'ISD-15','ICT112 Pre-Requisite','A','False','Pre-Requisite','284','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(8,'ISD-16','ICT112 Pre-Requisite','A','True','Pre-Requisite','206','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(9,'ISD-17','ICT112 Pre-Requisite','A','False','Pre-Requisite','221','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(10,'ISD-18','ICT112 Pre-Requisite','A','False','Pre-Requisite','238','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(11,'ISD-1','ICT112 Pre-Requisite','A','False','Pre-Requisite','265','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(12,'ISD-5','ICT112 Pre-Requisite','A','False','Pre-Requisite','123','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(13,'ISD-11','ICT112 Pre-Requisite','A','False','Pre-Requisite','36','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(14,'ISD-13','ICT112 Pre-Requisite','A','False','Pre-Requisite','169','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(15,'ISD-14','ICT112 Pre-Requisite','A','False','Pre-Requisite','18','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(16,'ISD-3','ICT112 Pre-Requisite','A','False','Pre-Requisite','242','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(17,'ISD-9','ICT112 Pre-Requisite','A','False','Pre-Requisite','76','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(18,'ISD-12','ICT112 Pre-Requisite','A','False','Pre-Requisite','273','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(19,'ISD-6','ICT112 Pre-Requisite','A','False','Pre-Requisite','90','10');
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
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(1,'ISD-1','Major Group A','01268000000gPORAA2','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(2,'ISD-2','Major Group B','01268000000gPORAA2','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(3,'ISD-6','ICT115','01268000000gPOQAA2','','Optional','2','64','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(4,'ISD-3','BUS101','01268000000gPOQAA2','','Mandatory','1','101','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(5,'ISD-4','BUS102','01268000000gPOQAA2','','Optional','1','8','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(6,'ISD-5','ICT112','01268000000gPOQAA2','','Mandatory','2','56','1');
CREATE TABLE "rio_ed__Discipline_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('01268000000gPOQAA2','Course');
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('01268000000gPORAA2','Group');
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
INSERT INTO "rio_ed__Fee_Line__c" VALUES(1,'ISD-28','2022-03-22','','1000.0','Self Paid','','Self Paid','170','5','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(2,'ISD-29','2022-03-22','','1000.0','Self Paid','','Self Paid','182','5','5');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(3,'ISD-2','2022-03-22','','1000.0','Self Paid','','Self Paid','45','5','6');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(4,'ISD-3','2022-03-22','','1000.0','Self Paid','','Self Paid','57','5','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(5,'ISD-6','2022-03-22','','1000.0','Self Paid','','Self Paid','69','5','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(6,'ISD-8','2022-03-22','','1000.0','Self Paid','','Self Paid','29','5','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(7,'ISD-21','2022-03-22','','1000.0','Self Paid','','Self Paid','252','5','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(8,'ISD-18','2022-04-22','','1000.0','Self Paid','','Self Paid','201','5','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(9,'ISD-19','2022-04-22','','1000.0','Self Paid','','Self Paid','202','5','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(10,'ISD-20','2022-04-22','','1000.0','Self Paid','','Self Paid','253','5','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(11,'ISD-26','2022-03-22','2022-04-11','1000.0','Self Paid','','Self Paid','211','5','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(12,'ISD-23','2022-04-22','2022-04-11','1000.0','Self Paid','','Self Paid','212','5','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(13,'ISD-24','2022-04-22','2022-04-11','1000.0','Self Paid','','Self Paid','214','5','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(14,'ISD-25','2022-04-22','2022-04-11','1000.0','Self Paid','','Self Paid','210','5','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(15,'ISD-27','2022-03-22','','1000.0','Self Paid','','Self Paid','226','5','17');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(16,'ISD-30','2022-03-22','','1000.0','Self Paid','','Self Paid','258','5','18');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(17,'ISD-1','2022-03-22','','1000.0','Self Paid','','Self Paid','270','5','19');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(18,'ISD-4','2022-03-22','','1000.0','Self Paid','','Self Paid','137','5','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(19,'ISD-13','2022-04-22','','1000.0','Self Paid','','Self Paid','27','5','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(20,'ISD-9','2022-03-22','','1000.0','Self Paid','','Self Paid','41','5','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(21,'ISD-11','2022-03-22','','1000.0','Self Paid','','Self Paid','13','5','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(22,'ISD-22','2022-04-22','','1000.0','Self Paid','','Self Paid','25','5','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(23,'ISD-14','2022-04-22','','1000.0','Self Paid','','Self Paid','231','5','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(24,'ISD-16','2022-04-22','','1000.0','Self Paid','','Self Paid','23','5','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(25,'ISD-17','2022-03-22','','1000.0','Self Paid','','Self Paid','278','5','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(26,'ISD-10','2022-04-22','','1000.0','Self Paid','','Self Paid','279','5','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(27,'ISD-12','2022-04-22','','1000.0','Self Paid','','Self Paid','280','5','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(28,'ISD-15','2022-04-22','','1000.0','Self Paid','','Self Paid','277','5','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(29,'ISD-7','2022-03-22','','1000.0','Self Paid','','Self Paid','81','5','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(30,'ISD-5','2022-03-22','','1000.0','Self Paid','','Self Paid','95','5','3');
CREATE TABLE "rio_ed__Fee_Schedule_Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(1,'ISD-1','2','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(2,'ISD-4','2','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(3,'ISD-5','3','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(4,'ISD-6','3','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(5,'ISD-7','3','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(6,'ISD-8','3','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(7,'ISD-9','5','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(8,'ISD-10','5','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(9,'ISD-11','5','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(10,'ISD-12','5','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(11,'ISD-13','6','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(12,'ISD-14','6','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(13,'ISD-15','6','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(14,'ISD-16','6','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(15,'ISD-17','4','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(16,'ISD-2','2','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(17,'ISD-3','2','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(18,'ISD-18','4','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(19,'ISD-19','4','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(20,'ISD-20','4','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(21,'ISD-21','1','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(22,'ISD-22','1','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(23,'ISD-23','1','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(24,'ISD-24','1','6');
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
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(1,'ISD-6','Default','True','False','500.0','500.0','2032-04-21','Application','2022-04-22','False','Draft','2');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(2,'ISD-1','Default','False','False','2000.0','2000.0','2032-04-21','Term','2022-04-22','False','Draft','3');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(3,'ISD-2','Default','True','False','1000.0','1000.0','2032-04-21','Course','2022-04-22','False','Draft','4');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(4,'ISD-5','Default','True','False','1000.0','1000.0','2032-04-21','Deposit','2022-04-22','False','Draft','1');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(5,'ISD-3','Discountable Default','False','False','1000.0','1000.0','2032-04-21','Course','2022-04-22','False','Draft','5');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(6,'ISD-4','Default','True','False','2500.0','2500.0','2032-04-21','Program','2022-04-22','False','Draft','6');
CREATE TABLE "rio_ed__Fee__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Fee_Unit__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee__c" VALUES(1,'ISD-5','Standard Deposit Fee','Deposit','Deposit');
INSERT INTO "rio_ed__Fee__c" VALUES(2,'ISD-6','Standard Application Fee','Application','Application');
INSERT INTO "rio_ed__Fee__c" VALUES(3,'ISD-1','Standard Term Fee','Tuition','Term');
INSERT INTO "rio_ed__Fee__c" VALUES(4,'ISD-2','Standard Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(5,'ISD-3','Discountable Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(6,'ISD-4','Standard Program Fee','Tuition','Program');
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
INSERT INTO "rio_ed__Funding__c" VALUES(1,'ISD-4','Standard Funding (Discount Amount)','100.0','','False','Discount','','','Active','False','');
INSERT INTO "rio_ed__Funding__c" VALUES(2,'ISD-1','Standard Funding (Scholarship)','','','False','Scholarship','100.0','250.0','Active','False','500.0');
INSERT INTO "rio_ed__Funding__c" VALUES(3,'ISD-2','Standard Funding (Sponsor)','','','False','Sponsor','50.0','75.0','Active','False','250.0');
INSERT INTO "rio_ed__Funding__c" VALUES(4,'ISD-3','Standard Funding (Discount %)','','10.0','False','Discount %','','','Active','False','');
CREATE TABLE "rio_ed__Grade_Criteria__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(1,'ISD-1','ICT112 Assignment 2','2.0','30.0','10');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(2,'ISD-2','ICT112 Final Exam','3.0','50.0','10');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(3,'ISD-3','ICT112 Assignment 1','1.0','20.0','10');
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
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(1,'ISD-12','RIOUNI-FA','True','0.0','0-0','Fail','Educational Institution','0018a00001qG3c3AAC-FA - Fail Absent','Higher Range','FA - Fail Absent','29');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(2,'ISD-7','RIOUNI-FL','False','0.0','0 - 49','Fail','Educational Institution','0015j00000EQs58AAD-FL - Fail','Higher Range','FL - Fail','29');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(3,'ISD-8','RIOUNI-D','False','6.0','75 - 84','Pass','Educational Institution','0015j00000EQs58AAD-D - Distinction','Higher Range','D - Distinction','29');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(4,'ISD-9','RIOUNI-CR','False','5.0','65 - 74','Pass','Educational Institution','0015j00000EQs58AAD-CR - Credit','Higher Range','CR - Credit','29');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(5,'ISD-10','RIOUNI-PS','False','4.0','50 - 64','Pass','Educational Institution','0015j00000EQs58AAD-PS - Pass','Higher Range','PS - Pass','29');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(6,'ISD-11','RIOUNI-HD','False','7.0','85 - 100','Pass','Educational Institution','0015j00000EQs58AAD-HD - High Distinction','Higher Range','HD - High Distinction','29');
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
INSERT INTO "rio_ed__Grade__c" VALUES(1,'ISD-4','ICT112 Assignment 1','01268000000gPOSAA2','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(2,'ISD-5','ICT112 Assignment 2','01268000000gPOSAA2','a0y5j000000hDmoAAE','D - Distinction','2.0','30.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(3,'ISD-6','ICT112 Final Exam','01268000000gPOSAA2','a0y5j000000hDmtAAE','D - Distinction','3.0','50.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(4,'ISD-1','ICT112 Assignment 1','01268000000gPOSAA2','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(5,'ISD-2','ICT112 Assignment 2','01268000000gPOSAA2','a0y5j000000hDmoAAE','HD - High Distinction','2.0','30.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(6,'ISD-3','ICT112 Final Exam','01268000000gPOSAA2','a0y5j000000hDmtAAE','HD - High Distinction','3.0','50.0','2');
CREATE TABLE "rio_ed__Grade__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('01268000000gPOSAA2','Grade');
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('01268000000gPOTAA2','Sub_Grade');
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
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(1,'ISD-33','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(2,'ISD-27','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(3,'ISD-32','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(4,'ISD-36','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(5,'ISD-37','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(6,'ISD-5','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(7,'ISD-6','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(8,'ISD-7','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(9,'ISD-28','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(10,'ISD-30','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(11,'ISD-31','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(12,'ISD-38','RIOUNI02-Mandatory','Required','33.333333333333336','0.0','40.0','40.0','120.0','25.0','In Progress','False','78','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(13,'ISD-1','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','Not Started','False','78','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(14,'ISD-4','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(15,'ISD-2','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(16,'ISD-3','RIOUNI02-Mandatory','Required','33.333333333333336','4.0','40.0','40.0','120.0','24.0','In Progress','False','78','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(17,'ISD-29','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(18,'ISD-34','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(19,'ISD-35','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','78','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(20,'ISD-14','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(21,'ISD-8','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(22,'ISD-13','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(23,'ISD-17','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(24,'ISD-18','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(25,'ISD-24','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(26,'ISD-25','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(27,'ISD-26','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(28,'ISD-9','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(29,'ISD-11','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(30,'ISD-12','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(31,'ISD-19','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(32,'ISD-20','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(33,'ISD-23','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(34,'ISD-21','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(35,'ISD-22','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(36,'ISD-10','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(37,'ISD-15','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(38,'ISD-16','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','77','2');
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
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(1,'ISD-4','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(2,'ISD-5','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(3,'ISD-6','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','1','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(4,'ISD-7','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','2','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(5,'ISD-8','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','2','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(6,'ISD-9','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','2','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(7,'ISD-10','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','2','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(8,'ISD-66','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','15','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(9,'ISD-67','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','15','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(10,'ISD-68','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','15','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(11,'ISD-27','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','16','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(12,'ISD-28','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','16','3','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(13,'ISD-29','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','16','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(14,'ISD-30','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','16','3','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(15,'ISD-61','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','8','3','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(16,'ISD-62','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','4.0','4.0','Full-time','8','3','4');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(17,'ISD-63','False','False','False','40.0','40.0','False','5.0','Not generated','6.0','24.0','1.0','4.0','Full-time','8','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(18,'ISD-64','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','8','3','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(19,'ISD-43','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','9','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(20,'ISD-44','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','9','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(21,'ISD-45','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','9','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(22,'ISD-46','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','9','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(23,'ISD-3','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(24,'ISD-33','False','False','False','','','False','0.0','Not generated','','','3.0','8.0','Half-time','3','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(25,'ISD-34','False','False','False','','','False','0.0','Not generated','','','5.0','8.0','Half-time','3','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(26,'ISD-35','False','False','False','','','False','0.0','Not generated','','','4.0','8.0','Half-time','3','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(27,'ISD-36','False','False','False','','','False','0.0','Not generated','','','6.0','8.0','Half-time','3','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(28,'ISD-37','False','False','False','','','False','0.0','Not generated','','','7.0','8.0','Half-time','3','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(29,'ISD-38','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','8.0','Half-time','3','4','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(30,'ISD-55','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','4','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(31,'ISD-56','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','4','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(32,'ISD-57','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','4','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(33,'ISD-58','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','4','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(34,'ISD-11','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','5','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(35,'ISD-12','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','5','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(36,'ISD-13','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','5','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(37,'ISD-14','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','5','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(38,'ISD-15','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','11','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(39,'ISD-16','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','11','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(40,'ISD-17','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','11','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(41,'ISD-18','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','11','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(42,'ISD-69','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','17','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(43,'ISD-70','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','17','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(44,'ISD-71','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','17','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(45,'ISD-72','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','17','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(46,'ISD-73','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','18','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(47,'ISD-74','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','18','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(48,'ISD-75','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','18','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(49,'ISD-76','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','18','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(50,'ISD-77','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','19','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(51,'ISD-78','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','19','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(52,'ISD-79','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','19','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(53,'ISD-80','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','19','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(54,'ISD-39','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','12','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(55,'ISD-40','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','12','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(56,'ISD-41','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','12','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(57,'ISD-42','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','12','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(58,'ISD-47','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','7','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(59,'ISD-48','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','7','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(60,'ISD-49','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','7','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(61,'ISD-50','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','7','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(62,'ISD-51','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','6','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(63,'ISD-52','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','6','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(64,'ISD-53','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','6','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(65,'ISD-54','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','6','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(66,'ISD-19','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','13','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(67,'ISD-20','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','13','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(68,'ISD-21','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','13','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(69,'ISD-22','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','13','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(70,'ISD-23','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','14','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(71,'ISD-24','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','14','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(72,'ISD-25','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','14','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(73,'ISD-26','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','1.0','4.0','Full-time','14','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(74,'ISD-65','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','15','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(75,'ISD-2','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','10','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(76,'ISD-1','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','10','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(77,'ISD-59','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','10','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(78,'ISD-60','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','10','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(79,'ISD-31','False','False','False','','','False','0.0','Not generated','','','2.0','8.0','Half-time','3','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(80,'ISD-32','False','False','False','','','False','0.0','Not generated','','','8.0','8.0','Half-time','3','4','');
CREATE TABLE "rio_ed__Pathway_Unit__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Term_Number__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Group__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(1,'ISD-31','5.0','9','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(2,'ISD-75','1.0','14','','10');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(3,'ISD-63','1.0','17','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(4,'ISD-30','3.0','9','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(5,'ISD-70','1.0','17','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(6,'ISD-42','1.0','15','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(7,'ISD-43','3.0','16','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(8,'ISD-44','6.0','16','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(9,'ISD-16','2.0','20','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(10,'ISD-54','1.0','25','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(11,'ISD-55','1.0','25','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(12,'ISD-59','1.0','26','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(13,'ISD-19','1.0','24','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(14,'ISD-20','2.0','24','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(15,'ISD-21','2.0','73','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(16,'ISD-22','4.0','73','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(17,'ISD-23','3.0','89','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(18,'ISD-24','2.0','92','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(19,'ISD-57','1.0','59','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(20,'ISD-45','1.0','62','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(21,'ISD-32','1.0','57','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(22,'ISD-33','1.0','57','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(23,'ISD-52','1.0','70','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(24,'ISD-34','1.0','65','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(25,'ISD-35','1.0','65','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(26,'ISD-66','1.0','66','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(27,'ISD-58','1.0','67','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(28,'ISD-77','2.0','71','','10');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(29,'ISD-72','1.0','31','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(30,'ISD-36','3.0','29','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(31,'ISD-38','2.0','124','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(32,'ISD-39','3.0','124','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(33,'ISD-73','1.0','103','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(34,'ISD-69','1.0','103','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(35,'ISD-48','1.0','50','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(36,'ISD-62','1.0','51','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(37,'ISD-27','4.0','49','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(38,'ISD-28','2.0','53','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(39,'ISD-53','1.0','58','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(40,'ISD-17','3.0','102','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(41,'ISD-41','6.0','34','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(42,'ISD-26','2.0','49','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(43,'ISD-65','1.0','58','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(44,'ISD-46','1.0','106','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(45,'ISD-9','1.0','101','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(46,'ISD-18','5.0','102','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(47,'ISD-74','1.0','107','','10');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(48,'ISD-61','1.0','112','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(49,'ISD-25','2.0','110','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(50,'ISD-71','1.0','35','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(51,'ISD-37','1.0','33','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(52,'ISD-49','1.0','42','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(53,'ISD-68','1.0','42','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(54,'ISD-60','1.0','43','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(55,'ISD-40','3.0','34','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(56,'ISD-10','1.0','41','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(57,'ISD-11','2.0','41','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(58,'ISD-50','1.0','5','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(59,'ISD-56','1.0','5','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(60,'ISD-12','2.0','4','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(61,'ISD-13','3.0','4','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(62,'ISD-14','3.0','114','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(63,'ISD-15','3.0','118','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(64,'ISD-64','1.0','10','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(65,'ISD-67','1.0','10','','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(66,'ISD-51','1.0','13','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(67,'ISD-29','1.0','8','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(68,'ISD-76','2.0','63','','10');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(69,'ISD-7','3.0','','80','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(70,'ISD-4','7.0','','77','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(71,'ISD-5','4.0','','79','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(72,'ISD-6','2.0','','80','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(73,'ISD-8','1.0','','80','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(74,'ISD-47','1.0','66','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(75,'ISD-1','4.0','','75','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(76,'ISD-2','4.0','','77','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(77,'ISD-3','8.0','','77','4');
CREATE TABLE "rio_ed__Plan__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Plan__c" VALUES(1,'ISD-113','2023 Term 2 IBS220','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(2,'ISD-114','2023 Term 2 ICT221','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(3,'ISD-115','2023 Term 2 ICT352','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(4,'ISD-116','2022 Term 1 BUS102','False','','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(5,'ISD-117','2022 Term 2 BUS108','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(6,'ISD-118','2022 Term 2 ICT352','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(7,'ISD-119','2023 Term 1 BUS101','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(8,'ISD-120','2023 Term 2 MGT210','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(9,'ISD-121','2023 Term 2 ICT320','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(10,'ISD-122','2023 Term 2 MGT310','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(11,'ISD-46','2022 Term 1 ETC101','False','a0C8a00000swtOXEAY','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(12,'ISD-47','2022 Term 1 ETC101','False','a0C8a00000swtOXEAY','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(13,'ISD-48','2022 Term 1 ETC102','False','a0C8a00000swtOcEAI','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(14,'ISD-49','2022 Term 1 ETC102','False','a0C8a00000swtOcEAI','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(15,'ISD-50','2022 Term 1 BUS106','False','a0C8a00000swtOSEAY','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(16,'ISD-51','2022 Term 1 BUS106','False','a0C8a00000swtOSEAY','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(17,'ISD-52','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(18,'ISD-53','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(19,'ISD-54','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(20,'ISD-55','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(21,'ISD-56','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(22,'ISD-57','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(23,'ISD-58','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(24,'ISD-59','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(25,'ISD-60','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(26,'ISD-61','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(27,'ISD-92','2022 Term 1 BUS105','False','','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(28,'ISD-93','2022 Term 1 ICT120','False','','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(29,'ISD-94','2022 Term 2 BUS106','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(30,'ISD-95','2022 Term 2 BUS211','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(31,'ISD-96','2022 Term 2 ICT221','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(32,'ISD-97','2022 Term 2 ICT310','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(33,'ISD-98','2023 Term 1 HRM311','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(34,'ISD-99','2023 Term 2 BUS203','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(35,'ISD-100','2023 Term 2 BUS320','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(36,'ISD-101','2023 Term 2 COR109','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(37,'ISD-102','2023 Term 2 HRM311','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(38,'ISD-103','2023 Term 2 ICT115','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(39,'ISD-104','2023 Term 1 BUS102','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(40,'ISD-105','2023 Term 1 BUS104','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(41,'ISD-106','2023 Term 1 BUS320','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(42,'ISD-107','2023 Term 2 BUS106','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(43,'ISD-108','2023 Term 2 BUS301','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(44,'ISD-109','2023 Term 2 ICT211','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(45,'ISD-110','2023 Term 2 ICT310','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(46,'ISD-111','2023 Term 2 BUS108','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(47,'ISD-112','2023 Term 2 BUS211','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(48,'ISD-123','2022 Term 1 BUS101','False','','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(49,'ISD-124','2022 Term 1 ICT211','False','','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(50,'ISD-125','2023 Term 1 BUS105','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(51,'ISD-126','2023 Term 1 BUS301','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(52,'ISD-127','2023 Term 1 COR109','False','','2023-09-18','Role','Resource','False','2023-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(53,'ISD-128','2023 Term 2 HRM321','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(54,'ISD-1','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(55,'ISD-2','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(56,'ISD-3','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(57,'ISD-4','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(58,'ISD-5','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(59,'ISD-6','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(60,'ISD-7','Appointments','False','','2072-04-13','Role','Resource','False','2022-04-14');
INSERT INTO "rio_ed__Plan__c" VALUES(61,'ISD-8','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(62,'ISD-9','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(63,'ISD-10','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(64,'ISD-11','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(65,'ISD-12','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(66,'ISD-16','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(67,'ISD-13','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(68,'ISD-14','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(69,'ISD-15','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(70,'ISD-17','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(71,'ISD-18','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(72,'ISD-19','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(73,'ISD-20','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(74,'ISD-21','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(75,'ISD-22','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(76,'ISD-23','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(77,'ISD-24','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(78,'ISD-62','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(79,'ISD-63','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(80,'ISD-64','Appointments','False','','2072-04-13','Role','Resource','False','2022-04-14');
INSERT INTO "rio_ed__Plan__c" VALUES(81,'ISD-65','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(82,'ISD-69','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(83,'ISD-66','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(84,'ISD-67','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(85,'ISD-68','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(86,'ISD-70','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(87,'ISD-71','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(88,'ISD-72','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(89,'ISD-29','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(90,'ISD-26','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(91,'ISD-27','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(92,'ISD-28','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(93,'ISD-30','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(94,'ISD-31','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(95,'ISD-32','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(96,'ISD-33','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(97,'ISD-34','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(98,'ISD-35','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(99,'ISD-36','2022 Term 1 COR109 B','False','a0C8a00000swonyEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(100,'ISD-25','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(101,'ISD-37','2022 Term 1 COR109 B','False','a0C8a00000swonyEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(102,'ISD-38','2022 Term 1 ICT221','False','a0C8a00000swonjEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(103,'ISD-73','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(104,'ISD-74','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(105,'ISD-75','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(106,'ISD-76','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(107,'ISD-77','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(108,'ISD-78','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(109,'ISD-79','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(110,'ISD-80','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-09-18','Role','Resource','False','2021-03-22');
INSERT INTO "rio_ed__Plan__c" VALUES(111,'ISD-81','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(112,'ISD-82','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(113,'ISD-83','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(114,'ISD-84','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(115,'ISD-85','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(116,'ISD-86','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-02-18','Role','Resource','False','2021-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(117,'ISD-87','2022 Term 2 BUS203','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(118,'ISD-88','2022 Term 2 ICT320','False','','2023-02-18','Role','Resource','False','2022-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(119,'ISD-89','2023 Term 2 ICT112','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(120,'ISD-90','2023 Term 2 ICT120','False','','2024-02-18','Role','Resource','False','2023-10-02');
INSERT INTO "rio_ed__Plan__c" VALUES(121,'ISD-91','2022 Term 1 BUS104','False','','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(122,'ISD-42','2022 Term 1 COR109 A','False','a0C8a00000swontEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(123,'ISD-39','2022 Term 1 ICT221','False','a0C8a00000swonjEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(124,'ISD-40','2022 Term 1 COR109 C','False','a0C8a00000swoo3EAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(125,'ISD-41','2022 Term 1 COR109 C','False','a0C8a00000swoo3EAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(126,'ISD-43','2022 Term 1 COR109 A','False','a0C8a00000swontEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(127,'ISD-44','2022 Term 1 ICT310','False','a0C8a00000swonoEAA','2022-09-18','Role','Resource','False','2022-04-22');
INSERT INTO "rio_ed__Plan__c" VALUES(128,'ISD-45','2022 Term 1 ICT310','False','a0C8a00000swonoEAA','2022-09-18','Role','Resource','False','2022-04-22');
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
INSERT INTO "rio_ed__Program_Application__c" VALUES(1,'ISD-17','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T08:08:59.000+0000','Approved','Full-time','30','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(2,'ISD-18','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-18T00:08:16.000+0000','Approved','Full-time','31','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(3,'ISD-19','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-18T00:03:57.000+0000','Approved','Full-time','32','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(4,'ISD-5','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-14T05:39:12.000+0000','Draft','Full-time','39','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(5,'ISD-1','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:45:14.000+0000','Approved','Full-time','35','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(6,'ISD-2','Course','Self Paid','Self Paid','Yes','False','January','2020','2022-03-25T07:16:53.000+0000','Approved','Full-time','36','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(7,'ISD-3','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-14T05:38:16.000+0000','Approved','Full-time','44','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(8,'ISD-4','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-14T05:34:24.000+0000','Approved','Full-time','45','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(9,'ISD-20','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-14T05:17:49.000+0000','Approved','Full-time','41','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(10,'ISD-6','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-11T05:52:53.000+0000','Approved','Full-time','42','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(11,'ISD-7','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-18T00:06:48.000+0000','Approved','Full-time','43','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(12,'ISD-8','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:52:05.000+0000','Approved','Full-time','21','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(13,'ISD-9','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:53:44.000+0000','Approved','Full-time','22','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(14,'ISD-10','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:43:21.000+0000','Approved','Half-time','23','4','2','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(15,'ISD-11','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:49:27.000+0000','Approved','Full-time','24','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(16,'ISD-12','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:57:54.000+0000','Approved','Full-time','25','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(17,'ISD-13','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:59:07.000+0000','Approved','Full-time','26','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(18,'ISD-14','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T07:47:51.000+0000','Approved','Full-time','27','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(19,'ISD-15','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T08:03:30.000+0000','Approved','Full-time','28','','','32');
INSERT INTO "rio_ed__Program_Application__c" VALUES(20,'ISD-16','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-04-17T08:04:25.000+0000','Approved','Full-time','29','','','32');
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
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(1,'ISD-31','BUS104:ICT115:P','B','Pre-Requisite','11','17');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(2,'ISD-14','BUS104:ICT115:P','B','Co-Requisite','11','18');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(3,'ISD-3','BUS101 pre-requisite','A','Pre-Requisite','17','89');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(4,'ISD-4','BUS101 pre-requisite','A','Pre-Requisite','17','90');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(5,'ISD-30','BUS101:ICT211:P','B','Pre-Requisite','23','103');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(6,'ISD-13','BUS101:ICT211:P','B','Co-Requisite','23','104');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(7,'ISD-34','BUS102:ICT211:P','B','Pre-Requisite','23','10');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(8,'ISD-28','BUS102:ICT211:P','B','Co-Requisite','23','11');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(9,'ISD-23','BUS104:ICT211:P','E','Pre-Requisite','23','17');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(10,'ISD-32','BUS104:ICT211:P','E','Co-Requisite','23','18');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(11,'ISD-22','BUS104:ICT120:P','D','Pre-Requisite','4','17');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(12,'ISD-19','BUS104:ICT120:P','D','Co-Requisite','4','18');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(13,'ISD-17','BUS105:O1','A','Other','','35');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(14,'ISD-24','ICT310:O','A','Other','','51');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(15,'ISD-16','BUS106:O1','A','Other','','112');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(16,'ISD-33','BUS106:O2','B','Other','','112');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(17,'ISD-20','BUS105:O2','B','Other','','35');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(18,'ISD-9','ICT221:CP','A','Credit Points','','5');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(19,'ISD-29','ICT221:CP','A','Credit Points','','6');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(20,'ISD-12','BUS104:ICT310:P','C','Pre-Requisite','8','17');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(21,'ISD-15','BUS104:ICT310:P','C','Co-Requisite','8','18');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(22,'ISD-6','ICT115:ICT112:P','A','Pre-Requisite','10','66');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(23,'ISD-25','ICT115:ICT112:P','A','Co-Requisite','10','68');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(24,'ISD-10','BUS101:ICT112:P','A','Pre-Requisite','10','103');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(25,'ISD-26','BUS101:ICT112:P','A','Co-Requisite','10','104');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(26,'ISD-5','ICT211:ICT112:C','A','Co-Requisite','10','42');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(27,'ISD-1','ICT112 pre-requisite','A','Pre-Requisite','10','3');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(28,'ISD-2','ICT112 Pre-Requisite','A','Pre-Requisite','10','4');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(29,'ISD-21','BUS102:ICT112:P','A','Pre-Requisite','10','10');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(30,'ISD-11','BUS104:ICT112:P','A','Pre-Requisite','10','17');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(31,'ISD-18','BUS104:ICT112:P','A','Co-Requisite','10','18');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(32,'ISD-27','BUS102:ICT112:P','A','Co-Requisite','10','11');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(33,'ISD-7','ICT120:ICT112:PEC','A','Pre-Requisite (Enrolled or Completed)','10','25');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(34,'ISD-8','ICT310:O','A','Other','','50');
CREATE TABLE "rio_ed__Program_Discipline__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Discipline__c" VALUES(1,'ISD-1','BUS Major','20.0','Major','1');
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
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(1,'ISD-10','Automatic all terms','Full Time V7','2.0','Full-time','Default','10');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(2,'ISD-1','Manual','Full Time','4.0','Full-time','Default','1');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(3,'ISD-2','Manual','Full Time V1','4.0','Full-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(4,'ISD-3','Manual','Half Time','8.0','Half-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(5,'ISD-4','Manual','Full Time','4.0','Full-time','Default','3');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(6,'ISD-6','Manual','Full Time V4','1.0','Full-time','Default','4');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(7,'ISD-8','Manual','Full Time V6','1.0','Full-time','Default','5');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(8,'ISD-9','Manual','Full Time V5','1.0','Full-time','Default','6');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(9,'ISD-7','Manual','Full Time V3','1.0','Full-time','Default','8');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(10,'ISD-5','Manual','Full Time V2','2.0','Full-time','Default','9');
CREATE TABLE "rio_ed__Qualified_Faculty__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Roles__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(1,'ISD-27','Lecturer','12','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(2,'ISD-28','Lecturer','13','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(3,'ISD-29','Lecturer','14','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(4,'ISD-10','Lecturer','15','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(5,'ISD-11','Lecturer','16','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(6,'ISD-12','Lecturer','17','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(7,'ISD-13','Lecturer','18','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(8,'ISD-21','Lecturer','19','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(9,'ISD-22','Lecturer','20','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(10,'ISD-14','Lecturer','21','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(11,'ISD-16','Lecturer','22','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(12,'ISD-17','Lecturer','23','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(13,'ISD-18','Lecturer','23','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(14,'ISD-19','Lecturer','24','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(15,'ISD-20','Lecturer','24','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(16,'ISD-1','Lecturer','1','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(17,'ISD-15','Lecturer','2','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(18,'ISD-23','Lecturer','3','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(19,'ISD-24','Lecturer','4','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(20,'ISD-25','Lecturer','4','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(21,'ISD-6','Lecturer','5','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(22,'ISD-7','Lecturer','6','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(23,'ISD-8','Lecturer','7','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(24,'ISD-9','Lecturer','7','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(25,'ISD-4','Lecturer','11','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(26,'ISD-5','Lecturer','11','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(27,'ISD-26','Lecturer','12','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(28,'ISD-30','Lecturer','8','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(29,'ISD-31','Lecturer','8','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(30,'ISD-32','Lecturer','9','33');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(31,'ISD-2','Lecturer','10','38');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(32,'ISD-3','Lecturer','10','34');
CREATE TABLE "rio_ed__Resource_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource_Type__c" VALUES(1,'ISD-1','Location');
CREATE TABLE "rio_ed__Resource__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"rio_ed__Public__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	"rio_ed__Resource_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource__c" VALUES(1,'ISD-13','Alpha 105','True','False','13','1');
INSERT INTO "rio_ed__Resource__c" VALUES(2,'ISD-14','Beta 105','True','False','14','1');
INSERT INTO "rio_ed__Resource__c" VALUES(3,'ISD-1','Beta 101','True','False','1','1');
INSERT INTO "rio_ed__Resource__c" VALUES(4,'ISD-2','Alpha 104','True','False','10','1');
INSERT INTO "rio_ed__Resource__c" VALUES(5,'ISD-3','Alpha 101','True','False','11','1');
INSERT INTO "rio_ed__Resource__c" VALUES(6,'ISD-4','Alpha 102','True','False','12','1');
INSERT INTO "rio_ed__Resource__c" VALUES(7,'ISD-5','Beta 102','True','False','2','1');
INSERT INTO "rio_ed__Resource__c" VALUES(8,'ISD-6','Beta 103','True','False','3','1');
INSERT INTO "rio_ed__Resource__c" VALUES(9,'ISD-7','Beta 104','True','False','4','1');
INSERT INTO "rio_ed__Resource__c" VALUES(10,'ISD-8','Alpha Building','True','False','5','1');
INSERT INTO "rio_ed__Resource__c" VALUES(11,'ISD-9','Beta Building','True','False','6','1');
INSERT INTO "rio_ed__Resource__c" VALUES(12,'ISD-10','Alpha 103','True','False','7','1');
INSERT INTO "rio_ed__Resource__c" VALUES(13,'ISD-11','Beta 100','True','False','8','1');
INSERT INTO "rio_ed__Resource__c" VALUES(14,'ISD-12','Alpha 100','True','False','9','1');
INSERT INTO "rio_ed__Resource__c" VALUES(15,'ISD-15','Alpha 106','True','False','15','1');
INSERT INTO "rio_ed__Resource__c" VALUES(16,'ISD-16','Beta 106','True','False','16','1');
CREATE TABLE "rio_ed__Role__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Auto_Allocate__c" VARCHAR(255), 
	"rio_ed__Double_Booking_Count__c" VARCHAR(255), 
	"rio_ed__Published__c" VARCHAR(255), 
	"rio_ed__Plan__c" VARCHAR(255), 
	"rio_ed__Resource_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Role__c" VALUES(1,'ISD-11','BUS301 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(2,'ISD-12','BUS102 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(3,'ISD-13','BUS211 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(4,'ISD-14','ICT211 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(5,'ISD-15','ICT120 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(6,'ISD-16','ICT352 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(7,'ISD-17','ICT221 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(8,'ISD-18','ICT320 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(9,'ISD-19','MGT210 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(10,'ISD-46','BUS101 Lecture #2 (Session Group)','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(11,'ISD-1','BUS105 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(12,'ISD-2','BUS101 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(13,'ISD-3','BUS104 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(14,'ISD-4','HRM311 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(15,'ISD-5','BUS320 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(16,'ISD-6','BUS106 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(17,'ISD-7','BUS203 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(18,'ISD-8','ICT310 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(19,'ISD-9','BUS108 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(20,'ISD-10','COR109 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(21,'ISD-47','ICT115 Tutorial Series #1','False','0.0','False','','1');
INSERT INTO "rio_ed__Role__c" VALUES(22,'ISD-24','ICT115 Lecture #2','False','0.0','True','78','1');
INSERT INTO "rio_ed__Role__c" VALUES(23,'ISD-48','ICT115 Lecture #1','False','0.0','True','78','1');
INSERT INTO "rio_ed__Role__c" VALUES(24,'ISD-49','ICT112 Lecture #1','False','0.0','True','79','1');
INSERT INTO "rio_ed__Role__c" VALUES(25,'ISD-50','Appointments','False','0.0','False','80','1');
INSERT INTO "rio_ed__Role__c" VALUES(26,'ISD-20','HRM321 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(27,'ISD-21','MGT310 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(28,'ISD-22','BUS101 Lecture #2 (Session Group)','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(29,'ISD-23','ICT115 Tutorial Series #1','False','0.0','False','','');
INSERT INTO "rio_ed__Role__c" VALUES(30,'ISD-25','BUS105 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(31,'ISD-26','BUS101 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(32,'ISD-27','BUS104 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(33,'ISD-29','BUS320 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(34,'ISD-30','BUS106 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(35,'ISD-31','BUS203 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(36,'ISD-32','ICT310 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(37,'ISD-33','BUS108 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(38,'ISD-34','COR109 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(39,'ISD-35','BUS301 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(40,'ISD-36','BUS102 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(41,'ISD-37','BUS211 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(42,'ISD-38','ICT211 Lecture #1','False','0.0','True','49','1');
INSERT INTO "rio_ed__Role__c" VALUES(43,'ISD-39','ICT120 Lecture #1','False','0.0','True','28','1');
INSERT INTO "rio_ed__Role__c" VALUES(44,'ISD-40','ICT352 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(45,'ISD-41','ICT221 Lecture #1','False','0.0','True','','1');
INSERT INTO "rio_ed__Role__c" VALUES(46,'ISD-42','ICT320 Lecture #1','False','0.0','True','','1');
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
INSERT INTO "rio_ed__Session_Connection__c" VALUES(1,'ISD-41','CC-0248 - Test Student 13','False','','','False','False','','Current','170','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(2,'ISD-42','CC-0260 - Test Student 14','False','','','False','False','','Current','182','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(3,'ISD-2','CC-0200 - Test Student 9','False','','','False','False','','Current','45','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(4,'ISD-3','CC-0272 - Test Student 15','False','','','False','False','','Current','57','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(5,'ISD-6','CC-0284 - Test Student 16','False','','','False','False','','Current','69','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(6,'ISD-14','CC-0006 - Fran Fisher','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','133','2','27');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(7,'ISD-9','CC-0000 - Fran Fisher','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','142','4','43');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(8,'ISD-10','CC-0000 - Fran Fisher','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','142','5','44');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(9,'ISD-11','CC-0015 - Fran Fisher','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','144','6','45');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(10,'ISD-12','CC-0008 - Fran Fisher','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','147','7','46');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(11,'ISD-13','CC-0007 - Fran Fisher','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','192','41','28');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(12,'ISD-15','CC-0021 - Fran Fisher','False','2023-09-18','Confirmed','True','False','2023-04-22','Current','140','44','42');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(13,'ISD-16','CC-0016 - Fran Fisher','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','194','45','29');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(14,'ISD-17','CC-0022 - Fran Fisher','False','2023-09-18','Confirmed','True','False','2023-04-22','Current','195','3','33');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(15,'ISD-18','CC-0014 - Fran Fisher','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','198','9','34');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(16,'ISD-19','CC-0013 - Fran Fisher','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','200','11','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(17,'ISD-28','CC-0023 - Fiona Forton','False','2023-09-18','Confirmed','True','False','2023-04-22','Current','111','8','40');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(18,'ISD-27','CC-0087 - Edward Educator','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','129','40','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(19,'ISD-20','CC-0088 - Edward Educator','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','130','37','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(20,'ISD-21','CC-0093 - Edward Educator','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','131','25','41');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(21,'ISD-22','CC-0090 - Edward Educator','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','132','42','47');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(22,'ISD-23','CC-0091 - Edward Educator','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','125','43','30');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(23,'ISD-24','CC-0089 - Edward Educator','False','2022-09-18','Confirmed','True','False','2022-07-18','Current','126','46','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(24,'ISD-25','CC-0094 - Edward Educator','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','127','47','32');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(25,'ISD-26','CC-0092 - Edward Educator','False','2023-02-18','Confirmed','True','False','2022-10-02','Current','128','10','35');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(26,'ISD-35','CC-0102 - Test Student 2','False','','','False','False','','Current','252','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(27,'ISD-32','CC-0104 - Test Student 2','False','','','False','False','','Current','201','','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(28,'ISD-33','CC-0106 - Test Student 2','False','','','False','False','','Current','202','','47');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(29,'ISD-34','CC-0095 - Test Student 2','False','','','False','False','','Current','253','','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(30,'ISD-39','CC-0082 - Test Student 1','False','','','False','False','','Current','211','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(31,'ISD-36','CC-0084 - Test Student 1','False','','','False','False','','Current','212','','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(32,'ISD-37','CC-0086 - Test Student 1','False','','','False','False','','Current','214','','47');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(33,'ISD-38','CC-0075 - Test Student 1','False','','','False','False','','Current','210','','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(34,'ISD-40','CC-0320 - Test Student 18','False','','','False','False','','Current','226','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(35,'ISD-43','CC-0224 - Test Student 11','False','','','False','False','','Current','258','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(36,'ISD-1','CC-0236 - Test Student 12','False','','','False','False','','Current','270','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(37,'ISD-4','CC-0176 - Test Student 7','False','','','False','False','','Current','137','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(38,'ISD-8','CC-0308 - Test Student 20','False','','','False','False','','Current','41','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(39,'ISD-31','CC-0188 - Test Student 8','False','','','False','False','','Current','13','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(40,'ISD-7','CC-0296 - Test Student 17','False','','','False','False','','Current','81','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(41,'ISD-5','CC-0212 - Test Student 10','False','','','False','False','','Current','95','','37');
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
INSERT INTO "rio_ed__Session_Time__c" VALUES(1,'ISD-a1k68000000x1bUAAQ','','','Monday','','14:00','','False','Monday','Weekly','','13:00','Active','Create/Update after today','9','8');
INSERT INTO "rio_ed__Session_Time__c" VALUES(2,'ISD-a1k68000000x1bVAAQ','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2022-09-18','11:00','Weekly','False','Monday','Weekly','2022-04-22','10:00','Active','Create/Update after today','9','27');
INSERT INTO "rio_ed__Session_Time__c" VALUES(3,'ISD-a1k68000000x1b2AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2023-09-18','17:00','Weekly','False','Monday','Weekly','2023-04-22','16:00','Active','Create/Update after today','9','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(4,'ISD-a1k68000000x1bXAAQ','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2022-09-18','10:00','Weekly','False','Monday','Weekly','2022-04-22','09:00','Active','Create/Update all','9','43');
INSERT INTO "rio_ed__Session_Time__c" VALUES(5,'ISD-a1k68000000x1bYAAQ','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Friday','2022-09-18','10:00','Weekly','False','Friday','Weekly','2022-04-22','09:00','Active','Create/Update all','9','44');
INSERT INTO "rio_ed__Session_Time__c" VALUES(6,'ISD-a1k68000000x1bZAAQ','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Wednesday','2023-02-18','17:00','Weekly','False','Wednesday','Weekly','2022-10-02','16:00','Active','Create/Update after today','9','45');
INSERT INTO "rio_ed__Session_Time__c" VALUES(7,'ISD-a1k68000000x1baAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2022-09-18','13:00','Weekly','False','Monday','Weekly','2022-04-22','12:00','Active','Create/Update after today','9','46');
INSERT INTO "rio_ed__Session_Time__c" VALUES(8,'ISD-a1k68000000x1b3AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Tuesday','2023-09-18','11:00','Weekly','False','Tuesday','Weekly','2023-04-22','10:00','Active','Create/Update after today','9','40');
INSERT INTO "rio_ed__Session_Time__c" VALUES(9,'ISD-a1k68000000x1b4AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2023-02-18','14:00','Weekly','False','Monday','Weekly','2022-10-02','13:00','Active','Create/Update after today','9','34');
INSERT INTO "rio_ed__Session_Time__c" VALUES(10,'ISD-a1k68000000x1b5AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Wednesday','2023-02-18','12:00','Weekly','False','Wednesday','Weekly','2022-10-02','11:00','Active','Create/Update after today','9','35');
INSERT INTO "rio_ed__Session_Time__c" VALUES(11,'ISD-a1k68000000x1b6AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2023-02-18','16:00','Weekly','False','Monday','Weekly','2022-10-02','15:00','Active','Create/Update after today','9','36');
INSERT INTO "rio_ed__Session_Time__c" VALUES(12,'ISD-a1k68000000x1b7AAA','','','Wednesday','','12:00','','False','Wednesday','Weekly','','11:00','Active','Create/Update after today','9','1');
INSERT INTO "rio_ed__Session_Time__c" VALUES(13,'ISD-a1k68000000x1b8AAA','','','Monday','','16:00','','False','Monday','Weekly','','15:00','Active','Create/Update after today','9','2');
INSERT INTO "rio_ed__Session_Time__c" VALUES(14,'ISD-a1k68000000x1b9AAA','','','Tuesday','','11:00','','False','Tuesday','Weekly','','10:00','Active','Create/Update after today','9','24');
INSERT INTO "rio_ed__Session_Time__c" VALUES(15,'ISD-a1k68000000x1bAAAQ','','','Wednesday','','15:00','','False','Wednesday','Weekly','','14:00','Active','Create/Update after today','9','25');
INSERT INTO "rio_ed__Session_Time__c" VALUES(16,'ISD-a1k68000000x1bCAAQ','','','Wednesday','','13:00','','False','Wednesday','Weekly','','12:00','Active','Create/Update after today','9','26');
INSERT INTO "rio_ed__Session_Time__c" VALUES(17,'ISD-a1k68000000x1bDAAQ','','','Tuesday','','13:00','','False','Tuesday','Weekly','','12:00','Active','Create/Update after today','9','9');
INSERT INTO "rio_ed__Session_Time__c" VALUES(18,'ISD-a1k68000000x1bEAAQ','','','Tuesday','','14:00','','False','Tuesday','Weekly','','13:00','Active','Create/Update after today','9','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(19,'ISD-a1k68000000x1bFAAQ','','','Monday','','10:00','','False','Monday','Weekly','','09:00','Active','Create/Update after today','9','12');
INSERT INTO "rio_ed__Session_Time__c" VALUES(20,'ISD-a1k68000000x1bGAAQ','','','Wednesday','','17:00','','False','Wednesday','Weekly','','16:00','Active','Create/Update after today','9','13');
INSERT INTO "rio_ed__Session_Time__c" VALUES(21,'ISD-a1k68000000x1bHAAQ','','','Monday','','13:00','','False','Monday','Weekly','','12:00','Active','Create/Update after today','9','16');
INSERT INTO "rio_ed__Session_Time__c" VALUES(22,'ISD-a1k68000000x1bIAAQ','','','Wednesday','','16:00','','False','Wednesday','Weekly','','15:00','Active','Create/Update after today','9','17');
INSERT INTO "rio_ed__Session_Time__c" VALUES(23,'ISD-a1k68000000x1bJAAQ','','','Wednesday','','10:00','','False','Wednesday','Weekly','','09:00','Active','Create/Update after today','9','18');
INSERT INTO "rio_ed__Session_Time__c" VALUES(24,'ISD-a1k68000000x1bKAAQ','','','Wednesday','','11:00','','False','Wednesday','Weekly','','10:00','Active','Create/Update after today','9','19');
INSERT INTO "rio_ed__Session_Time__c" VALUES(25,'ISD-a1k68000000x1bLAAQ','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Wednesday','2023-02-18','13:00','Weekly','False','Wednesday','Weekly','2022-10-02','12:00','Active','Create/Update after today','9','41');
INSERT INTO "rio_ed__Session_Time__c" VALUES(26,'ISD-a1k68000000x1bMAAQ','','','Tuesday','','12:00','','False','Tuesday','Weekly','','11:00','Active','Create/Update after today','9','14');
INSERT INTO "rio_ed__Session_Time__c" VALUES(27,'ISD-a1k68000000x1bNAAQ','','','Tuesday','','10:00','','False','Tuesday','Weekly','','09:00','Active','Create/Update after today','9','15');
INSERT INTO "rio_ed__Session_Time__c" VALUES(28,'ISD-a1k68000000x1bOAAQ','','','Monday','','11:00','','False','Monday','Weekly','','10:00','Active','Create/Update after today','9','20');
INSERT INTO "rio_ed__Session_Time__c" VALUES(29,'ISD-a1k68000000x1bPAAQ','','','Monday','','12:00','','False','Monday','Weekly','','11:00','Active','Create/Update after today','9','21');
INSERT INTO "rio_ed__Session_Time__c" VALUES(30,'ISD-a1k68000000x1bQAAQ','','','Monday','','15:00','','False','Monday','Weekly','','14:00','Active','Create/Update after today','9','22');
INSERT INTO "rio_ed__Session_Time__c" VALUES(31,'ISD-a1k68000000x1bRAAQ','','','Tuesday','','17:00','','False','Tuesday','Weekly','','16:00','Active','Create/Update after today','9','23');
INSERT INTO "rio_ed__Session_Time__c" VALUES(32,'ISD-a1k68000000x1bSAAQ','','','Wednesday','','14:00','','False','Wednesday','Weekly','','13:00','Active','Create/Update after today','9','6');
INSERT INTO "rio_ed__Session_Time__c" VALUES(33,'ISD-a1k68000000x1bTAAQ','','','Monday','','17:00','','False','Monday','Weekly','','16:00','Active','Create/Update after today','9','7');
INSERT INTO "rio_ed__Session_Time__c" VALUES(34,'ISD-a1k68000000x1amAAA','','','Thursday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(35,'ISD-a1k68000000x1anAAA','','','Friday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(36,'ISD-a1k68000000x1aoAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Tuesday','2022-09-18','16:00','Weekly','False','Tuesday','Weekly','2022-04-22','15:00','Active','Create/Update after today','','38');
INSERT INTO "rio_ed__Session_Time__c" VALUES(37,'ISD-a1k68000000x1apAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Tuesday','2022-09-18','16:00','Weekly','False','Tuesday','Weekly','2022-04-22','15:00','Active','Create/Update after today','10','39');
INSERT INTO "rio_ed__Session_Time__c" VALUES(38,'ISD-a1k68000000x1aqAAA','','','Tuesday','','15:00','','False','Tuesday','Weekly','','14:00','Active','Create/Update after today','10','3');
INSERT INTO "rio_ed__Session_Time__c" VALUES(39,'ISD-a1k68000000x1arAAA','','','Tuesday','','16:00','','False','Tuesday','Weekly','','15:00','Active','Create/Update after today','10','5');
INSERT INTO "rio_ed__Session_Time__c" VALUES(40,'ISD-a1k68000000x1asAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Tuesday','2022-09-18','15:00','Weekly','False','Tuesday','Weekly','2022-04-22','14:00','Active','Create/Update after today','10','37');
INSERT INTO "rio_ed__Session_Time__c" VALUES(41,'ISD-a1k68000000x1atAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2022-09-18','12:00','Weekly','False','Monday','Weekly','2022-04-22','11:00','Active','Create/Update after today','9','28');
INSERT INTO "rio_ed__Session_Time__c" VALUES(42,'ISD-a1k68000000x1avAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Wednesday','2022-09-18','10:00','Weekly','False','Wednesday','Weekly','2022-04-22','09:00','Active','Create/Update after today','9','47');
INSERT INTO "rio_ed__Session_Time__c" VALUES(43,'ISD-a1k68000000x1awAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Wednesday','2023-02-18','11:00','Weekly','False','Wednesday','Weekly','2022-10-02','10:00','Active','Create/Update after today','9','30');
INSERT INTO "rio_ed__Session_Time__c" VALUES(44,'ISD-a1k68000000x1ayAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Tuesday','2023-09-18','10:00','Weekly','False','Tuesday','Weekly','2023-04-22','09:00','Active','Create/Update after today','9','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(45,'ISD-a1k68000000x1azAAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2023-02-18','15:00','Weekly','False','Monday','Weekly','2022-10-02','14:00','Active','Create/Update after today','9','29');
INSERT INTO "rio_ed__Session_Time__c" VALUES(46,'ISD-a1k68000000x1b0AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Tuesday','2022-09-18','17:00','Weekly','False','Tuesday','Weekly','2022-04-22','16:00','Active','Create/Update after today','9','31');
INSERT INTO "rio_ed__Session_Time__c" VALUES(47,'ISD-a1k68000000x1b1AAA','Upsert','Session booking generation log 4/5/2023, 3:18 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Wednesday','2023-02-18','14:00','Weekly','False','Wednesday','Weekly','2022-10-02','13:00','Active','Create/Update after today','9','32');
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
INSERT INTO "rio_ed__Session__c" VALUES(1,'ISD-25','ICT310 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','8','');
INSERT INTO "rio_ed__Session__c" VALUES(2,'ISD-26','BUS211 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','9','');
INSERT INTO "rio_ed__Session__c" VALUES(3,'ISD-2','ICT112 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(4,'ISD-3','ICT112 Practical Series #2','01268000000gPOZAA2','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(5,'ISD-4','ICT115 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','Draft','','','11','21');
INSERT INTO "rio_ed__Session__c" VALUES(6,'ISD-22','ICT352 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(7,'ISD-23','BUS301 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','13','');
INSERT INTO "rio_ed__Session__c" VALUES(8,'ISD-24','BUS108 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','14','');
INSERT INTO "rio_ed__Session__c" VALUES(9,'ISD-8','HRM321 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','15','');
INSERT INTO "rio_ed__Session__c" VALUES(10,'ISD-9','IBS220 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','16','');
INSERT INTO "rio_ed__Session__c" VALUES(11,'ISD-10','BUS101 Tutorial Series #2','01268000000gPOZAA2','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(12,'ISD-11','BUS101 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(13,'ISD-12','BUS106 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','18','');
INSERT INTO "rio_ed__Session__c" VALUES(14,'ISD-18','HRM311 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(15,'ISD-19','BUS320 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','20','');
INSERT INTO "rio_ed__Session__c" VALUES(16,'ISD-13','BUS105 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','21','');
INSERT INTO "rio_ed__Session__c" VALUES(17,'ISD-15','MGT310 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','22','');
INSERT INTO "rio_ed__Session__c" VALUES(18,'ISD-16','ICT211 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','23','');
INSERT INTO "rio_ed__Session__c" VALUES(19,'ISD-17','ICT221 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','24','');
INSERT INTO "rio_ed__Session__c" VALUES(20,'ISD-1','BUS102 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','1','');
INSERT INTO "rio_ed__Session__c" VALUES(21,'ISD-14','BUS104 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','2','');
INSERT INTO "rio_ed__Session__c" VALUES(22,'ISD-20','BUS203 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','3','');
INSERT INTO "rio_ed__Session__c" VALUES(23,'ISD-21','ICT120 Lecture #1','01268000000gPOZAA2','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','4','');
INSERT INTO "rio_ed__Session__c" VALUES(24,'ISD-5','COR109 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','5','');
INSERT INTO "rio_ed__Session__c" VALUES(25,'ISD-6','MGT210 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','6','');
INSERT INTO "rio_ed__Session__c" VALUES(26,'ISD-7','ICT320 Lecture #1','01268000000gPOZAA2','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','7','');
INSERT INTO "rio_ed__Session__c" VALUES(27,'ISD-39','BUS102 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','9.0','True','Classroom','Lecture','Booked','','65','','40');
INSERT INTO "rio_ed__Session__c" VALUES(28,'ISD-36','BUS104 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','9.0','True','Classroom','Lecture','Booked','','9','','32');
INSERT INTO "rio_ed__Session__c" VALUES(29,'ISD-43','BUS203 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','11','','35');
INSERT INTO "rio_ed__Session__c" VALUES(30,'ISD-40','ICT221 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','61','','45');
INSERT INTO "rio_ed__Session__c" VALUES(31,'ISD-44','ICT120 Lecture #1','01268000000gPOYAA2','Each Session Time','A','2.0','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','9.0','True','Classroom','Lecture','Booked','0.0','39','','43');
INSERT INTO "rio_ed__Session__c" VALUES(32,'ISD-45','ICT352 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','4','','44');
INSERT INTO "rio_ed__Session__c" VALUES(33,'ISD-46','BUS301 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','22.0','True','Classroom','Lecture','Booked','','5','','39');
INSERT INTO "rio_ed__Session__c" VALUES(34,'ISD-47','BUS108 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','8','','37');
INSERT INTO "rio_ed__Session__c" VALUES(35,'ISD-48','ICT310 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','18','','36');
INSERT INTO "rio_ed__Session__c" VALUES(36,'ISD-49','BUS211 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','20','','41');
INSERT INTO "rio_ed__Session__c" VALUES(37,'ISD-50','ICT112 Lecture #1','01268000000gPOYAA2','Each Session Time','A','15.0','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','9.0','True','Computer Lab','Lecture','Booked','0.0','24','','24');
INSERT INTO "rio_ed__Session__c" VALUES(38,'ISD-51','ICT115 Lecture #2','01268000000gPOYAA2','Each Session Time','','0.0','50.0','No Faculty Assigned','2022-07-18T05:18:51.000+0000','9.0','True','Computer Lab','Lecture','Booked','','2','','22');
INSERT INTO "rio_ed__Session__c" VALUES(39,'ISD-27','ICT115 Lecture #1','01268000000gPOYAA2','Each Session Time','A','2.0','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','9.0','True','Computer Lab','Lecture','Booked','0.0','2','','23');
INSERT INTO "rio_ed__Session__c" VALUES(40,'ISD-28','COR109 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','22.0','True','Classroom','Lecture','Booked','','43','','38');
INSERT INTO "rio_ed__Session__c" VALUES(41,'ISD-30','ICT320 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','47','','46');
INSERT INTO "rio_ed__Session__c" VALUES(42,'ISD-42','BUS320 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','22.0','True','Classroom','Lecture','Booked','','48','','33');
INSERT INTO "rio_ed__Session__c" VALUES(43,'ISD-32','BUS101 Lecture #1','01268000000gPOYAA2','Each Session Time','A','0.0','15.0','All Confirmed','2022-07-18T05:18:50.000+0000','22.0','True','Classroom','Lecture','Booked','','32','','31');
INSERT INTO "rio_ed__Session__c" VALUES(44,'ISD-33','BUS101 Lecture #2 (Session Group)','01268000000gPOYAA2','Each Session Time','A','0.0','10.0','All Confirmed','2022-07-18T05:18:51.000+0000','21.0','True','Classroom','Lecture','Booked','0.0','32','','10');
INSERT INTO "rio_ed__Session__c" VALUES(45,'ISD-34','BUS106 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','20.0','True','Classroom','Lecture','Booked','','36','','34');
INSERT INTO "rio_ed__Session__c" VALUES(46,'ISD-35','BUS105 Lecture #1','01268000000gPOYAA2','Each Session Time','A','','15.0','All Confirmed','2022-07-18T05:18:50.000+0000','9.0','True','Classroom','Lecture','Booked','','53','','30');
INSERT INTO "rio_ed__Session__c" VALUES(47,'ISD-38','ICT211 Lecture #1','01268000000gPOYAA2','Each Session Time','A','2.0','15.0','All Confirmed','2022-07-18T05:18:51.000+0000','8.0','True','Classroom','Lecture','Booked','0.0','58','','42');
CREATE TABLE "rio_ed__Session__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('01268000000gPOYAA2','Class');
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('01268000000gPOZAA2','Template');
CREATE TABLE "rio_ed__Student_Fee__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Due_Date__c" VARCHAR(255), 
	"rio_ed__Fee_Reference__c" VARCHAR(255), 
	"rio_ed__Student_Fee_Label__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Enrollment__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Student_Fee__c" VALUES(1,'ISD-6','2022-04-17','F-000000006','Bachelor of Business Information System','Tuition','10');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(2,'ISD-14','2022-04-17','F-000000000','Bachelor of Business Information System','Tuition','3');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(3,'ISD-15','2022-04-17','F-000000005','Bachelor of Business Information System','Tuition','4');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(4,'ISD-16','2022-04-17','F-000000009','Bachelor of Business Information System','Tuition','5');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(5,'ISD-17','2022-04-17','F-000000010','Bachelor of Business Information System','Tuition','11');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(6,'ISD-18','2022-04-17','F-000000016','Bachelor of Business Information System','Tuition','17');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(7,'ISD-19','2022-04-17','F-000000017','Bachelor of Business Information System','Tuition','18');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(8,'ISD-2','2022-04-17','F-000000018','Bachelor of Business Information System','Tuition','19');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(9,'ISD-3','2022-04-17','F-000000001','Bachelor of Business Information System','Tuition','12');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(10,'ISD-4','2022-04-18','F-000000003','Bachelor of Business Information System','Tuition','7');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(11,'ISD-5','2022-04-18','F-000000004','Bachelor of Business Information System','Tuition','6');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(12,'ISD-7','2022-03-25','F-000000011','Bachelor of Business Information System','Tuition','13');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(13,'ISD-8','2022-04-15','F-000000012','Bachelor of Business Information System','Tuition','14');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(14,'ISD-9','2022-04-14','F-000000015','Bachelor of Business Information System','Tuition','15');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(15,'ISD-10','2022-04-14','F-000000013','Bachelor of Business Information System','Tuition','16');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(16,'ISD-11','2022-04-11','F-000000014','Bachelor of Business Information System','Tuition','8');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(17,'ISD-1','2022-04-18','F-000000002','Bachelor of Business Information System','Tuition','9');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(18,'ISD-12','2022-04-17','F-000000007','Bachelor of Business Information System','Tuition','1');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(19,'ISD-13','2022-04-17','F-000000008','Bachelor of Business Information System','Tuition','2');
COMMIT;
