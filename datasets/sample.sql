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
INSERT INTO "Account" VALUES(14,'ISD-21','Poole Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','46');
INSERT INTO "Account" VALUES(15,'ISD-22','Vance Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','47');
INSERT INTO "Account" VALUES(16,'ISD-23','Steward Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','21');
INSERT INTO "Account" VALUES(17,'ISD-24','Mack Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','22');
INSERT INTO "Account" VALUES(18,'ISD-25','Shay Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','23');
INSERT INTO "Account" VALUES(19,'ISD-26','Richards Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','24');
INSERT INTO "Account" VALUES(20,'ISD-27','Hunter Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','25');
INSERT INTO "Account" VALUES(21,'ISD-28','Daily Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','26');
INSERT INTO "Account" VALUES(22,'ISD-29','Short Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','27');
INSERT INTO "Account" VALUES(23,'ISD-30','Shelton Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','28');
INSERT INTO "Account" VALUES(24,'ISD-31','Underwood Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','29');
INSERT INTO "Account" VALUES(25,'ISD-32','Kramer Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','30');
INSERT INTO "Account" VALUES(26,'ISD-1','School of Business','0127Q000000q1T7QAI','False','','Full Program','','30','32');
INSERT INTO "Account" VALUES(27,'ISD-2','Bachelor of Business Management','0127Q000000q1T1QAI','False','RIOUNI03','Full Program','','26','');
INSERT INTO "Account" VALUES(28,'ISD-3','Campus: Sunshine Coast','0127Q000000q1TWQAY','True','','Full Program','Australia/Brisbane','30','');
INSERT INTO "Account" VALUES(29,'ISD-4','Campus: Brisbane','0127Q000000q1TWQAY','True','','Full Program','Australia/Brisbane','30','');
INSERT INTO "Account" VALUES(30,'ISD-5','RIO University','0127Q000000q1T4QAI','False','','Full Program','','','');
INSERT INTO "Account" VALUES(31,'ISD-6','Campus: Sydney','0127Q000000q1TWQAY','True','','Full Program','Australia/Sydney','30','');
INSERT INTO "Account" VALUES(32,'ISD-7','School of Art','0127Q000000q1T7QAI','False','','Full Program','','30','');
INSERT INTO "Account" VALUES(33,'ISD-8','Bachelor of Business Information System','0127Q000000q1T1QAI','False','RIOUNI02','Full Program','','26','');
INSERT INTO "Account" VALUES(34,'ISD-9','Freeman Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','34');
INSERT INTO "Account" VALUES(35,'ISD-10','Christensen Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','35');
INSERT INTO "Account" VALUES(36,'ISD-11','Smith Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','36');
INSERT INTO "Account" VALUES(37,'ISD-12','Forton Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','37');
INSERT INTO "Account" VALUES(38,'ISD-15','Educator Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','31');
INSERT INTO "Account" VALUES(39,'ISD-16','Cruz Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','33');
INSERT INTO "Account" VALUES(40,'ISD-17','Randall Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','40');
INSERT INTO "Account" VALUES(41,'ISD-18','Robinson Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','41');
INSERT INTO "Account" VALUES(42,'ISD-19','Burton Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','44');
INSERT INTO "Account" VALUES(43,'ISD-20','Wang Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','45');
INSERT INTO "Account" VALUES(44,'ISD-13','Huber Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','38');
INSERT INTO "Account" VALUES(45,'ISD-14','Andrews Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','39');
INSERT INTO "Account" VALUES(46,'ISD-33','Educator Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','42');
INSERT INTO "Account" VALUES(47,'ISD-34','Educator Administrative Account','0127Q000000q1T2QAI','False','','Full Program','','','43');
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T1QAI','Academic_Program');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T2QAI','Administrative');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T3QAI','Business_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T4QAI','Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1TVQAY','External_Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T5QAI','HH_Account');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1TWQAY','Location');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T6QAI','Sports_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0127Q000000q1T7QAI','University_Department');
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
INSERT INTO "Contact" VALUES(21,'ISD-16','2003-08-14','ksteward@riouni.com','Kristin','Steward','Edison','USA','08817','NJ','925 Princess Ave.','','','United States of America (the)','Female','University Email','ksteward@riouni.com','','','False','rio000000010','16');
INSERT INTO "Contact" VALUES(22,'ISD-17','2003-04-26','emack@riouni.com','Emmanuel','Mack','Taylors','USA','29687','SC','8591 Blackburn Street','','','United States of America (the)','Male','University Email','emack@riouni.com','','','False','rio000000009','17');
INSERT INTO "Contact" VALUES(23,'ISD-18','2003-10-20','cshay@riouni.com','Christy','Shay','Decatur','USA','30030','GA','7717 Tower St.','','','United States of America (the)','Female','University Email','cshay@riouni.com','','','False','rio000000008','18');
INSERT INTO "Contact" VALUES(24,'ISD-19','2002-02-04','brichards@riouni.com','Brandy','Richards','Hanover Park','USA','60133','IL','8 Fulton St.','','','United States of America (the)','Female','University Email','brichards@riouni.com','','','False','rio000000007','19');
INSERT INTO "Contact" VALUES(25,'ISD-20','2003-10-30','shunter@riouni.com','Sammy','Hunter','Niles','USA','49120','MI','209 Greenview Drive','','','United States of America (the)','Male','University Email','shunter@riouni.com','','','False','rio000000006','20');
INSERT INTO "Contact" VALUES(26,'ISD-21','2002-04-03','ldaily@riouni.com','Lorna','Daily','Gallatin','USA','37066','TN','9 Arnold Rd.','','','','Female','University Email','ldaily@riouni.com','','','False','rio000000005','21');
INSERT INTO "Contact" VALUES(27,'ISD-22','2003-05-28','bshort@riouni.com','Buddy','Short','Dearborn','USA','48124','MI','9420 West Drive','','','United States of America (the)','Male','University Email','bshort@riouni.com','','','False','rio000000004','22');
INSERT INTO "Contact" VALUES(28,'ISD-23','2002-07-11','mshelton@riouni.com','Madeline','Shelton','Niceville','USA','32578','FL','7200 Hartford Drive','','','United States of America (the)','Female','University Email','mshelton@riouni.com','','','False','rio000000003','23');
INSERT INTO "Contact" VALUES(29,'ISD-24','2003-06-10','dunderwood@riouni.com','Donna','Underwood','Madisonville','USA','42431','KY','32 Orange Lane','','','United States of America (the)','Female','University Email','dunderwood@riouni.com','','','False','rio000000002','24');
INSERT INTO "Contact" VALUES(30,'ISD-25','2003-09-10','dkramer@riouni.com','Doris','Kramer','Powder Springs','USA','30127','GA','967 Fordham St.','','','United States of America (the)','Female','University Email','dkramer@riouni.com','','','False','rio000000001','25');
INSERT INTO "Contact" VALUES(31,'ISD-8','','eef@eef.eef','Edward','Educator','','','','','','','','','Male','University Email','eef@eef.eef','','','True','','38');
INSERT INTO "Contact" VALUES(32,'ISD-1','','fran@riouni.edu','Fran','Fisher','','','','','','Ms.','','','Female','University Email','fran@riouni.edu','','','True','','26');
INSERT INTO "Contact" VALUES(33,'ISD-9','2001-12-14','tcruz@riouni.com','Tim','Cruz','Latrobe','USA','15650','PA','9867 Windfall Ave.','','','United States of America (the)','Male','University Email','tcruz@riouni.com','','','False','rio000000014','39');
INSERT INTO "Contact" VALUES(34,'ISD-2','','fred@riouni.edu','Freddie','Freeman','','','','','','Mr.','','','Male','University Email','fred@riouni.edu','','','True','','34');
INSERT INTO "Contact" VALUES(35,'ISD-3','2002-12-17','bchristensen@riouni.com','Bonnie','Christensen','Montgomery','USA','36109','AL','7253 Snake Hill Lane','','','United States of America (the)','Female','University Email','bchristensen@riouni.com','','','False','rio000000011','35');
INSERT INTO "Contact" VALUES(36,'ISD-4','','jsmith@riouni.edu','John','Smith','','','','','','','jsmith@riouni.edu','','Male','Alternate Email','','john.smith','john.smith@rioedplayground.com','False','','36');
INSERT INTO "Contact" VALUES(37,'ISD-5','','fiona@riouni.edu','Fiona','Forton','','','','','','Ms.','','','Female','University Email','fiona@riouni.edu','','','True','','37');
INSERT INTO "Contact" VALUES(38,'ISD-6','2004-03-20','ehuber@riouni.com','Eleanor','Huber','Charlotte','USA','28205','NC','301 W. Wild Rose Street','','','United States of America (the)','Female','University Email','ehuber@riouni.com','','','False','rio000000012','44');
INSERT INTO "Contact" VALUES(39,'ISD-7','2003-11-15','candrews@riouni.com','Charlotte','Andrews','Pickerington','USA','43147','OH','9946 Ocean St.','','','United States of America (the)','Female','University Email','candrews@riouni.com','','','False','rio000000013','45');
INSERT INTO "Contact" VALUES(40,'ISD-10','2002-06-08','hrandall@riouni.com','Howard','Randall','Dalton','USA','30721','GA','880 Chapel Street','','','United States of America (the)','Male','University Email','hrandall@riouni.com','','','False','rio000000015','40');
INSERT INTO "Contact" VALUES(41,'ISD-11','2001-10-06','grobinson@riouni.com','Gregg','Robinson','Billerica','USA','01821','MA','302 W. Cardinal Lane','','','United States of America (the)','Male','University Email','grobinson@riouni.com','','','False','rio000000016','41');
INSERT INTO "Contact" VALUES(42,'ISD-26','','gef@gef.gef','Gary','Educator','','','','','','','','','','University Email','gef@gef.gef','','','True','','46');
INSERT INTO "Contact" VALUES(43,'ISD-27','','fef@fef.fef','Fendi','Educator','','','','','','','','','','University Email','fef@fef.fef','','','True','','47');
INSERT INTO "Contact" VALUES(44,'ISD-12','2002-07-01','gburton@riouni.com','Gwen','Burton','Hinesville','USA','31313','GA','7778 Canterbury Street','','','United States of America (the)','Female','University Email','gburton@riouni.com','','','False','rio000000017','42');
INSERT INTO "Contact" VALUES(45,'ISD-13','2002-09-05','lwang@riouni.com','Lucy','Wang','Lynchburg','USA','24502','VA','7364 W. Arlington Street','','','United States of America (the)','Female','University Email','lwang@riouni.com','','','False','rio000000018','43');
INSERT INTO "Contact" VALUES(46,'ISD-14','2002-02-19','spoole@riouni.com','Sidney','Poole','Alabaster','USA','35007','AL','276 Essex Ave.','','','United States of America (the)','Male','University Email','spoole@riouni.com','','','False','rio000000019','14');
INSERT INTO "Contact" VALUES(47,'ISD-15','2001-10-10','bvance@riouni.com','Brenda','Vance','Maineville','USA','45039','OH','7514 Westport Ave.','','','United States of America (the)','Female','University Email','bvance@riouni.com','','','False','rio000000020','15');
CREATE TABLE "hed__Affiliation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"hed__Role__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Affiliation__c" VALUES(1,'ISD-25','','Current','33','29');
INSERT INTO "hed__Affiliation__c" VALUES(2,'ISD-26','','Current','33','30');
INSERT INTO "hed__Affiliation__c" VALUES(3,'ISD-5','','Current','33','35');
INSERT INTO "hed__Affiliation__c" VALUES(4,'ISD-6','','Former','33','36');
INSERT INTO "hed__Affiliation__c" VALUES(5,'ISD-7','','Current','33','36');
INSERT INTO "hed__Affiliation__c" VALUES(6,'ISD-8','','Current','33','38');
INSERT INTO "hed__Affiliation__c" VALUES(7,'ISD-9','','Current','33','39');
INSERT INTO "hed__Affiliation__c" VALUES(8,'ISD-43','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(9,'ISD-27','','Current','33','41');
INSERT INTO "hed__Affiliation__c" VALUES(10,'ISD-10','','Current','33','44');
INSERT INTO "hed__Affiliation__c" VALUES(11,'ISD-11','','Current','33','45');
INSERT INTO "hed__Affiliation__c" VALUES(12,'ISD-12','','Current','33','46');
INSERT INTO "hed__Affiliation__c" VALUES(13,'ISD-13','','Current','33','47');
INSERT INTO "hed__Affiliation__c" VALUES(14,'ISD-14','','Current','33','21');
INSERT INTO "hed__Affiliation__c" VALUES(15,'ISD-15','','Former','33','21');
INSERT INTO "hed__Affiliation__c" VALUES(16,'ISD-16','','Former','33','21');
INSERT INTO "hed__Affiliation__c" VALUES(17,'ISD-17','','Former','33','21');
INSERT INTO "hed__Affiliation__c" VALUES(18,'ISD-18','','Current','33','22');
INSERT INTO "hed__Affiliation__c" VALUES(19,'ISD-19','','Current','33','23');
INSERT INTO "hed__Affiliation__c" VALUES(20,'ISD-2','Faculty','Current','26','31');
INSERT INTO "hed__Affiliation__c" VALUES(21,'ISD-3','Faculty','Current','26','32');
INSERT INTO "hed__Affiliation__c" VALUES(22,'ISD-4','Faculty','Current','26','34');
INSERT INTO "hed__Affiliation__c" VALUES(23,'ISD-1','Faculty','Current','26','37');
INSERT INTO "hed__Affiliation__c" VALUES(24,'ISD-28','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(25,'ISD-29','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(26,'ISD-31','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(27,'ISD-32','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(28,'ISD-33','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(29,'ISD-34','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(30,'ISD-20','','Current','33','24');
INSERT INTO "hed__Affiliation__c" VALUES(31,'ISD-21','','Current','33','25');
INSERT INTO "hed__Affiliation__c" VALUES(32,'ISD-22','','Current','33','26');
INSERT INTO "hed__Affiliation__c" VALUES(33,'ISD-23','','Current','33','27');
INSERT INTO "hed__Affiliation__c" VALUES(34,'ISD-24','','Current','33','28');
INSERT INTO "hed__Affiliation__c" VALUES(35,'ISD-36','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(36,'ISD-44','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(37,'ISD-45','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(38,'ISD-46','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(39,'ISD-47','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(40,'ISD-48','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(41,'ISD-49','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(42,'ISD-50','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(43,'ISD-51','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(44,'ISD-52','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(45,'ISD-53','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(46,'ISD-54','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(47,'ISD-55','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(48,'ISD-56','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(49,'ISD-57','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(50,'ISD-58','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(51,'ISD-59','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(52,'ISD-60','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(53,'ISD-61','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(54,'ISD-62','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(55,'ISD-63','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(56,'ISD-64','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(57,'ISD-65','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(58,'ISD-66','','Former','33','');
INSERT INTO "hed__Affiliation__c" VALUES(59,'ISD-30','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(60,'ISD-35','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(61,'ISD-37','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(62,'ISD-38','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(63,'ISD-39','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(64,'ISD-40','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(65,'ISD-41','','Former','33','40');
INSERT INTO "hed__Affiliation__c" VALUES(66,'ISD-42','','Former','33','40');
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
INSERT INTO "hed__Course_Enrollment__c" VALUES(1,'ISD-90','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(2,'ISD-91','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(3,'ISD-92','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(4,'ISD-86','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(5,'ISD-93','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(6,'ISD-94','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(7,'ISD-62','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(8,'ISD-85','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','28','','17','23','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(9,'ISD-95','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','28','36','17','23','16','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(10,'ISD-99','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(11,'ISD-100','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(12,'ISD-101','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(13,'ISD-102','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(14,'ISD-103','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(15,'ISD-104','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(16,'ISD-98','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(17,'ISD-126','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(18,'ISD-127','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(19,'ISD-96','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','29','','18','24','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(20,'ISD-97','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','29','','18','24','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(21,'ISD-128','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-22','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-05-26','33','','29','36','18','24','20','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(22,'ISD-132','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(23,'ISD-133','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(24,'ISD-134','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(25,'ISD-135','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(26,'ISD-136','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(27,'ISD-137','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(28,'ISD-131','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(29,'ISD-138','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(30,'ISD-139','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(31,'ISD-129','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','30','','19','25','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(32,'ISD-130','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','30','','19','25','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(33,'ISD-140','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-22','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','30','36','19','25','24','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(34,'ISD-117','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(35,'ISD-118','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(36,'ISD-119','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(37,'ISD-120','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(38,'ISD-121','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(39,'ISD-122','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(40,'ISD-116','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(41,'ISD-123','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(42,'ISD-124','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(43,'ISD-114','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','35','','1','27','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(44,'ISD-115','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','35','','1','27','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(45,'ISD-125','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','35','36','1','27','32','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(46,'ISD-148','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(47,'ISD-149','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(48,'ISD-150','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(49,'ISD-151','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(50,'ISD-147','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(51,'ISD-152','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(52,'ISD-153','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','36','','2','28','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(53,'ISD-146','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','36','','2','28','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(54,'ISD-162','0127Q000000q1TSQAY','10.0','10.0','77.0','False','Current','1.0','','2022-11-22','2022-05-29','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Insufficient','','2022-06-26','33','','36','36','2','28','36','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(55,'ISD-170','0127Q000000q1TSQAY','','','','False','Current','1.0','','2022-11-22','2022-05-29','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','36','36','2','28','36','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(56,'ISD-154','0127Q000000q1TSQAY','10.0','10.0','96.0','False','Current','1.0','','2022-11-22','2022-05-30','Enrolled','1000.0','Self Paid','7.0','Pass','Educational Institution','HD - High Distinction','Self Paid','True','True','Insufficient','','2022-06-26','33','','36','40','2','28','36','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(57,'ISD-155','0127Q000000q1TSQAY','','','','False','Current','1.0','','2022-11-22','2022-05-30','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','2022-06-26','33','','36','40','2','28','36','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(58,'ISD-156','0127Q000000q1TSQAY','','','','False','Current','1.0','','2022-11-22','2022-05-29','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','36','40','2','28','36','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(59,'ISD-157','0127Q000000q1TSQAY','','','','False','Current','1.0','','2022-11-22','2022-05-29','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','36','67','2','28','36','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(60,'ISD-158','0127Q000000q1TSQAY','10.0','10.0','84.0','False','Current','1.0','2022-08-24','2022-11-22','2022-05-30','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-06-26','33','','36','67','2','28','36','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(61,'ISD-159','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-05-30','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','36','20','2','28','36','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(62,'ISD-160','0127Q000000q1TSQAY','10.0','10.0','78.0','False','Current','1.0','2022-08-24','2022-11-22','2022-05-30','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-06-26','33','','36','20','2','28','36','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(63,'ISD-161','0127Q000000q1TSQAY','','','','False','Current','1.0','','2022-11-22','2022-05-29','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','36','20','2','28','36','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(64,'ISD-173','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(65,'ISD-174','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(66,'ISD-175','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(67,'ISD-176','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(68,'ISD-177','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(69,'ISD-178','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(70,'ISD-179','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(71,'ISD-180','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(72,'ISD-181','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(73,'ISD-171','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','38','','3','29','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(74,'ISD-172','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','38','','3','29','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(75,'ISD-182','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','','33','','38','','3','29','40','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(76,'ISD-185','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(77,'ISD-186','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(78,'ISD-187','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(79,'ISD-188','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(80,'ISD-184','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(81,'ISD-189','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(82,'ISD-190','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','39','','4','30','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(83,'ISD-183','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','39','','4','30','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(84,'ISD-194','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-05-26','33','','39','36','4','30','44','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(85,'ISD-191','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','39','40','4','30','44','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(86,'ISD-192','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','39','67','4','30','44','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(87,'ISD-193','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','39','20','4','30','44','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(88,'ISD-262','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(89,'ISD-263','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(90,'ISD-257','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(91,'ISD-264','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(92,'ISD-265','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(93,'ISD-255','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(94,'ISD-256','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','22','','11','35','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(95,'ISD-266','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','22','36','11','35','68','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(96,'ISD-270','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(97,'ISD-271','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(98,'ISD-272','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(99,'ISD-273','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(100,'ISD-274','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(101,'ISD-275','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(102,'ISD-269','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(103,'ISD-276','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(104,'ISD-277','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(105,'ISD-267','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','23','','12','36','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(106,'ISD-268','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','23','','12','36','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(107,'ISD-278','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','23','36','12','36','72','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(108,'ISD-282','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(109,'ISD-283','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(110,'ISD-284','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(111,'ISD-285','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(112,'ISD-286','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(113,'ISD-287','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(114,'ISD-281','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(115,'ISD-1','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(116,'ISD-2','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(117,'ISD-279','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','24','','13','37','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(118,'ISD-280','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','24','','13','37','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(119,'ISD-3','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','24','36','13','37','76','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(120,'ISD-7','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(121,'ISD-8','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(122,'ISD-9','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(123,'ISD-10','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(124,'ISD-11','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(125,'ISD-12','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(126,'ISD-6','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(127,'ISD-13','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(128,'ISD-14','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(129,'ISD-4','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','25','','14','38','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(130,'ISD-5','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','25','','14','38','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(131,'ISD-15','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','25','36','14','38','80','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(132,'ISD-19','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(133,'ISD-20','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(134,'ISD-43','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(135,'ISD-44','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(136,'ISD-45','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(137,'ISD-46','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(138,'ISD-18','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(139,'ISD-47','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(140,'ISD-48','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(141,'ISD-16','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','26','','15','21','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(142,'ISD-17','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','26','','15','21','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(143,'ISD-49','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','26','36','15','21','8','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(144,'ISD-53','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(145,'ISD-54','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(146,'ISD-55','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(147,'ISD-56','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(148,'ISD-57','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(149,'ISD-58','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(150,'ISD-52','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(151,'ISD-59','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(152,'ISD-60','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(153,'ISD-50','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','27','','16','22','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(154,'ISD-51','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','27','','16','22','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(155,'ISD-61','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','27','36','16','22','12','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(156,'ISD-87','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(157,'ISD-88','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(158,'ISD-89','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','28','','17','23','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(159,'ISD-27','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','9','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(160,'ISD-30','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','10','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(161,'ISD-41','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','36','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(162,'ISD-21','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','53','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(163,'ISD-22','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','54','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(164,'ISD-23','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','57','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(165,'ISD-24','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(166,'ISD-25','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','61','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(167,'ISD-26','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','62','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(168,'ISD-28','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','13','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(169,'ISD-29','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','14','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(170,'ISD-31','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','5','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(171,'ISD-32','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','6','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(172,'ISD-33','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(173,'ISD-34','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','16','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(174,'ISD-35','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','23','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(175,'ISD-36','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(176,'ISD-37','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','25','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(177,'ISD-38','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','26','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(178,'ISD-39','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','31','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(179,'ISD-40','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','21','32','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(180,'ISD-113','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','36','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(181,'ISD-78','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','39','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(182,'ISD-79','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(183,'ISD-80','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','47','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(184,'ISD-81','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','48','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(185,'ISD-112','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','35','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(186,'ISD-82','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','66','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(187,'ISD-83','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','67','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(188,'ISD-84','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','1','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(189,'ISD-105','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','2','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(190,'ISD-106','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(191,'ISD-107','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','20','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(192,'ISD-108','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','21','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(193,'ISD-109','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','22','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(194,'ISD-110','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','29','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(195,'ISD-111','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','22','34','30','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(196,'ISD-42','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','44','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(197,'ISD-63','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','45','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(198,'ISD-64','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','46','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(199,'ISD-65','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','49','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(200,'ISD-66','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','50','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(201,'ISD-67','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','63','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(202,'ISD-68','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','3','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(203,'ISD-69','0127Q000000q1TRQAY','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','26','23','37','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(204,'ISD-77','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','36','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(205,'ISD-70','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(206,'ISD-71','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','48','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(207,'ISD-72','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','67','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(208,'ISD-73','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','2','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(209,'ISD-74','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','20','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(210,'ISD-75','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','22','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(211,'ISD-76','0127Q000000q1TRQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','26','20','31','30','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(212,'ISD-142','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(213,'ISD-143','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(214,'ISD-144','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(215,'ISD-145','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(216,'ISD-163','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(217,'ISD-164','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(218,'ISD-141','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','41','','5','26','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(219,'ISD-165','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','41','','5','26','27','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(220,'ISD-169','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','41','36','5','26','27','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(221,'ISD-166','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-06-26','33','','41','40','5','26','27','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(222,'ISD-167','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-06-26','33','','41','67','5','26','27','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(223,'ISD-168','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-18','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-06-26','33','','41','20','5','26','27','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(224,'ISD-196','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(225,'ISD-197','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(226,'ISD-198','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(227,'ISD-199','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(228,'ISD-200','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(229,'ISD-201','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(230,'ISD-195','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','44','','6','20','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(231,'ISD-206','0127Q000000q1TSQAY','10.0','10.0','85.0','False','Current','1.0','2022-08-24','2022-11-22','2022-06-15','Completed','1000.0','Self Paid','6.0','Pass','University Department','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-05-26','33','','44','36','6','20','3','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(232,'ISD-202','0127Q000000q1TSQAY','10.0','10.0','81.0','False','Current','1.0','2022-08-24','2022-11-22','2022-06-15','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-06-26','33','','44','40','6','20','3','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(233,'ISD-203','0127Q000000q1TSQAY','','','','False','Current','1.0','','2022-11-22','2022-06-19','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-06-26','33','','44','54','6','20','3','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(234,'ISD-204','0127Q000000q1TSQAY','10.0','10.0','79.0','False','Current','1.0','2022-08-24','2022-11-22','2022-06-15','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-06-26','33','','44','67','6','20','3','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(235,'ISD-205','0127Q000000q1TSQAY','10.0','10.0','83.0','False','Current','1.0','2022-08-24','2022-11-22','2022-06-15','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-06-26','33','','44','20','6','20','3','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(236,'ISD-210','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(237,'ISD-211','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(238,'ISD-212','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(239,'ISD-213','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(240,'ISD-214','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(241,'ISD-215','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(242,'ISD-209','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(243,'ISD-216','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(244,'ISD-217','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(245,'ISD-207','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','45','','7','31','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(246,'ISD-208','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','45','','7','31','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(247,'ISD-218','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-22','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','45','36','7','31','48','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(248,'ISD-222','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(249,'ISD-223','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(250,'ISD-224','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(251,'ISD-225','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(252,'ISD-226','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(253,'ISD-227','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(254,'ISD-221','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(255,'ISD-228','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(256,'ISD-229','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(257,'ISD-219','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','46','','8','32','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(258,'ISD-220','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','46','','8','32','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(259,'ISD-230','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','46','36','8','32','52','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(260,'ISD-234','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(261,'ISD-235','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(262,'ISD-236','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(263,'ISD-237','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(264,'ISD-238','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(265,'ISD-239','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(266,'ISD-233','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(267,'ISD-240','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(268,'ISD-241','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(269,'ISD-231','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','47','','9','33','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(270,'ISD-232','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','47','','9','33','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(271,'ISD-242','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','47','36','9','33','56','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(272,'ISD-246','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(273,'ISD-247','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(274,'ISD-248','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(275,'ISD-249','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','70');
INSERT INTO "hed__Course_Enrollment__c" VALUES(276,'ISD-250','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','107');
INSERT INTO "hed__Course_Enrollment__c" VALUES(277,'ISD-251','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','118');
INSERT INTO "hed__Course_Enrollment__c" VALUES(278,'ISD-245','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(279,'ISD-252','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(280,'ISD-253','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','76');
INSERT INTO "hed__Course_Enrollment__c" VALUES(281,'ISD-243','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','21','','10','34','','53');
INSERT INTO "hed__Course_Enrollment__c" VALUES(282,'ISD-244','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','33','','21','','10','34','','58');
INSERT INTO "hed__Course_Enrollment__c" VALUES(283,'ISD-254','0127Q000000q1TSQAY','','','','False','Current','1.0','2022-08-24','2022-11-22','2022-06-21','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-05-26','33','','21','36','10','34','64','99');
INSERT INTO "hed__Course_Enrollment__c" VALUES(284,'ISD-258','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','85');
INSERT INTO "hed__Course_Enrollment__c" VALUES(285,'ISD-259','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','88');
INSERT INTO "hed__Course_Enrollment__c" VALUES(286,'ISD-260','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(287,'ISD-261','0127Q000000q1TSQAY','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','33','','22','','11','35','','70');
CREATE TABLE "hed__Course_Enrollment__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0127Q000000q1TQQAY','Default');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0127Q000000q1TRQAY','Faculty');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0127Q000000q1TSQAY','Student');
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
INSERT INTO "hed__Course_Offering__c" VALUES(1,'ISD-39','2023 Term 2 ICT221','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','26','34','4','31','6','4','28');
INSERT INTO "hed__Course_Offering__c" VALUES(2,'ISD-40','2022 Term 2 ICT221','','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','26','34','6','31','8','4','10');
INSERT INTO "hed__Course_Offering__c" VALUES(3,'ISD-41','2023 Term 1 HRM311','','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','21','37','3','31','5','4','12');
INSERT INTO "hed__Course_Offering__c" VALUES(4,'ISD-42','2023 Term 2 HRM311','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','21','37','4','31','6','4','16');
INSERT INTO "hed__Course_Offering__c" VALUES(5,'ISD-43','2023 Term 1 BUS320','50.0','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','22','32','3','31','5','4','20');
INSERT INTO "hed__Course_Offering__c" VALUES(6,'ISD-44','2023 Term 2 BUS320','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','22','32','4','31','6','4','14');
INSERT INTO "hed__Course_Offering__c" VALUES(7,'ISD-1','Last Year Term 2 BUS102','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','3','','1','31','','4','126');
INSERT INTO "hed__Course_Offering__c" VALUES(8,'ISD-2','Last Year Term 1 BUS102','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','3','','2','31','','4','121');
INSERT INTO "hed__Course_Offering__c" VALUES(9,'ISD-3','2023 Term 1 BUS102','','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','3','32','3','31','5','4','18');
INSERT INTO "hed__Course_Offering__c" VALUES(10,'ISD-4','2022 Term 1 BUS102','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','3','32','5','31','7','4','30');
INSERT INTO "hed__Course_Offering__c" VALUES(11,'ISD-30','Last Year Term 2 BUS104','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','4','','1','31','','4','98');
INSERT INTO "hed__Course_Offering__c" VALUES(12,'ISD-31','Last Year Term 1 BUS104','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','4','','2','31','','4','107');
INSERT INTO "hed__Course_Offering__c" VALUES(13,'ISD-32','2023 Term 1 BUS104','','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','4','32','3','31','5','4','19');
INSERT INTO "hed__Course_Offering__c" VALUES(14,'ISD-33','2022 Term 1 BUS104','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','4','32','5','31','7','4','5');
INSERT INTO "hed__Course_Offering__c" VALUES(15,'ISD-45','2023 Term 2 BUS203','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','5','32','4','31','6','4','13');
INSERT INTO "hed__Course_Offering__c" VALUES(16,'ISD-46','2022 Term 2 BUS203','50.0','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','5','32','6','31','8','4','1');
INSERT INTO "hed__Course_Offering__c" VALUES(17,'ISD-47','Last Year Term 2 ICT120','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','6','','1','31','','4','102');
INSERT INTO "hed__Course_Offering__c" VALUES(18,'ISD-48','Last Year Term 1 ICT120','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','6','','2','31','','4','111');
INSERT INTO "hed__Course_Offering__c" VALUES(19,'ISD-49','2023 Term 2 ICT120','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','6','34','4','31','6','4','4');
INSERT INTO "hed__Course_Offering__c" VALUES(20,'ISD-50','2022 Term 1 ICT120','50.0','2022-11-22','2022-06-26','4.0','2022-08-24','1000.0','1000.0','Final Grade','Hour','False','0.0','6','34','5','31','7','4','7');
INSERT INTO "hed__Course_Offering__c" VALUES(21,'ISD-51','2023 Term 2 ICT352','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','14','34','4','31','6','4','29');
INSERT INTO "hed__Course_Offering__c" VALUES(22,'ISD-52','2022 Term 2 ICT352','','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','14','34','6','31','8','4','32');
INSERT INTO "hed__Course_Offering__c" VALUES(23,'ISD-53','2023 Term 1 BUS301','50.0','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','15','32','3','31','5','4','40');
INSERT INTO "hed__Course_Offering__c" VALUES(24,'ISD-54','2023 Term 2 BUS301','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','15','32','4','31','6','4','22');
INSERT INTO "hed__Course_Offering__c" VALUES(25,'ISD-55','2023 Term 2 BUS108','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','16','32','4','31','6','4','25');
INSERT INTO "hed__Course_Offering__c" VALUES(26,'ISD-56','2022 Term 2 BUS108','50.0','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','16','32','6','31','8','4','31');
INSERT INTO "hed__Course_Offering__c" VALUES(27,'ISD-67','2022 Term 1 ETC102','50.0','2022-11-22','2022-06-26','','','','','Final Grade','Hour','False','','1','','5','31','','','90');
INSERT INTO "hed__Course_Offering__c" VALUES(28,'ISD-65','2022 Term 1 ICT310','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','10','','5','31','7','4','86');
INSERT INTO "hed__Course_Offering__c" VALUES(29,'ISD-57','2023 Term 2 ICT310','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','10','34','4','31','6','4','24');
INSERT INTO "hed__Course_Offering__c" VALUES(30,'ISD-58','2022 Term 2 ICT310','','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','10','34','6','31','8','4','11');
INSERT INTO "hed__Course_Offering__c" VALUES(31,'ISD-59','2023 Term 2 BUS211','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','11','32','4','31','6','4','26');
INSERT INTO "hed__Course_Offering__c" VALUES(32,'ISD-60','2022 Term 2 BUS211','50.0','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','11','32','6','31','8','4','9');
INSERT INTO "hed__Course_Offering__c" VALUES(33,'ISD-5','Last Year Term 2 ICT112','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','12','','1','31','','4','125');
INSERT INTO "hed__Course_Offering__c" VALUES(34,'ISD-6','Last Year Term 1 ICT112','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','12','','2','31','','4','115');
INSERT INTO "hed__Course_Offering__c" VALUES(35,'ISD-7','2023 Term 2 ICT112','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','12','34','4','31','6','4','3');
INSERT INTO "hed__Course_Offering__c" VALUES(36,'ISD-8','2022 Term 1 ICT112','50.0','2022-11-22','2022-06-26','18.0','2022-08-24','1000.0','1000.0','Final Grade','Hour','False','0.0','12','34','5','31','7','4','105');
INSERT INTO "hed__Course_Offering__c" VALUES(37,'ISD-9','Last Year Term 2 ICT115','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','13','','1','31','','4','123');
INSERT INTO "hed__Course_Offering__c" VALUES(38,'ISD-10','Last Year Term 1 ICT115','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','13','','2','31','','4','119');
INSERT INTO "hed__Course_Offering__c" VALUES(39,'ISD-11','2023 Term 2 ICT115','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','13','34','4','31','6','4','17');
INSERT INTO "hed__Course_Offering__c" VALUES(40,'ISD-12','2022 Term 1 ICT115','50.0','2022-11-22','2022-06-26','4.0','2022-08-24','1000.0','1000.0','Final Grade','Hour','False','0.0','13','34','5','31','7','4','104');
INSERT INTO "hed__Course_Offering__c" VALUES(41,'ISD-61','2022 Term 1 COR109 B','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','7','','5','31','7','4','78');
INSERT INTO "hed__Course_Offering__c" VALUES(42,'ISD-63','2022 Term 1 COR109 C','0.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','7','','5','31','7','4','82');
INSERT INTO "hed__Course_Offering__c" VALUES(43,'ISD-64','2022 Term 1 COR109 A','50.0','2022-11-22','2022-06-26','','2000-01-21','1000.0','1000.0','Final Grade','Hour','False','','7','','5','31','7','4','84');
INSERT INTO "hed__Course_Offering__c" VALUES(44,'ISD-13','2023 Term 1 COR109','','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','7','37','3','31','5','4','41');
INSERT INTO "hed__Course_Offering__c" VALUES(45,'ISD-14','2023 Term 2 COR109','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','7','37','4','31','6','4','15');
INSERT INTO "hed__Course_Offering__c" VALUES(46,'ISD-15','2023 Term 2 MGT210','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','8','37','4','31','6','4','34');
INSERT INTO "hed__Course_Offering__c" VALUES(47,'ISD-16','2023 Term 2 ICT320','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','9','34','4','31','6','4','35');
INSERT INTO "hed__Course_Offering__c" VALUES(48,'ISD-17','2022 Term 2 ICT320','','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','9','34','6','31','8','4','2');
INSERT INTO "hed__Course_Offering__c" VALUES(49,'ISD-18','2023 Term 2 HRM321','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','17','37','4','31','6','4','42');
INSERT INTO "hed__Course_Offering__c" VALUES(50,'ISD-19','2023 Term 2 IBS220','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','18','37','4','31','6','4','27');
INSERT INTO "hed__Course_Offering__c" VALUES(51,'ISD-20','Last Year Term 2 BUS101','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','19','','1','31','','4','100');
INSERT INTO "hed__Course_Offering__c" VALUES(52,'ISD-21','Last Year Term 1 BUS101','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','19','','2','31','','4','113');
INSERT INTO "hed__Course_Offering__c" VALUES(53,'ISD-22','2023 Term 1 BUS101','','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','19','32','3','31','5','4','33');
INSERT INTO "hed__Course_Offering__c" VALUES(54,'ISD-23','2022 Term 1 BUS101','50.0','2022-11-22','2022-06-26','1.0','','1000.0','1000.0','Final Grade','Hour','False','0.0','19','32','5','31','7','4','37');
INSERT INTO "hed__Course_Offering__c" VALUES(55,'ISD-66','2022 Term 1 ETC101','50.0','2022-11-22','2022-06-26','','','','','Final Grade','Hour','False','','2','','5','31','','','88');
INSERT INTO "hed__Course_Offering__c" VALUES(56,'ISD-68','2022 Term 1 BUS106','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','20','','5','31','7','4','92');
INSERT INTO "hed__Course_Offering__c" VALUES(57,'ISD-24','2023 Term 2 BUS106','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','20','32','4','31','6','4','21');
INSERT INTO "hed__Course_Offering__c" VALUES(58,'ISD-25','2022 Term 2 BUS106','50.0','2023-04-24','2022-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','20','32','6','31','8','4','8');
INSERT INTO "hed__Course_Offering__c" VALUES(59,'ISD-26','Last Year Term 2 BUS105','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','23','','1','31','','4','94');
INSERT INTO "hed__Course_Offering__c" VALUES(60,'ISD-27','Last Year Term 1 BUS105','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','23','','2','31','','4','109');
INSERT INTO "hed__Course_Offering__c" VALUES(61,'ISD-28','2023 Term 1 BUS105','','2023-11-22','2023-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','23','32','3','31','5','4','39');
INSERT INTO "hed__Course_Offering__c" VALUES(62,'ISD-29','2022 Term 1 BUS105','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','23','32','5','31','7','4','6');
INSERT INTO "hed__Course_Offering__c" VALUES(63,'ISD-34','2023 Term 2 MGT310','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','24','37','4','31','6','4','36');
INSERT INTO "hed__Course_Offering__c" VALUES(64,'ISD-35','Last Year Term 2 ICT211','50.0','2022-04-24','2021-12-06','','','','','Final Grade','Hour','False','','25','','1','31','','4','96');
INSERT INTO "hed__Course_Offering__c" VALUES(65,'ISD-36','Last Year Term 1 ICT211','50.0','2021-11-22','2021-05-26','','','','','Final Grade','Hour','False','','25','','2','31','','4','117');
INSERT INTO "hed__Course_Offering__c" VALUES(66,'ISD-37','2023 Term 2 ICT211','','2024-04-23','2023-12-06','','','1000.0','1000.0','Final Grade','Hour','False','','25','34','4','31','6','4','23');
INSERT INTO "hed__Course_Offering__c" VALUES(67,'ISD-38','2022 Term 1 ICT211','50.0','2022-11-22','2022-06-26','4.0','2022-08-24','1000.0','1000.0','Final Grade','Hour','False','0.0','25','34','5','31','7','4','38');
INSERT INTO "hed__Course_Offering__c" VALUES(68,'ISD-62','2022 Term 1 ICT221','50.0','2022-11-22','2022-06-26','','','1000.0','1000.0','Final Grade','Hour','False','','26','','5','31','7','4','80');
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
INSERT INTO "hed__Course__c" VALUES(1,'ISD-1','ETC102 Et Cetera B','ETC102','10.0','','Hour','Educational Institution','Value','Term','True','26','');
INSERT INTO "hed__Course__c" VALUES(2,'ISD-2','ETC101 Et Cetera A','ETC101','10.0','','Hour','Educational Institution','Value','Term','True','26','');
INSERT INTO "hed__Course__c" VALUES(3,'ISD-3','BUS102: Introduction to Economics','BUS102','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(4,'ISD-4','BUS104 Introduction to Management','BUS104','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(5,'ISD-5','BUS203 Business Law and Ethics','BUS203','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(6,'ISD-6','ICT120 Introduction to Telecommunications and Networks','ICT120','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(7,'ISD-14','COR109 Communication and Thought','COR109','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(8,'ISD-15','MGT210 Project Management','MGT210','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(9,'ISD-16','ICT320 Database Programming','ICT320','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(10,'ISD-10','ICT310 Systems Analysis and Design','ICT310','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(11,'ISD-11','BUS211 Strategic Management','BUS211','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(12,'ISD-12','ICT112 Creative Problem Solving with Programming','ICT112','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(13,'ISD-13','ICT115 Introduction to Systems Design','ICT115','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(14,'ISD-7','ICT352 ICT Project Management','ICT352','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(15,'ISD-8','BUS301 Business Analytics 2','BUS301','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(16,'ISD-9','BUS108 Introduction to Informatics','BUS108','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(17,'ISD-17','HRM321 Managing Organisational Change','HRM321','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(18,'ISD-18','IBS220 Cross-Cultural Management','IBS220','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(19,'ISD-19','BUS101: Business Analytics','BUS101','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(20,'ISD-20','BUS106 Accounting for Business','BUS106','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(21,'ISD-25','HRM311 Leadership and Team Dynamics','HRM311','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(22,'ISD-26','BUS320 Corporate Governance and Social Responsibility','BUS320','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(23,'ISD-21','BUS105 Introduction to Marketing','BUS105','10.0','#FF69B4','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(24,'ISD-22','MGT310 Small Business and New Venture Management','MGT310','10.0','#FF00FF','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(25,'ISD-23','ICT211 Database Design','ICT211','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
INSERT INTO "hed__Course__c" VALUES(26,'ISD-24','ICT221 Software Development 1','ICT221','10.0','#DC143C','Hour','Educational Institution','Value','Term','True','26','4');
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
INSERT INTO "hed__Facility__c" VALUES(1,'ISD-1','Beta 101','10.0','Classroom','True','31','6');
INSERT INTO "hed__Facility__c" VALUES(2,'ISD-2','Beta 102','10.0','Classroom','True','31','6');
INSERT INTO "hed__Facility__c" VALUES(3,'ISD-3','Beta 103','10.0','Classroom','True','31','6');
INSERT INTO "hed__Facility__c" VALUES(4,'ISD-4','Beta 104','10.0','Computer Lab','True','31','6');
INSERT INTO "hed__Facility__c" VALUES(5,'ISD-5','Alpha Building','','Building','True','31','');
INSERT INTO "hed__Facility__c" VALUES(6,'ISD-6','Beta Building','','Building','True','31','');
INSERT INTO "hed__Facility__c" VALUES(7,'ISD-7','Alpha 103','10.0','Classroom','True','31','5');
INSERT INTO "hed__Facility__c" VALUES(8,'ISD-8','Beta 100','10.0','Classroom','True','31','6');
INSERT INTO "hed__Facility__c" VALUES(9,'ISD-9','Alpha 100','10.0','Classroom','True','31','5');
INSERT INTO "hed__Facility__c" VALUES(10,'ISD-10','Alpha 104','10.0','Computer Lab','True','31','5');
INSERT INTO "hed__Facility__c" VALUES(11,'ISD-11','Alpha 101','10.0','Classroom','True','31','5');
INSERT INTO "hed__Facility__c" VALUES(12,'ISD-12','Alpha 102','10.0','Classroom','True','31','5');
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
INSERT INTO "hed__Plan_Requirement__c" VALUES(1,'ISD-58','RIOUNI07 - Mandatory','0127Q000000q1TiQAI','Required','200.0','','False','','','False','False','','','','False','','','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(2,'ISD-74','RIOUNI03-Elective','0127Q000000q1TiQAI','Required','40.0','2.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(3,'ISD-75','RIOUNI02-Mandatory','0127Q000000q1TiQAI','Required','120.0','1.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(4,'ISD-76','RIOUNI02-Elective','0127Q000000q1TiQAI','Required','40.0','2.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(5,'ISD-77','RIOUNI03-Mandatory','0127Q000000q1TiQAI','Required','120.0','1.0','False','','','False','False','','','','False','','','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(6,'ISD-71','RIOUNI09 - Credit','0127Q000000q1TiQAI','Required','20.0','','False','','','False','False','','','','False','','','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(7,'ISD-117','RIOUNI09 - Non Credit','0127Q000000q1TiQAI','Required','','','False','2.0','5.0','False','False','','','','False','','','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(8,'ISD-106','RIOUNI08 - Mandatory','0127Q000000q1TiQAI','Required','160.0','','False','','','False','False','','','','False','','','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(9,'ISD-55','RIOUNI06 - Mandatory','0127Q000000q1TiQAI','Required','80.0','','False','','','False','False','','','','False','','','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(10,'ISD-1','RIOUNI03-Elective','0127Q000000q1TiQAI','Required','40.0','2.0','False','','','False','False','','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(11,'ISD-2','RIOUNI03-Mandatory','0127Q000000q1TiQAI','Required','120.0','1.0','False','','','False','False','','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(12,'ISD-3','RIOUNI02-Elective','0127Q000000q1TiQAI','Required','40.0','2.0','False','','','False','False','','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(13,'ISD-4','RIOUNI02-Mandatory','0127Q000000q1TiQAI','Required','120.0','1.0','False','','','False','False','','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(14,'ISD-5','RIOUNI04-Electives','0127Q000000q1TiQAI','Required','40.0','','False','','','False','False','','','','False','','','3','12');
INSERT INTO "hed__Plan_Requirement__c" VALUES(15,'ISD-6','RIOUNI04-Mandatory','0127Q000000q1TiQAI','Required','120.0','','False','','','False','False','','','','False','','','3','13');
INSERT INTO "hed__Plan_Requirement__c" VALUES(16,'ISD-121','RIOUNI05 - Electives','0127Q000000q1TiQAI','Optional','40.0','','False','','','False','False','','','','False','','','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(17,'ISD-125','RIOUNI05 - Mandatory','0127Q000000q1TiQAI','Required','40.0','','False','','','False','False','','','','False','','','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(18,'ISD-103','RIOUNI03 - ETC102','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','Secondary','','','False','1','5','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(19,'ISD-73','RIOUNI03 - ETC102','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','1','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(20,'ISD-60','RIOUNI07 - ICT310','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','10','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(21,'ISD-85','RIOUNI02 - ICT310','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','Both','','','False','10','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(22,'ISD-120','RIOUNI08 - ICT310','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','10','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(23,'ISD-51','RIOUNI03 - ICT310','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','10','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(24,'ISD-52','RIOUNI02 - ICT310','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','10','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(25,'ISD-86','RIOUNI02 - BUS211','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','11','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(26,'ISD-53','RIOUNI03 - BUS211','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','11','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(27,'ISD-54','RIOUNI02 - BUS211','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','11','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(28,'ISD-56','RIOUNI07 - ICT112','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','12','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(29,'ISD-87','RIOUNI02 - ICT112','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','Both','','','False','12','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(30,'ISD-108','RIOUNI08 - BUS101','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A AND B','False','19','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(31,'ISD-66','RIOUNI06 - BUS101','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','19','9','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(32,'ISD-23','RIOUNI03 - BUS101','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','19','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(33,'ISD-24','RIOUNI02 - BUS101','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','19','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(34,'ISD-126','RIOUNI05 - BUS101','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','19','17','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(35,'ISD-102','RIOUNI02 - ETC101','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','Primary','','','False','2','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(36,'ISD-104','RIOUNI02 - ETC101','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','2','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(37,'ISD-115','RIOUNI07 - BUS106','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A OR B','False','20','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(38,'ISD-94','RIOUNI02 - BUS106','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','20','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(39,'ISD-25','RIOUNI03 - BUS106','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','20','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(40,'ISD-26','RIOUNI02 - BUS106','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','20','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(41,'ISD-105','RIOUNI07 - BUS105','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A AND B','False','23','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(42,'ISD-95','RIOUNI02 - BUS105','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','Both','','','False','23','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(43,'ISD-27','RIOUNI03 - BUS105','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','23','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(44,'ISD-28','RIOUNI02 - BUS105','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','23','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(45,'ISD-96','RIOUNI02 - MGT310','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','24','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(46,'ISD-31','RIOUNI03 - MGT310','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','24','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(47,'ISD-32','RIOUNI02 - MGT310','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','24','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(48,'ISD-64','RIOUNI07 - ICT211','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','25','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(49,'ISD-97','RIOUNI02 - ICT211','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','Both','','','False','25','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(50,'ISD-72','RIOUNI09 - ICT211','0127Q000000q1ThQAI','Required','10.0','','False','','','False','False','','','','False','25','7','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(51,'ISD-107','RIOUNI08 - ICT211','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','25','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(52,'ISD-33','RIOUNI03 - ICT211','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','25','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(53,'ISD-34','RIOUNI02 - ICT211','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','25','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(54,'ISD-65','RIOUNI07 - ICT221','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','26','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(55,'ISD-98','RIOUNI02 - ICT221','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','Both','<p>ICT112 is the pre-requisite for this course.</p>','A','False','26','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(56,'ISD-69','RIOUNI08 - ICT221','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','26','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(57,'ISD-35','RIOUNI03 - ICT221','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','<p>ICT112 is a pre-requisite for this course.</p>','A','False','26','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(58,'ISD-36','RIOUNI02 - ICT221','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','<p>ICT112 is the pre-requisite for this course.</p>','A','False','26','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(59,'ISD-99','RIOUNI02 - HRM311','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','21','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(60,'ISD-37','RIOUNI03 - HRM311','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','21','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(61,'ISD-38','RIOUNI02 - HRM311','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','21','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(62,'ISD-100','RIOUNI02 - BUS320','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','22','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(63,'ISD-39','RIOUNI03 - BUS320','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','22','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(64,'ISD-40','RIOUNI02 - BUS320','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','22','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(65,'ISD-113','RIOUNI07 - BUS102','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A OR B','False','3','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(66,'ISD-78','RIOUNI02 - BUS102','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','Both','','','False','3','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(67,'ISD-70','RIOUNI08 - BUS102','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A OR B','False','3','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(68,'ISD-61','RIOUNI06 - BUS102','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','3','9','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(69,'ISD-7','RIOUNI03 - BUS102','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','3','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(70,'ISD-8','RIOUNI02 - BUS102','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','3','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(71,'ISD-122','RIOUNI05 - BUS102','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','3','17','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(72,'ISD-114','RIOUNI07 - BUS104','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A AND (B OR C OR (D AND E))','False','4','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(73,'ISD-79','RIOUNI02 - BUS104','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','Both','','','False','4','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(74,'ISD-109','RIOUNI08 - BUS104','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A AND (B OR C OR (D AND E))','False','4','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(75,'ISD-29','RIOUNI03 - BUS104','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','4','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(76,'ISD-30','RIOUNI02 - BUS104','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','4','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(77,'ISD-80','RIOUNI02 - BUS203','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','5','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(78,'ISD-41','RIOUNI03 - BUS203','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','5','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(79,'ISD-42','RIOUNI02 - BUS203','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','5','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(80,'ISD-57','RIOUNI07 - ICT120','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','6','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(81,'ISD-81','RIOUNI02 - ICT120','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','Both','','','False','6','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(82,'ISD-119','RIOUNI09 - ICT120','0127Q000000q1ThQAI','Required','10.0','','False','','','False','False','','','','False','6','7','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(83,'ISD-111','RIOUNI08 - ICT120','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','6','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(84,'ISD-43','RIOUNI03 - ICT120','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','6','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(85,'ISD-44','RIOUNI02 - ICT120','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','6','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(86,'ISD-82','RIOUNI02 - ICT352','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','Both','','','False','14','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(87,'ISD-45','RIOUNI03 - ICT352','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','14','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(88,'ISD-46','RIOUNI02 - ICT352','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','14','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(89,'ISD-83','RIOUNI02 - BUS301','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','15','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(90,'ISD-47','RIOUNI03 - BUS301','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','15','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(91,'ISD-48','RIOUNI02 - BUS301','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','15','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(92,'ISD-84','RIOUNI02 - BUS108','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','16','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(93,'ISD-49','RIOUNI03 - BUS108','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','16','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(94,'ISD-50','RIOUNI02 - BUS108','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','16','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(95,'ISD-116','RIOUNI09 - ICT112','0127Q000000q1ThQAI','Required','10.0','','False','','','False','False','','','','False','12','6','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(96,'ISD-110','RIOUNI08 - ICT112','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','12','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(97,'ISD-67','RIOUNI06 - ICT112','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','12','9','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(98,'ISD-9','RIOUNI03 - ICT112','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','12','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(99,'ISD-10','RIOUNI02 - ICT112','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','12','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(100,'ISD-123','RIOUNI05 - ICT112','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','12','16','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(101,'ISD-63','RIOUNI07 - ICT115','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','13','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(102,'ISD-88','RIOUNI02 - ICT115','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','Both','','','False','13','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(103,'ISD-118','RIOUNI09 - ICT115','0127Q000000q1ThQAI','Required','10.0','','False','','','False','False','','','','False','13','6','5','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(104,'ISD-68','RIOUNI08 - ICT115','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A','False','13','8','6','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(105,'ISD-62','RIOUNI06 - ICT115','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','13','9','8','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(106,'ISD-11','RIOUNI03 - ICT115','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','13','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(107,'ISD-12','RIOUNI02 - ICT115','0127Q000000q1ThQAI','Required','10.0','1.0','False','','','False','False','','','','False','13','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(108,'ISD-124','RIOUNI05 - ICT115','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','13','16','9','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(109,'ISD-59','RIOUNI07 - COR109','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','','False','7','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(110,'ISD-89','RIOUNI02 - COR109','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','7','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(111,'ISD-13','RIOUNI03 - COR109','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','','','','False','7','11','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(112,'ISD-14','RIOUNI02 - COR109','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','7','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(113,'ISD-90','RIOUNI02 - MGT210','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','8','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(114,'ISD-15','RIOUNI03 - MGT210','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','8','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(115,'ISD-16','RIOUNI02 - MGT210','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','8','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(116,'ISD-91','RIOUNI02 - ICT320','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','Both','','','False','9','3','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(117,'ISD-17','RIOUNI03 - ICT320','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','9','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(118,'ISD-18','RIOUNI02 - ICT320','0127Q000000q1ThQAI','Required','10.0','2.0','False','','','False','False','','','','False','9','13','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(119,'ISD-92','RIOUNI02 - HRM321','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','17','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(120,'ISD-19','RIOUNI03 - HRM321','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','17','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(121,'ISD-20','RIOUNI02 - HRM321','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','17','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(122,'ISD-93','RIOUNI02 - IBS220','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','Both','','','False','18','4','7','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(123,'ISD-21','RIOUNI03 - IBS220','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','18','10','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(124,'ISD-22','RIOUNI02 - IBS220','0127Q000000q1ThQAI','Optional','10.0','','False','','','False','False','','','','False','18','12','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(125,'ISD-112','RIOUNI07 - BUS101','0127Q000000q1ThQAI','Required','20.0','','False','','','False','False','','','A AND B','False','19','1','4','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(126,'ISD-101','RIOUNI02 - BUS101','0127Q000000q1ThQAI','Required','10.0','3.0','False','','','False','False','Both','','','False','19','3','7','');
CREATE TABLE "hed__Plan_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0127Q000000q1ThQAI','Course');
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0127Q000000q1TiQAI','Group');
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
INSERT INTO "hed__Program_Enrollment__c" VALUES(1,'ISD-14','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','3','35','2','17','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(2,'ISD-15','2022-05-29','2022-05-29','40.0','40.0','True','Full-time','6.25','25.0','Course','Self Paid','25.0','Self Paid','Yes','Current','','Default','33','5','36','2','18','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(3,'ISD-16','2022-06-18','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group A','Default','33','6','38','2','19','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(4,'ISD-17','2022-06-18','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','7','39','2','20','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(5,'ISD-18','2022-06-18','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group B','Default','33','9','41','2','2','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(6,'ISD-19','2022-06-15','2022-06-15','40.0','40.0','True','Full-time','6.0','25.0','Course','Self Paid','24.0','Self Paid','Yes','Current','Group A','Default','33','10','44','2','3','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(7,'ISD-1','2022-06-22','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','11','45','2','4','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(8,'ISD-2','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','12','46','2','5','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(9,'ISD-3','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','13','47','2','6','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(10,'ISD-4','2022-06-21','','0.0','0.0','True','Half-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','14','21','2','7','7');
INSERT INTO "hed__Program_Enrollment__c" VALUES(11,'ISD-5','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','18','22','2','8','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(12,'ISD-6','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','19','23','2','9','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(13,'ISD-7','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','30','24','2','10','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(14,'ISD-8','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','31','25','2','11','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(15,'ISD-9','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','32','26','2','12','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(16,'ISD-10','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','33','27','2','13','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(17,'ISD-11','2022-06-21','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','34','28','2','14','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(18,'ISD-12','2022-06-22','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','1','29','2','15','6');
INSERT INTO "hed__Program_Enrollment__c" VALUES(19,'ISD-13','2022-06-22','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','33','2','30','2','16','6');
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
INSERT INTO "hed__Program_Plan__c" VALUES(1,'ISD-1','Bachelor of Business Management (Course-Upfront)','True','2022-06-26','Current','False','False','False','False','Course','Yes','Always','True','27','','','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(2,'ISD-2','Bachelor of Business Information System V1','True','2022-06-26','Current','False','False','False','False','Course','Yes','Always','True','33','','6','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(3,'ISD-3','Bachelor of Business Information System V1.5','False','2022-06-26','Current','True','False','False','False','Course','Yes','For application fee only','True','33','','','','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(4,'ISD-5','Bachelor of Business Information System V4','False','','Current','True','False','False','False','Course','No','For application fee only','True','33','','1','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(5,'ISD-7','Bachelor of Business Information System V6','False','','Current','True','False','False','False','Course','No','For application fee only','True','33','','','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(6,'ISD-8','Bachelor of Business Information System V5','False','','Current','True','False','False','False','Course','No','For application fee only','True','33','','3','','4','','');
INSERT INTO "hed__Program_Plan__c" VALUES(7,'ISD-6','Bachelor of Business Information System Dual','False','','Current','True','False','False','True','Course','No','For application fee only','True','33','','','','4','33','27');
INSERT INTO "hed__Program_Plan__c" VALUES(8,'ISD-9','Bachelor of Business Information System V3','False','','Current','True','False','False','False','Program','Yes','For application fee only','True','33','','4','','6','','');
INSERT INTO "hed__Program_Plan__c" VALUES(9,'ISD-4','Bachelor of Business Information System V2','False','2022-06-26','Current','True','True','True','False','Course','Yes','For application fee only','True','33','2','9','1','','','');
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
INSERT INTO "hed__Term_Grade__c" VALUES(1,'ISD-2','','','','','','','44','231','36','','5');
INSERT INTO "hed__Term_Grade__c" VALUES(2,'ISD-1','','','','','','','36','54','36','','5');
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
INSERT INTO "hed__Term__c" VALUES(1,'ISD-1','Last Year Term 2','2022-04-24','2021-12-06','','2022-02-06','','Final Grade','Default','30','2');
INSERT INTO "hed__Term__c" VALUES(2,'ISD-2','Last Year Term 1','2021-11-22','2021-05-26','','2021-08-06','','Final Grade','Default','30','');
INSERT INTO "hed__Term__c" VALUES(3,'ISD-3','Next Year Term 1','2023-11-22','2023-06-26','Semester','2023-08-06','2023-06-25T14:00:00.000+0000','Final Grade','Default','30','6');
INSERT INTO "hed__Term__c" VALUES(4,'ISD-4','Next Year Term 2','2024-04-23','2023-12-06','Semester','2024-02-06','2023-12-05T14:00:00.000+0000','Final Grade','Default','30','3');
INSERT INTO "hed__Term__c" VALUES(5,'ISD-5','Current Year Term 1','2022-11-22','2022-06-26','Semester','2022-08-06','2022-05-25T14:00:00.000+0000','Final Grade','Default','30','');
INSERT INTO "hed__Term__c" VALUES(6,'ISD-6','Current Year Term 2','2023-04-24','2022-12-06','Semester','2023-02-06','2022-01-20T14:00:00.000+0000','Final Grade','Default','30','5');
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
INSERT INTO "hed__Time_Block__c" VALUES(1,'ISD-1','Lunch','13:00:00.000Z','12:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(2,'ISD-2','Noon #2','15:00:00.000Z','14:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(3,'ISD-3','Noon #3','16:00:00.000Z','15:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(4,'ISD-4','Evening #1','18:00:00.000Z','17:00:00.000Z','True','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(5,'ISD-5','Morning #1','10:00:00.000Z','09:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(6,'ISD-6','Default Time Block','','','False','30','');
INSERT INTO "hed__Time_Block__c" VALUES(7,'ISD-7','Morning #2','11:00:00.000Z','10:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(8,'ISD-8','Morning #3','12:00:00.000Z','11:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(9,'ISD-9','Noon #4','17:00:00.000Z','16:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(10,'ISD-10','Noon #1','14:00:00.000Z','13:00:00.000Z','False','30','6');
INSERT INTO "hed__Time_Block__c" VALUES(11,'ISD-11','Afternoon','17:00:00.000Z','13:00:00.000Z','False','30','12');
INSERT INTO "hed__Time_Block__c" VALUES(12,'ISD-12','Other Parent Time Block','17:00:00.000Z','09:00:00.000Z','False','30','');
INSERT INTO "hed__Time_Block__c" VALUES(13,'ISD-13','Morning','12:00:00.000Z','09:00:00.000Z','False','30','12');
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
INSERT INTO "rio_ed__Allocation__c" VALUES(1,'ISD-276','','Tentative','2023-01-16','17:00:00.000Z','2023-01-16T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-01-16','16:00:00.000Z','2023-01-16T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(2,'ISD-277','','Tentative','2023-01-23','17:00:00.000Z','2023-01-23T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-01-23','16:00:00.000Z','2023-01-23T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(3,'ISD-311','','Tentative','2023-02-04','15:00:00.000Z','2023-02-04T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-02-04','14:00:00.000Z','2023-02-04T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(4,'ISD-312','','Tentative','2023-02-11','15:00:00.000Z','2023-02-11T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-02-11','14:00:00.000Z','2023-02-11T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(5,'ISD-313','','Tentative','2023-02-18','15:00:00.000Z','2023-02-18T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-02-18','14:00:00.000Z','2023-02-18T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(6,'ISD-314','','Tentative','2023-02-25','15:00:00.000Z','2023-02-25T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-02-25','14:00:00.000Z','2023-02-25T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(7,'ISD-315','','Tentative','2023-03-04','15:00:00.000Z','2023-03-04T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-03-04','14:00:00.000Z','2023-03-04T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(8,'ISD-316','','Tentative','2023-03-11','15:00:00.000Z','2023-03-11T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-03-11','14:00:00.000Z','2023-03-11T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(9,'ISD-317','','Tentative','2023-03-18','15:00:00.000Z','2023-03-18T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-03-18','14:00:00.000Z','2023-03-18T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(10,'ISD-318','','Tentative','2023-03-25','15:00:00.000Z','2023-03-25T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-03-25','14:00:00.000Z','2023-03-25T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(11,'ISD-319','','Tentative','2023-04-01','15:00:00.000Z','2023-04-01T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-04-01','14:00:00.000Z','2023-04-01T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(12,'ISD-320','','Tentative','2023-04-08','15:00:00.000Z','2023-04-08T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-04-08','14:00:00.000Z','2023-04-08T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(13,'ISD-321','','Tentative','2023-04-15','15:00:00.000Z','2023-04-15T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-04-15','14:00:00.000Z','2023-04-15T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(14,'ISD-322','','Tentative','2023-04-22','15:00:00.000Z','2023-04-22T04:00:00.000+0000','a1b5j000000TZFjAAO','2023-04-22','14:00:00.000Z','2023-04-22T03:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(15,'ISD-323','','Tentative','2022-12-10','15:00:00.000Z','2022-12-10T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-12-10','14:00:00.000Z','2022-12-10T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(16,'ISD-324','','Tentative','2022-12-17','15:00:00.000Z','2022-12-17T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-12-17','14:00:00.000Z','2022-12-17T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(17,'ISD-325','','Tentative','2022-12-31','15:00:00.000Z','2022-12-31T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-12-31','14:00:00.000Z','2022-12-31T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(18,'ISD-326','','Tentative','2023-01-07','15:00:00.000Z','2023-01-07T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-01-07','14:00:00.000Z','2023-01-07T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(19,'ISD-347','','Tentative','2023-01-14','15:00:00.000Z','2023-01-14T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-01-14','14:00:00.000Z','2023-01-14T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(20,'ISD-348','','Tentative','2022-12-24','15:00:00.000Z','2022-12-24T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-12-24','14:00:00.000Z','2022-12-24T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(21,'ISD-349','','Tentative','2023-01-21','15:00:00.000Z','2023-01-21T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-01-21','14:00:00.000Z','2023-01-21T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(22,'ISD-350','','Tentative','2023-01-28','15:00:00.000Z','2023-01-28T05:00:00.000+0000','a1b5j000000TZFjAAO','2023-01-28','14:00:00.000Z','2023-01-28T04:00:00.000+0000','Good','Allocated','True','12','30');
INSERT INTO "rio_ed__Allocation__c" VALUES(23,'ISD-363','','Tentative','2023-02-06','12:00:00.000Z','2023-02-06T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-02-06','11:00:00.000Z','2023-02-06T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(24,'ISD-364','','Tentative','2023-02-13','12:00:00.000Z','2023-02-13T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-02-13','11:00:00.000Z','2023-02-13T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(25,'ISD-365','','Tentative','2023-02-20','12:00:00.000Z','2023-02-20T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-02-20','11:00:00.000Z','2023-02-20T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(26,'ISD-366','','Tentative','2023-02-27','12:00:00.000Z','2023-02-27T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-02-27','11:00:00.000Z','2023-02-27T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(27,'ISD-287','','Tentative','2023-03-06','12:00:00.000Z','2023-03-06T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-03-06','11:00:00.000Z','2023-03-06T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(28,'ISD-288','','Tentative','2023-03-13','12:00:00.000Z','2023-03-13T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-03-13','11:00:00.000Z','2023-03-13T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(29,'ISD-289','','Tentative','2023-03-20','12:00:00.000Z','2023-03-20T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-03-20','11:00:00.000Z','2023-03-20T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(30,'ISD-290','','Tentative','2023-03-27','12:00:00.000Z','2023-03-27T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-03-27','11:00:00.000Z','2023-03-27T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(31,'ISD-351','','Tentative','2023-04-03','12:00:00.000Z','2023-04-03T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-04-03','11:00:00.000Z','2023-04-03T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(32,'ISD-352','','Tentative','2023-04-10','12:00:00.000Z','2023-04-10T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-04-10','11:00:00.000Z','2023-04-10T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(33,'ISD-353','','Tentative','2023-04-24','12:00:00.000Z','2023-04-24T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-04-24','11:00:00.000Z','2023-04-24T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(34,'ISD-354','','Tentative','2023-04-17','12:00:00.000Z','2023-04-17T01:00:00.000+0000','a1b5j000000TZGXAA4','2023-04-17','11:00:00.000Z','2023-04-17T00:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(35,'ISD-355','','Tentative','2022-12-19','12:00:00.000Z','2022-12-19T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-12-19','11:00:00.000Z','2022-12-19T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(36,'ISD-356','','Tentative','2022-12-26','12:00:00.000Z','2022-12-26T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-12-26','11:00:00.000Z','2022-12-26T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(37,'ISD-357','','Tentative','2023-01-02','12:00:00.000Z','2023-01-02T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-01-02','11:00:00.000Z','2023-01-02T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(38,'ISD-358','','Tentative','2023-01-09','12:00:00.000Z','2023-01-09T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-01-09','11:00:00.000Z','2023-01-09T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(39,'ISD-359','','Tentative','2022-12-12','12:00:00.000Z','2022-12-12T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-12-12','11:00:00.000Z','2022-12-12T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(40,'ISD-360','','Tentative','2023-01-16','12:00:00.000Z','2023-01-16T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-01-16','11:00:00.000Z','2023-01-16T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(41,'ISD-361','','Tentative','2023-01-23','12:00:00.000Z','2023-01-23T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-01-23','11:00:00.000Z','2023-01-23T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(42,'ISD-362','','Tentative','2023-01-30','12:00:00.000Z','2023-01-30T02:00:00.000+0000','a1b5j000000TZGXAA4','2023-01-30','11:00:00.000Z','2023-01-30T01:00:00.000+0000','Good','Allocated','True','12','31');
INSERT INTO "rio_ed__Allocation__c" VALUES(43,'ISD-291','','Tentative','2023-01-21','14:00:00.000Z','2023-01-21T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-01-21','13:00:00.000Z','2023-01-21T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(44,'ISD-292','','Tentative','2023-01-28','14:00:00.000Z','2023-01-28T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-01-28','13:00:00.000Z','2023-01-28T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(45,'ISD-413','','Tentative','2023-10-29','11:00:00.000Z','2023-10-29T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-10-29','10:00:00.000Z','2023-10-29T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(46,'ISD-414','','Tentative','2023-11-05','11:00:00.000Z','2023-11-05T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-11-05','10:00:00.000Z','2023-11-05T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(47,'ISD-415','','Tentative','2023-07-02','11:00:00.000Z','2023-07-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-07-02','10:00:00.000Z','2023-07-01T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(48,'ISD-416','','Tentative','2023-07-09','11:00:00.000Z','2023-07-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-07-09','10:00:00.000Z','2023-07-08T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(49,'ISD-417','','Tentative','2023-07-16','11:00:00.000Z','2023-07-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-07-16','10:00:00.000Z','2023-07-15T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(50,'ISD-418','','Tentative','2023-07-23','11:00:00.000Z','2023-07-23T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-07-23','10:00:00.000Z','2023-07-22T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(51,'ISD-419','','Tentative','2023-07-30','11:00:00.000Z','2023-07-30T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-07-30','10:00:00.000Z','2023-07-29T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(52,'ISD-420','','Tentative','2023-08-06','11:00:00.000Z','2023-08-06T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-08-06','10:00:00.000Z','2023-08-05T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(53,'ISD-421','','Tentative','2023-08-13','11:00:00.000Z','2023-08-13T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-08-13','10:00:00.000Z','2023-08-12T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(54,'ISD-422','','Tentative','2023-08-20','11:00:00.000Z','2023-08-20T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-08-20','10:00:00.000Z','2023-08-19T23:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(55,'ISD-423','','Tentative','2023-08-27','11:00:00.000Z','2023-08-27T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-08-27','10:00:00.000Z','2023-08-27T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(56,'ISD-424','','Tentative','2023-11-12','11:00:00.000Z','2023-11-12T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-11-12','10:00:00.000Z','2023-11-12T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(57,'ISD-425','','Tentative','2023-11-19','11:00:00.000Z','2023-11-19T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-11-19','10:00:00.000Z','2023-11-19T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(58,'ISD-1','','Tentative','2023-11-04','17:00:00.000Z','2023-11-04T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-11-04','16:00:00.000Z','2023-11-04T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(59,'ISD-2','','Tentative','2023-11-11','17:00:00.000Z','2023-11-11T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-11-11','16:00:00.000Z','2023-11-11T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(60,'ISD-3','','Tentative','2023-11-18','17:00:00.000Z','2023-11-18T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-11-18','16:00:00.000Z','2023-11-18T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(61,'ISD-4','','Tentative','2023-07-01','17:00:00.000Z','2023-07-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-07-01','16:00:00.000Z','2023-07-01T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(62,'ISD-5','','Tentative','2023-07-08','17:00:00.000Z','2023-07-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-07-08','16:00:00.000Z','2023-07-08T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(63,'ISD-426','','Tentative','2023-07-15','17:00:00.000Z','2023-07-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-07-15','16:00:00.000Z','2023-07-15T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(64,'ISD-427','','Tentative','2023-07-22','17:00:00.000Z','2023-07-22T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-07-22','16:00:00.000Z','2023-07-22T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(65,'ISD-428','','Tentative','2023-07-29','17:00:00.000Z','2023-07-29T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-07-29','16:00:00.000Z','2023-07-29T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(66,'ISD-429','','Tentative','2023-08-05','17:00:00.000Z','2023-08-05T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-08-05','16:00:00.000Z','2023-08-05T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(67,'ISD-293','','Tentative','2023-02-04','14:00:00.000Z','2023-02-04T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-02-04','13:00:00.000Z','2023-02-04T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(68,'ISD-294','','Tentative','2023-02-11','14:00:00.000Z','2023-02-11T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-02-11','13:00:00.000Z','2023-02-11T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(69,'ISD-295','','Tentative','2023-02-18','14:00:00.000Z','2023-02-18T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-02-18','13:00:00.000Z','2023-02-18T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(70,'ISD-296','','Tentative','2023-02-25','14:00:00.000Z','2023-02-25T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-02-25','13:00:00.000Z','2023-02-25T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(71,'ISD-297','','Tentative','2022-12-10','14:00:00.000Z','2022-12-10T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-12-10','13:00:00.000Z','2022-12-10T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(72,'ISD-298','','Tentative','2022-12-17','14:00:00.000Z','2022-12-17T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-12-17','13:00:00.000Z','2022-12-17T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(73,'ISD-299','','Tentative','2022-12-24','14:00:00.000Z','2022-12-24T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-12-24','13:00:00.000Z','2022-12-24T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(74,'ISD-300','','Tentative','2022-12-31','14:00:00.000Z','2022-12-31T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-12-31','13:00:00.000Z','2022-12-31T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(75,'ISD-301','','Tentative','2023-01-07','14:00:00.000Z','2023-01-07T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-01-07','13:00:00.000Z','2023-01-07T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(76,'ISD-302','','Tentative','2023-01-14','14:00:00.000Z','2023-01-14T04:00:00.000+0000','a1b5j000000TZFCAA4','2023-01-14','13:00:00.000Z','2023-01-14T03:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(77,'ISD-303','','Tentative','2023-03-04','14:00:00.000Z','2023-03-04T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-03-04','13:00:00.000Z','2023-03-04T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(78,'ISD-304','','Tentative','2023-03-11','14:00:00.000Z','2023-03-11T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-03-11','13:00:00.000Z','2023-03-11T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(79,'ISD-305','','Tentative','2023-03-18','14:00:00.000Z','2023-03-18T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-03-18','13:00:00.000Z','2023-03-18T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(80,'ISD-306','','Tentative','2023-03-25','14:00:00.000Z','2023-03-25T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-03-25','13:00:00.000Z','2023-03-25T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(81,'ISD-327','','Tentative','2023-04-01','14:00:00.000Z','2023-04-01T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-04-01','13:00:00.000Z','2023-04-01T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(82,'ISD-328','','Tentative','2023-04-08','14:00:00.000Z','2023-04-08T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-04-08','13:00:00.000Z','2023-04-08T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(83,'ISD-329','','Tentative','2023-04-15','14:00:00.000Z','2023-04-15T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-04-15','13:00:00.000Z','2023-04-15T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(84,'ISD-330','','Tentative','2023-04-22','14:00:00.000Z','2023-04-22T03:00:00.000+0000','a1b5j000000TZFCAA4','2023-04-22','13:00:00.000Z','2023-04-22T02:00:00.000+0000','Good','Allocated','True','12','32');
INSERT INTO "rio_ed__Allocation__c" VALUES(85,'ISD-405','','Tentative','2023-09-03','11:00:00.000Z','2023-09-03T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-09-03','10:00:00.000Z','2023-09-03T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(86,'ISD-406','','Tentative','2023-09-10','11:00:00.000Z','2023-09-10T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-09-10','10:00:00.000Z','2023-09-10T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(87,'ISD-407','','Tentative','2023-09-17','11:00:00.000Z','2023-09-17T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-09-17','10:00:00.000Z','2023-09-17T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(88,'ISD-408','','Tentative','2023-09-24','11:00:00.000Z','2023-09-24T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-09-24','10:00:00.000Z','2023-09-24T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(89,'ISD-430','','Tentative','2023-08-12','17:00:00.000Z','2023-08-12T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-08-12','16:00:00.000Z','2023-08-12T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(90,'ISD-431','','Tentative','2023-08-19','17:00:00.000Z','2023-08-19T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-08-19','16:00:00.000Z','2023-08-19T05:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(91,'ISD-432','','Tentative','2023-08-26','17:00:00.000Z','2023-08-26T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-08-26','16:00:00.000Z','2023-08-26T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(92,'ISD-433','','Tentative','2023-09-09','17:00:00.000Z','2023-09-09T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-09-09','16:00:00.000Z','2023-09-09T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(93,'ISD-434','','Tentative','2023-09-16','17:00:00.000Z','2023-09-16T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-09-16','16:00:00.000Z','2023-09-16T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(94,'ISD-435','','Tentative','2023-09-23','17:00:00.000Z','2023-09-23T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-09-23','16:00:00.000Z','2023-09-23T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(95,'ISD-436','','Tentative','2023-09-30','17:00:00.000Z','2023-09-30T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-09-30','16:00:00.000Z','2023-09-30T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(96,'ISD-437','','Tentative','2023-10-07','17:00:00.000Z','2023-10-07T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-10-07','16:00:00.000Z','2023-10-07T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(97,'ISD-439','','Tentative','2023-10-14','17:00:00.000Z','2023-10-14T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-10-14','16:00:00.000Z','2023-10-14T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(98,'ISD-440','','Tentative','2023-10-21','17:00:00.000Z','2023-10-21T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-10-21','16:00:00.000Z','2023-10-21T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(99,'ISD-441','','Tentative','2023-10-28','17:00:00.000Z','2023-10-28T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-10-28','16:00:00.000Z','2023-10-28T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(100,'ISD-438','','Tentative','2023-09-02','17:00:00.000Z','2023-09-02T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-09-02','16:00:00.000Z','2023-09-02T06:00:00.000+0000','Good','Allocated','True','12','34');
INSERT INTO "rio_ed__Allocation__c" VALUES(101,'ISD-6','','Tentative','2022-07-02','11:00:00.000Z','2022-07-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-07-02','10:00:00.000Z','2022-07-01T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(102,'ISD-7','','Tentative','2022-07-09','11:00:00.000Z','2022-07-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-07-09','10:00:00.000Z','2022-07-08T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(103,'ISD-8','','Tentative','2022-07-16','11:00:00.000Z','2022-07-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-07-16','10:00:00.000Z','2022-07-15T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(104,'ISD-9','','Tentative','2022-07-23','11:00:00.000Z','2022-07-23T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-07-23','10:00:00.000Z','2022-07-22T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(105,'ISD-10','','Tentative','2022-07-30','11:00:00.000Z','2022-07-30T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-07-30','10:00:00.000Z','2022-07-29T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(106,'ISD-11','','Tentative','2022-08-06','11:00:00.000Z','2022-08-06T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-08-06','10:00:00.000Z','2022-08-05T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(107,'ISD-12','','Tentative','2022-08-13','11:00:00.000Z','2022-08-13T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-08-13','10:00:00.000Z','2022-08-12T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(108,'ISD-13','','Tentative','2022-08-20','11:00:00.000Z','2022-08-20T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-08-20','10:00:00.000Z','2022-08-19T23:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(109,'ISD-14','','Tentative','2022-08-27','11:00:00.000Z','2022-08-27T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-08-27','10:00:00.000Z','2022-08-27T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(110,'ISD-15','','Tentative','2022-09-03','11:00:00.000Z','2022-09-03T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-09-03','10:00:00.000Z','2022-09-03T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(111,'ISD-409','','Tentative','2023-10-01','11:00:00.000Z','2023-10-01T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-10-01','10:00:00.000Z','2023-10-01T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(112,'ISD-410','','Tentative','2023-10-08','11:00:00.000Z','2023-10-08T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-10-08','10:00:00.000Z','2023-10-08T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(113,'ISD-411','','Tentative','2023-10-15','11:00:00.000Z','2023-10-15T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-10-15','10:00:00.000Z','2023-10-15T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(114,'ISD-412','','Tentative','2023-10-22','11:00:00.000Z','2023-10-22T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-10-22','10:00:00.000Z','2023-10-22T00:00:00.000+0000','Good','Allocated','True','12','33');
INSERT INTO "rio_ed__Allocation__c" VALUES(115,'ISD-16','','Tentative','2022-09-10','11:00:00.000Z','2022-09-10T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-09-10','10:00:00.000Z','2022-09-10T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(116,'ISD-17','','Tentative','2022-09-17','11:00:00.000Z','2022-09-17T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-09-17','10:00:00.000Z','2022-09-17T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(117,'ISD-18','','Tentative','2022-09-24','11:00:00.000Z','2022-09-24T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-09-24','10:00:00.000Z','2022-09-24T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(118,'ISD-19','','Tentative','2022-10-01','11:00:00.000Z','2022-10-01T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-10-01','10:00:00.000Z','2022-10-01T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(119,'ISD-20','','Tentative','2022-10-08','11:00:00.000Z','2022-10-08T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-10-08','10:00:00.000Z','2022-10-08T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(120,'ISD-41','','Tentative','2022-10-15','11:00:00.000Z','2022-10-15T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-10-15','10:00:00.000Z','2022-10-15T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(121,'ISD-42','','Tentative','2022-10-22','11:00:00.000Z','2022-10-22T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-10-22','10:00:00.000Z','2022-10-22T00:00:00.000+0000','Good','Allocated','True','12','35');
INSERT INTO "rio_ed__Allocation__c" VALUES(122,'ISD-53','','Tentative','2023-02-18','16:00:00.000Z','2023-02-18T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-02-18','15:00:00.000Z','2023-02-18T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(123,'ISD-52','','Tentative','2023-02-11','16:00:00.000Z','2023-02-11T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-02-11','15:00:00.000Z','2023-02-11T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(124,'ISD-54','','Tentative','2023-02-25','16:00:00.000Z','2023-02-25T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-02-25','15:00:00.000Z','2023-02-25T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(125,'ISD-55','','Tentative','2023-03-11','16:00:00.000Z','2023-03-11T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-03-11','15:00:00.000Z','2023-03-11T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(126,'ISD-56','','Tentative','2023-03-04','16:00:00.000Z','2023-03-04T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-03-04','15:00:00.000Z','2023-03-04T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(127,'ISD-57','','Tentative','2023-03-18','16:00:00.000Z','2023-03-18T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-03-18','15:00:00.000Z','2023-03-18T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(128,'ISD-58','','Tentative','2023-03-25','16:00:00.000Z','2023-03-25T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-03-25','15:00:00.000Z','2023-03-25T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(129,'ISD-59','','Tentative','2023-04-01','16:00:00.000Z','2023-04-01T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-04-01','15:00:00.000Z','2023-04-01T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(130,'ISD-60','','Tentative','2023-04-08','16:00:00.000Z','2023-04-08T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-04-08','15:00:00.000Z','2023-04-08T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(131,'ISD-81','','Tentative','2023-04-15','16:00:00.000Z','2023-04-15T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-04-15','15:00:00.000Z','2023-04-15T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(132,'ISD-82','','Tentative','2023-04-22','16:00:00.000Z','2023-04-22T05:00:00.000+0000','a1b5j000000TZFoAAO','2023-04-22','15:00:00.000Z','2023-04-22T04:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(133,'ISD-43','','Tentative','2022-12-24','16:00:00.000Z','2022-12-24T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-12-24','15:00:00.000Z','2022-12-24T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(134,'ISD-44','','Tentative','2022-12-31','16:00:00.000Z','2022-12-31T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-12-31','15:00:00.000Z','2022-12-31T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(135,'ISD-45','','Tentative','2023-01-07','16:00:00.000Z','2023-01-07T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-01-07','15:00:00.000Z','2023-01-07T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(136,'ISD-46','','Tentative','2022-12-10','16:00:00.000Z','2022-12-10T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-12-10','15:00:00.000Z','2022-12-10T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(137,'ISD-47','','Tentative','2022-12-17','16:00:00.000Z','2022-12-17T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-12-17','15:00:00.000Z','2022-12-17T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(138,'ISD-48','','Tentative','2023-01-14','16:00:00.000Z','2023-01-14T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-01-14','15:00:00.000Z','2023-01-14T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(139,'ISD-49','','Tentative','2023-01-21','16:00:00.000Z','2023-01-21T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-01-21','15:00:00.000Z','2023-01-21T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(140,'ISD-50','','Tentative','2023-01-28','16:00:00.000Z','2023-01-28T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-01-28','15:00:00.000Z','2023-01-28T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(141,'ISD-51','','Tentative','2023-02-04','16:00:00.000Z','2023-02-04T06:00:00.000+0000','a1b5j000000TZFoAAO','2023-02-04','15:00:00.000Z','2023-02-04T05:00:00.000+0000','Good','Allocated','True','12','36');
INSERT INTO "rio_ed__Allocation__c" VALUES(142,'ISD-83','','Tentative','2022-09-26','10:00:00.000Z','2022-09-26T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-09-26','09:00:00.000Z','2022-09-25T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(143,'ISD-84','','Tentative','2022-10-03','10:00:00.000Z','2022-10-03T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-10-03','09:00:00.000Z','2022-10-02T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(144,'ISD-85','','Tentative','2022-10-10','10:00:00.000Z','2022-10-10T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-10-10','09:00:00.000Z','2022-10-09T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(145,'ISD-86','','Tentative','2022-10-17','10:00:00.000Z','2022-10-17T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-10-17','09:00:00.000Z','2022-10-16T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(146,'ISD-87','','Tentative','2022-06-27','10:00:00.000Z','2022-06-26T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-06-27','09:00:00.000Z','2022-06-26T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(147,'ISD-88','','Tentative','2022-07-04','10:00:00.000Z','2022-07-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-07-04','09:00:00.000Z','2022-07-03T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(148,'ISD-89','','Tentative','2022-07-11','10:00:00.000Z','2022-07-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-07-11','09:00:00.000Z','2022-07-10T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(149,'ISD-90','','Tentative','2022-07-18','10:00:00.000Z','2022-07-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-07-18','09:00:00.000Z','2022-07-17T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(150,'ISD-91','','Tentative','2022-07-25','10:00:00.000Z','2022-07-24T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-07-25','09:00:00.000Z','2022-07-24T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(151,'ISD-92','','Tentative','2022-08-01','10:00:00.000Z','2022-07-31T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-08-01','09:00:00.000Z','2022-07-31T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(152,'ISD-93','','Tentative','2022-08-08','10:00:00.000Z','2022-08-07T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-08-08','09:00:00.000Z','2022-08-07T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(153,'ISD-94','','Tentative','2022-08-15','10:00:00.000Z','2022-08-14T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-08-15','09:00:00.000Z','2022-08-14T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(154,'ISD-95','','Tentative','2022-08-22','10:00:00.000Z','2022-08-21T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-08-22','09:00:00.000Z','2022-08-21T22:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(155,'ISD-96','','Tentative','2022-08-29','10:00:00.000Z','2022-08-29T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-08-29','09:00:00.000Z','2022-08-28T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(156,'ISD-97','','Tentative','2022-09-05','10:00:00.000Z','2022-09-05T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-09-05','09:00:00.000Z','2022-09-04T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(157,'ISD-98','','Tentative','2022-09-12','10:00:00.000Z','2022-09-12T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-09-12','09:00:00.000Z','2022-09-11T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(158,'ISD-99','','Tentative','2022-09-19','10:00:00.000Z','2022-09-19T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-09-19','09:00:00.000Z','2022-09-18T23:00:00.000+0000','Good','Allocated','True','12','37');
INSERT INTO "rio_ed__Allocation__c" VALUES(159,'ISD-100','','Tentative','2022-07-31','17:00:00.000Z','2022-07-31T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-07-31','16:00:00.000Z','2022-07-31T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(160,'ISD-121','','Tentative','2022-08-07','17:00:00.000Z','2022-08-07T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-08-07','16:00:00.000Z','2022-08-07T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(161,'ISD-122','','Tentative','2022-08-14','17:00:00.000Z','2022-08-14T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-08-14','16:00:00.000Z','2022-08-14T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(162,'ISD-123','','Tentative','2022-08-21','17:00:00.000Z','2022-08-21T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-08-21','16:00:00.000Z','2022-08-21T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(163,'ISD-124','','Tentative','2022-08-28','17:00:00.000Z','2022-08-28T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-08-28','16:00:00.000Z','2022-08-28T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(164,'ISD-125','','Tentative','2022-09-04','17:00:00.000Z','2022-09-04T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-09-04','16:00:00.000Z','2022-09-04T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(165,'ISD-126','','Tentative','2022-09-11','17:00:00.000Z','2022-09-11T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-09-11','16:00:00.000Z','2022-09-11T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(166,'ISD-127','','Tentative','2022-09-18','17:00:00.000Z','2022-09-18T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-09-18','16:00:00.000Z','2022-09-18T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(167,'ISD-128','','Tentative','2022-09-25','17:00:00.000Z','2022-09-25T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-09-25','16:00:00.000Z','2022-09-25T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(168,'ISD-129','','Tentative','2022-10-02','17:00:00.000Z','2022-10-02T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-10-02','16:00:00.000Z','2022-10-02T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(169,'ISD-130','','Tentative','2022-10-09','17:00:00.000Z','2022-10-09T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-10-09','16:00:00.000Z','2022-10-09T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(170,'ISD-131','','Tentative','2022-10-16','17:00:00.000Z','2022-10-16T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-10-16','16:00:00.000Z','2022-10-16T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(171,'ISD-132','','Tentative','2022-10-23','17:00:00.000Z','2022-10-23T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-10-23','16:00:00.000Z','2022-10-23T06:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(172,'ISD-133','','Tentative','2022-06-26','17:00:00.000Z','2022-06-26T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-06-26','16:00:00.000Z','2022-06-26T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(173,'ISD-134','','Tentative','2022-07-03','17:00:00.000Z','2022-07-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-07-03','16:00:00.000Z','2022-07-03T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(174,'ISD-135','','Tentative','2022-07-10','17:00:00.000Z','2022-07-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-07-10','16:00:00.000Z','2022-07-10T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(175,'ISD-136','','Tentative','2022-07-17','17:00:00.000Z','2022-07-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-07-17','16:00:00.000Z','2022-07-17T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(176,'ISD-137','','Tentative','2022-07-24','17:00:00.000Z','2022-07-24T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-07-24','16:00:00.000Z','2022-07-24T05:00:00.000+0000','Good','Allocated','True','12','38');
INSERT INTO "rio_ed__Allocation__c" VALUES(177,'ISD-138','','Tentative','2022-12-12','14:00:00.000Z','2022-12-12T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-12-12','13:00:00.000Z','2022-12-12T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(178,'ISD-139','','Tentative','2022-12-19','14:00:00.000Z','2022-12-19T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-12-19','13:00:00.000Z','2022-12-19T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(179,'ISD-140','','Tentative','2022-12-26','14:00:00.000Z','2022-12-26T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-12-26','13:00:00.000Z','2022-12-26T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(180,'ISD-161','','Tentative','2023-01-02','14:00:00.000Z','2023-01-02T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-01-02','13:00:00.000Z','2023-01-02T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(181,'ISD-162','','Tentative','2023-01-09','14:00:00.000Z','2023-01-09T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-01-09','13:00:00.000Z','2023-01-09T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(182,'ISD-163','','Tentative','2023-01-23','14:00:00.000Z','2023-01-23T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-01-23','13:00:00.000Z','2023-01-23T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(183,'ISD-164','','Tentative','2023-01-30','14:00:00.000Z','2023-01-30T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-01-30','13:00:00.000Z','2023-01-30T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(184,'ISD-165','','Tentative','2023-02-06','14:00:00.000Z','2023-02-06T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-02-06','13:00:00.000Z','2023-02-06T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(185,'ISD-166','','Tentative','2023-02-13','14:00:00.000Z','2023-02-13T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-02-13','13:00:00.000Z','2023-02-13T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(186,'ISD-167','','Tentative','2023-02-20','14:00:00.000Z','2023-02-20T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-02-20','13:00:00.000Z','2023-02-20T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(187,'ISD-168','','Tentative','2023-02-27','14:00:00.000Z','2023-02-27T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-02-27','13:00:00.000Z','2023-02-27T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(188,'ISD-169','','Tentative','2023-01-16','14:00:00.000Z','2023-01-16T04:00:00.000+0000','a1b5j000000TZFuAAO','2023-01-16','13:00:00.000Z','2023-01-16T03:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(189,'ISD-170','','Tentative','2023-03-06','14:00:00.000Z','2023-03-06T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-03-06','13:00:00.000Z','2023-03-06T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(190,'ISD-171','','Tentative','2023-03-13','14:00:00.000Z','2023-03-13T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-03-13','13:00:00.000Z','2023-03-13T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(191,'ISD-172','','Tentative','2023-03-20','14:00:00.000Z','2023-03-20T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-03-20','13:00:00.000Z','2023-03-20T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(192,'ISD-173','','Tentative','2023-03-27','14:00:00.000Z','2023-03-27T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-03-27','13:00:00.000Z','2023-03-27T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(193,'ISD-174','','Tentative','2023-04-03','14:00:00.000Z','2023-04-03T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-04-03','13:00:00.000Z','2023-04-03T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(194,'ISD-175','','Tentative','2023-04-10','14:00:00.000Z','2023-04-10T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-04-10','13:00:00.000Z','2023-04-10T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(195,'ISD-176','','Tentative','2023-04-17','14:00:00.000Z','2023-04-17T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-04-17','13:00:00.000Z','2023-04-17T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(196,'ISD-177','','Tentative','2023-04-24','14:00:00.000Z','2023-04-24T03:00:00.000+0000','a1b5j000000TZFuAAO','2023-04-24','13:00:00.000Z','2023-04-24T02:00:00.000+0000','Good','Allocated','True','12','39');
INSERT INTO "rio_ed__Allocation__c" VALUES(197,'ISD-216','','Tentative','2023-03-27','11:00:00.000Z','2023-03-27T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-03-27','10:00:00.000Z','2023-03-26T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(198,'ISD-217','','Tentative','2023-04-03','11:00:00.000Z','2023-04-03T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-04-03','10:00:00.000Z','2023-04-02T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(199,'ISD-178','','Tentative','2023-02-06','11:00:00.000Z','2023-02-06T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-02-06','10:00:00.000Z','2023-02-06T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(200,'ISD-179','','Tentative','2023-02-13','11:00:00.000Z','2023-02-13T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-02-13','10:00:00.000Z','2023-02-13T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(201,'ISD-180','','Tentative','2023-02-20','11:00:00.000Z','2023-02-20T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-02-20','10:00:00.000Z','2023-02-20T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(202,'ISD-201','','Tentative','2023-02-27','11:00:00.000Z','2023-02-27T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-02-27','10:00:00.000Z','2023-02-26T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(203,'ISD-202','','Tentative','2023-03-06','11:00:00.000Z','2023-03-06T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-03-06','10:00:00.000Z','2023-03-05T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(204,'ISD-203','','Tentative','2023-03-13','11:00:00.000Z','2023-03-13T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-03-13','10:00:00.000Z','2023-03-12T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(205,'ISD-204','','Tentative','2023-04-17','11:00:00.000Z','2023-04-17T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-04-17','10:00:00.000Z','2023-04-16T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(206,'ISD-205','','Tentative','2023-04-10','11:00:00.000Z','2023-04-10T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-04-10','10:00:00.000Z','2023-04-09T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(207,'ISD-206','','Tentative','2023-04-24','11:00:00.000Z','2023-04-24T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-04-24','10:00:00.000Z','2023-04-23T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(208,'ISD-207','','Tentative','2023-01-09','11:00:00.000Z','2023-01-09T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-01-09','10:00:00.000Z','2023-01-09T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(209,'ISD-208','','Tentative','2023-01-16','11:00:00.000Z','2023-01-16T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-01-16','10:00:00.000Z','2023-01-16T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(210,'ISD-209','','Tentative','2023-01-23','11:00:00.000Z','2023-01-23T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-01-23','10:00:00.000Z','2023-01-23T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(211,'ISD-210','','Tentative','2023-01-30','11:00:00.000Z','2023-01-30T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-01-30','10:00:00.000Z','2023-01-30T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(212,'ISD-211','','Tentative','2022-12-12','11:00:00.000Z','2022-12-12T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-12-12','10:00:00.000Z','2022-12-12T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(213,'ISD-212','','Tentative','2022-12-19','11:00:00.000Z','2022-12-19T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-12-19','10:00:00.000Z','2022-12-19T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(214,'ISD-213','','Tentative','2022-12-26','11:00:00.000Z','2022-12-26T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-12-26','10:00:00.000Z','2022-12-26T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(215,'ISD-214','','Tentative','2023-01-02','11:00:00.000Z','2023-01-02T01:00:00.000+0000','a1b5j000000TZGOAA4','2023-01-02','10:00:00.000Z','2023-01-02T00:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(216,'ISD-215','','Tentative','2023-03-20','11:00:00.000Z','2023-03-20T00:00:00.000+0000','a1b5j000000TZGOAA4','2023-03-20','10:00:00.000Z','2023-03-19T23:00:00.000+0000','Good','Allocated','True','12','40');
INSERT INTO "rio_ed__Allocation__c" VALUES(217,'ISD-218','','Tentative','2023-01-09','13:00:00.000Z','2023-01-09T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-01-09','12:00:00.000Z','2023-01-09T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(218,'ISD-219','','Tentative','2023-01-16','13:00:00.000Z','2023-01-16T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-01-16','12:00:00.000Z','2023-01-16T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(219,'ISD-220','','Tentative','2023-01-23','13:00:00.000Z','2023-01-23T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-01-23','12:00:00.000Z','2023-01-23T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(220,'ISD-221','','Tentative','2023-02-13','13:00:00.000Z','2023-02-13T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-02-13','12:00:00.000Z','2023-02-13T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(221,'ISD-222','','Tentative','2023-02-20','13:00:00.000Z','2023-02-20T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-02-20','12:00:00.000Z','2023-02-20T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(222,'ISD-223','','Tentative','2023-02-27','13:00:00.000Z','2023-02-27T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-02-27','12:00:00.000Z','2023-02-27T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(223,'ISD-224','','Tentative','2023-03-06','13:00:00.000Z','2023-03-06T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-03-06','12:00:00.000Z','2023-03-06T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(224,'ISD-225','','Tentative','2023-01-30','13:00:00.000Z','2023-01-30T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-01-30','12:00:00.000Z','2023-01-30T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(225,'ISD-226','','Tentative','2023-02-06','13:00:00.000Z','2023-02-06T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-02-06','12:00:00.000Z','2023-02-06T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(226,'ISD-227','','Tentative','2023-03-13','13:00:00.000Z','2023-03-13T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-03-13','12:00:00.000Z','2023-03-13T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(227,'ISD-228','','Tentative','2023-03-20','13:00:00.000Z','2023-03-20T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-03-20','12:00:00.000Z','2023-03-20T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(228,'ISD-229','','Tentative','2023-03-27','13:00:00.000Z','2023-03-27T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-03-27','12:00:00.000Z','2023-03-27T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(229,'ISD-230','','Tentative','2023-04-03','13:00:00.000Z','2023-04-03T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-04-03','12:00:00.000Z','2023-04-03T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(230,'ISD-231','','Tentative','2023-04-10','13:00:00.000Z','2023-04-10T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-04-10','12:00:00.000Z','2023-04-10T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(231,'ISD-232','','Tentative','2023-04-17','13:00:00.000Z','2023-04-17T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-04-17','12:00:00.000Z','2023-04-17T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(232,'ISD-233','','Tentative','2023-04-24','13:00:00.000Z','2023-04-24T02:00:00.000+0000','a1b5j000000TZGcAAO','2023-04-24','12:00:00.000Z','2023-04-24T01:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(233,'ISD-234','','Tentative','2022-12-12','13:00:00.000Z','2022-12-12T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-12-12','12:00:00.000Z','2022-12-12T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(234,'ISD-235','','Tentative','2022-12-19','13:00:00.000Z','2022-12-19T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-12-19','12:00:00.000Z','2022-12-19T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(235,'ISD-236','','Tentative','2022-12-26','13:00:00.000Z','2022-12-26T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-12-26','12:00:00.000Z','2022-12-26T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(236,'ISD-257','','Tentative','2023-01-02','13:00:00.000Z','2023-01-02T03:00:00.000+0000','a1b5j000000TZGcAAO','2023-01-02','12:00:00.000Z','2023-01-02T02:00:00.000+0000','Good','Allocated','True','12','41');
INSERT INTO "rio_ed__Allocation__c" VALUES(237,'ISD-258','','Tentative','2024-04-08','15:00:00.000Z','2024-04-08T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-04-08','14:00:00.000Z','2024-04-08T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(238,'ISD-259','','Tentative','2024-04-15','15:00:00.000Z','2024-04-15T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-04-15','14:00:00.000Z','2024-04-15T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(239,'ISD-260','','Tentative','2024-04-22','15:00:00.000Z','2024-04-22T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-04-22','14:00:00.000Z','2024-04-22T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(240,'ISD-261','','Tentative','2024-01-15','15:00:00.000Z','2024-01-15T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-01-15','14:00:00.000Z','2024-01-15T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(241,'ISD-262','','Tentative','2024-01-22','15:00:00.000Z','2024-01-22T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-01-22','14:00:00.000Z','2024-01-22T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(242,'ISD-263','','Tentative','2024-01-29','15:00:00.000Z','2024-01-29T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-01-29','14:00:00.000Z','2024-01-29T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(243,'ISD-264','','Tentative','2024-02-05','15:00:00.000Z','2024-02-05T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-02-05','14:00:00.000Z','2024-02-05T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(244,'ISD-265','','Tentative','2024-02-12','15:00:00.000Z','2024-02-12T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-02-12','14:00:00.000Z','2024-02-12T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(245,'ISD-266','','Tentative','2024-02-19','15:00:00.000Z','2024-02-19T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-02-19','14:00:00.000Z','2024-02-19T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(246,'ISD-442','','Tentative','2024-02-26','15:00:00.000Z','2024-02-26T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-02-26','14:00:00.000Z','2024-02-26T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(247,'ISD-443','','Tentative','2024-03-04','15:00:00.000Z','2024-03-04T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-03-04','14:00:00.000Z','2024-03-04T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(248,'ISD-444','','Tentative','2023-12-11','15:00:00.000Z','2023-12-11T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-12-11','14:00:00.000Z','2023-12-11T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(249,'ISD-445','','Tentative','2023-12-18','15:00:00.000Z','2023-12-18T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-12-18','14:00:00.000Z','2023-12-18T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(250,'ISD-446','','Tentative','2024-03-11','15:00:00.000Z','2024-03-11T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-03-11','14:00:00.000Z','2024-03-11T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(251,'ISD-447','','Tentative','2024-03-18','15:00:00.000Z','2024-03-18T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-03-18','14:00:00.000Z','2024-03-18T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(252,'ISD-448','','Tentative','2024-03-25','15:00:00.000Z','2024-03-25T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-03-25','14:00:00.000Z','2024-03-25T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(253,'ISD-449','','Tentative','2024-04-01','15:00:00.000Z','2024-04-01T04:00:00.000+0000','a1b5j000000TZRCAA4','2024-04-01','14:00:00.000Z','2024-04-01T03:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(254,'ISD-450','','Tentative','2023-12-25','15:00:00.000Z','2023-12-25T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-12-25','14:00:00.000Z','2023-12-25T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(255,'ISD-451','','Tentative','2024-01-01','15:00:00.000Z','2024-01-01T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-01-01','14:00:00.000Z','2024-01-01T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(256,'ISD-452','','Tentative','2024-01-08','15:00:00.000Z','2024-01-08T05:00:00.000+0000','a1b5j000000TZRCAA4','2024-01-08','14:00:00.000Z','2024-01-08T04:00:00.000+0000','Good','Allocated','False','12','42');
INSERT INTO "rio_ed__Allocation__c" VALUES(257,'ISD-29','','Tentative','2024-04-07','13:00:00.000Z','2024-04-07T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-04-07','12:00:00.000Z','2024-04-07T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(258,'ISD-30','','Tentative','2024-04-14','13:00:00.000Z','2024-04-14T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-04-14','12:00:00.000Z','2024-04-14T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(259,'ISD-31','','Tentative','2024-04-21','13:00:00.000Z','2024-04-21T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-04-21','12:00:00.000Z','2024-04-21T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(260,'ISD-32','','Tentative','2024-02-04','13:00:00.000Z','2024-02-04T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-02-04','12:00:00.000Z','2024-02-04T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(261,'ISD-33','','Tentative','2024-02-11','13:00:00.000Z','2024-02-11T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-02-11','12:00:00.000Z','2024-02-11T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(262,'ISD-34','','Tentative','2024-02-18','13:00:00.000Z','2024-02-18T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-02-18','12:00:00.000Z','2024-02-18T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(263,'ISD-35','','Tentative','2024-02-25','13:00:00.000Z','2024-02-25T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-02-25','12:00:00.000Z','2024-02-25T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(264,'ISD-36','','Tentative','2023-12-10','13:00:00.000Z','2023-12-10T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-12-10','12:00:00.000Z','2023-12-10T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(265,'ISD-37','','Tentative','2023-12-17','13:00:00.000Z','2023-12-17T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-12-17','12:00:00.000Z','2023-12-17T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(266,'ISD-38','','Tentative','2023-12-24','13:00:00.000Z','2023-12-24T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-12-24','12:00:00.000Z','2023-12-24T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(267,'ISD-39','','Tentative','2023-12-31','13:00:00.000Z','2023-12-31T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-12-31','12:00:00.000Z','2023-12-31T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(268,'ISD-40','','Tentative','2024-01-07','13:00:00.000Z','2024-01-07T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-01-07','12:00:00.000Z','2024-01-07T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(269,'ISD-462','Tuesday','Tentative','2022-07-18','16:00:00.000Z','2022-07-18T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-07-18','15:00:00.000Z','2022-07-18T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(270,'ISD-463','Tuesday','Tentative','2022-07-25','16:00:00.000Z','2022-07-25T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-07-25','15:00:00.000Z','2022-07-25T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(271,'ISD-464','Tuesday','Tentative','2022-08-01','16:00:00.000Z','2022-08-01T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-08-01','15:00:00.000Z','2022-08-01T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(272,'ISD-465','Tuesday','Tentative','2022-08-08','16:00:00.000Z','2022-08-08T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-08-08','15:00:00.000Z','2022-08-08T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(273,'ISD-466','Tuesday','Tentative','2022-08-15','16:00:00.000Z','2022-08-15T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-08-15','15:00:00.000Z','2022-08-15T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(274,'ISD-467','Tuesday','Tentative','2022-08-22','16:00:00.000Z','2022-08-22T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-08-22','15:00:00.000Z','2022-08-22T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(275,'ISD-468','Tuesday','Tentative','2022-08-29','16:00:00.000Z','2022-08-29T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-08-29','15:00:00.000Z','2022-08-29T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(276,'ISD-469','Tuesday','Tentative','2022-09-05','16:00:00.000Z','2022-09-05T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-09-05','15:00:00.000Z','2022-09-05T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(277,'ISD-470','Tuesday','Tentative','2022-09-12','16:00:00.000Z','2022-09-12T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-09-12','15:00:00.000Z','2022-09-12T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(278,'ISD-471','Tuesday','Tentative','2022-09-19','16:00:00.000Z','2022-09-19T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-09-19','15:00:00.000Z','2022-09-19T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(279,'ISD-472','Tuesday','Tentative','2022-09-26','16:00:00.000Z','2022-09-26T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-09-26','15:00:00.000Z','2022-09-26T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(280,'ISD-473','Tuesday','Tentative','2022-10-03','16:00:00.000Z','2022-10-03T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-10-03','15:00:00.000Z','2022-10-03T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(281,'ISD-474','Tuesday','Tentative','2022-10-10','16:00:00.000Z','2022-10-10T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-10-10','15:00:00.000Z','2022-10-10T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(282,'ISD-475','Tuesday','Tentative','2022-10-17','16:00:00.000Z','2022-10-17T06:00:00.000+0000','a1c8a00000GidyPAAR','2022-10-17','15:00:00.000Z','2022-10-17T05:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(283,'ISD-476','Tuesday','Tentative','2022-10-24','16:00:00.000Z','2022-10-24T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-10-24','15:00:00.000Z','2022-10-24T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(284,'ISD-477','Tuesday','Tentative','2022-10-31','16:00:00.000Z','2022-10-31T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-10-31','15:00:00.000Z','2022-10-31T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(285,'ISD-478','Tuesday','Tentative','2022-11-07','16:00:00.000Z','2022-11-07T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-11-07','15:00:00.000Z','2022-11-07T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(286,'ISD-479','Tuesday','Tentative','2022-11-14','16:00:00.000Z','2022-11-14T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-11-14','15:00:00.000Z','2022-11-14T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(287,'ISD-480','Tuesday','Tentative','2022-11-21','16:00:00.000Z','2022-11-21T05:00:00.000+0000','a1c8a00000GidyPAAR','2022-11-21','15:00:00.000Z','2022-11-21T04:00:00.000+0000','A Resource has not been assigned to this Booking.','Unallocated','False','','47');
INSERT INTO "rio_ed__Allocation__c" VALUES(288,'ISD-388','','Tentative','2022-07-02','13:00:00.000Z','2022-07-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-07-02','12:00:00.000Z','2022-07-02T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(289,'ISD-61','','Tentative','2024-01-14','13:00:00.000Z','2024-01-14T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-01-14','12:00:00.000Z','2024-01-14T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(290,'ISD-62','','Tentative','2024-01-21','13:00:00.000Z','2024-01-21T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-01-21','12:00:00.000Z','2024-01-21T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(291,'ISD-389','','Tentative','2022-07-09','13:00:00.000Z','2022-07-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-07-09','12:00:00.000Z','2022-07-09T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(292,'ISD-390','','Tentative','2022-07-16','13:00:00.000Z','2022-07-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-07-16','12:00:00.000Z','2022-07-16T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(293,'ISD-391','','Tentative','2022-07-23','13:00:00.000Z','2022-07-23T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-07-23','12:00:00.000Z','2022-07-23T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(294,'ISD-392','','Tentative','2022-07-30','13:00:00.000Z','2022-07-30T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-07-30','12:00:00.000Z','2022-07-30T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(295,'ISD-393','','Tentative','2022-08-06','13:00:00.000Z','2022-08-06T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-08-06','12:00:00.000Z','2022-08-06T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(296,'ISD-394','','Tentative','2022-08-13','13:00:00.000Z','2022-08-13T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-08-13','12:00:00.000Z','2022-08-13T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(297,'ISD-395','','Tentative','2022-08-20','13:00:00.000Z','2022-08-20T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-08-20','12:00:00.000Z','2022-08-20T01:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(298,'ISD-396','','Tentative','2022-08-27','13:00:00.000Z','2022-08-27T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-08-27','12:00:00.000Z','2022-08-27T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(299,'ISD-397','','Tentative','2022-09-03','13:00:00.000Z','2022-09-03T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-09-03','12:00:00.000Z','2022-09-03T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(300,'ISD-398','','Tentative','2022-09-10','13:00:00.000Z','2022-09-10T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-09-10','12:00:00.000Z','2022-09-10T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(301,'ISD-399','','Tentative','2022-09-17','13:00:00.000Z','2022-09-17T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-09-17','12:00:00.000Z','2022-09-17T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(302,'ISD-400','','Tentative','2022-09-24','13:00:00.000Z','2022-09-24T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-09-24','12:00:00.000Z','2022-09-24T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(303,'ISD-401','','Tentative','2022-10-01','13:00:00.000Z','2022-10-01T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-10-01','12:00:00.000Z','2022-10-01T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(304,'ISD-402','','Tentative','2022-10-08','13:00:00.000Z','2022-10-08T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-10-08','12:00:00.000Z','2022-10-08T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(305,'ISD-403','','Tentative','2022-10-15','13:00:00.000Z','2022-10-15T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-10-15','12:00:00.000Z','2022-10-15T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(306,'ISD-404','','Tentative','2022-10-22','13:00:00.000Z','2022-10-22T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-10-22','12:00:00.000Z','2022-10-22T02:00:00.000+0000','Good','Allocated','True','12','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(307,'ISD-21','','Tentative','2022-07-09','10:00:00.000Z','2022-07-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-07-09','09:00:00.000Z','2022-07-08T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(308,'ISD-22','','Tentative','2022-07-16','10:00:00.000Z','2022-07-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-07-16','09:00:00.000Z','2022-07-15T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(309,'ISD-23','','Tentative','2022-07-23','10:00:00.000Z','2022-07-22T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-07-23','09:00:00.000Z','2022-07-22T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(310,'ISD-24','','Tentative','2022-07-30','10:00:00.000Z','2022-07-29T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-07-30','09:00:00.000Z','2022-07-29T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(311,'ISD-25','','Tentative','2022-08-27','10:00:00.000Z','2022-08-27T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-08-27','09:00:00.000Z','2022-08-26T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(312,'ISD-26','','Tentative','2022-09-03','10:00:00.000Z','2022-09-03T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-09-03','09:00:00.000Z','2022-09-02T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(313,'ISD-27','','Tentative','2022-09-10','10:00:00.000Z','2022-09-10T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-09-10','09:00:00.000Z','2022-09-09T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(314,'ISD-28','','Tentative','2022-09-17','10:00:00.000Z','2022-09-17T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-09-17','09:00:00.000Z','2022-09-16T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(315,'ISD-453','','Tentative','2022-09-24','10:00:00.000Z','2022-09-24T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-09-24','09:00:00.000Z','2022-09-23T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(316,'ISD-454','','Tentative','2022-10-01','10:00:00.000Z','2022-10-01T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-10-01','09:00:00.000Z','2022-09-30T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(317,'ISD-455','','Tentative','2022-10-08','10:00:00.000Z','2022-10-08T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-10-08','09:00:00.000Z','2022-10-07T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(318,'ISD-456','','Tentative','2022-10-15','10:00:00.000Z','2022-10-15T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-10-15','09:00:00.000Z','2022-10-14T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(319,'ISD-457','','Tentative','2022-08-06','10:00:00.000Z','2022-08-05T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-08-06','09:00:00.000Z','2022-08-05T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(320,'ISD-458','','Tentative','2022-08-13','10:00:00.000Z','2022-08-12T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-08-13','09:00:00.000Z','2022-08-12T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(321,'ISD-459','','Tentative','2022-08-20','10:00:00.000Z','2022-08-19T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-08-20','09:00:00.000Z','2022-08-19T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(322,'ISD-460','','Tentative','2022-10-22','10:00:00.000Z','2022-10-22T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-10-22','09:00:00.000Z','2022-10-21T23:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(323,'ISD-461','','Tentative','2022-07-02','10:00:00.000Z','2022-07-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-07-02','09:00:00.000Z','2022-07-01T22:00:00.000+0000','Good','Allocated','True','12','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(324,'ISD-146','','Tentative','2022-07-02','12:00:00.000Z','2022-07-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-07-02','11:00:00.000Z','2022-07-02T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(325,'ISD-147','','Tentative','2022-07-09','12:00:00.000Z','2022-07-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-07-09','11:00:00.000Z','2022-07-09T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(326,'ISD-148','','Tentative','2022-07-16','12:00:00.000Z','2022-07-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-07-16','11:00:00.000Z','2022-07-16T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(327,'ISD-149','','Tentative','2022-07-23','12:00:00.000Z','2022-07-23T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-07-23','11:00:00.000Z','2022-07-23T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(328,'ISD-150','','Tentative','2022-07-30','12:00:00.000Z','2022-07-30T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-07-30','11:00:00.000Z','2022-07-30T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(329,'ISD-151','','Tentative','2022-08-06','12:00:00.000Z','2022-08-06T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-08-06','11:00:00.000Z','2022-08-06T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(330,'ISD-152','','Tentative','2022-08-13','12:00:00.000Z','2022-08-13T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-08-13','11:00:00.000Z','2022-08-13T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(331,'ISD-153','','Tentative','2022-08-20','12:00:00.000Z','2022-08-20T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-08-20','11:00:00.000Z','2022-08-20T00:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(332,'ISD-154','','Tentative','2022-08-27','12:00:00.000Z','2022-08-27T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-08-27','11:00:00.000Z','2022-08-27T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(333,'ISD-155','','Tentative','2022-09-03','12:00:00.000Z','2022-09-03T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-09-03','11:00:00.000Z','2022-09-03T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(334,'ISD-156','','Tentative','2022-09-10','12:00:00.000Z','2022-09-10T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-09-10','11:00:00.000Z','2022-09-10T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(335,'ISD-157','','Tentative','2022-09-17','12:00:00.000Z','2022-09-17T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-09-17','11:00:00.000Z','2022-09-17T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(336,'ISD-158','','Tentative','2022-09-24','12:00:00.000Z','2022-09-24T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-09-24','11:00:00.000Z','2022-09-24T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(337,'ISD-159','','Tentative','2022-10-01','12:00:00.000Z','2022-10-01T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-10-01','11:00:00.000Z','2022-10-01T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(338,'ISD-160','','Tentative','2022-10-08','12:00:00.000Z','2022-10-08T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-10-08','11:00:00.000Z','2022-10-08T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(339,'ISD-181','','Tentative','2022-10-15','12:00:00.000Z','2022-10-15T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-10-15','11:00:00.000Z','2022-10-15T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(340,'ISD-182','','Tentative','2022-10-22','12:00:00.000Z','2022-10-22T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-10-22','11:00:00.000Z','2022-10-22T01:00:00.000+0000','Good','Allocated','True','12','26');
INSERT INTO "rio_ed__Allocation__c" VALUES(341,'ISD-183','','Tentative','2023-07-30','12:00:00.000Z','2023-07-30T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-07-30','11:00:00.000Z','2023-07-30T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(342,'ISD-184','','Tentative','2023-08-06','12:00:00.000Z','2023-08-06T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-08-06','11:00:00.000Z','2023-08-06T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(343,'ISD-185','','Tentative','2023-08-13','12:00:00.000Z','2023-08-13T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-08-13','11:00:00.000Z','2023-08-13T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(344,'ISD-186','','Tentative','2023-08-20','12:00:00.000Z','2023-08-20T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-08-20','11:00:00.000Z','2023-08-20T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(345,'ISD-187','','Tentative','2023-08-27','12:00:00.000Z','2023-08-27T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-08-27','11:00:00.000Z','2023-08-27T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(346,'ISD-188','','Tentative','2023-09-03','12:00:00.000Z','2023-09-03T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-09-03','11:00:00.000Z','2023-09-03T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(347,'ISD-189','','Tentative','2023-07-02','12:00:00.000Z','2023-07-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-07-02','11:00:00.000Z','2023-07-02T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(348,'ISD-190','','Tentative','2023-07-09','12:00:00.000Z','2023-07-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-07-09','11:00:00.000Z','2023-07-09T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(349,'ISD-191','','Tentative','2023-07-16','12:00:00.000Z','2023-07-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-07-16','11:00:00.000Z','2023-07-16T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(350,'ISD-192','','Tentative','2023-07-23','12:00:00.000Z','2023-07-23T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-07-23','11:00:00.000Z','2023-07-23T00:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(351,'ISD-193','','Tentative','2023-09-10','12:00:00.000Z','2023-09-10T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-09-10','11:00:00.000Z','2023-09-10T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(352,'ISD-194','','Tentative','2023-09-17','12:00:00.000Z','2023-09-17T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-09-17','11:00:00.000Z','2023-09-17T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(353,'ISD-195','','Tentative','2023-09-24','12:00:00.000Z','2023-09-24T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-09-24','11:00:00.000Z','2023-09-24T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(354,'ISD-196','','Tentative','2023-10-01','12:00:00.000Z','2023-10-01T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-10-01','11:00:00.000Z','2023-10-01T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(355,'ISD-197','','Tentative','2023-10-08','12:00:00.000Z','2023-10-08T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-10-08','11:00:00.000Z','2023-10-08T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(356,'ISD-198','','Tentative','2023-10-15','12:00:00.000Z','2023-10-15T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-10-15','11:00:00.000Z','2023-10-15T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(357,'ISD-199','','Tentative','2023-10-22','12:00:00.000Z','2023-10-22T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-10-22','11:00:00.000Z','2023-10-22T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(358,'ISD-200','','Tentative','2023-10-29','12:00:00.000Z','2023-10-29T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-10-29','11:00:00.000Z','2023-10-29T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(359,'ISD-237','','Tentative','2023-11-05','12:00:00.000Z','2023-11-05T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-11-05','11:00:00.000Z','2023-11-05T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(360,'ISD-238','','Tentative','2023-11-12','12:00:00.000Z','2023-11-12T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-11-12','11:00:00.000Z','2023-11-12T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(361,'ISD-239','','Tentative','2023-11-19','12:00:00.000Z','2023-11-19T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-11-19','11:00:00.000Z','2023-11-19T01:00:00.000+0000','Good','Allocated','True','12','27');
INSERT INTO "rio_ed__Allocation__c" VALUES(362,'ISD-240','','Tentative','2023-07-16','10:00:00.000Z','2023-07-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-07-16','09:00:00.000Z','2023-07-15T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(363,'ISD-241','','Tentative','2023-07-23','10:00:00.000Z','2023-07-22T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-07-23','09:00:00.000Z','2023-07-22T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(364,'ISD-242','','Tentative','2023-07-30','10:00:00.000Z','2023-07-29T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-07-30','09:00:00.000Z','2023-07-29T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(365,'ISD-243','','Tentative','2023-08-06','10:00:00.000Z','2023-08-05T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-08-06','09:00:00.000Z','2023-08-05T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(366,'ISD-244','','Tentative','2023-08-13','10:00:00.000Z','2023-08-12T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-08-13','09:00:00.000Z','2023-08-12T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(367,'ISD-245','','Tentative','2023-07-02','10:00:00.000Z','2023-07-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-07-02','09:00:00.000Z','2023-07-01T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(368,'ISD-246','','Tentative','2023-07-09','10:00:00.000Z','2023-07-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-07-09','09:00:00.000Z','2023-07-08T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(369,'ISD-247','','Tentative','2023-08-20','10:00:00.000Z','2023-08-19T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-08-20','09:00:00.000Z','2023-08-19T22:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(370,'ISD-248','','Tentative','2023-08-27','10:00:00.000Z','2023-08-27T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-08-27','09:00:00.000Z','2023-08-26T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(371,'ISD-249','','Tentative','2023-09-03','10:00:00.000Z','2023-09-03T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-09-03','09:00:00.000Z','2023-09-02T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(372,'ISD-250','','Tentative','2023-09-10','10:00:00.000Z','2023-09-10T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-09-10','09:00:00.000Z','2023-09-09T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(373,'ISD-251','','Tentative','2023-09-17','10:00:00.000Z','2023-09-17T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-09-17','09:00:00.000Z','2023-09-16T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(374,'ISD-252','','Tentative','2023-09-24','10:00:00.000Z','2023-09-24T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-09-24','09:00:00.000Z','2023-09-23T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(375,'ISD-253','','Tentative','2023-10-01','10:00:00.000Z','2023-10-01T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-10-01','09:00:00.000Z','2023-09-30T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(376,'ISD-254','','Tentative','2023-10-08','10:00:00.000Z','2023-10-08T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-10-08','09:00:00.000Z','2023-10-07T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(377,'ISD-255','','Tentative','2023-10-15','10:00:00.000Z','2023-10-15T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-10-15','09:00:00.000Z','2023-10-14T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(378,'ISD-256','','Tentative','2023-10-22','10:00:00.000Z','2023-10-22T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-10-22','09:00:00.000Z','2023-10-21T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(379,'ISD-267','','Tentative','2023-11-05','10:00:00.000Z','2023-11-05T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-11-05','09:00:00.000Z','2023-11-04T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(380,'ISD-268','','Tentative','2023-11-12','10:00:00.000Z','2023-11-12T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-11-12','09:00:00.000Z','2023-11-11T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(381,'ISD-269','','Tentative','2023-11-19','10:00:00.000Z','2023-11-19T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-11-19','09:00:00.000Z','2023-11-18T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(382,'ISD-270','','Tentative','2023-10-29','10:00:00.000Z','2023-10-29T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-10-29','09:00:00.000Z','2023-10-28T23:00:00.000+0000','Good','Allocated','True','12','28');
INSERT INTO "rio_ed__Allocation__c" VALUES(383,'ISD-279','','Tentative','2023-02-06','17:00:00.000Z','2023-02-06T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-02-06','16:00:00.000Z','2023-02-06T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(384,'ISD-280','','Tentative','2023-03-27','17:00:00.000Z','2023-03-27T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-03-27','16:00:00.000Z','2023-03-27T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(385,'ISD-281','','Tentative','2023-02-13','17:00:00.000Z','2023-02-13T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-02-13','16:00:00.000Z','2023-02-13T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(386,'ISD-282','','Tentative','2023-04-03','17:00:00.000Z','2023-04-03T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-04-03','16:00:00.000Z','2023-04-03T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(387,'ISD-283','','Tentative','2023-02-20','17:00:00.000Z','2023-02-20T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-02-20','16:00:00.000Z','2023-02-20T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(388,'ISD-284','','Tentative','2023-02-27','17:00:00.000Z','2023-02-27T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-02-27','16:00:00.000Z','2023-02-27T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(389,'ISD-285','','Tentative','2023-03-06','17:00:00.000Z','2023-03-06T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-03-06','16:00:00.000Z','2023-03-06T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(390,'ISD-286','','Tentative','2023-03-13','17:00:00.000Z','2023-03-13T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-03-13','16:00:00.000Z','2023-03-13T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(391,'ISD-307','','Tentative','2023-03-20','17:00:00.000Z','2023-03-20T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-03-20','16:00:00.000Z','2023-03-20T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(392,'ISD-308','','Tentative','2023-04-10','17:00:00.000Z','2023-04-10T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-04-10','16:00:00.000Z','2023-04-10T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(393,'ISD-278','','Tentative','2023-01-30','17:00:00.000Z','2023-01-30T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-01-30','16:00:00.000Z','2023-01-30T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(394,'ISD-309','','Tentative','2023-04-17','17:00:00.000Z','2023-04-17T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-04-17','16:00:00.000Z','2023-04-17T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(395,'ISD-310','','Tentative','2023-04-24','17:00:00.000Z','2023-04-24T06:00:00.000+0000','a1b5j000000TZFeAAO','2023-04-24','16:00:00.000Z','2023-04-24T05:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(396,'ISD-271','','Tentative','2022-12-12','17:00:00.000Z','2022-12-12T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-12-12','16:00:00.000Z','2022-12-12T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(397,'ISD-272','','Tentative','2022-12-19','17:00:00.000Z','2022-12-19T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-12-19','16:00:00.000Z','2022-12-19T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(398,'ISD-273','','Tentative','2022-12-26','17:00:00.000Z','2022-12-26T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-12-26','16:00:00.000Z','2022-12-26T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(399,'ISD-274','','Tentative','2023-01-02','17:00:00.000Z','2023-01-02T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-01-02','16:00:00.000Z','2023-01-02T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(400,'ISD-275','','Tentative','2023-01-09','17:00:00.000Z','2023-01-09T07:00:00.000+0000','a1b5j000000TZFeAAO','2023-01-09','16:00:00.000Z','2023-01-09T06:00:00.000+0000','Good','Allocated','True','12','29');
INSERT INTO "rio_ed__Allocation__c" VALUES(401,'ISD-63','','Tentative','2024-01-28','13:00:00.000Z','2024-01-28T03:00:00.000+0000','a1b5j000000TZR7AAO','2024-01-28','12:00:00.000Z','2024-01-28T02:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(402,'ISD-64','','Tentative','2024-03-17','13:00:00.000Z','2024-03-17T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-03-17','12:00:00.000Z','2024-03-17T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(403,'ISD-65','','Tentative','2024-03-03','13:00:00.000Z','2024-03-03T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-03-03','12:00:00.000Z','2024-03-03T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(404,'ISD-66','','Tentative','2024-03-10','13:00:00.000Z','2024-03-10T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-03-10','12:00:00.000Z','2024-03-10T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(405,'ISD-67','','Tentative','2024-03-24','13:00:00.000Z','2024-03-24T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-03-24','12:00:00.000Z','2024-03-24T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(406,'ISD-68','','Tentative','2024-03-31','13:00:00.000Z','2024-03-31T02:00:00.000+0000','a1b5j000000TZR7AAO','2024-03-31','12:00:00.000Z','2024-03-31T01:00:00.000+0000','Good','Allocated','True','12','43');
INSERT INTO "rio_ed__Allocation__c" VALUES(407,'ISD-73','','Tentative','2023-12-18','16:00:00.000Z','2023-12-18T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-12-18','15:00:00.000Z','2023-12-18T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(408,'ISD-74','','Tentative','2023-12-25','16:00:00.000Z','2023-12-25T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-12-25','15:00:00.000Z','2023-12-25T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(409,'ISD-75','','Tentative','2024-01-01','16:00:00.000Z','2024-01-01T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-01-01','15:00:00.000Z','2024-01-01T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(410,'ISD-76','','Tentative','2024-01-08','16:00:00.000Z','2024-01-08T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-01-08','15:00:00.000Z','2024-01-08T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(411,'ISD-77','','Tentative','2024-01-15','16:00:00.000Z','2024-01-15T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-01-15','15:00:00.000Z','2024-01-15T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(412,'ISD-78','','Tentative','2024-01-22','16:00:00.000Z','2024-01-22T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-01-22','15:00:00.000Z','2024-01-22T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(413,'ISD-80','','Tentative','2024-03-04','16:00:00.000Z','2024-03-04T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-03-04','15:00:00.000Z','2024-03-04T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(414,'ISD-101','','Tentative','2024-03-11','16:00:00.000Z','2024-03-11T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-03-11','15:00:00.000Z','2024-03-11T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(415,'ISD-102','','Tentative','2024-03-18','16:00:00.000Z','2024-03-18T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-03-18','15:00:00.000Z','2024-03-18T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(416,'ISD-103','','Tentative','2024-03-25','16:00:00.000Z','2024-03-25T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-03-25','15:00:00.000Z','2024-03-25T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(417,'ISD-104','','Tentative','2024-04-01','16:00:00.000Z','2024-04-01T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-04-01','15:00:00.000Z','2024-04-01T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(418,'ISD-105','','Tentative','2024-04-08','16:00:00.000Z','2024-04-08T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-04-08','15:00:00.000Z','2024-04-08T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(419,'ISD-106','','Tentative','2024-04-15','16:00:00.000Z','2024-04-15T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-04-15','15:00:00.000Z','2024-04-15T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(420,'ISD-107','','Tentative','2024-04-22','16:00:00.000Z','2024-04-22T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-04-22','15:00:00.000Z','2024-04-22T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(421,'ISD-79','','Tentative','2024-01-29','16:00:00.000Z','2024-01-29T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-01-29','15:00:00.000Z','2024-01-29T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(422,'ISD-108','','Tentative','2024-02-26','16:00:00.000Z','2024-02-26T05:00:00.000+0000','a1b5j000000TZRHAA4','2024-02-26','15:00:00.000Z','2024-02-26T04:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(423,'ISD-69','','Tentative','2024-02-05','16:00:00.000Z','2024-02-05T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-02-05','15:00:00.000Z','2024-02-05T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(424,'ISD-70','','Tentative','2024-02-12','16:00:00.000Z','2024-02-12T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-02-12','15:00:00.000Z','2024-02-12T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(425,'ISD-71','','Tentative','2024-02-19','16:00:00.000Z','2024-02-19T06:00:00.000+0000','a1b5j000000TZRHAA4','2024-02-19','15:00:00.000Z','2024-02-19T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(426,'ISD-72','','Tentative','2023-12-11','16:00:00.000Z','2023-12-11T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-12-11','15:00:00.000Z','2023-12-11T05:00:00.000+0000','Good','Allocated','False','12','44');
INSERT INTO "rio_ed__Allocation__c" VALUES(427,'ISD-109','','Tentative','2022-06-29','10:00:00.000Z','2022-06-28T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-06-29','09:00:00.000Z','2022-06-28T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(428,'ISD-110','','Tentative','2022-07-06','10:00:00.000Z','2022-07-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-07-06','09:00:00.000Z','2022-07-05T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(429,'ISD-111','','Tentative','2022-07-13','10:00:00.000Z','2022-07-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-07-13','09:00:00.000Z','2022-07-12T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(430,'ISD-112','','Tentative','2022-07-20','10:00:00.000Z','2022-07-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-07-20','09:00:00.000Z','2022-07-19T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(431,'ISD-113','','Tentative','2022-07-27','10:00:00.000Z','2022-07-26T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-07-27','09:00:00.000Z','2022-07-26T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(432,'ISD-114','','Tentative','2022-08-03','10:00:00.000Z','2022-08-02T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-08-03','09:00:00.000Z','2022-08-02T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(433,'ISD-115','','Tentative','2022-08-10','10:00:00.000Z','2022-08-09T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-08-10','09:00:00.000Z','2022-08-09T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(434,'ISD-116','','Tentative','2022-08-17','10:00:00.000Z','2022-08-16T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-08-17','09:00:00.000Z','2022-08-16T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(435,'ISD-117','','Tentative','2022-08-24','10:00:00.000Z','2022-08-23T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-08-24','09:00:00.000Z','2022-08-23T22:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(436,'ISD-118','','Tentative','2022-08-31','10:00:00.000Z','2022-08-31T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-08-31','09:00:00.000Z','2022-08-30T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(437,'ISD-119','','Tentative','2022-09-07','10:00:00.000Z','2022-09-07T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-09-07','09:00:00.000Z','2022-09-06T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(438,'ISD-120','','Tentative','2022-09-14','10:00:00.000Z','2022-09-14T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-09-14','09:00:00.000Z','2022-09-13T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(439,'ISD-141','','Tentative','2022-09-21','10:00:00.000Z','2022-09-21T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-09-21','09:00:00.000Z','2022-09-20T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(440,'ISD-142','','Tentative','2022-09-28','10:00:00.000Z','2022-09-28T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-09-28','09:00:00.000Z','2022-09-27T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(441,'ISD-143','','Tentative','2022-10-05','10:00:00.000Z','2022-10-05T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-10-05','09:00:00.000Z','2022-10-04T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(442,'ISD-144','','Tentative','2022-10-12','10:00:00.000Z','2022-10-12T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-10-12','09:00:00.000Z','2022-10-11T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(443,'ISD-145','','Tentative','2022-10-19','10:00:00.000Z','2022-10-19T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-10-19','09:00:00.000Z','2022-10-18T23:00:00.000+0000','Good','Allocated','True','12','45');
INSERT INTO "rio_ed__Allocation__c" VALUES(444,'ISD-331','','Tentative','2022-06-26','16:00:00.000Z','2022-06-26T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-06-26','15:00:00.000Z','2022-06-26T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(445,'ISD-332','','Tentative','2022-07-03','16:00:00.000Z','2022-07-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-07-03','15:00:00.000Z','2022-07-03T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(446,'ISD-333','','Tentative','2022-07-10','16:00:00.000Z','2022-07-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-07-10','15:00:00.000Z','2022-07-10T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(447,'ISD-334','','Tentative','2022-07-17','16:00:00.000Z','2022-07-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-07-17','15:00:00.000Z','2022-07-17T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(448,'ISD-335','','Tentative','2022-07-24','16:00:00.000Z','2022-07-24T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-07-24','15:00:00.000Z','2022-07-24T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(449,'ISD-336','','Tentative','2022-07-31','16:00:00.000Z','2022-07-31T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-07-31','15:00:00.000Z','2022-07-31T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(450,'ISD-337','','Tentative','2022-08-07','16:00:00.000Z','2022-08-07T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-08-07','15:00:00.000Z','2022-08-07T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(451,'ISD-338','','Tentative','2022-08-14','16:00:00.000Z','2022-08-14T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-08-14','15:00:00.000Z','2022-08-14T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(452,'ISD-339','','Tentative','2022-08-21','16:00:00.000Z','2022-08-21T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-08-21','15:00:00.000Z','2022-08-21T04:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(453,'ISD-340','','Tentative','2022-10-02','16:00:00.000Z','2022-10-02T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-10-02','15:00:00.000Z','2022-10-02T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(454,'ISD-341','','Tentative','2022-09-18','16:00:00.000Z','2022-09-18T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-09-18','15:00:00.000Z','2022-09-18T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(455,'ISD-342','','Tentative','2022-09-25','16:00:00.000Z','2022-09-25T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-09-25','15:00:00.000Z','2022-09-25T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(456,'ISD-343','','Tentative','2022-10-09','16:00:00.000Z','2022-10-09T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-10-09','15:00:00.000Z','2022-10-09T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(457,'ISD-344','','Tentative','2022-10-16','16:00:00.000Z','2022-10-16T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-10-16','15:00:00.000Z','2022-10-16T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(458,'ISD-345','','Tentative','2022-08-28','16:00:00.000Z','2022-08-28T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-08-28','15:00:00.000Z','2022-08-28T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(459,'ISD-346','','Tentative','2022-09-04','16:00:00.000Z','2022-09-04T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-09-04','15:00:00.000Z','2022-09-04T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(460,'ISD-367','','Tentative','2022-09-11','16:00:00.000Z','2022-09-11T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-09-11','15:00:00.000Z','2022-09-11T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(461,'ISD-368','','Tentative','2022-10-23','16:00:00.000Z','2022-10-23T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-10-23','15:00:00.000Z','2022-10-23T05:00:00.000+0000','Good','Allocated','True','2','48');
INSERT INTO "rio_ed__Allocation__c" VALUES(462,'ISD-369','','Tentative','2022-08-14','15:00:00.000Z','2022-08-14T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-08-14','14:00:00.000Z','2022-08-14T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(463,'ISD-370','','Tentative','2022-08-21','15:00:00.000Z','2022-08-21T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-08-21','14:00:00.000Z','2022-08-21T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(464,'ISD-371','','Tentative','2022-08-28','15:00:00.000Z','2022-08-28T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-08-28','14:00:00.000Z','2022-08-28T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(465,'ISD-372','','Tentative','2022-09-04','15:00:00.000Z','2022-09-04T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-09-04','14:00:00.000Z','2022-09-04T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(466,'ISD-373','','Tentative','2022-09-11','15:00:00.000Z','2022-09-11T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-09-11','14:00:00.000Z','2022-09-11T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(467,'ISD-374','','Tentative','2022-09-18','15:00:00.000Z','2022-09-18T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-09-18','14:00:00.000Z','2022-09-18T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(468,'ISD-375','','Tentative','2022-09-25','15:00:00.000Z','2022-09-25T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-09-25','14:00:00.000Z','2022-09-25T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(469,'ISD-376','','Tentative','2022-10-02','15:00:00.000Z','2022-10-02T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-10-02','14:00:00.000Z','2022-10-02T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(470,'ISD-377','','Tentative','2022-10-09','15:00:00.000Z','2022-10-09T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-10-09','14:00:00.000Z','2022-10-09T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(471,'ISD-378','','Tentative','2022-10-23','15:00:00.000Z','2022-10-23T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-10-23','14:00:00.000Z','2022-10-23T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(472,'ISD-379','','Tentative','2022-10-16','15:00:00.000Z','2022-10-16T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-10-16','14:00:00.000Z','2022-10-16T04:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(473,'ISD-380','','Tentative','2022-06-19','15:00:00.000Z','2022-06-19T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-06-19','14:00:00.000Z','2022-06-19T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(474,'ISD-381','','Tentative','2022-06-26','15:00:00.000Z','2022-06-26T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-06-26','14:00:00.000Z','2022-06-26T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(475,'ISD-382','','Tentative','2022-07-03','15:00:00.000Z','2022-07-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-07-03','14:00:00.000Z','2022-07-03T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(476,'ISD-383','','Tentative','2022-07-10','15:00:00.000Z','2022-07-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-07-10','14:00:00.000Z','2022-07-10T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(477,'ISD-384','','Tentative','2022-07-17','15:00:00.000Z','2022-07-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-07-17','14:00:00.000Z','2022-07-17T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(478,'ISD-385','','Tentative','2022-07-24','15:00:00.000Z','2022-07-24T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-07-24','14:00:00.000Z','2022-07-24T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(479,'ISD-386','','Tentative','2022-07-31','15:00:00.000Z','2022-07-31T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-07-31','14:00:00.000Z','2022-07-31T03:00:00.000+0000','Good','Allocated','True','2','49');
INSERT INTO "rio_ed__Allocation__c" VALUES(480,'ISD-387','','Tentative','2022-08-07','15:00:00.000Z','2022-08-07T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-08-07','14:00:00.000Z','2022-08-07T03:00:00.000+0000','Good','Allocated','True','2','49');
CREATE TABLE "rio_ed__Appointment_Availability__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(1,'ISD-1','1','','12');
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(2,'ISD-2','1','31','');
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
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(1,'ISD-1','Available Time','True','60.0','0.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','29');
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(2,'ISD-2','Available Time','True','60.0','0.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','31');
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
INSERT INTO "rio_ed__Assigned_Location__c" VALUES(1,'ISD-1','31','31');
CREATE TABLE "rio_ed__Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Session_Date__c" VARCHAR(255), 
	"rio_ed__Booking__c" VARCHAR(255), 
	"rio_ed__Session_Connection__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Attendance__c" VALUES(1,'ISD-278','2023-04-17','394','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(2,'ISD-279','2023-04-24','395','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(3,'ISD-280','2023-02-04','3','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(4,'ISD-281','2023-02-11','4','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(5,'ISD-282','2023-02-18','5','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(6,'ISD-283','2023-02-25','6','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(7,'ISD-284','2023-03-04','7','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(8,'ISD-285','2023-03-11','8','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(9,'ISD-286','2023-03-18','9','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(10,'ISD-287','2023-03-25','10','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(11,'ISD-225','2023-02-25','70','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(12,'ISD-226','2022-12-10','71','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(13,'ISD-227','2022-12-17','72','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(14,'ISD-228','2022-12-24','73','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(15,'ISD-229','2022-12-31','74','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(16,'ISD-230','2023-01-07','75','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(17,'ISD-79','2022-07-13','429','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(18,'ISD-80','2022-07-20','430','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(19,'ISD-81','2022-07-27','431','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(20,'ISD-82','2022-08-03','432','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(21,'ISD-83','2022-08-10','433','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(22,'ISD-160','2023-08-27','370','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(23,'ISD-56','2023-03-13','226','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(24,'ISD-161','2023-09-03','371','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(25,'ISD-307','2022-07-03','445','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(26,'ISD-308','2022-07-10','446','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(27,'ISD-309','2022-07-17','447','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(28,'ISD-311','2022-07-24','448','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(29,'ISD-312','2022-07-31','449','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(30,'ISD-176','2023-11-19','57','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(31,'ISD-257','2023-11-04','58','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(32,'ISD-258','2023-11-11','59','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(33,'ISD-259','2023-11-18','60','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(34,'ISD-57','2023-03-20','227','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(35,'ISD-260','2023-07-01','61','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(36,'ISD-261','2023-07-08','62','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(37,'ISD-177','2023-07-15','63','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(38,'ISD-179','2023-07-22','64','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(39,'ISD-180','2023-07-29','65','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(40,'ISD-68','2022-07-09','307','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(41,'ISD-69','2022-07-16','308','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(42,'ISD-70','2022-07-23','309','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(43,'ISD-71','2022-07-30','310','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(44,'ISD-72','2022-08-27','311','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(45,'ISD-73','2022-09-03','312','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(46,'ISD-74','2022-09-10','313','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(47,'ISD-162','2023-09-10','372','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(48,'ISD-163','2023-09-17','373','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(49,'ISD-164','2023-09-24','374','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(50,'ISD-165','2023-10-01','375','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(51,'ISD-166','2023-10-08','376','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(52,'ISD-168','2023-10-15','377','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(53,'ISD-169','2023-10-22','378','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(54,'ISD-192','2023-11-05','379','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(55,'ISD-193','2023-11-12','380','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(56,'ISD-194','2023-11-19','381','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(57,'ISD-195','2023-10-29','382','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(58,'ISD-196','2022-12-12','396','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(59,'ISD-313','2022-08-07','450','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(60,'ISD-314','2022-08-14','451','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(61,'ISD-315','2022-08-21','452','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(62,'ISD-316','2022-10-02','453','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(63,'ISD-317','2022-09-18','454','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(64,'ISD-318','2022-09-25','455','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(65,'ISD-362','2022-10-09','456','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(66,'ISD-363','2022-10-16','457','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(67,'ISD-181','2023-08-05','66','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(68,'ISD-182','2023-08-12','89','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(69,'ISD-183','2023-08-19','90','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(70,'ISD-184','2023-08-26','91','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(71,'ISD-185','2023-09-09','92','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(72,'ISD-186','2023-09-16','93','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(73,'ISD-187','2023-09-23','94','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(74,'ISD-188','2023-09-30','95','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(75,'ISD-190','2023-10-07','96','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(76,'ISD-364','2022-08-28','458','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(77,'ISD-365','2022-09-04','459','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(78,'ISD-366','2022-09-11','460','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(79,'ISD-367','2022-10-23','461','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(80,'ISD-368','2022-08-14','462','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(81,'ISD-369','2022-08-21','463','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(82,'ISD-370','2022-08-28','464','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(83,'ISD-371','2022-09-04','465','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(84,'ISD-372','2022-09-11','466','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(85,'ISD-373','2022-09-18','467','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(86,'ISD-253','2023-10-14','97','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(87,'ISD-254','2023-10-21','98','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(88,'ISD-256','2023-10-28','99','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(89,'ISD-262','2022-07-02','101','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(90,'ISD-191','2023-09-02','100','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(91,'ISD-263','2022-07-09','102','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(92,'ISD-75','2022-09-17','314','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(93,'ISD-111','2022-09-24','315','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(94,'ISD-222','2022-10-01','316','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(95,'ISD-353','2022-10-08','317','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(96,'ISD-33','2022-10-15','318','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(97,'ISD-77','2022-08-06','319','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(98,'ISD-88','2022-08-13','320','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(99,'ISD-99','2022-08-20','321','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(100,'ISD-110','2022-10-22','322','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(101,'ISD-67','2022-07-02','323','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(102,'ISD-241','2024-04-07','257','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(103,'ISD-112','2024-04-14','258','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(104,'ISD-123','2024-04-21','259','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(105,'ISD-205','2023-02-06','383','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(106,'ISD-134','2024-02-04','260','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(107,'ISD-145','2024-02-11','261','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(108,'ISD-156','2024-02-18','262','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(109,'ISD-167','2024-02-25','263','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(110,'ISD-178','2023-12-10','264','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(111,'ISD-189','2023-12-17','265','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(112,'ISD-200','2023-12-24','266','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(113,'ISD-374','2022-09-25','468','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(114,'ISD-375','2022-10-02','469','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(115,'ISD-376','2022-10-09','470','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(116,'ISD-206','2023-03-27','384','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(117,'ISD-377','2022-10-23','471','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(118,'ISD-378','2022-10-16','472','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(119,'ISD-379','2022-06-19','473','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(120,'ISD-380','2022-06-26','474','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(121,'ISD-264','2022-07-16','103','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(122,'ISD-265','2022-07-23','104','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(123,'ISD-267','2022-07-30','105','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(124,'ISD-268','2022-08-06','106','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(125,'ISD-269','2022-08-13','107','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(126,'ISD-270','2022-08-20','108','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(127,'ISD-207','2023-02-13','385','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(128,'ISD-271','2022-08-27','109','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(129,'ISD-272','2022-09-03','110','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(130,'ISD-273','2022-09-10','115','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(131,'ISD-274','2022-09-17','116','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(132,'ISD-319','2022-09-24','117','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(133,'ISD-320','2022-10-01','118','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(134,'ISD-17','2023-01-16','188','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(135,'ISD-18','2023-03-06','189','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(136,'ISD-19','2023-03-13','190','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(137,'ISD-20','2023-03-20','191','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(138,'ISD-208','2023-04-03','386','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(139,'ISD-21','2023-03-27','192','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(140,'ISD-211','2023-12-31','267','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(141,'ISD-223','2024-01-07','268','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(142,'ISD-255','2024-01-14','289','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(143,'ISD-266','2024-01-21','290','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(144,'ISD-277','2024-01-28','401','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(145,'ISD-288','2024-03-17','402','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(146,'ISD-381','2022-07-03','475','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(147,'ISD-402','2022-07-10','476','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(148,'ISD-403','2022-07-17','477','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(149,'ISD-209','2023-02-20','387','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(150,'ISD-404','2022-07-24','478','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(151,'ISD-405','2022-07-31','479','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(152,'ISD-406','2022-08-07','480','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(153,'ISD-322','2022-10-08','119','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(154,'ISD-323','2022-10-15','120','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(155,'ISD-22','2023-04-03','193','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(156,'ISD-23','2023-04-10','194','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(157,'ISD-24','2023-04-17','195','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(158,'ISD-25','2023-04-24','196','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(159,'ISD-26','2023-02-06','199','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(160,'ISD-210','2023-02-27','388','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(161,'ISD-27','2023-02-13','200','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(162,'ISD-28','2023-02-20','201','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(163,'ISD-29','2023-02-27','202','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(164,'ISD-30','2023-03-06','203','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(165,'ISD-31','2023-03-13','204','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(166,'ISD-32','2023-04-17','205','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(167,'ISD-34','2023-04-10','206','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(168,'ISD-35','2023-04-24','207','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(169,'ISD-36','2023-01-09','208','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(170,'ISD-37','2023-01-16','209','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(171,'ISD-212','2023-03-06','389','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(172,'ISD-38','2023-01-23','210','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(173,'ISD-299','2024-03-03','403','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(174,'ISD-310','2024-03-10','404','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(175,'ISD-321','2024-03-24','405','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(176,'ISD-332','2024-03-31','406','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(177,'ISD-197','2022-12-19','397','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(178,'ISD-213','2023-03-13','390','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(179,'ISD-198','2022-12-26','398','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(180,'ISD-199','2023-01-02','399','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(181,'ISD-201','2023-01-09','400','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(182,'ISD-202','2023-01-16','1','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(183,'ISD-203','2023-01-23','2','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(184,'ISD-324','2022-10-22','121','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(185,'ISD-325','2022-12-24','133','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(186,'ISD-326','2022-12-31','134','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(187,'ISD-327','2023-01-07','135','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(188,'ISD-328','2022-12-10','136','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(189,'ISD-275','2023-03-20','391','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(190,'ISD-329','2022-12-17','137','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(191,'ISD-330','2023-01-14','138','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(192,'ISD-331','2023-01-21','139','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(193,'ISD-333','2023-01-28','140','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(194,'ISD-334','2023-02-04','141','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(195,'ISD-39','2023-01-30','211','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(196,'ISD-40','2022-12-12','212','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(197,'ISD-41','2022-12-19','213','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(198,'ISD-42','2022-12-26','214','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(199,'ISD-43','2023-01-02','215','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(200,'ISD-276','2023-04-10','392','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(201,'ISD-44','2023-03-20','216','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(202,'ISD-204','2023-01-30','393','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(203,'ISD-354','2023-02-06','23','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(204,'ISD-355','2023-02-13','24','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(205,'ISD-356','2023-02-20','25','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(206,'ISD-357','2023-02-27','26','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(207,'ISD-218','2023-01-21','43','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(208,'ISD-219','2023-01-28','44','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(209,'ISD-220','2023-02-04','67','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(210,'ISD-221','2023-02-11','68','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(211,'ISD-224','2023-02-18','69','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(212,'ISD-336','2023-02-18','122','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(213,'ISD-335','2023-02-11','123','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(214,'ISD-337','2023-02-25','124','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(215,'ISD-338','2023-03-11','125','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(216,'ISD-339','2023-03-04','126','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(217,'ISD-340','2023-03-18','127','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(218,'ISD-382','2023-03-25','128','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(219,'ISD-383','2023-04-01','129','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(220,'ISD-76','2022-06-29','427','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(221,'ISD-78','2022-07-06','428','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(222,'ISD-216','2023-04-24','33','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(223,'ISD-217','2023-04-17','34','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(224,'ISD-345','2022-12-19','35','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(225,'ISD-346','2022-12-26','36','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(226,'ISD-347','2023-01-02','37','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(227,'ISD-348','2023-01-09','38','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(228,'ISD-389','2022-10-10','144','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(229,'ISD-390','2022-10-17','145','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(230,'ISD-391','2022-06-27','146','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(231,'ISD-392','2022-07-04','147','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(232,'ISD-393','2022-07-11','148','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(233,'ISD-394','2022-07-18','149','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(234,'ISD-395','2022-07-25','150','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(235,'ISD-113','2023-07-02','347','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(236,'ISD-114','2023-07-09','348','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(237,'ISD-115','2023-07-16','349','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(238,'ISD-116','2023-07-23','350','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(239,'ISD-117','2023-09-10','351','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(240,'ISD-118','2023-09-17','352','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(241,'ISD-119','2023-09-24','353','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(242,'ISD-120','2023-10-01','354','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(243,'ISD-121','2023-10-08','355','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(244,'ISD-122','2023-10-15','356','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(245,'ISD-124','2023-10-22','357','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(246,'ISD-125','2023-10-29','358','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(247,'ISD-148','2023-11-05','359','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(248,'ISD-149','2023-11-12','360','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(249,'ISD-349','2022-12-12','39','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(250,'ISD-350','2023-01-16','40','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(251,'ISD-351','2023-01-23','41','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(252,'ISD-352','2023-01-30','42','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(253,'ISD-232','2022-07-02','288','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(254,'ISD-233','2022-07-09','291','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(255,'ISD-234','2022-07-16','292','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(256,'ISD-45','2023-03-27','197','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(257,'ISD-235','2022-07-23','293','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(258,'ISD-236','2022-07-30','294','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(259,'ISD-237','2022-08-06','295','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(260,'ISD-238','2022-08-13','296','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(261,'ISD-239','2022-08-20','297','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(262,'ISD-240','2022-08-27','298','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(263,'ISD-242','2022-09-03','299','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(264,'ISD-243','2022-09-10','300','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(265,'ISD-126','2022-09-17','301','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(266,'ISD-127','2022-09-24','302','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(267,'ISD-46','2023-04-03','198','13');
INSERT INTO "rio_ed__Attendance__c" VALUES(268,'ISD-128','2022-10-01','303','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(269,'ISD-129','2022-10-08','304','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(270,'ISD-130','2022-10-15','305','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(271,'ISD-396','2022-08-01','151','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(272,'ISD-397','2022-08-08','152','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(273,'ISD-398','2022-08-15','153','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(274,'ISD-58','2023-03-27','228','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(275,'ISD-59','2023-04-03','229','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(276,'ISD-60','2023-04-10','230','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(277,'ISD-61','2023-04-17','231','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(278,'ISD-47','2023-01-09','217','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(279,'ISD-62','2023-04-24','232','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(280,'ISD-63','2022-12-12','233','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(281,'ISD-64','2022-12-19','234','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(282,'ISD-65','2022-12-26','235','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(283,'ISD-131','2022-10-22','306','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(284,'ISD-132','2023-09-03','85','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(285,'ISD-133','2023-09-10','86','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(286,'ISD-135','2023-09-17','87','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(287,'ISD-136','2023-09-24','88','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(288,'ISD-137','2023-10-01','111','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(289,'ISD-48','2023-01-16','218','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(290,'ISD-138','2023-10-08','112','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(291,'ISD-139','2023-10-15','113','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(292,'ISD-140','2023-10-22','114','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(293,'ISD-141','2023-10-29','45','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(294,'ISD-142','2023-11-05','46','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(295,'ISD-143','2023-07-02','47','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(296,'ISD-144','2023-07-09','48','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(297,'ISD-146','2023-07-16','49','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(298,'ISD-147','2023-07-23','50','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(299,'ISD-170','2023-07-30','51','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(300,'ISD-49','2023-01-23','219','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(301,'ISD-171','2023-08-06','52','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(302,'ISD-399','2022-08-22','154','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(303,'ISD-400','2022-08-29','155','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(304,'ISD-401','2022-09-05','156','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(305,'ISD-407','2022-09-12','157','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(306,'ISD-408','2022-09-19','158','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(307,'ISD-409','2022-07-31','159','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(308,'ISD-410','2022-08-07','160','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(309,'ISD-411','2022-08-14','161','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(310,'ISD-412','2022-08-21','162','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(311,'ISD-50','2023-02-13','220','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(312,'ISD-66','2023-01-02','236','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(313,'ISD-51','2023-02-20','221','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(314,'ISD-413','2022-08-28','163','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(315,'ISD-414','2022-09-04','164','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(316,'ISD-415','2022-09-11','165','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(317,'ISD-416','2022-09-18','166','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(318,'ISD-417','2022-09-25','167','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(319,'ISD-418','2022-10-02','168','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(320,'ISD-52','2023-02-27','222','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(321,'ISD-150','2023-11-19','361','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(322,'ISD-419','2022-10-09','169','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(323,'ISD-420','2022-10-16','170','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(324,'ISD-53','2023-03-06','223','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(325,'ISD-421','2022-10-23','171','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(326,'ISD-1','2022-06-26','172','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(327,'ISD-2','2022-07-03','173','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(328,'ISD-3','2022-07-10','174','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(329,'ISD-4','2022-07-17','175','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(330,'ISD-5','2022-07-24','176','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(331,'ISD-6','2022-12-12','177','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(332,'ISD-151','2023-07-16','362','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(333,'ISD-152','2023-07-23','363','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(334,'ISD-153','2023-07-30','364','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(335,'ISD-54','2023-01-30','224','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(336,'ISD-154','2023-08-06','365','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(337,'ISD-155','2023-08-13','366','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(338,'ISD-157','2023-07-02','367','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(339,'ISD-158','2023-07-09','368','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(340,'ISD-172','2023-08-13','53','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(341,'ISD-173','2023-08-20','54','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(342,'ISD-174','2023-08-27','55','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(343,'ISD-175','2023-11-12','56','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(344,'ISD-7','2022-12-19','178','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(345,'ISD-8','2022-12-26','179','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(346,'ISD-55','2023-02-06','225','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(347,'ISD-9','2023-01-02','180','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(348,'ISD-10','2023-01-09','181','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(349,'ISD-11','2023-01-23','182','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(350,'ISD-12','2023-01-30','183','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(351,'ISD-13','2023-02-06','184','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(352,'ISD-14','2023-02-13','185','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(353,'ISD-15','2023-02-20','186','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(354,'ISD-16','2023-02-27','187','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(355,'ISD-159','2023-08-20','369','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(356,'ISD-84','2022-08-17','434','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(357,'ISD-85','2022-08-24','435','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(358,'ISD-86','2022-08-31','436','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(359,'ISD-87','2022-09-07','437','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(360,'ISD-89','2022-09-14','438','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(361,'ISD-90','2022-09-21','439','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(362,'ISD-91','2022-09-28','440','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(363,'ISD-92','2022-10-05','441','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(364,'ISD-93','2022-10-12','442','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(365,'ISD-289','2023-04-01','11','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(366,'ISD-290','2023-04-08','12','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(367,'ISD-291','2023-04-15','13','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(368,'ISD-292','2023-04-22','14','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(369,'ISD-293','2022-12-10','15','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(370,'ISD-252','2023-01-14','76','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(371,'ISD-297','2023-03-04','77','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(372,'ISD-298','2023-03-11','78','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(373,'ISD-300','2023-03-18','79','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(374,'ISD-301','2023-03-25','80','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(375,'ISD-302','2023-04-01','81','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(376,'ISD-303','2023-04-08','82','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(377,'ISD-304','2023-04-15','83','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(378,'ISD-305','2023-04-22','84','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(379,'ISD-306','2022-06-26','444','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(380,'ISD-384','2023-04-08','130','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(381,'ISD-385','2023-04-15','131','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(382,'ISD-386','2023-04-22','132','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(383,'ISD-387','2022-09-26','142','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(384,'ISD-95','2022-07-02','324','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(385,'ISD-96','2022-07-09','325','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(386,'ISD-97','2022-07-16','326','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(387,'ISD-98','2022-07-23','327','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(388,'ISD-100','2022-07-30','328','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(389,'ISD-101','2022-08-06','329','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(390,'ISD-102','2022-08-13','330','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(391,'ISD-103','2022-08-20','331','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(392,'ISD-104','2022-08-27','332','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(393,'ISD-105','2022-09-03','333','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(394,'ISD-106','2022-09-10','334','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(395,'ISD-107','2022-09-17','335','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(396,'ISD-108','2022-09-24','336','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(397,'ISD-94','2022-10-19','443','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(398,'ISD-294','2022-12-17','16','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(399,'ISD-295','2022-12-31','17','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(400,'ISD-296','2023-01-07','18','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(401,'ISD-341','2023-01-14','19','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(402,'ISD-342','2022-12-24','20','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(403,'ISD-343','2023-01-21','21','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(404,'ISD-344','2023-01-28','22','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(405,'ISD-358','2023-03-06','27','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(406,'ISD-359','2023-03-13','28','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(407,'ISD-388','2022-10-03','143','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(408,'ISD-109','2022-10-01','337','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(409,'ISD-231','2022-10-08','338','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(410,'ISD-244','2022-10-15','339','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(411,'ISD-245','2022-10-22','340','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(412,'ISD-246','2023-07-30','341','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(413,'ISD-247','2023-08-06','342','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(414,'ISD-248','2023-08-13','343','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(415,'ISD-249','2023-08-20','344','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(416,'ISD-250','2023-08-27','345','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(417,'ISD-251','2023-09-03','346','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(418,'ISD-360','2023-03-20','29','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(419,'ISD-361','2023-03-27','30','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(420,'ISD-214','2023-04-03','31','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(421,'ISD-215','2023-04-10','32','16');
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
INSERT INTO "rio_ed__Availability_Time__c" VALUES(1,'ISD-1','All Time','True','Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;Sunday','23:45:00.000Z','','00:00:00.000Z','','31');
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
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(3,'ISD-3','True','Tentative','31');
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
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(1,'ISD-11','ICT112 Pre-Requisite','A','False','Pre-Requisite','32','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(2,'ISD-19','ICT112 Pre-Requisite','A','False','Pre-Requisite','118','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(3,'ISD-12','ICT112 Pre-Requisite','A','False','Pre-Requisite','83','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(4,'ISD-2','ICT112 Pre-Requisite','A','False','Pre-Requisite','130','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(5,'ISD-4','ICT112 Pre-Requisite','A','False','Pre-Requisite','142','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(6,'ISD-7','ICT112 Pre-Requisite','A','False','Pre-Requisite','154','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(7,'ISD-8','ICT112 Pre-Requisite','A','False','Pre-Requisite','106','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(8,'ISD-9','ICT112 Pre-Requisite','A','False','Pre-Requisite','8','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(9,'ISD-15','ICT112 Pre-Requisite','A','False','Pre-Requisite','218','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(10,'ISD-13','ICT112 Pre-Requisite','A','False','Pre-Requisite','44','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(11,'ISD-14','ICT112 Pre-Requisite','A','False','Pre-Requisite','53','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(12,'ISD-16','ICT112 Pre-Requisite','A','True','Pre-Requisite','230','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(13,'ISD-10','ICT112 Pre-Requisite','A','False','Pre-Requisite','20','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(14,'ISD-17','ICT112 Pre-Requisite','A','False','Pre-Requisite','246','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(15,'ISD-18','ICT112 Pre-Requisite','A','False','Pre-Requisite','258','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(16,'ISD-1','ICT112 Pre-Requisite','A','False','Pre-Requisite','270','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(17,'ISD-5','ICT112 Pre-Requisite','A','False','Pre-Requisite','282','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(18,'ISD-6','ICT112 Pre-Requisite','A','False','Pre-Requisite','94','12');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(19,'ISD-3','ICT112 Pre-Requisite','A','False','Pre-Requisite','74','12');
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
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(1,'ISD-1','Major Group A','0127Q000000q1TYQAY','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(2,'ISD-2','Major Group B','0127Q000000q1TYQAY','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(3,'ISD-4','BUS102','0127Q000000q1TXQAY','','Optional','1','69','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(4,'ISD-5','ICT112','0127Q000000q1TXQAY','','Mandatory','2','98','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(5,'ISD-6','ICT115','0127Q000000q1TXQAY','','Optional','2','106','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(6,'ISD-3','BUS101','0127Q000000q1TXQAY','','Mandatory','1','32','1');
CREATE TABLE "rio_ed__Discipline_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0127Q000000q1TXQAY','Course');
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0127Q000000q1TYQAY','Group');
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
INSERT INTO "rio_ed__Fee_Line__c" VALUES(1,'ISD-10','2022-06-26','','1000.0','Self Paid','','Self Paid','85','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(2,'ISD-12','2022-06-26','','1000.0','Self Paid','','Self Paid','86','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(3,'ISD-15','2022-06-26','','1000.0','Self Paid','','Self Paid','87','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(4,'ISD-17','2022-05-26','','1000.0','Self Paid','','Self Paid','84','7','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(5,'ISD-29','2022-05-26','','1000.0','Self Paid','','Self Paid','119','7','18');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(6,'ISD-2','2022-05-26','','1000.0','Self Paid','','Self Paid','131','7','19');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(7,'ISD-3','2022-05-26','','1000.0','Self Paid','','Self Paid','143','7','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(8,'ISD-9','2022-05-26','','1000.0','Self Paid','','Self Paid','33','7','6');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(9,'ISD-6','2022-05-26','','1000.0','Self Paid','','Self Paid','155','7','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(10,'ISD-5','2022-05-26','','1000.0','Self Paid','','Self Paid','95','7','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(11,'ISD-14','2022-06-26','','1000.0','Self Paid','','Self Paid','60','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(12,'ISD-16','2022-06-26','','1000.0','Self Paid','','Self Paid','62','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(13,'ISD-7','2022-05-26','','1000.0','Self Paid','','Self Paid','9','7','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(14,'ISD-24','2022-06-26','2022-06-15','1000.0','Self Paid','','Self Paid','234','7','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(15,'ISD-25','2022-06-26','2022-06-15','1000.0','Self Paid','','Self Paid','235','7','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(16,'ISD-26','2022-05-26','2022-06-15','1000.0','Self Paid','','Self Paid','231','7','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(17,'ISD-11','2022-05-26','','1000.0','Self Paid','','Self Paid','45','7','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(18,'ISD-18','2022-06-26','','1000.0','Self Paid','','Self Paid','221','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(19,'ISD-19','2022-06-26','','1000.0','Self Paid','','Self Paid','222','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(20,'ISD-20','2022-06-26','','1000.0','Self Paid','','Self Paid','223','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(21,'ISD-21','2022-05-26','','1000.0','Self Paid','','Self Paid','220','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(22,'ISD-8','2022-05-26','','1000.0','Self Paid','','Self Paid','21','7','5');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(23,'ISD-22','2022-06-26','','1000.0','Self Paid','','Self Paid','54','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(24,'ISD-27','2022-05-26','','1000.0','Self Paid','','Self Paid','247','7','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(25,'ISD-13','2022-06-26','','1000.0','Self Paid','','Self Paid','56','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(26,'ISD-23','2022-06-26','2022-06-15','1000.0','Self Paid','','Self Paid','232','7','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(27,'ISD-30','2022-05-26','','1000.0','Self Paid','','Self Paid','259','7','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(28,'ISD-1','2022-05-26','','1000.0','Self Paid','','Self Paid','271','7','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(29,'ISD-4','2022-05-26','','1000.0','Self Paid','','Self Paid','283','7','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(30,'ISD-28','2022-05-26','','1000.0','Self Paid','','Self Paid','107','7','17');
CREATE TABLE "rio_ed__Fee_Schedule_Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(1,'ISD-1','1','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(2,'ISD-2','1','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(3,'ISD-3','1','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(4,'ISD-4','1','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(5,'ISD-5','2','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(6,'ISD-6','2','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(7,'ISD-7','2','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(8,'ISD-8','2','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(9,'ISD-9','3','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(10,'ISD-10','3','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(11,'ISD-11','3','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(12,'ISD-12','3','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(13,'ISD-13','4','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(14,'ISD-14','4','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(15,'ISD-15','4','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(16,'ISD-16','4','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(17,'ISD-17','5','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(18,'ISD-18','5','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(19,'ISD-19','5','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(20,'ISD-20','5','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(21,'ISD-21','6','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(22,'ISD-22','6','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(23,'ISD-23','6','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(24,'ISD-24','6','6');
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
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(1,'ISD-1','Default','False','False','2000.0','2000.0','2032-06-25','Term','2022-06-26','False','Draft','3');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(2,'ISD-2','Default','True','False','1000.0','1000.0','2032-06-25','Course','2022-06-26','False','Draft','4');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(3,'ISD-3','Discountable Default','False','False','1000.0','1000.0','2032-06-25','Course','2022-06-26','False','Draft','5');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(4,'ISD-4','Default','True','False','2500.0','2500.0','2032-06-25','Program','2022-06-26','False','Draft','6');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(5,'ISD-5','Default','True','False','1000.0','1000.0','2032-06-25','Deposit','2022-06-26','False','Draft','1');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(6,'ISD-6','Default','True','False','500.0','500.0','2032-06-25','Application','2022-06-26','False','Draft','2');
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
INSERT INTO "rio_ed__Funding__c" VALUES(1,'ISD-1','Standard Funding (Scholarship)','','','False','Scholarship','100.0','250.0','Active','False','500.0');
INSERT INTO "rio_ed__Funding__c" VALUES(2,'ISD-2','Standard Funding (Sponsor)','','','False','Sponsor','50.0','75.0','Active','False','250.0');
INSERT INTO "rio_ed__Funding__c" VALUES(3,'ISD-3','Standard Funding (Discount %)','','10.0','False','Discount %','','','Active','False','');
INSERT INTO "rio_ed__Funding__c" VALUES(4,'ISD-4','Standard Funding (Discount Amount)','100.0','','False','Discount','','','Active','False','');
CREATE TABLE "rio_ed__Grade_Criteria__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(1,'ISD-1','ICT112 Assignment 2','2.0','30.0','12');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(2,'ISD-2','ICT112 Final Exam','3.0','50.0','12');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(3,'ISD-3','ICT112 Assignment 1','1.0','20.0','12');
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
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(1,'ISD-1','RIOSOB-HD','False','7.0','91-100','Pass','University Department','0015j00000EQs5IAAT-HD - High Distinction','Higher Range','HD - High Distinction','26');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(2,'ISD-2','RIOSOB-D','False','6.0','81-90','Pass','University Department','0015j00000EQs5IAAT-D - Distinction','Higher Range','D - Distinction','26');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(3,'ISD-3','RIOSOB-FA','True','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FA - Fail Absent','Higher Range','FA - Fail Absent','26');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(4,'ISD-4','RIOSOB-FL','False','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FL - Fail','Higher Range','FL - Fail','26');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(5,'ISD-5','RIOSOB-CR','False','5.0','61-80','Pass','University Department','0015j00000EQs5IAAT-CR - Credit','Higher Range','CR - Credit','26');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(6,'ISD-6','RIOSOB-PS','False','4.0','50-60','Pass','University Department','0015j00000EQs5IAAT-PS - Pass','Higher Range','PS - Pass','26');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(7,'ISD-12','RIOUNI-FA','True','0.0','0-0','Fail','Educational Institution','0018a00001qG3c3AAC-FA - Fail Absent','Higher Range','FA - Fail Absent','30');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(8,'ISD-7','RIOUNI-FL','False','0.0','0 - 49','Fail','Educational Institution','0015j00000EQs58AAD-FL - Fail','Higher Range','FL - Fail','30');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(9,'ISD-8','RIOUNI-D','False','6.0','75 - 84','Pass','Educational Institution','0015j00000EQs58AAD-D - Distinction','Higher Range','D - Distinction','30');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(10,'ISD-9','RIOUNI-CR','False','5.0','65 - 74','Pass','Educational Institution','0015j00000EQs58AAD-CR - Credit','Higher Range','CR - Credit','30');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(11,'ISD-10','RIOUNI-PS','False','4.0','50 - 64','Pass','Educational Institution','0015j00000EQs58AAD-PS - Pass','Higher Range','PS - Pass','30');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(12,'ISD-11','RIOUNI-HD','False','7.0','85 - 100','Pass','Educational Institution','0015j00000EQs58AAD-HD - High Distinction','Higher Range','HD - High Distinction','30');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(13,'ISD-13','RIOBIS-0','False','5.0','0-99','Pass','Educational Institution','0018a00001qG3c6AAC-CR - Credit','Higher Range','CR - Credit','33');
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
INSERT INTO "rio_ed__Grade__c" VALUES(1,'ISD-1','ICT112 Assignment 1','0127Q000000q1TZQAY','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(2,'ISD-2','ICT112 Assignment 2','0127Q000000q1TZQAY','a0y5j000000hDmoAAE','HD - High Distinction','2.0','30.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(3,'ISD-3','ICT112 Final Exam','0127Q000000q1TZQAY','a0y5j000000hDmtAAE','HD - High Distinction','3.0','50.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(4,'ISD-4','ICT112 Assignment 1','0127Q000000q1TZQAY','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(5,'ISD-5','ICT112 Assignment 2','0127Q000000q1TZQAY','a0y5j000000hDmoAAE','D - Distinction','2.0','30.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(6,'ISD-6','ICT112 Final Exam','0127Q000000q1TZQAY','a0y5j000000hDmtAAE','D - Distinction','3.0','50.0','1');
CREATE TABLE "rio_ed__Grade__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0127Q000000q1TZQAY','Grade');
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0127Q000000q1TaQAI','Sub_Grade');
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
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(1,'ISD-22','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(2,'ISD-25','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(3,'ISD-26','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(4,'ISD-9','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(5,'ISD-11','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(6,'ISD-12','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(7,'ISD-21','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(8,'ISD-14','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(9,'ISD-19','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(10,'ISD-20','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(11,'ISD-23','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(12,'ISD-10','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(13,'ISD-15','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(14,'ISD-16','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(15,'ISD-8','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(16,'ISD-13','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(17,'ISD-17','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(18,'ISD-18','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(19,'ISD-24','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','12','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(20,'ISD-3','RIOUNI02-Mandatory','Required','33.333333333333336','4.0','40.0','40.0','120.0','24.0','In Progress','False','13','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(21,'ISD-6','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(22,'ISD-7','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(23,'ISD-28','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(24,'ISD-30','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(25,'ISD-31','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(26,'ISD-2','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(27,'ISD-33','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(28,'ISD-38','RIOUNI02-Mandatory','Required','33.333333333333336','0.0','40.0','40.0','120.0','25.0','In Progress','False','13','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(29,'ISD-1','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','Not Started','False','13','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(30,'ISD-4','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(31,'ISD-29','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(32,'ISD-34','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(33,'ISD-35','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(34,'ISD-27','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(35,'ISD-32','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(36,'ISD-36','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(37,'ISD-37','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(38,'ISD-5','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','13','14');
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
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(1,'ISD-61','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','6','6','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(2,'ISD-62','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','4.0','4.0','Full-time','6','6','4');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(3,'ISD-63','False','False','False','40.0','40.0','False','5.0','Not generated','6.0','24.0','1.0','4.0','Full-time','6','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(4,'ISD-64','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','6','6','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(5,'ISD-73','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','15','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(6,'ISD-74','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','15','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(7,'ISD-75','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','15','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(8,'ISD-76','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','15','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(9,'ISD-77','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','16','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(10,'ISD-78','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','16','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(11,'ISD-79','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','16','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(12,'ISD-80','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','16','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(13,'ISD-39','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','17','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(14,'ISD-40','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','17','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(15,'ISD-41','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','17','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(16,'ISD-42','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','17','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(17,'ISD-47','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','18','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(18,'ISD-48','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','18','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(19,'ISD-49','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','18','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(20,'ISD-50','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','18','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(21,'ISD-51','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','19','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(22,'ISD-52','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','19','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(23,'ISD-53','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','19','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(24,'ISD-54','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','19','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(25,'ISD-27','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','5','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(26,'ISD-28','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','5','6','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(27,'ISD-29','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','5','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(28,'ISD-30','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','5','6','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(29,'ISD-1','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','1','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(30,'ISD-59','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','1','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(31,'ISD-60','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','1','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(32,'ISD-2','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','1','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(33,'ISD-19','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','2','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(34,'ISD-20','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','2','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(35,'ISD-21','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','2','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(36,'ISD-22','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','2','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(37,'ISD-23','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','3','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(38,'ISD-24','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','3','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(39,'ISD-25','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','3','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(40,'ISD-26','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','1.0','4.0','Full-time','3','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(41,'ISD-65','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','4','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(42,'ISD-66','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','4','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(43,'ISD-67','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','4','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(44,'ISD-68','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','4','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(45,'ISD-43','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','7','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(46,'ISD-44','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','7','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(47,'ISD-45','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','7','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(48,'ISD-46','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','7','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(49,'ISD-3','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','8','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(50,'ISD-4','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','8','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(51,'ISD-5','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','8','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(52,'ISD-6','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','8','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(53,'ISD-7','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','9','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(54,'ISD-8','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','9','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(55,'ISD-9','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','9','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(56,'ISD-10','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','9','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(57,'ISD-31','False','False','False','','','False','0.0','Not generated','','','2.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(58,'ISD-32','False','False','False','','','False','0.0','Not generated','','','8.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(59,'ISD-33','False','False','False','','','False','0.0','Not generated','','','3.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(60,'ISD-34','False','False','False','','','False','0.0','Not generated','','','5.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(61,'ISD-35','False','False','False','','','False','0.0','Not generated','','','4.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(62,'ISD-36','False','False','False','','','False','0.0','Not generated','','','6.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(63,'ISD-37','False','False','False','','','False','0.0','Not generated','','','7.0','8.0','Half-time','10','7','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(64,'ISD-38','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','8.0','Half-time','10','7','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(65,'ISD-55','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','11','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(66,'ISD-56','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','11','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(67,'ISD-57','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','11','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(68,'ISD-58','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','11','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(69,'ISD-11','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','12','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(70,'ISD-12','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','12','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(71,'ISD-13','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','12','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(72,'ISD-14','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','12','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(73,'ISD-15','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','13','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(74,'ISD-16','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','13','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(75,'ISD-17','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','13','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(76,'ISD-18','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','13','6','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(77,'ISD-69','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','14','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(78,'ISD-70','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','14','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(79,'ISD-71','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','14','6','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(80,'ISD-72','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','14','6','5');
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
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(1,'ISD-1','','4.0','','10','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(2,'ISD-2','','4.0','','12','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(3,'ISD-3','','8.0','','12','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(4,'ISD-4','','7.0','','12','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(5,'ISD-5','','4.0','','14','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(6,'ISD-6','','2.0','','15','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(7,'ISD-7','','3.0','','15','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(8,'ISD-8','','1.0','','15','8');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(9,'ISD-49','','1.0','48','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(10,'ISD-68','','1.0','48','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(11,'ISD-19','','1.0','85','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(12,'ISD-20','','2.0','85','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(13,'ISD-21','','2.0','88','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(14,'ISD-22','','4.0','88','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(15,'ISD-23','','3.0','90','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(16,'ISD-24','','2.0','93','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(17,'ISD-26','','2.0','24','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(18,'ISD-27','','4.0','24','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(19,'ISD-50','','1.0','54','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(20,'ISD-56','','1.0','54','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(21,'ISD-28','','2.0','26','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(22,'ISD-29','','1.0','69','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(23,'ISD-30','','3.0','70','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(24,'ISD-31','','5.0','70','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(25,'ISD-46','','1.0','31','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(26,'ISD-75','','1.0','71','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(27,'ISD-76','','2.0','100','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(28,'ISD-77','','2.0','108','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(29,'ISD-74','','1.0','34','','9');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(30,'ISD-45','','1.0','97','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(31,'ISD-60','','1.0','50','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(32,'ISD-53','','1.0','28','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(33,'ISD-65','','1.0','28','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(34,'ISD-54','','1.0','80','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(35,'ISD-55','','1.0','80','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(36,'ISD-72','','1.0','109','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(37,'ISD-71','','1.0','41','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(38,'ISD-73','','1.0','125','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(39,'ISD-69','','1.0','125','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(40,'ISD-64','','1.0','65','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(41,'ISD-67','','1.0','65','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(42,'ISD-48','','1.0','20','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(43,'ISD-63','','1.0','72','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(44,'ISD-70','','1.0','72','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(45,'ISD-61','','1.0','37','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(46,'ISD-57','','1.0','95','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(47,'ISD-58','','1.0','103','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(48,'ISD-59','','1.0','82','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(49,'ISD-62','','1.0','22','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(50,'ISD-32','','1.0','99','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(51,'ISD-33','','1.0','99','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(52,'ISD-34','','1.0','107','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(53,'ISD-35','','1.0','107','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(54,'ISD-51','','1.0','68','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(55,'ISD-36','','3.0','111','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(56,'ISD-38','','2.0','118','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(57,'ISD-39','','3.0','118','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(58,'ISD-52','','1.0','105','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(59,'ISD-9','','1.0','32','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(60,'ISD-17','','3.0','33','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(61,'ISD-18','','5.0','33','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(62,'ISD-25','','2.0','39','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(63,'ISD-37','','1.0','43','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(64,'ISD-40','','3.0','44','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(65,'ISD-41','','6.0','44','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(66,'ISD-42','','1.0','75','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(67,'ISD-43','','3.0','76','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(68,'ISD-44','','6.0','76','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(69,'ISD-47','','1.0','101','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(70,'ISD-66','','1.0','101','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(71,'ISD-10','','1.0','53','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(72,'ISD-11','','2.0','53','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(73,'ISD-12','','2.0','58','','6');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(74,'ISD-13','','3.0','58','','7');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(75,'ISD-14','','3.0','60','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(76,'ISD-15','','3.0','63','','5');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(77,'ISD-16','','2.0','78','','5');
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
INSERT INTO "rio_ed__Plan__c" VALUES(1,'ISD-87','2022 Term 2 BUS203','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(2,'ISD-88','2022 Term 2 ICT320','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(3,'ISD-89','2023 Term 2 ICT112','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(4,'ISD-90','2023 Term 2 ICT120','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(5,'ISD-91','2022 Term 1 BUS104','False','','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(6,'ISD-92','2022 Term 1 BUS105','False','','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(7,'ISD-93','2022 Term 1 ICT120','False','','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(8,'ISD-94','2022 Term 2 BUS106','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(9,'ISD-95','2022 Term 2 BUS211','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(10,'ISD-96','2022 Term 2 ICT221','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(11,'ISD-97','2022 Term 2 ICT310','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(12,'ISD-98','2023 Term 1 HRM311','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(13,'ISD-99','2023 Term 2 BUS203','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(14,'ISD-100','2023 Term 2 BUS320','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(15,'ISD-101','2023 Term 2 COR109','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(16,'ISD-102','2023 Term 2 HRM311','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(17,'ISD-103','2023 Term 2 ICT115','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(18,'ISD-104','2023 Term 1 BUS102','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(19,'ISD-105','2023 Term 1 BUS104','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(20,'ISD-106','2023 Term 1 BUS320','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(21,'ISD-107','2023 Term 2 BUS106','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(22,'ISD-108','2023 Term 2 BUS301','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(23,'ISD-109','2023 Term 2 ICT211','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(24,'ISD-110','2023 Term 2 ICT310','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(25,'ISD-111','2023 Term 2 BUS108','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(26,'ISD-112','2023 Term 2 BUS211','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(27,'ISD-113','2023 Term 2 IBS220','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(28,'ISD-114','2023 Term 2 ICT221','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(29,'ISD-115','2023 Term 2 ICT352','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(30,'ISD-116','2022 Term 1 BUS102','False','','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(31,'ISD-117','2022 Term 2 BUS108','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(32,'ISD-118','2022 Term 2 ICT352','False','','2023-04-24','Role','Resource','False','2022-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(33,'ISD-119','2023 Term 1 BUS101','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(34,'ISD-120','2023 Term 2 MGT210','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(35,'ISD-121','2023 Term 2 ICT320','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(36,'ISD-122','2023 Term 2 MGT310','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(37,'ISD-123','2022 Term 1 BUS101','False','','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(38,'ISD-124','2022 Term 1 ICT211','False','','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(39,'ISD-125','2023 Term 1 BUS105','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(40,'ISD-126','2023 Term 1 BUS301','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(41,'ISD-127','2023 Term 1 COR109','False','','2023-11-22','Role','Resource','False','2023-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(42,'ISD-128','2023 Term 2 HRM321','False','','2024-04-23','Role','Resource','False','2023-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(43,'ISD-1','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(44,'ISD-2','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(45,'ISD-3','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(46,'ISD-4','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(47,'ISD-5','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(48,'ISD-6','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(49,'ISD-7','Appointments','False','','2072-06-17','Role','Resource','False','2022-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(50,'ISD-8','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(51,'ISD-9','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(52,'ISD-10','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(53,'ISD-11','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(54,'ISD-12','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(55,'ISD-13','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(56,'ISD-14','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(57,'ISD-15','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(58,'ISD-16','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(59,'ISD-17','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(60,'ISD-18','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(61,'ISD-19','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(62,'ISD-20','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(63,'ISD-21','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(64,'ISD-22','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(65,'ISD-23','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(66,'ISD-24','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(67,'ISD-25','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(68,'ISD-26','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(69,'ISD-27','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(70,'ISD-28','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(71,'ISD-29','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(72,'ISD-30','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(73,'ISD-31','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(74,'ISD-32','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(75,'ISD-33','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(76,'ISD-34','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(77,'ISD-35','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(78,'ISD-36','2022 Term 1 COR109 B','False','a0C8a00000swonyEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(79,'ISD-37','2022 Term 1 COR109 B','False','a0C8a00000swonyEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(80,'ISD-38','2022 Term 1 ICT221','False','a0C8a00000swonjEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(81,'ISD-39','2022 Term 1 ICT221','False','a0C8a00000swonjEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(82,'ISD-40','2022 Term 1 COR109 C','False','a0C8a00000swoo3EAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(83,'ISD-41','2022 Term 1 COR109 C','False','a0C8a00000swoo3EAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(84,'ISD-42','2022 Term 1 COR109 A','False','a0C8a00000swontEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(85,'ISD-43','2022 Term 1 COR109 A','False','a0C8a00000swontEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(86,'ISD-44','2022 Term 1 ICT310','False','a0C8a00000swonoEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(87,'ISD-45','2022 Term 1 ICT310','False','a0C8a00000swonoEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(88,'ISD-46','2022 Term 1 ETC101','False','a0C8a00000swtOXEAY','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(89,'ISD-47','2022 Term 1 ETC101','False','a0C8a00000swtOXEAY','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(90,'ISD-48','2022 Term 1 ETC102','False','a0C8a00000swtOcEAI','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(91,'ISD-49','2022 Term 1 ETC102','False','a0C8a00000swtOcEAI','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(92,'ISD-50','2022 Term 1 BUS106','False','a0C8a00000swtOSEAY','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(93,'ISD-51','2022 Term 1 BUS106','False','a0C8a00000swtOSEAY','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(94,'ISD-52','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(95,'ISD-53','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(96,'ISD-54','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(97,'ISD-55','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(98,'ISD-56','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(99,'ISD-57','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(100,'ISD-58','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(101,'ISD-59','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(102,'ISD-60','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(103,'ISD-61','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(104,'ISD-62','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(105,'ISD-63','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-11-22','Role','Resource','False','2022-06-26');
INSERT INTO "rio_ed__Plan__c" VALUES(106,'ISD-64','Appointments','False','','2072-06-17','Role','Resource','False','2022-06-18');
INSERT INTO "rio_ed__Plan__c" VALUES(107,'ISD-65','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(108,'ISD-66','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(109,'ISD-67','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(110,'ISD-68','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(111,'ISD-69','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(112,'ISD-70','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(113,'ISD-71','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(114,'ISD-72','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(115,'ISD-73','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(116,'ISD-74','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(117,'ISD-75','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(118,'ISD-76','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(119,'ISD-77','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(120,'ISD-78','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(121,'ISD-79','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(122,'ISD-80','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-11-22','Role','Resource','False','2021-05-26');
INSERT INTO "rio_ed__Plan__c" VALUES(123,'ISD-81','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(124,'ISD-82','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(125,'ISD-83','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(126,'ISD-84','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(127,'ISD-85','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2022-04-24','Role','Resource','False','2021-12-06');
INSERT INTO "rio_ed__Plan__c" VALUES(128,'ISD-86','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2022-04-24','Role','Resource','False','2021-12-06');
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
INSERT INTO "rio_ed__Program_Application__c" VALUES(1,'ISD-5','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-18T05:39:12.000+0000','Draft','Full-time','33','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(2,'ISD-20','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-18T05:17:49.000+0000','Approved','Full-time','41','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(3,'ISD-6','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-15T05:52:53.000+0000','Approved','Full-time','44','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(4,'ISD-7','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-22T00:06:48.000+0000','Approved','Full-time','45','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(5,'ISD-8','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:52:05.000+0000','Approved','Full-time','46','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(6,'ISD-9','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:53:44.000+0000','Approved','Full-time','47','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(7,'ISD-10','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:43:21.000+0000','Approved','Half-time','21','7','2','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(8,'ISD-11','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:49:27.000+0000','Approved','Full-time','22','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(9,'ISD-12','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:57:54.000+0000','Approved','Full-time','23','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(10,'ISD-13','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:59:07.000+0000','Approved','Full-time','24','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(11,'ISD-14','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:47:51.000+0000','Approved','Full-time','25','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(12,'ISD-15','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T08:03:30.000+0000','Approved','Full-time','26','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(13,'ISD-16','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T08:04:25.000+0000','Approved','Full-time','27','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(14,'ISD-17','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T08:08:59.000+0000','Approved','Full-time','28','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(15,'ISD-18','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-22T00:08:16.000+0000','Approved','Full-time','29','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(16,'ISD-19','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-22T00:03:57.000+0000','Approved','Full-time','30','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(17,'ISD-1','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-21T07:45:14.000+0000','Approved','Full-time','35','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(18,'ISD-2','Course','Self Paid','Self Paid','Yes','False','January','2020','2022-05-29T07:16:53.000+0000','Approved','Full-time','36','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(19,'ISD-3','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-18T05:38:16.000+0000','Approved','Full-time','38','','','33');
INSERT INTO "rio_ed__Program_Application__c" VALUES(20,'ISD-4','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-06-18T05:34:24.000+0000','Approved','Full-time','39','','','33');
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
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(1,'ISD-9','ICT221:CP','A','Credit Points','','54');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(2,'ISD-29','ICT221:CP','A','Credit Points','','56');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(3,'ISD-17','BUS105:O1','A','Other','','41');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(4,'ISD-20','BUS105:O2','B','Other','','41');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(5,'ISD-8','ICT310:O','A','Other','','20');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(6,'ISD-16','BUS106:O1','A','Other','','37');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(7,'ISD-33','BUS106:O2','B','Other','','37');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(8,'ISD-24','ICT310:O','A','Other','','22');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(9,'ISD-15','BUS104:ICT310:P','C','Co-Requisite','10','74');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(10,'ISD-12','BUS104:ICT310:P','C','Pre-Requisite','10','72');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(11,'ISD-5','ICT211:ICT112:C','A','Co-Requisite','12','48');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(12,'ISD-25','ICT115:ICT112:P','A','Co-Requisite','12','104');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(13,'ISD-27','BUS102:ICT112:P','A','Co-Requisite','12','67');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(14,'ISD-7','ICT120:ICT112:PEC','A','Pre-Requisite (Enrolled or Completed)','12','80');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(15,'ISD-26','BUS101:ICT112:P','A','Co-Requisite','12','30');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(16,'ISD-18','BUS104:ICT112:P','A','Co-Requisite','12','74');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(17,'ISD-10','BUS101:ICT112:P','A','Pre-Requisite','12','125');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(18,'ISD-21','BUS102:ICT112:P','A','Pre-Requisite','12','65');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(19,'ISD-11','BUS104:ICT112:P','A','Pre-Requisite','12','72');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(20,'ISD-6','ICT115:ICT112:P','A','Pre-Requisite','12','101');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(21,'ISD-1','ICT112 pre-requisite','A','Pre-Requisite','12','57');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(22,'ISD-2','ICT112 Pre-Requisite','A','Pre-Requisite','12','58');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(23,'ISD-14','BUS104:ICT115:P','B','Co-Requisite','13','74');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(24,'ISD-31','BUS104:ICT115:P','B','Pre-Requisite','13','72');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(25,'ISD-3','BUS101 pre-requisite','A','Pre-Requisite','19','90');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(26,'ISD-4','BUS101 pre-requisite','A','Pre-Requisite','19','91');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(27,'ISD-28','BUS102:ICT211:P','B','Co-Requisite','25','67');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(28,'ISD-13','BUS101:ICT211:P','B','Co-Requisite','25','30');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(29,'ISD-32','BUS104:ICT211:P','E','Co-Requisite','25','74');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(30,'ISD-30','BUS101:ICT211:P','B','Pre-Requisite','25','125');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(31,'ISD-34','BUS102:ICT211:P','B','Pre-Requisite','25','65');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(32,'ISD-23','BUS104:ICT211:P','E','Pre-Requisite','25','72');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(33,'ISD-19','BUS104:ICT120:P','D','Co-Requisite','6','74');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(34,'ISD-22','BUS104:ICT120:P','D','Pre-Requisite','6','72');
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
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(1,'ISD-6','Manual','Full Time V4','1.0','Full-time','Default','4');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(2,'ISD-8','Manual','Full Time V6','1.0','Full-time','Default','5');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(3,'ISD-9','Manual','Full Time V5','1.0','Full-time','Default','6');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(4,'ISD-7','Manual','Full Time V3','1.0','Full-time','Default','8');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(5,'ISD-1','Manual','Full Time','4.0','Full-time','Default','1');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(6,'ISD-2','Manual','Full Time V1','4.0','Full-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(7,'ISD-3','Manual','Half Time','8.0','Half-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(8,'ISD-4','Manual','Full Time','4.0','Full-time','Default','3');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(9,'ISD-5','Manual','Full Time V2','2.0','Full-time','Default','9');
CREATE TABLE "rio_ed__Qualified_Faculty__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Roles__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(1,'ISD-6','Lecturer','7','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(2,'ISD-7','Lecturer','8','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(3,'ISD-8','Lecturer','9','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(4,'ISD-9','Lecturer','9','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(5,'ISD-10','Lecturer','17','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(6,'ISD-11','Lecturer','18','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(7,'ISD-12','Lecturer','19','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(8,'ISD-13','Lecturer','20','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(9,'ISD-30','Lecturer','10','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(10,'ISD-31','Lecturer','10','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(11,'ISD-32','Lecturer','11','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(12,'ISD-2','Lecturer','12','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(13,'ISD-3','Lecturer','12','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(14,'ISD-4','Lecturer','13','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(15,'ISD-5','Lecturer','13','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(16,'ISD-14','Lecturer','23','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(17,'ISD-16','Lecturer','24','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(18,'ISD-17','Lecturer','25','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(19,'ISD-18','Lecturer','25','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(20,'ISD-19','Lecturer','26','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(21,'ISD-20','Lecturer','26','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(22,'ISD-21','Lecturer','21','37');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(23,'ISD-22','Lecturer','22','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(24,'ISD-1','Lecturer','3','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(25,'ISD-15','Lecturer','4','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(26,'ISD-23','Lecturer','5','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(27,'ISD-24','Lecturer','6','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(28,'ISD-25','Lecturer','6','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(29,'ISD-26','Lecturer','14','31');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(30,'ISD-27','Lecturer','14','34');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(31,'ISD-28','Lecturer','15','32');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(32,'ISD-29','Lecturer','16','32');
CREATE TABLE "rio_ed__Resource_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource_Type__c" VALUES(3,'ISD-1','Location');
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
INSERT INTO "rio_ed__Resource__c" VALUES(1,'ISD-1','Beta 101','True','False','1','3');
INSERT INTO "rio_ed__Resource__c" VALUES(2,'ISD-2','Alpha 104','True','False','10','3');
INSERT INTO "rio_ed__Resource__c" VALUES(3,'ISD-3','Alpha 101','True','False','11','3');
INSERT INTO "rio_ed__Resource__c" VALUES(4,'ISD-4','Alpha 102','True','False','12','3');
INSERT INTO "rio_ed__Resource__c" VALUES(5,'ISD-5','Beta 102','True','False','2','3');
INSERT INTO "rio_ed__Resource__c" VALUES(6,'ISD-6','Beta 103','True','False','3','3');
INSERT INTO "rio_ed__Resource__c" VALUES(7,'ISD-7','Beta 104','True','False','4','3');
INSERT INTO "rio_ed__Resource__c" VALUES(8,'ISD-8','Alpha Building','True','False','5','3');
INSERT INTO "rio_ed__Resource__c" VALUES(9,'ISD-9','Beta Building','True','False','6','3');
INSERT INTO "rio_ed__Resource__c" VALUES(10,'ISD-10','Alpha 103','True','False','7','3');
INSERT INTO "rio_ed__Resource__c" VALUES(11,'ISD-11','Beta 100','True','False','8','3');
INSERT INTO "rio_ed__Resource__c" VALUES(12,'ISD-12','Alpha 100','True','False','9','3');
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
INSERT INTO "rio_ed__Role__c" VALUES(1,'ISD-1','BUS105 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(2,'ISD-2','BUS101 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(3,'ISD-3','BUS104 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(4,'ISD-4','HRM311 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(5,'ISD-5','BUS320 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(6,'ISD-6','BUS106 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(7,'ISD-7','BUS203 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(8,'ISD-8','ICT310 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(9,'ISD-9','BUS108 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(10,'ISD-10','COR109 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(11,'ISD-11','BUS301 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(12,'ISD-12','BUS102 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(13,'ISD-13','BUS211 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(14,'ISD-14','ICT211 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(15,'ISD-15','ICT120 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(16,'ISD-16','ICT352 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(17,'ISD-17','ICT221 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(18,'ISD-18','ICT320 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(19,'ISD-19','MGT210 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(20,'ISD-20','HRM321 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(21,'ISD-21','MGT310 Lecture #1','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(22,'ISD-22','BUS101 Lecture #2 (Session Group)','False','0.0','True','','');
INSERT INTO "rio_ed__Role__c" VALUES(23,'ISD-23','ICT115 Tutorial Series #1','False','0.0','False','','');
INSERT INTO "rio_ed__Role__c" VALUES(24,'ISD-25','BUS105 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(25,'ISD-26','BUS101 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(26,'ISD-27','BUS104 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(27,'ISD-28','HRM311 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(28,'ISD-29','BUS320 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(29,'ISD-30','BUS106 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(30,'ISD-31','BUS203 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(31,'ISD-32','ICT310 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(32,'ISD-33','BUS108 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(33,'ISD-34','COR109 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(34,'ISD-35','BUS301 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(35,'ISD-36','BUS102 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(36,'ISD-37','BUS211 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(37,'ISD-38','ICT211 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(38,'ISD-39','ICT120 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(39,'ISD-40','ICT352 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(40,'ISD-41','ICT221 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(41,'ISD-42','ICT320 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(42,'ISD-43','MGT210 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(43,'ISD-44','HRM321 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(44,'ISD-45','MGT310 Lecture #1','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(45,'ISD-46','BUS101 Lecture #2 (Session Group)','False','0.0','True','','3');
INSERT INTO "rio_ed__Role__c" VALUES(46,'ISD-47','ICT115 Tutorial Series #1','False','0.0','False','','3');
INSERT INTO "rio_ed__Role__c" VALUES(47,'ISD-24','ICT115 Lecture #2','False','0.0','True','104','3');
INSERT INTO "rio_ed__Role__c" VALUES(48,'ISD-48','ICT115 Lecture #1','False','0.0','True','104','3');
INSERT INTO "rio_ed__Role__c" VALUES(49,'ISD-49','ICT112 Lecture #1','False','0.0','True','105','3');
INSERT INTO "rio_ed__Role__c" VALUES(50,'ISD-50','Appointments','False','0.0','False','106','3');
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
INSERT INTO "rio_ed__Session_Connection__c" VALUES(1,'ISD-42','CC-0260 - Test Student 14','False','','','False','False','','Current','119','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(2,'ISD-2','CC-0200 - Test Student 9','False','','','False','False','','Current','131','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(3,'ISD-3','CC-0272 - Test Student 15','False','','','False','False','','Current','143','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(4,'ISD-8','CC-0308 - Test Student 20','False','','','False','False','','Current','33','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(5,'ISD-6','CC-0284 - Test Student 16','False','','','False','False','','Current','155','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(6,'ISD-28','CC-0023 - Fiona Forton','True','2023-11-22','Confirmed','True','False','2023-06-26','Current','196','26','2');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(7,'ISD-29','CC-0034 - Fiona Forton','True','2024-04-23','Confirmed','True','False','2023-12-06','Current','199','29','5');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(8,'ISD-30','CC-0024 - Fiona Forton','True','2023-11-22','Confirmed','True','False','2023-06-26','Current','202','39','14');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(9,'ISD-20','CC-0088 - Edward Educator','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','205','4','1');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(10,'ISD-21','CC-0093 - Edward Educator','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','206','28','4');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(11,'ISD-5','CC-0212 - Test Student 10','False','','','False','False','','Current','95','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(12,'ISD-22','CC-0090 - Edward Educator','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','207','36','12');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(13,'ISD-23','CC-0091 - Edward Educator','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','208','38','13');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(14,'ISD-24','CC-0089 - Edward Educator','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','209','41','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(15,'ISD-25','CC-0094 - Edward Educator','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','210','42','18');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(16,'ISD-26','CC-0092 - Edward Educator','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','211','46','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(17,'ISD-27','CC-0087 - Edward Educator','True','2022-11-22','Confirmed','True','False','2022-06-18','Current','204','7','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(18,'ISD-9','CC-0000 - Fran Fisher','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','163','30','6');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(19,'ISD-10','CC-0000 - Fran Fisher','False','2022-10-19','Confirmed','True','False','2022-06-29','Current','163','31','7');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(20,'ISD-11','CC-0015 - Fran Fisher','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','165','32','8');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(21,'ISD-12','CC-0008 - Fran Fisher','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','167','33','9');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(22,'ISD-13','CC-0007 - Fran Fisher','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','169','34','10');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(23,'ISD-14','CC-0006 - Fran Fisher','True','2022-11-22','Confirmed','True','False','2022-06-26','Current','160','37','49');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(24,'ISD-15','CC-0021 - Fran Fisher','True','2023-11-22','Confirmed','True','False','2023-06-26','Current','170','43','15');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(25,'ISD-16','CC-0016 - Fran Fisher','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','173','40','16');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(26,'ISD-18','CC-0014 - Fran Fisher','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','177','45','20');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(27,'ISD-19','CC-0013 - Fran Fisher','True','2023-04-24','Confirmed','True','False','2022-12-06','Current','179','47','22');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(28,'ISD-17','CC-0022 - Fran Fisher','True','2023-11-22','Confirmed','True','False','2023-06-26','Current','174','44','19');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(29,'ISD-7','CC-0296 - Test Student 17','False','','','False','False','','Current','9','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(30,'ISD-37','CC-0086 - Test Student 1','False','','','False','False','','Current','234','','12');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(31,'ISD-38','CC-0075 - Test Student 1','False','','','False','False','','Current','235','','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(32,'ISD-39','CC-0082 - Test Student 1','False','','','False','False','','Current','231','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(33,'ISD-31','CC-0188 - Test Student 8','False','','','False','False','','Current','45','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(34,'ISD-32','CC-0104 - Test Student 2','False','','','False','False','','Current','221','','1');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(35,'ISD-33','CC-0106 - Test Student 2','False','','','False','False','','Current','222','','12');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(36,'ISD-34','CC-0095 - Test Student 2','False','','','False','False','','Current','223','','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(37,'ISD-35','CC-0102 - Test Student 2','False','','','False','False','','Current','220','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(38,'ISD-40','CC-0320 - Test Student 18','False','','','False','False','','Current','247','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(39,'ISD-36','CC-0084 - Test Student 1','False','','','False','False','','Current','232','','1');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(40,'ISD-43','CC-0224 - Test Student 11','False','','','False','False','','Current','259','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(41,'ISD-1','CC-0236 - Test Student 12','False','','','False','False','','Current','271','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(42,'ISD-4','CC-0176 - Test Student 7','False','','','False','False','','Current','283','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(43,'ISD-41','CC-0248 - Test Student 13','False','','','False','False','','Current','107','','50');
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
INSERT INTO "rio_ed__Session_Time__c" VALUES(1,'ISD-51','Recreate','Session booking generation log 6/23/2022, 6:09 PM:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-11-22','16:00','Weekly','False','Tuesday','Weekly','2022-06-26','15:00','Active','Create/Update after today','','51');
INSERT INTO "rio_ed__Session_Time__c" VALUES(2,'ISD-1','','','Thursday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(3,'ISD-2','','','Friday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(4,'ISD-6','Recreate','Session booking generation log 21/1/2022, 5:53 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-11-22','16:00','Weekly','False','Tuesday','Weekly','2022-06-26','15:00','Active','Create/Update after today','10','1');
INSERT INTO "rio_ed__Session_Time__c" VALUES(5,'ISD-4','','','Tuesday','','15:00','','False','Tuesday','Weekly','','14:00','Active','Create/Update after today','10','25');
INSERT INTO "rio_ed__Session_Time__c" VALUES(6,'ISD-5','','','Tuesday','','16:00','','False','Tuesday','Weekly','','15:00','Active','Create/Update after today','10','27');
INSERT INTO "rio_ed__Session_Time__c" VALUES(7,'ISD-3','Recreate','Session booking generation log 21/1/2022, 5:49 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-11-22','15:00','Weekly','False','Tuesday','Weekly','2022-06-26','14:00','Active','Create/Update after today','10','50');
INSERT INTO "rio_ed__Session_Time__c" VALUES(8,'ISD-28','','','Tuesday','','14:00','','False','Tuesday','Weekly','','13:00','Active','Create/Update after today','9','32');
INSERT INTO "rio_ed__Session_Time__c" VALUES(9,'ISD-29','','','Monday','','10:00','','False','Monday','Weekly','','09:00','Active','Create/Update after today','9','34');
INSERT INTO "rio_ed__Session_Time__c" VALUES(10,'ISD-30','','','Wednesday','','17:00','','False','Wednesday','Weekly','','16:00','Active','Create/Update after today','9','35');
INSERT INTO "rio_ed__Session_Time__c" VALUES(11,'ISD-31','','','Monday','','13:00','','False','Monday','Weekly','','12:00','Active','Create/Update after today','9','36');
INSERT INTO "rio_ed__Session_Time__c" VALUES(12,'ISD-32','','','Monday','','12:00','','False','Monday','Weekly','','11:00','Active','Create/Update after today','9','43');
INSERT INTO "rio_ed__Session_Time__c" VALUES(13,'ISD-33','','','Wednesday','','16:00','','False','Wednesday','Weekly','','15:00','Active','Create/Update after today','9','37');
INSERT INTO "rio_ed__Session_Time__c" VALUES(14,'ISD-34','','','Wednesday','','10:00','','False','Wednesday','Weekly','','09:00','Active','Create/Update after today','9','38');
INSERT INTO "rio_ed__Session_Time__c" VALUES(15,'ISD-36','','','Wednesday','','11:00','','False','Wednesday','Weekly','','10:00','Active','Create/Update after today','9','39');
INSERT INTO "rio_ed__Session_Time__c" VALUES(16,'ISD-37','','','Tuesday','','12:00','','False','Tuesday','Weekly','','11:00','Active','Create/Update after today','9','40');
INSERT INTO "rio_ed__Session_Time__c" VALUES(17,'ISD-22','','','Monday','','11:00','','False','Monday','Weekly','','10:00','Active','Create/Update after today','9','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(18,'ISD-38','','','Tuesday','','10:00','','False','Tuesday','Weekly','','09:00','Active','Create/Update after today','9','41');
INSERT INTO "rio_ed__Session_Time__c" VALUES(19,'ISD-39','','','Monday','','15:00','','False','Monday','Weekly','','14:00','Active','Create/Update after today','9','44');
INSERT INTO "rio_ed__Session_Time__c" VALUES(20,'ISD-40','','','Tuesday','','17:00','','False','Tuesday','Weekly','','16:00','Active','Create/Update after today','9','45');
INSERT INTO "rio_ed__Session_Time__c" VALUES(21,'ISD-41','','','Wednesday','','14:00','','False','Wednesday','Weekly','','13:00','Active','Create/Update after today','9','46');
INSERT INTO "rio_ed__Session_Time__c" VALUES(22,'ISD-42','','','Monday','','17:00','','False','Monday','Weekly','','16:00','Active','Create/Update after today','9','47');
INSERT INTO "rio_ed__Session_Time__c" VALUES(23,'ISD-43','','','Monday','','14:00','','False','Monday','Weekly','','13:00','Active','Create/Update after today','9','48');
INSERT INTO "rio_ed__Session_Time__c" VALUES(24,'ISD-44','','','Wednesday','','12:00','','False','Wednesday','Weekly','','11:00','Active','Create/Update after today','9','23');
INSERT INTO "rio_ed__Session_Time__c" VALUES(25,'ISD-45','','','Monday','','16:00','','False','Monday','Weekly','','15:00','Active','Create/Update after today','9','24');
INSERT INTO "rio_ed__Session_Time__c" VALUES(26,'ISD-7','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-22','11:00','Weekly','False','Tuesday','Weekly','2023-06-26','10:00','Active','Create/Update after today','9','2');
INSERT INTO "rio_ed__Session_Time__c" VALUES(27,'ISD-18','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2024-04-23','15:00','Weekly','False','Wednesday','Weekly','2023-12-06','14:00','Active','Create/Update after today','9','3');
INSERT INTO "rio_ed__Session_Time__c" VALUES(28,'ISD-25','Recreate','Session booking generation log 21/1/2022, 6:07 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-04-24','13:00','Weekly','False','Wednesday','Weekly','2022-12-06','12:00','Active','Create/Update after today','9','4');
INSERT INTO "rio_ed__Session_Time__c" VALUES(29,'ISD-35','Recreate','Session booking generation log 24/1/2022, 3:58 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2024-04-23','13:00','Weekly','False','Tuesday','Weekly','2023-12-06','12:00','Active','Create/Update after today','9','5');
INSERT INTO "rio_ed__Session_Time__c" VALUES(30,'ISD-46','Upsert','Session booking generation log 6/15/2022, 6:52 PM:
Historical recurrence - Weekly
Updated recurrence - Weekly
Booking action - Upsert','Monday','2022-11-22','10:00','Weekly','False','Monday','Weekly','2022-06-26','09:00','Active','Create/Update all','9','6');
INSERT INTO "rio_ed__Session_Time__c" VALUES(31,'ISD-47','Upsert','Session booking generation log 25/1/2022, 4:29 pm:
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
[Custom Booking Updated]: a0a5j000002WUmuAAG from Friday 27 May 2022, 09:00-10:00 to Friday 27 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100','Friday','2022-11-22','10:00','Weekly','False','Friday','Weekly','2022-06-26','09:00','Active','Create/Update all','9','7');
INSERT INTO "rio_ed__Session_Time__c" VALUES(32,'ISD-48','Recreate','Session booking generation log 21/1/2022, 5:43 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-04-24','17:00','Weekly','False','Wednesday','Weekly','2022-12-06','16:00','Active','Create/Update after today','9','8');
INSERT INTO "rio_ed__Session_Time__c" VALUES(33,'ISD-49','Recreate','Session booking generation log 21/1/2022, 5:42 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-22','13:00','Weekly','False','Monday','Weekly','2022-06-26','12:00','Active','Create/Update after today','9','9');
INSERT INTO "rio_ed__Session_Time__c" VALUES(34,'ISD-50','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-22','12:00','Weekly','False','Monday','Weekly','2022-06-26','11:00','Active','Create/Update after today','9','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(35,'ISD-8','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2024-04-23','16:00','Weekly','False','Wednesday','Weekly','2023-12-06','15:00','Active','Create/Update after today','9','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(36,'ISD-9','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-22','10:00','Weekly','False','Wednesday','Weekly','2022-06-26','09:00','Active','Create/Update after today','9','12');
INSERT INTO "rio_ed__Session_Time__c" VALUES(37,'ISD-10','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-22','11:00','Weekly','False','Monday','Weekly','2022-06-26','10:00','Active','Create/Update after today','9','49');
INSERT INTO "rio_ed__Session_Time__c" VALUES(38,'ISD-11','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-04-24','11:00','Weekly','False','Wednesday','Weekly','2022-12-06','10:00','Active','Create/Update after today','9','13');
INSERT INTO "rio_ed__Session_Time__c" VALUES(39,'ISD-12','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-22','12:00','Weekly','False','Tuesday','Weekly','2023-06-26','11:00','Active','Create/Update after today','9','14');
INSERT INTO "rio_ed__Session_Time__c" VALUES(40,'ISD-14','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-04-24','15:00','Weekly','False','Monday','Weekly','2022-12-06','14:00','Active','Create/Update after today','9','16');
INSERT INTO "rio_ed__Session_Time__c" VALUES(41,'ISD-15','Recreate','Session booking generation log 21/1/2022, 6:03 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-11-22','17:00','Weekly','False','Tuesday','Weekly','2022-06-26','16:00','Active','Create/Update after today','9','17');
INSERT INTO "rio_ed__Session_Time__c" VALUES(42,'ISD-16','Recreate','Session booking generation log 21/1/2022, 6:09 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-04-24','14:00','Weekly','False','Wednesday','Weekly','2022-12-06','13:00','Active','Create/Update after today','9','18');
INSERT INTO "rio_ed__Session_Time__c" VALUES(43,'ISD-13','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-22','10:00','Weekly','False','Tuesday','Weekly','2023-06-26','09:00','Active','Create/Update after today','9','15');
INSERT INTO "rio_ed__Session_Time__c" VALUES(44,'ISD-17','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-11-22','17:00','Weekly','False','Monday','Weekly','2023-06-26','16:00','Active','Create/Update after today','9','19');
INSERT INTO "rio_ed__Session_Time__c" VALUES(45,'ISD-19','Recreate','Session booking generation log 21/1/2022, 5:45 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-04-24','14:00','Weekly','False','Monday','Weekly','2022-12-06','13:00','Active','Create/Update after today','9','20');
INSERT INTO "rio_ed__Session_Time__c" VALUES(46,'ISD-20','Recreate','Session booking generation log 21/1/2022, 6:06 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-04-24','12:00','Weekly','False','Wednesday','Weekly','2022-12-06','11:00','Active','Create/Update after today','9','21');
INSERT INTO "rio_ed__Session_Time__c" VALUES(47,'ISD-21','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-04-24','16:00','Weekly','False','Monday','Weekly','2022-12-06','15:00','Active','Create/Update after today','9','22');
INSERT INTO "rio_ed__Session_Time__c" VALUES(48,'ISD-23','','','Tuesday','','11:00','','False','Tuesday','Weekly','','10:00','Active','Create/Update after today','9','28');
INSERT INTO "rio_ed__Session_Time__c" VALUES(49,'ISD-24','','','Wednesday','','15:00','','False','Wednesday','Weekly','','14:00','Active','Create/Update after today','9','29');
INSERT INTO "rio_ed__Session_Time__c" VALUES(50,'ISD-26','','','Wednesday','','13:00','','False','Wednesday','Weekly','','12:00','Active','Create/Update after today','9','30');
INSERT INTO "rio_ed__Session_Time__c" VALUES(51,'ISD-27','','','Tuesday','','13:00','','False','Tuesday','Weekly','','12:00','Active','Create/Update after today','9','31');
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
INSERT INTO "rio_ed__Session__c" VALUES(1,'ISD-27','ICT115 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','2.0','15.0','All Confirmed','2022-06-15T06:53:46.000+0000','22.0','True','Computer Lab','Lecture','Booked','0.0','40','','48');
INSERT INTO "rio_ed__Session__c" VALUES(2,'ISD-28','COR109 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:48:11.000+0000','21.0','True','Classroom','Lecture','Booked','','44','','33');
INSERT INTO "rio_ed__Session__c" VALUES(3,'ISD-29','MGT210 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','No Faculty Assigned','2022-06-18T04:59:16.000+0000','20.0','True','Classroom','Lecture','Booked','','46','','42');
INSERT INTO "rio_ed__Session__c" VALUES(4,'ISD-30','ICT320 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T07:07:37.000+0000','20.0','True','Classroom','Lecture','Booked','','48','','41');
INSERT INTO "rio_ed__Session__c" VALUES(5,'ISD-31','HRM321 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-18T04:58:35.000+0000','20.0','True','Classroom','Lecture','Booked','','49','','43');
INSERT INTO "rio_ed__Session__c" VALUES(6,'ISD-32','BUS101 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','0.0','15.0','All Confirmed','2022-06-15T06:40:46.000+0000','21.0','True','Classroom','Lecture','Create/Update Bookings','','54','','25');
INSERT INTO "rio_ed__Session__c" VALUES(7,'ISD-33','BUS101 Lecture #2 (Session Group)','0127Q000000q1TfQAI','Each Session Time','A','0.0','10.0','All Confirmed','2022-06-19T05:29:44.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','54','','45');
INSERT INTO "rio_ed__Session__c" VALUES(8,'ISD-34','BUS106 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:44:00.000+0000','20.0','True','Classroom','Lecture','Booked','','58','','29');
INSERT INTO "rio_ed__Session__c" VALUES(9,'ISD-35','BUS105 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:42:12.000+0000','21.0','True','Classroom','Lecture','Booked','','62','','24');
INSERT INTO "rio_ed__Session__c" VALUES(10,'ISD-36','BUS104 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:41:48.000+0000','21.0','True','Classroom','Lecture','Booked','','14','','26');
INSERT INTO "rio_ed__Session__c" VALUES(11,'ISD-37','MGT310 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','No Faculty Assigned','2022-06-18T04:59:39.000+0000','20.0','True','Classroom','Lecture','Booked','','63','','44');
INSERT INTO "rio_ed__Session__c" VALUES(12,'ISD-38','ICT211 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','2.0','15.0','All Confirmed','2022-06-15T07:05:28.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','67','','37');
INSERT INTO "rio_ed__Session__c" VALUES(13,'ISD-40','ICT221 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T07:05:59.000+0000','20.0','True','Classroom','Lecture','Booked','','2','','40');
INSERT INTO "rio_ed__Session__c" VALUES(14,'ISD-41','HRM311 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:48:54.000+0000','21.0','True','Classroom','Lecture','Booked','','3','','27');
INSERT INTO "rio_ed__Session__c" VALUES(15,'ISD-42','BUS320 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:47:35.000+0000','21.0','True','Classroom','Lecture','Booked','','5','','28');
INSERT INTO "rio_ed__Session__c" VALUES(16,'ISD-43','BUS203 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:46:06.000+0000','20.0','True','Classroom','Lecture','Booked','','16','','30');
INSERT INTO "rio_ed__Session__c" VALUES(17,'ISD-44','ICT120 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','2.0','15.0','All Confirmed','2022-06-15T07:03:19.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','20','','38');
INSERT INTO "rio_ed__Session__c" VALUES(18,'ISD-45','ICT352 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T07:09:21.000+0000','20.0','True','Classroom','Lecture','Booked','','22','','39');
INSERT INTO "rio_ed__Session__c" VALUES(19,'ISD-46','BUS301 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:47:04.000+0000','21.0','True','Classroom','Lecture','Booked','','23','','34');
INSERT INTO "rio_ed__Session__c" VALUES(20,'ISD-47','BUS108 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:45:44.000+0000','20.0','True','Classroom','Lecture','Booked','','26','','32');
INSERT INTO "rio_ed__Session__c" VALUES(21,'ISD-48','ICT310 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T07:06:55.000+0000','20.0','True','Classroom','Lecture','Booked','','30','','31');
INSERT INTO "rio_ed__Session__c" VALUES(22,'ISD-49','BUS211 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:46:39.000+0000','20.0','True','Classroom','Lecture','Booked','','32','','36');
INSERT INTO "rio_ed__Session__c" VALUES(23,'ISD-25','ICT310 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(24,'ISD-26','BUS211 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','11','');
INSERT INTO "rio_ed__Session__c" VALUES(25,'ISD-2','ICT112 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(26,'ISD-3','ICT112 Practical Series #2','0127Q000000q1TgQAI','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(27,'ISD-4','ICT115 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','Draft','','','13','46');
INSERT INTO "rio_ed__Session__c" VALUES(28,'ISD-5','COR109 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','7','');
INSERT INTO "rio_ed__Session__c" VALUES(29,'ISD-6','MGT210 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','8','');
INSERT INTO "rio_ed__Session__c" VALUES(30,'ISD-7','ICT320 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','9','');
INSERT INTO "rio_ed__Session__c" VALUES(31,'ISD-8','HRM321 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(32,'ISD-9','IBS220 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','18','');
INSERT INTO "rio_ed__Session__c" VALUES(33,'ISD-10','BUS101 Tutorial Series #2','0127Q000000q1TgQAI','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Classroom','','','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(34,'ISD-11','BUS101 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(35,'ISD-12','BUS106 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','20','');
INSERT INTO "rio_ed__Session__c" VALUES(36,'ISD-13','BUS105 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','23','');
INSERT INTO "rio_ed__Session__c" VALUES(37,'ISD-15','MGT310 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','24','');
INSERT INTO "rio_ed__Session__c" VALUES(38,'ISD-16','ICT211 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','25','');
INSERT INTO "rio_ed__Session__c" VALUES(39,'ISD-17','ICT221 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','26','');
INSERT INTO "rio_ed__Session__c" VALUES(40,'ISD-18','HRM311 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','21','');
INSERT INTO "rio_ed__Session__c" VALUES(41,'ISD-19','BUS320 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','22','');
INSERT INTO "rio_ed__Session__c" VALUES(42,'ISD-1','BUS102 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','3','');
INSERT INTO "rio_ed__Session__c" VALUES(43,'ISD-14','BUS104 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','4','');
INSERT INTO "rio_ed__Session__c" VALUES(44,'ISD-20','BUS203 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','5','');
INSERT INTO "rio_ed__Session__c" VALUES(45,'ISD-21','ICT120 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','6','');
INSERT INTO "rio_ed__Session__c" VALUES(46,'ISD-22','ICT352 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','14','');
INSERT INTO "rio_ed__Session__c" VALUES(47,'ISD-23','BUS301 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','15','');
INSERT INTO "rio_ed__Session__c" VALUES(48,'ISD-24','BUS108 Lecture #1','0127Q000000q1TgQAI','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','16','');
INSERT INTO "rio_ed__Session__c" VALUES(49,'ISD-39','BUS102 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','','15.0','All Confirmed','2022-06-15T06:41:16.000+0000','21.0','True','Classroom','Lecture','Booked','','10','','35');
INSERT INTO "rio_ed__Session__c" VALUES(50,'ISD-50','ICT112 Lecture #1','0127Q000000q1TfQAI','Each Session Time','A','15.0','15.0','All Confirmed','2022-06-15T06:49:56.000+0000','23.0','True','Computer Lab','Lecture','Booked','0.0','36','','49');
INSERT INTO "rio_ed__Session__c" VALUES(51,'ISD-51','ICT115 Lecture #2','0127Q000000q1TfQAI','Each Session Time','','0.0','50.0','No Faculty Assigned','2022-07-13T08:09:42.000+0000','19.0','True','Computer Lab','Lecture','Booked','','40','','47');
CREATE TABLE "rio_ed__Session__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0127Q000000q1TfQAI','Class');
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0127Q000000q1TgQAI','Template');
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
INSERT INTO "rio_ed__Student_Fee__c" VALUES(1,'ISD-11','2022-06-15','F-000000014','Bachelor of Business Information System','Tuition','6');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(2,'ISD-19','2022-06-21','F-000000017','Bachelor of Business Information System','Tuition','15');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(3,'ISD-2','2022-06-21','F-000000018','Bachelor of Business Information System','Tuition','16');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(4,'ISD-3','2022-06-21','F-000000001','Bachelor of Business Information System','Tuition','17');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(5,'ISD-4','2022-06-22','F-000000003','Bachelor of Business Information System','Tuition','18');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(6,'ISD-5','2022-06-22','F-000000004','Bachelor of Business Information System','Tuition','19');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(7,'ISD-10','2022-06-18','F-000000013','Bachelor of Business Information System','Tuition','5');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(8,'ISD-6','2022-06-21','F-000000006','Bachelor of Business Information System','Tuition','1');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(9,'ISD-7','2022-05-29','F-000000011','Bachelor of Business Information System','Tuition','2');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(10,'ISD-8','2022-06-19','F-000000012','Bachelor of Business Information System','Tuition','3');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(11,'ISD-9','2022-06-18','F-000000015','Bachelor of Business Information System','Tuition','4');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(12,'ISD-1','2022-06-22','F-000000002','Bachelor of Business Information System','Tuition','7');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(13,'ISD-12','2022-06-21','F-000000007','Bachelor of Business Information System','Tuition','8');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(14,'ISD-13','2022-06-21','F-000000008','Bachelor of Business Information System','Tuition','9');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(15,'ISD-14','2022-06-21','F-000000000','Bachelor of Business Information System','Tuition','10');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(16,'ISD-15','2022-06-21','F-000000005','Bachelor of Business Information System','Tuition','11');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(17,'ISD-16','2022-06-21','F-000000009','Bachelor of Business Information System','Tuition','12');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(18,'ISD-17','2022-06-21','F-000000010','Bachelor of Business Information System','Tuition','13');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(19,'ISD-18','2022-06-21','F-000000016','Bachelor of Business Information System','Tuition','14');
COMMIT;
