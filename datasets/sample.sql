BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
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
INSERT INTO "Account" VALUES(1,'School of Business','0125j000000HPn4AAG','False','','Full Program','','5','23');
INSERT INTO "Account" VALUES(2,'Bachelor of Business Management','0125j000000HPmyAAG','False','RIOUNI03','Full Program','','1','');
INSERT INTO "Account" VALUES(3,'Campus: Sunshine Coast','0125j000000HUlxAAG','True','','Full Program','Australia/Brisbane','5','');
INSERT INTO "Account" VALUES(4,'Campus: Brisbane','0125j000000HUlxAAG','True','','Full Program','Australia/Brisbane','5','');
INSERT INTO "Account" VALUES(5,'RIO University','0125j000000HPn1AAG','False','','Full Program','','','');
INSERT INTO "Account" VALUES(6,'Campus: Sydney','0125j000000HUlxAAG','True','','Full Program','Australia/Sydney','5','');
INSERT INTO "Account" VALUES(7,'School of Art','0125j000000HPn4AAG','False','','Full Program','','5','');
INSERT INTO "Account" VALUES(8,'Bachelor of Business Information System','0125j000000HPmyAAG','False','RIOUNI02','Full Program','','1','');
INSERT INTO "Account" VALUES(9,'Freeman Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','21');
INSERT INTO "Account" VALUES(10,'Student 8 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','41');
INSERT INTO "Account" VALUES(11,'Smith Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','24');
INSERT INTO "Account" VALUES(12,'Forton Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','22');
INSERT INTO "Account" VALUES(13,'Student 4 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','26');
INSERT INTO "Account" VALUES(14,'Student 3 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','31');
INSERT INTO "Account" VALUES(15,'Educator Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','25');
INSERT INTO "Account" VALUES(16,'Student 5 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','27');
INSERT INTO "Account" VALUES(17,'Student 6 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','28');
INSERT INTO "Account" VALUES(18,'Student 2 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','29');
INSERT INTO "Account" VALUES(19,'Student 1 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','30');
INSERT INTO "Account" VALUES(20,'Student 18 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','36');
INSERT INTO "Account" VALUES(21,'Student 11 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','42');
INSERT INTO "Account" VALUES(22,'Student 12 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','43');
INSERT INTO "Account" VALUES(23,'Student 7 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','40');
INSERT INTO "Account" VALUES(24,'Student 10 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','39');
INSERT INTO "Account" VALUES(25,'Student 13 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','44');
INSERT INTO "Account" VALUES(26,'Student 14 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','45');
INSERT INTO "Account" VALUES(27,'Student 9 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','32');
INSERT INTO "Account" VALUES(28,'Student 15 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','33');
INSERT INTO "Account" VALUES(29,'Student 16 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','34');
INSERT INTO "Account" VALUES(30,'Student 17 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','35');
INSERT INTO "Account" VALUES(31,'Student 19 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','37');
INSERT INTO "Account" VALUES(32,'Student 20 Administrative Account','0125j000000HPmzAAG','False','','Full Program','','','38');
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPmyAAG','Academic_Program');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPmzAAG','Administrative');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPn0AAG','Business_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPn1AAG','Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HUlwAAG','External_Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPn2AAG','HH_Account');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HUlxAAG','Location');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPn3AAG','Sports_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000HPn4AAG','University_Department');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"Email" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"hed__AlternateEmail__c" VARCHAR(255), 
	"hed__Gender__c" VARCHAR(255), 
	"hed__Preferred_Email__c" VARCHAR(255), 
	"hed__UniversityEmail__c" VARCHAR(255), 
	"rio_ed__Community_Username_Prefix__c" VARCHAR(255), 
	"rio_ed__Community_Username__c" VARCHAR(255), 
	"rio_ed__Faculty_Member__c" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(21,'fred@riouni.edu','Freddie','Freeman','Mr.','','Male','University Email','fred@riouni.edu','','','True','9');
INSERT INTO "Contact" VALUES(22,'fiona@riouni.edu','Fiona','Forton','Ms.','','Female','University Email','fiona@riouni.edu','','','True','12');
INSERT INTO "Contact" VALUES(23,'fran@riouni.edu','Fran','Fisher','Ms.','','Female','University Email','fran@riouni.edu','','','True','1');
INSERT INTO "Contact" VALUES(24,'jsmith@riouni.edu','John','Smith','','jsmith@riouni.edu','Male','Alternate Email','','john.smith','john.smith@rioedplayground.com','False','11');
INSERT INTO "Contact" VALUES(25,'eef@eef.eef','Edward','Educator','','','Male','University Email','eef@eef.eef','','','True','15');
INSERT INTO "Contact" VALUES(26,'','Eleanor','Huber','','','Female','University Email','teststudent4@riouni.com','','','False','13');
INSERT INTO "Contact" VALUES(27,'','Tim','Cruz','','','Male','University Email','teststudent5@riouni.com','','','False','16');
INSERT INTO "Contact" VALUES(28,'','Howard','Randall','','','Male','University Email','teststudent6@riouni.com','','','False','17');
INSERT INTO "Contact" VALUES(29,'','Gregg','Robinson','','','Male','University Email','teststudent2@riouni.com','','','False','18');
INSERT INTO "Contact" VALUES(30,'','Gwen','Burton','','','','University Email','teststudent1@riouni.com','','','False','19');
INSERT INTO "Contact" VALUES(31,'','Charlotte','Andrews','','','Female','University Email','teststudent3@riouni.com','','','False','14');
INSERT INTO "Contact" VALUES(32,'','Sammy','Hunter','','','','University Email','teststudent9@riouni.com','','','False','27');
INSERT INTO "Contact" VALUES(33,'','Lorna','Daily','','','','University Email','teststudent15@riouni.com','','','False','28');
INSERT INTO "Contact" VALUES(34,'','Buddy','Short','','','','University Email','teststudent16@riouni.com','','','False','29');
INSERT INTO "Contact" VALUES(35,'','Madeline','Shelton','','','','University Email','teststudent17@riouni.com','','','False','30');
INSERT INTO "Contact" VALUES(36,'','Lucy','Wang','','','','University Email','teststudent18@riouni.com','','','False','20');
INSERT INTO "Contact" VALUES(37,'','Donna','Underwood','','','','University Email','teststudent19@riouni.com','','','False','31');
INSERT INTO "Contact" VALUES(38,'','Doris','Kramer','','','','University Email','teststudent20@riouni.com','','','False','32');
INSERT INTO "Contact" VALUES(39,'','Emmanuel','Mack','','','','University Email','teststudent10@riouni.com','','','False','24');
INSERT INTO "Contact" VALUES(40,'','Kristin','Steward','','','','University Email','teststudent7@riouni.com','','','False','23');
INSERT INTO "Contact" VALUES(41,'','Bonnie','Christensen','','','','University Email','teststudent8@riouni.com','','','False','10');
INSERT INTO "Contact" VALUES(42,'','Sidney','Poole','','','','University Email','teststudent11@riouni.com','','','False','21');
INSERT INTO "Contact" VALUES(43,'','Brenda','Vance','','','','University Email','teststudent12@riouni.com','','','False','22');
INSERT INTO "Contact" VALUES(44,'','Christy','Shay','','','','University Email','teststudent13@riouni.com','','','False','25');
INSERT INTO "Contact" VALUES(45,'','Brandy','Richards','','','','University Email','teststudent14@riouni.com','','','False','26');
CREATE TABLE "hed__Affiliation__c" (
	id INTEGER NOT NULL, 
	"hed__Role__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Affiliation__c" VALUES(1,'','Former','8','24');
INSERT INTO "hed__Affiliation__c" VALUES(2,'Faculty','Current','1','21');
INSERT INTO "hed__Affiliation__c" VALUES(3,'Faculty','Current','1','22');
INSERT INTO "hed__Affiliation__c" VALUES(4,'','Current','8','30');
INSERT INTO "hed__Affiliation__c" VALUES(5,'Faculty','Current','1','23');
INSERT INTO "hed__Affiliation__c" VALUES(6,'Faculty','Current','1','25');
INSERT INTO "hed__Affiliation__c" VALUES(7,'','Current','8','29');
INSERT INTO "hed__Affiliation__c" VALUES(8,'','Current','8','31');
INSERT INTO "hed__Affiliation__c" VALUES(9,'','Current','8','26');
INSERT INTO "hed__Affiliation__c" VALUES(10,'','Former','8','40');
INSERT INTO "hed__Affiliation__c" VALUES(11,'','Former','8','40');
INSERT INTO "hed__Affiliation__c" VALUES(12,'','Current','8','40');
INSERT INTO "hed__Affiliation__c" VALUES(13,'','Former','8','40');
INSERT INTO "hed__Affiliation__c" VALUES(14,'','Current','8','41');
INSERT INTO "hed__Affiliation__c" VALUES(15,'','Current','8','39');
INSERT INTO "hed__Affiliation__c" VALUES(16,'','Current','8','33');
INSERT INTO "hed__Affiliation__c" VALUES(17,'','Current','8','32');
INSERT INTO "hed__Affiliation__c" VALUES(18,'','Current','8','42');
INSERT INTO "hed__Affiliation__c" VALUES(19,'','Current','8','45');
INSERT INTO "hed__Affiliation__c" VALUES(20,'','Current','8','35');
INSERT INTO "hed__Affiliation__c" VALUES(21,'','Current','8','44');
INSERT INTO "hed__Affiliation__c" VALUES(22,'','Current','8','34');
INSERT INTO "hed__Affiliation__c" VALUES(23,'','Current','8','43');
INSERT INTO "hed__Affiliation__c" VALUES(24,'','Current','8','38');
INSERT INTO "hed__Affiliation__c" VALUES(25,'','Current','8','36');
INSERT INTO "hed__Affiliation__c" VALUES(26,'','Current','8','37');
INSERT INTO "hed__Affiliation__c" VALUES(27,'','Current','8','24');
CREATE TABLE "hed__Course_Enrollment__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "hed__Course_Enrollment__c" VALUES(1,'0125j000000HPnPAAW','10.0','10.0','77.0','False','Current','1.0','','2022-06-18','2021-12-23','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Insufficient','','2022-01-20','8','','24','27','19','38','79','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(2,'0125j000000HPnPAAW','10.0','10.0','96.0','False','Current','1.0','','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','7.0','Pass','Educational Institution','HD - High Distinction','Self Paid','True','True','Insufficient','','2022-01-20','8','','24','2','19','38','79','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(3,'0125j000000HPnPAAW','','','','False','Current','1.0','','2022-06-18','2021-12-24','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','2022-01-20','8','','24','2','19','38','79','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(4,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','24','3','19','38','79','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(5,'0125j000000HPnPAAW','10.0','10.0','84.0','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-20','8','','24','4','19','38','79','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(6,'0125j000000HPnPAAW','10.0','10.0','78.0','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-20','8','','24','3','19','38','79','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(7,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','1','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(8,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','2','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(9,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','3','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(10,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(11,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','27','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(12,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','5','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(13,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','6','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(14,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','7','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(15,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(16,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','9','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(17,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','11','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(18,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','10','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(19,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(20,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','13','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(21,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','14','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(22,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(23,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','16','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(24,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','17','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(25,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','18','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(26,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(27,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','20','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(28,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','21','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(29,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','22','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(30,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','23','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(31,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(32,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','25','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(33,'0125j000000HPnPAAW','10.0','10.0','83.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','8','','30','3','1','2','3','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(34,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(35,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(36,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(37,'0125j000000HPnPAAW','','','','False','Current','1.0','','2022-06-18','2022-01-13','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','30','26','1','2','3','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(38,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(39,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(40,'0125j000000HPnPAAW','10.0','10.0','85.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','University Department','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2021-12-20','8','','30','27','1','2','3','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(41,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(42,'0125j000000HPnPAAW','10.0','10.0','81.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','8','','30','2','1','2','3','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(43,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','1','2','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(44,'0125j000000HPnPAAW','10.0','10.0','79.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','8','','30','4','1','2','3','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(45,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','26','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(46,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','27','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(47,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','28','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(48,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','29','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(49,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','30','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(50,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','31','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(51,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(52,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','33','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(53,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','34','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(54,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','35','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(55,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','36','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(56,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','37','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(57,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','38','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(58,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','39','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(59,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(60,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','5','23','41','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(61,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','42','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(62,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','3','22','43','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(63,'0125j000000HPnOAAW','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','','False','False','','','','1','2','21','44','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(64,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','27','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(65,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','33','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(66,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','2','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(67,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','7','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(68,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(69,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','3','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(70,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(71,'0125j000000HPnOAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','6','25','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(72,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','8','','29','3','2','4','7','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(73,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(74,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','29','','2','4','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(75,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(76,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','7','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(77,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(78,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(79,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','29','27','2','4','7','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(80,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(81,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','8','','29','2','2','4','7','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(82,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','29','','2','4','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(83,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','8','','29','4','2','4','7','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(84,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(85,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-20','8','','31','27','3','6','11','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(86,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(87,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','31','2','3','6','11','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(88,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','31','3','3','6','11','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(89,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(90,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','31','','3','6','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(91,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(92,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(93,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(94,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','3','6','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(95,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','31','4','3','6','11','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(96,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(97,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(98,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','26','','4','7','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(99,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(100,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','','8','','26','','4','7','15','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(101,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(102,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(103,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(104,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(105,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(106,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(107,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','4','7','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(108,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(109,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(110,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','40','','5','10','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(111,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(112,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(113,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(114,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(115,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','40','27','5','10','17','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(116,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(117,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(118,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(119,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','5','10','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(120,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(121,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(122,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','41','','6','12','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(123,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(124,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(125,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(126,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(127,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','41','27','6','12','27','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(128,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(129,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(130,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(131,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','6','12','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(132,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(133,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(134,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','39','','7','14','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(135,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(136,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(137,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(138,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(139,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','39','27','7','14','31','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(140,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(141,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(142,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(143,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','7','14','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(144,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(145,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(146,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','33','','8','16','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(147,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(148,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(149,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(150,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(151,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','33','27','8','16','35','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(152,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(153,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(154,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(155,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','8','16','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(156,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(157,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(158,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','32','','9','18','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(159,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(160,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(161,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(162,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(163,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','32','27','9','18','39','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(164,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(165,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(166,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(167,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','9','18','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(168,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(169,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(170,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','42','','10','20','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(171,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(172,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(173,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(174,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(175,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','42','27','10','20','43','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(176,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(177,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(178,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(179,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','10','20','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(180,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(181,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(182,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','45','','11','22','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(183,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(184,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(185,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(186,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(187,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','45','27','11','22','47','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(188,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(189,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(190,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(191,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','45','','11','22','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(192,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(193,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(194,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','35','','12','24','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(195,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(196,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(197,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(198,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(199,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','35','27','12','24','63','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(200,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(201,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(202,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(203,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(204,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(205,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','44','','13','26','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(206,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(207,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(208,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(209,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(210,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','44','27','13','26','51','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(211,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(212,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(213,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(214,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','13','26','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(215,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(216,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(217,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','34','','14','28','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(218,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(219,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(220,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(221,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(222,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','34','27','14','28','55','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(223,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(224,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(225,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(226,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','14','28','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(227,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(228,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(229,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','43','','15','30','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(230,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(231,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(232,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(233,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(234,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','43','27','15','30','59','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(235,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(236,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(237,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(238,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','15','30','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(239,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','12','24','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(240,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(241,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(242,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','38','','16','32','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(243,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(244,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(245,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(246,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(247,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','38','27','16','32','67','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(248,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(249,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(250,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(251,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','16','32','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(252,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(253,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(254,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','36','','17','34','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(255,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(256,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(257,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(258,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(259,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','36','27','17','34','71','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(260,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(261,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(262,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(263,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','17','34','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(264,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(265,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(266,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','37','','18','36','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(267,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(268,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(269,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(270,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(271,'0125j000000HPnPAAW','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-20','8','','37','27','18','36','75','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(272,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(273,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(274,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(275,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','18','36','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(276,'0125j000000HPnPAAW','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','24','3','19','38','79','1');
INSERT INTO "hed__Course_Enrollment__c" VALUES(277,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','3');
INSERT INTO "hed__Course_Enrollment__c" VALUES(278,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','24','','19','38','','5');
INSERT INTO "hed__Course_Enrollment__c" VALUES(279,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(280,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(281,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(282,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','10');
INSERT INTO "hed__Course_Enrollment__c" VALUES(283,'0125j000000HPnPAAW','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','24','27','19','38','79','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(284,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','19');
INSERT INTO "hed__Course_Enrollment__c" VALUES(285,'0125j000000HPnPAAW','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','24','2','19','38','79','20');
INSERT INTO "hed__Course_Enrollment__c" VALUES(286,'0125j000000HPnPAAW','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','24','','19','38','','21');
INSERT INTO "hed__Course_Enrollment__c" VALUES(287,'0125j000000HPnPAAW','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','24','4','19','38','79','22');
CREATE TABLE "hed__Course_Enrollment__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0125j000000HPnNAAW','Default');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0125j000000HPnOAAW','Faculty');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0125j000000HPnPAAW','Student');
CREATE TABLE "hed__Course_Offering__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "hed__Course_Offering__c" VALUES(1,'2022 Term 1 BUS102','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','1','23','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(2,'2022 Term 1 ICT115','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','11','21','5','6','3','2','1');
INSERT INTO "hed__Course_Offering__c" VALUES(3,'2022 Term 1 ICT120','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','4','21','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(4,'2022 Term 1 ICT211','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','21','21','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(5,'2022 Term 1 BUS104','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','2','23','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(6,'2022 Term 1 BUS105','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','19','23','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(7,'2022 Term 2 ICT320','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','21','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(8,'2023 Term 1 HRM311','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','23','22','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(9,'2022 Term 2 BUS108','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','23','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(10,'2023 Term 2 ICT352','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(11,'2022 Term 2 BUS203','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','23','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(12,'2022 Term 2 ICT221','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','21','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(13,'2023 Term 2 BUS203','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','23','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(14,'2023 Term 2 BUS106','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','23','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(15,'2023 Term 1 BUS101','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','17','23','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(16,'2023 Term 1 COR109','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','12','22','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(17,'2023 Term 2 ICT120','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','4','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(18,'2023 Term 2 BUS320','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','24','23','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(19,'2023 Term 2 ICT221','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(20,'2023 Term 1 BUS301','50.0','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','6','23','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(21,'2023 Term 2 HRM321','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','15','22','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(22,'2023 Term 2 ICT112','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','10','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(23,'2023 Term 2 ICT115','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','11','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(24,'2023 Term 2 ICT310','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(25,'2023 Term 2 ICT320','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(26,'2022 Term 1 BUS101','50.0','2022-06-18','2022-01-20','1.0','','1000.0','1000.0','Final Grade','Hour','False','0.0','17','23','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(27,'2022 Term 1 ICT112','50.0','2022-06-18','2021-12-20','18.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','10','21','5','6','3','2','2');
INSERT INTO "hed__Course_Offering__c" VALUES(28,'2022 Term 2 BUS211','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','23','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(29,'2023 Term 1 BUS105','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','19','23','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(30,'2023 Term 1 BUS320','50.0','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','24','23','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(31,'2022 Term 2 BUS106','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','23','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(32,'2022 Term 2 ICT310','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','21','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(33,'2022 Term 2 ICT352','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','21','6','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(34,'2023 Term 1 BUS102','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','1','23','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(35,'2023 Term 2 HRM311','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','23','22','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(36,'2023 Term 2 COR109','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','12','22','4','','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(37,'2023 Term 1 BUS104','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','2','23','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(38,'2023 Term 2 BUS108','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','23','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(39,'2023 Term 2 IBS220','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','16','22','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(40,'2023 Term 2 BUS301','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','6','23','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(41,'2023 Term 2 BUS211','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','23','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(42,'2023 Term 2 MGT310','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','20','22','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(43,'2023 Term 2 MGT210','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','13','22','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(44,'2023 Term 2 ICT211','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','21','21','4','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(45,'Last Year Term 2 BUS105','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','19','','1','6','','2','26');
INSERT INTO "hed__Course_Offering__c" VALUES(46,'Last Year Term 1 BUS104','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','2','','2','6','','2','4');
INSERT INTO "hed__Course_Offering__c" VALUES(47,'Last Year Term 1 ICT120','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','4','','2','6','','2','8');
INSERT INTO "hed__Course_Offering__c" VALUES(48,'Last Year Term 1 BUS105','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','19','','2','6','','2','6');
INSERT INTO "hed__Course_Offering__c" VALUES(49,'Last Year Term 1 BUS101','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','17','','2','6','','2','10');
INSERT INTO "hed__Course_Offering__c" VALUES(50,'Last Year Term 1 ICT112','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','10','','2','6','','2','12');
INSERT INTO "hed__Course_Offering__c" VALUES(51,'Last Year Term 1 ICT211','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','21','','2','6','','2','14');
INSERT INTO "hed__Course_Offering__c" VALUES(52,'Last Year Term 1 ICT115','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','11','','2','6','','2','16');
INSERT INTO "hed__Course_Offering__c" VALUES(53,'Last Year Term 1 BUS102','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','1','','2','6','','2','18');
INSERT INTO "hed__Course_Offering__c" VALUES(54,'Last Year Term 2 ICT115','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','11','','1','6','','2','20');
INSERT INTO "hed__Course_Offering__c" VALUES(55,'Last Year Term 2 ICT112','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','10','','1','6','','2','22');
INSERT INTO "hed__Course_Offering__c" VALUES(56,'Last Year Term 2 BUS102','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','1','','1','6','','2','24');
INSERT INTO "hed__Course_Offering__c" VALUES(57,'Last Year Term 2 ICT211','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','21','','1','6','','2','28');
INSERT INTO "hed__Course_Offering__c" VALUES(58,'Last Year Term 2 BUS104','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','2','','1','6','','2','30');
INSERT INTO "hed__Course_Offering__c" VALUES(59,'Last Year Term 2 BUS101','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','17','','1','6','','2','32');
INSERT INTO "hed__Course_Offering__c" VALUES(60,'Last Year Term 2 ICT120','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','4','','1','6','','2','34');
CREATE TABLE "hed__Course__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"hed__Course_ID__c" VARCHAR(255), 
	"hed__Credit_Hours__c" VARCHAR(255), 
	"rio_ed__Background_Colour__c" VARCHAR(255), 
	"rio_ed__Default_Scheduled_Duration_Unit__c" VARCHAR(255), 
	"rio_ed__External_Id__c" VARCHAR(255), 
	"rio_ed__Grade_Setting_Type__c" VARCHAR(255), 
	"rio_ed__Grade_Type__c" VARCHAR(255), 
	"rio_ed__Grading_Frequency__c" VARCHAR(255), 
	"rio_ed__Use_Default_Fee__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"rio_ed__Fee__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Course__c" VALUES(1,'BUS102: Introduction to Economics','BUS102','10.0','#FF69B4','Hour','BUS102','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(2,'BUS104 Introduction to Management','BUS104','10.0','#FF69B4','Hour','BUS104','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(3,'BUS203 Business Law and Ethics','BUS203','10.0','#FF69B4','Hour','BUS203','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(4,'ICT120 Introduction to Telecommunications and Networks','ICT120','10.0','#DC143C','Hour','ICT120','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(5,'ICT352 ICT Project Management','ICT352','10.0','#DC143C','Hour','ICT352','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(6,'BUS301 Business Analytics 2','BUS301','10.0','#FF69B4','Hour','BUS301','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(7,'BUS108 Introduction to Informatics','BUS108','10.0','#FF69B4','Hour','BUS108','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(8,'ICT310 Systems Analysis and Design','ICT310','10.0','#DC143C','Hour','ICT310','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(9,'BUS211 Strategic Management','BUS211','10.0','#FF69B4','Hour','BUS211','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(10,'ICT112 Creative Problem Solving with Programming','ICT112','10.0','#DC143C','Hour','ICT112','','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(11,'ICT115 Introduction to Systems Design','ICT115','10.0','#DC143C','Hour','ICT115','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(12,'COR109 Communication and Thought','COR109','10.0','#FF00FF','Hour','COR109','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(13,'MGT210 Project Management','MGT210','10.0','#FF00FF','Hour','MGT210','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(14,'ICT320 Database Programming','ICT320','10.0','#DC143C','Hour','ICT320','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(15,'HRM321 Managing Organisational Change','HRM321','10.0','#FF00FF','Hour','HRM321','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(16,'IBS220 Cross-Cultural Management','IBS220','10.0','#FF00FF','Hour','IBS220','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(17,'BUS101: Business Analytics','BUS101','10.0','#FF69B4','Hour','BUS101','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(18,'BUS106 Accounting for Business','BUS106','10.0','#FF69B4','Hour','BUS106','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(19,'BUS105 Introduction to Marketing','BUS105','10.0','#FF69B4','Hour','BUS105','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(20,'MGT310 Small Business and New Venture Management','MGT310','10.0','#FF00FF','Hour','MGT310','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(21,'ICT211 Database Design','ICT211','10.0','#DC143C','Hour','ICT211','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(22,'ICT221 Software Development 1','ICT221','10.0','#DC143C','Hour','ICT221','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(23,'HRM311 Leadership and Team Dynamics','HRM311','10.0','#FF00FF','Hour','HRM311','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(24,'BUS320 Corporate Governance and Social Responsibility','BUS320','10.0','#FF69B4','Hour','BUS320','Educational Institution','Value','Term','True','1','2');
CREATE TABLE "hed__Facility__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"hed__Capacity__c" VARCHAR(255), 
	"hed__Facility_Type__c" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Parent_Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Facility__c" VALUES(1,'Beta 101','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(2,'Beta 102','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(3,'Beta 103','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(4,'Beta 104','10.0','Computer Lab','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(5,'Alpha Building','','Building','True','6','');
INSERT INTO "hed__Facility__c" VALUES(6,'Beta Building','','Building','True','6','');
INSERT INTO "hed__Facility__c" VALUES(7,'Alpha 103','10.0','Classroom','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(8,'Beta 100','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(9,'Alpha 100','10.0','Classroom','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(10,'Alpha 104','10.0','Computer Lab','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(11,'Alpha 101','10.0','Classroom','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(12,'Alpha 102','10.0','Classroom','True','6','5');
CREATE TABLE "hed__Plan_Requirement__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"hed__Category__c" VARCHAR(255), 
	"hed__Credits__c" VARCHAR(255), 
	"hed__Sequence__c" VARCHAR(255), 
	"rio_ed__Allow_Pre_Enrollment__c" VARCHAR(255), 
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
INSERT INTO "hed__Plan_Requirement__c" VALUES(1,'RIOUNI02 - ICT120','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','4','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(2,'RIOUNI02 - BUS106','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','18','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(3,'RIOUNI02 - ICT352','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','5','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(4,'RIOUNI03 - BUS106','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','18','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(5,'RIOUNI02 - ICT221','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','<p>ICT112 is the pre-requisite for this course.</p>','A','False','22','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(6,'RIOUNI02 - ICT320','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','14','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(7,'RIOUNI02 - BUS101','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','17','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(8,'RIOUNI02 - BUS105','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','19','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(9,'RIOUNI02-Elective','0125j000000HUm9AAG','Required','40.0','2.0','False','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(10,'RIOUNI02 - BUS104','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','2','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(11,'RIOUNI02 - ICT112','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','10','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(12,'RIOUNI02 - BUS203','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','3','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(13,'RIOUNI02 - BUS211','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','9','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(14,'RIOUNI02 - BUS301','0125j000000HUm8AAG','Optional','10.0','','False','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','6','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(15,'RIOUNI02 - COR109','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','12','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(16,'RIOUNI02-Mandatory','0125j000000HUm9AAG','Required','120.0','1.0','False','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(17,'RIOUNI02 - BUS108','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','7','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(18,'RIOUNI02 - BUS320','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','24','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(19,'RIOUNI02 - ICT310','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','8','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(20,'RIOUNI02 - ICT115','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','11','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(21,'RIOUNI02 - BUS102','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','1','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(22,'RIOUNI02 - ICT211','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','21','16','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(23,'RIOUNI03-Elective','0125j000000HUm9AAG','Required','40.0','2.0','False','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(24,'RIOUNI03 - HRM311','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','23','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(25,'RIOUNI02 - HRM311','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','23','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(26,'RIOUNI02 - HRM321','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','15','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(27,'RIOUNI02 - MGT310','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','20','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(28,'RIOUNI03 - BUS105','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','19','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(29,'RIOUNI02 - IBS220','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','16','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(30,'RIOUNI03 - IBS220','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','16','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(31,'RIOUNI03 - BUS104','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','2','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(32,'RIOUNI02 - MGT210','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','13','9','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(33,'RIOUNI03-Mandatory','0125j000000HUm9AAG','Required','120.0','1.0','False','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(34,'RIOUNI03 - BUS101','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','17','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(35,'RIOUNI03 - BUS102','0125j000000HUm8AAG','Required','10.0','1.0','False','False','False','','','False','1','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(36,'RIOUNI03 - ICT352','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','5','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(37,'RIOUNI03 - COR109','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','12','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(38,'RIOUNI03 - BUS108','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','7','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(39,'RIOUNI03 - BUS211','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','9','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(40,'RIOUNI03 - BUS301','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','6','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(41,'RIOUNI03 - ICT211','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','21','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(42,'RIOUNI03 - BUS203','0125j000000HUm8AAG','Required','10.0','2.0','False','False','False','','','False','3','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(43,'RIOUNI03 - ICT310','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','8','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(44,'RIOUNI03 - ICT112','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','10','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(45,'RIOUNI03 - MGT310','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','20','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(46,'RIOUNI03 - HRM321','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','15','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(47,'RIOUNI03 - ICT115','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','11','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(48,'RIOUNI03 - ICT320','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','14','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(49,'RIOUNI03 - MGT210','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','13','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(50,'RIOUNI03 - ICT120','0125j000000HUm8AAG','Optional','10.0','','False','False','False','','','False','4','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(51,'RIOUNI03 - ICT221','0125j000000HUm8AAG','Optional','10.0','','False','False','False','<p>ICT112 is a pre-requisite for this course.</p>','A','False','22','23','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(52,'RIOUNI03 - BUS320','0125j000000HUm8AAG','Required','10.0','3.0','False','False','False','','','False','24','33','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(53,'RIOUNI04-Electives','0125j000000HUm9AAG','Required','40.0','','False','False','False','','','False','','','3','9');
INSERT INTO "hed__Plan_Requirement__c" VALUES(54,'RIOUNI04-Mandatory','0125j000000HUm9AAG','Required','120.0','','False','False','False','','','False','','','3','16');
CREATE TABLE "hed__Plan_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0125j000000HUm8AAG','Course');
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0125j000000HUm9AAG','Group');
CREATE TABLE "hed__Program_Enrollment__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "hed__Program_Enrollment__c" VALUES(1,'2022-01-09','2022-01-09','40.0','40.0','True','Full-time','6.0','25.0','Course','Self Paid','24.0','Self Paid','Yes','Current','Group A','Default','8','4','30','1','2','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(2,'2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group B','Default','8','7','29','1','5','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(3,'2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','8','31','1','6','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(4,'2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group A','Default','8','9','26','1','4','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(5,'2022-01-15','','0.0','0.0','True','Half-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','12','40','1','7','4');
INSERT INTO "hed__Program_Enrollment__c" VALUES(6,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','14','41','1','8','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(7,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','15','39','1','9','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(8,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','16','33','1','13','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(9,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','17','32','1','15','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(10,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','18','42','1','16','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(11,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','19','45','1','10','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(12,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','20','35','1','11','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(13,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','21','44','1','17','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(14,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','22','34','1','14','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(15,'2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','23','43','1','18','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(16,'2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','24','38','1','12','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(17,'2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','25','36','1','19','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(18,'2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','26','37','1','20','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(19,'2021-12-23','2021-12-23','40.0','40.0','True','Full-time','6.25','25.0','Course','Self Paid','25.0','Self Paid','Yes','Current','','Default','8','27','24','1','1','1');
CREATE TABLE "hed__Program_Plan__c" (
	id INTEGER NOT NULL, 
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
	PRIMARY KEY (id)
);
INSERT INTO "hed__Program_Plan__c" VALUES(1,'Bachelor of Business Information System V1','True','2022-01-20','Current','False','False','False','False','Course','Yes','For application fee only','True','8','','1','');
INSERT INTO "hed__Program_Plan__c" VALUES(2,'Bachelor of Business Management (Course-Upfront)','True','2022-01-20','Current','False','False','False','False','Course','Yes','For application fee only','True','2','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(3,'Bachelor of Business Information System V1.5','False','2022-01-20','Current','True','False','False','False','Course','Yes','For application fee only','True','8','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(4,'Bachelor of Business Information System V2','False','2022-01-20','Current','True','True','True','False','Course','Yes','For application fee only','True','8','6','','5');
CREATE TABLE "hed__Term_Grade__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "hed__Term_Grade__c" VALUES(1,'','','','','','','24','1','27','','5');
INSERT INTO "hed__Term_Grade__c" VALUES(2,'','','','','','','30','40','27','','5');
CREATE TABLE "hed__Term__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"hed__End_Date__c" VARCHAR(255), 
	"hed__Start_Date__c" VARCHAR(255), 
	"hed__Type__c" VARCHAR(255), 
	"rio_ed__Enrollment_Open_Date_Time__c" VARCHAR(255), 
	"rio_ed__Grading_Period_Type__c" VARCHAR(255), 
	"rio_ed__Term_Label__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"rio_ed__Previous_Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Term__c" VALUES(1,'Last Year Term 2','2021-11-18','2021-07-02','','','Final Grade','Default','5','2');
INSERT INTO "hed__Term__c" VALUES(2,'Last Year Term 1','2021-06-18','2020-12-20','','','Final Grade','Default','5','');
INSERT INTO "hed__Term__c" VALUES(3,'Next Year Term 1','2023-06-18','2023-01-20','Semester','2023-01-19T14:00:00.000+0000','Final Grade','Default','5','6');
INSERT INTO "hed__Term__c" VALUES(4,'Next Year Term 2','2023-11-18','2023-07-02','Semester','2023-07-01T14:00:00.000+0000','Final Grade','Default','5','3');
INSERT INTO "hed__Term__c" VALUES(5,'Current Year Term 1','2022-06-18','2022-01-20','Semester','2021-12-19T14:00:00.000+0000','Final Grade','Default','5','');
INSERT INTO "hed__Term__c" VALUES(6,'Current Year Term 2','2022-11-18','2022-07-02','Semester','2022-07-01T14:00:00.000+0000','Final Grade','Default','5','5');
CREATE TABLE "hed__Time_Block__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"hed__End_Time__c" VARCHAR(255), 
	"hed__Start_Time__c" VARCHAR(255), 
	"rio_ed__Is_Extended__c" VARCHAR(255), 
	"hed__Educational_Institution__c" VARCHAR(255), 
	"rio_ed__Parent_Time_Block__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Time_Block__c" VALUES(1,'Lunch','13:00:00.000Z','12:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(2,'Noon #2','15:00:00.000Z','14:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(3,'Noon #3','16:00:00.000Z','15:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(4,'Evening #1','18:00:00.000Z','17:00:00.000Z','True','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(5,'Morning #1','10:00:00.000Z','09:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(6,'Default Time Block','','','False','5','');
INSERT INTO "hed__Time_Block__c" VALUES(7,'Morning #2','11:00:00.000Z','10:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(8,'Morning #3','12:00:00.000Z','11:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(9,'Noon #4','17:00:00.000Z','16:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(10,'Noon #1','14:00:00.000Z','13:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(11,'Afternoon','17:00:00.000Z','13:00:00.000Z','False','5','12');
INSERT INTO "hed__Time_Block__c" VALUES(12,'Other Parent Time Block','17:00:00.000Z','09:00:00.000Z','False','5','');
INSERT INTO "hed__Time_Block__c" VALUES(13,'Morning','12:00:00.000Z','09:00:00.000Z','False','5','12');
CREATE TABLE "rio_ed__Allocation__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Allocation__c" VALUES(1,'Tentative','2022-01-26','13:00:00.000Z','2022-01-26T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(2,'Tentative','2022-02-02','13:00:00.000Z','2022-02-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(3,'Tentative','2022-02-09','13:00:00.000Z','2022-02-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(4,'Tentative','2022-02-16','13:00:00.000Z','2022-02-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(5,'Tentative','2022-02-23','13:00:00.000Z','2022-02-23T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(6,'Tentative','2022-03-02','13:00:00.000Z','2022-03-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(7,'Tentative','2022-03-09','13:00:00.000Z','2022-03-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-09','12:00:00.000Z','2022-03-09T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(8,'Tentative','2022-03-16','13:00:00.000Z','2022-03-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-16','12:00:00.000Z','2022-03-16T01:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(9,'Tentative','2022-03-23','13:00:00.000Z','2022-03-23T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(10,'Tentative','2022-03-30','13:00:00.000Z','2022-03-30T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(11,'Tentative','2022-04-06','13:00:00.000Z','2022-04-06T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(12,'Tentative','2022-04-13','13:00:00.000Z','2022-04-13T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(13,'Tentative','2022-04-20','13:00:00.000Z','2022-04-20T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(14,'Tentative','2022-04-27','13:00:00.000Z','2022-04-27T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(15,'Tentative','2022-05-04','13:00:00.000Z','2022-05-04T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(16,'Tentative','2022-05-11','13:00:00.000Z','2022-05-11T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-11','12:00:00.000Z','2022-05-11T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(17,'Tentative','2022-05-18','13:00:00.000Z','2022-05-18T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-18','12:00:00.000Z','2022-05-18T02:00:00.000+0000','Good','Allocated','True','4','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(18,'Tentative','2023-01-26','12:00:00.000Z','2023-01-26T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(19,'Tentative','2023-02-02','12:00:00.000Z','2023-02-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(20,'Tentative','2023-02-09','12:00:00.000Z','2023-02-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(21,'Tentative','2023-02-16','12:00:00.000Z','2023-02-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(22,'Tentative','2023-02-23','12:00:00.000Z','2023-02-23T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(23,'Tentative','2023-03-02','12:00:00.000Z','2023-03-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(24,'Tentative','2023-03-09','12:00:00.000Z','2023-03-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-09','11:00:00.000Z','2023-03-09T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(25,'Tentative','2023-03-16','12:00:00.000Z','2023-03-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-16','11:00:00.000Z','2023-03-16T00:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(26,'Tentative','2023-03-23','12:00:00.000Z','2023-03-23T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(27,'Tentative','2023-03-30','12:00:00.000Z','2023-03-30T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(28,'Tentative','2023-04-06','12:00:00.000Z','2023-04-06T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(29,'Tentative','2023-04-13','12:00:00.000Z','2023-04-13T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(30,'Tentative','2023-04-20','12:00:00.000Z','2023-04-20T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(31,'Tentative','2023-04-27','12:00:00.000Z','2023-04-27T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(32,'Tentative','2023-05-04','12:00:00.000Z','2023-05-04T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(33,'Tentative','2023-05-11','12:00:00.000Z','2023-05-11T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(34,'Tentative','2023-05-18','12:00:00.000Z','2023-05-18T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(35,'Tentative','2023-05-25','12:00:00.000Z','2023-05-25T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(36,'Tentative','2023-06-01','12:00:00.000Z','2023-06-01T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(37,'Tentative','2023-06-08','12:00:00.000Z','2023-06-08T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-08','11:00:00.000Z','2023-06-08T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(38,'Tentative','2023-06-15','12:00:00.000Z','2023-06-15T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-15','11:00:00.000Z','2023-06-15T01:00:00.000+0000','Good','Allocated','True','4','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(39,'Tentative','2022-07-20','16:00:00.000Z','2022-07-20T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(40,'Tentative','2022-07-27','16:00:00.000Z','2022-07-27T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(41,'Tentative','2022-08-03','16:00:00.000Z','2022-08-03T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(42,'Tentative','2022-07-06','16:00:00.000Z','2022-07-06T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(43,'Tentative','2022-07-13','16:00:00.000Z','2022-07-13T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(44,'Tentative','2022-08-10','16:00:00.000Z','2022-08-10T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(45,'Tentative','2022-08-17','16:00:00.000Z','2022-08-17T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(46,'Tentative','2022-08-24','16:00:00.000Z','2022-08-24T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(47,'Tentative','2022-08-31','16:00:00.000Z','2022-08-31T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(48,'Tentative','2022-09-07','16:00:00.000Z','2022-09-07T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-07','15:00:00.000Z','2022-09-07T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(49,'Tentative','2022-09-14','16:00:00.000Z','2022-09-14T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-14','15:00:00.000Z','2022-09-14T05:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(50,'Tentative','2022-09-21','16:00:00.000Z','2022-09-21T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(51,'Tentative','2022-10-05','16:00:00.000Z','2022-10-05T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(52,'Tentative','2022-09-28','16:00:00.000Z','2022-09-28T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(53,'Tentative','2022-10-12','16:00:00.000Z','2022-10-12T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(54,'Tentative','2022-10-19','16:00:00.000Z','2022-10-19T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(55,'Tentative','2022-10-26','16:00:00.000Z','2022-10-26T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(56,'Tentative','2022-11-02','16:00:00.000Z','2022-11-02T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(57,'Tentative','2022-11-09','16:00:00.000Z','2022-11-09T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-09','15:00:00.000Z','2022-11-09T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(58,'Tentative','2022-11-16','16:00:00.000Z','2022-11-16T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-16','15:00:00.000Z','2022-11-16T04:00:00.000+0000','Good','Allocated','True','4','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(59,'Tentative','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(60,'Tentative','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(61,'Tentative','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(62,'Tentative','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(63,'Tentative','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(64,'Tentative','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(65,'Tentative','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(66,'Tentative','2022-03-10','16:00:00.000Z','2022-03-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-10','15:00:00.000Z','2022-03-10T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(67,'Tentative','2022-03-17','16:00:00.000Z','2022-03-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-17','15:00:00.000Z','2022-03-17T04:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(68,'Tentative','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(69,'Tentative','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(70,'Tentative','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(71,'Tentative','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(72,'Tentative','2022-05-12','16:00:00.000Z','2022-05-12T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-12','15:00:00.000Z','2022-05-12T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(73,'Tentative','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(74,'Tentative','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(75,'Tentative','2023-02-08','17:00:00.000Z','2023-02-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-08','16:00:00.000Z','2023-02-08T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(76,'Tentative','2023-02-15','17:00:00.000Z','2023-02-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-15','16:00:00.000Z','2023-02-15T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(77,'Tentative','2023-02-22','17:00:00.000Z','2023-02-22T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-22','16:00:00.000Z','2023-02-22T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(78,'Tentative','2023-03-01','17:00:00.000Z','2023-03-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-01','16:00:00.000Z','2023-03-01T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(79,'Tentative','2023-03-08','17:00:00.000Z','2023-03-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-08','16:00:00.000Z','2023-03-08T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(80,'Tentative','2023-03-15','17:00:00.000Z','2023-03-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-15','16:00:00.000Z','2023-03-15T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(81,'Tentative','2023-03-22','17:00:00.000Z','2023-03-22T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-22','16:00:00.000Z','2023-03-22T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(82,'Tentative','2023-04-05','17:00:00.000Z','2023-04-05T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-05','16:00:00.000Z','2023-04-05T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(83,'Tentative','2023-04-12','17:00:00.000Z','2023-04-12T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-12','16:00:00.000Z','2023-04-12T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(84,'Tentative','2023-04-19','17:00:00.000Z','2023-04-19T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-19','16:00:00.000Z','2023-04-19T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(85,'Tentative','2023-04-26','17:00:00.000Z','2023-04-26T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-26','16:00:00.000Z','2023-04-26T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(86,'Tentative','2023-05-03','17:00:00.000Z','2023-05-03T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-03','16:00:00.000Z','2023-05-03T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(87,'Tentative','2023-03-29','17:00:00.000Z','2023-03-29T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-29','16:00:00.000Z','2023-03-29T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(88,'Tentative','2023-05-10','17:00:00.000Z','2023-05-10T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-10','16:00:00.000Z','2023-05-10T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(89,'Tentative','2023-05-17','17:00:00.000Z','2023-05-17T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-17','16:00:00.000Z','2023-05-17T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(90,'Tentative','2023-05-24','17:00:00.000Z','2023-05-24T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-24','16:00:00.000Z','2023-05-24T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(91,'Tentative','2023-05-31','17:00:00.000Z','2023-05-31T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-31','16:00:00.000Z','2023-05-31T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(92,'Tentative','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-09','09:00:00.000Z','2023-02-08T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(93,'Tentative','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-16','09:00:00.000Z','2023-02-15T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(94,'Tentative','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-23','09:00:00.000Z','2023-02-22T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(95,'Tentative','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-02','09:00:00.000Z','2023-03-01T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(96,'Tentative','2023-03-09','10:00:00.000Z','2023-03-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-09','09:00:00.000Z','2023-03-08T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(97,'Tentative','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-01-26','09:00:00.000Z','2023-01-25T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(98,'Tentative','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-02','09:00:00.000Z','2023-02-01T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(99,'Tentative','2023-03-16','10:00:00.000Z','2023-03-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-16','09:00:00.000Z','2023-03-15T22:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(100,'Tentative','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-23','09:00:00.000Z','2023-03-22T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(101,'Tentative','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-30','09:00:00.000Z','2023-03-29T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(102,'Tentative','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-06','09:00:00.000Z','2023-04-05T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(103,'Tentative','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-13','09:00:00.000Z','2023-04-12T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(104,'Tentative','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-20','09:00:00.000Z','2023-04-19T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(105,'Tentative','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-27','09:00:00.000Z','2023-04-26T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(106,'Tentative','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-04','09:00:00.000Z','2023-05-03T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(107,'Tentative','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-11','09:00:00.000Z','2023-05-10T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(108,'Tentative','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-18','09:00:00.000Z','2023-05-17T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(109,'Tentative','2023-06-07','17:00:00.000Z','2023-06-07T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-06-07','16:00:00.000Z','2023-06-07T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(110,'Tentative','2023-06-14','17:00:00.000Z','2023-06-14T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-06-14','16:00:00.000Z','2023-06-14T06:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(111,'Tentative','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(112,'Tentative','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(113,'Tentative','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(114,'Tentative','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(115,'Tentative','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(116,'Tentative','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(117,'Tentative','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(118,'Tentative','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(119,'Tentative','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(120,'Tentative','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(121,'Tentative','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(122,'Tentative','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(123,'Tentative','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(124,'Tentative','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(125,'Tentative','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(126,'Tentative','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(127,'Tentative','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(128,'Tentative','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(129,'Tentative','2022-05-19','16:00:00.000Z','2022-05-19T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-19','15:00:00.000Z','2022-05-19T05:00:00.000+0000','Good','Allocated','True','11','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(130,'Tentative','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(131,'Tentative','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(132,'Tentative','2022-09-07','15:00:00.000Z','2022-09-07T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-07','14:00:00.000Z','2022-09-07T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(133,'Tentative','2022-09-14','15:00:00.000Z','2022-09-14T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-14','14:00:00.000Z','2022-09-14T04:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(134,'Tentative','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(135,'Tentative','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-01','09:00:00.000Z','2023-05-31T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(136,'Tentative','2023-06-08','10:00:00.000Z','2023-06-08T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-08','09:00:00.000Z','2023-06-07T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(137,'Tentative','2023-06-15','10:00:00.000Z','2023-06-15T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-15','09:00:00.000Z','2023-06-14T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(138,'Tentative','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-25','09:00:00.000Z','2023-05-24T23:00:00.000+0000','Good','Allocated','True','4','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(139,'Tentative','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(140,'Tentative','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(141,'Tentative','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(142,'Tentative','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(143,'Tentative','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(144,'Tentative','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(145,'Tentative','2023-03-09','11:00:00.000Z','2023-03-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-09','10:00:00.000Z','2023-03-08T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(146,'Tentative','2023-03-16','11:00:00.000Z','2023-03-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-16','10:00:00.000Z','2023-03-15T23:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(147,'Tentative','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(148,'Tentative','2023-06-08','11:00:00.000Z','2023-06-08T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-08','10:00:00.000Z','2023-06-08T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(149,'Tentative','2023-06-15','11:00:00.000Z','2023-06-15T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-15','10:00:00.000Z','2023-06-15T00:00:00.000+0000','Good','Allocated','True','4','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(150,'Tentative','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(151,'Tentative','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(152,'Tentative','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(153,'Tentative','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(154,'Tentative','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(155,'Tentative','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(156,'Tentative','2022-11-09','15:00:00.000Z','2022-11-09T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-09','14:00:00.000Z','2022-11-09T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(157,'Tentative','2022-11-16','15:00:00.000Z','2022-11-16T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-16','14:00:00.000Z','2022-11-16T03:00:00.000+0000','Good','Allocated','True','4','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(158,'Tentative','2023-01-25','17:00:00.000Z','2023-01-25T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-01-25','16:00:00.000Z','2023-01-25T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(159,'Tentative','2023-02-01','17:00:00.000Z','2023-02-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-01','16:00:00.000Z','2023-02-01T05:00:00.000+0000','Good','Allocated','True','4','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(160,'Tentative','2022-07-08','17:00:00.000Z','2022-07-08T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-08','16:00:00.000Z','2022-07-08T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(161,'Tentative','2022-07-15','17:00:00.000Z','2022-07-15T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-15','16:00:00.000Z','2022-07-15T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(162,'Tentative','2022-07-22','17:00:00.000Z','2022-07-22T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-22','16:00:00.000Z','2022-07-22T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(163,'Tentative','2022-07-29','17:00:00.000Z','2022-07-29T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-29','16:00:00.000Z','2022-07-29T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(164,'Tentative','2022-08-05','17:00:00.000Z','2022-08-05T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-05','16:00:00.000Z','2022-08-05T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(165,'Tentative','2022-08-12','17:00:00.000Z','2022-08-12T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-12','16:00:00.000Z','2022-08-12T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(166,'Tentative','2022-08-19','17:00:00.000Z','2022-08-19T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-19','16:00:00.000Z','2022-08-19T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(167,'Tentative','2022-08-26','17:00:00.000Z','2022-08-26T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-26','16:00:00.000Z','2022-08-26T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(168,'Tentative','2022-09-02','17:00:00.000Z','2022-09-02T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-02','16:00:00.000Z','2022-09-02T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(169,'Tentative','2022-10-21','17:00:00.000Z','2022-10-21T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-21','16:00:00.000Z','2022-10-21T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(170,'Tentative','2022-09-09','17:00:00.000Z','2022-09-09T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-09','16:00:00.000Z','2022-09-09T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(171,'Tentative','2022-10-28','17:00:00.000Z','2022-10-28T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-28','16:00:00.000Z','2022-10-28T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(172,'Tentative','2022-09-16','17:00:00.000Z','2022-09-16T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-16','16:00:00.000Z','2022-09-16T06:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(173,'Tentative','2022-09-23','17:00:00.000Z','2022-09-23T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-23','16:00:00.000Z','2022-09-23T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(174,'Tentative','2022-09-30','17:00:00.000Z','2022-09-30T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-30','16:00:00.000Z','2022-09-30T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(175,'Tentative','2022-10-07','17:00:00.000Z','2022-10-07T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-07','16:00:00.000Z','2022-10-07T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(176,'Tentative','2022-10-14','17:00:00.000Z','2022-10-14T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-14','16:00:00.000Z','2022-10-14T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(177,'Tentative','2022-11-04','17:00:00.000Z','2022-11-04T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-04','16:00:00.000Z','2022-11-04T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(178,'Tentative','2022-11-11','17:00:00.000Z','2022-11-11T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-11','16:00:00.000Z','2022-11-11T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(179,'Tentative','2022-11-18','17:00:00.000Z','2022-11-18T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-18','16:00:00.000Z','2022-11-18T05:00:00.000+0000','Good','Allocated','True','4','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(180,'Tentative','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-02','10:00:00.000Z','2022-09-02T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(181,'Tentative','2022-09-09','11:00:00.000Z','2022-09-09T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-09','10:00:00.000Z','2022-09-09T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(182,'Tentative','2022-09-16','11:00:00.000Z','2022-09-16T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-16','10:00:00.000Z','2022-09-16T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(183,'Tentative','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-23','10:00:00.000Z','2022-09-22T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(184,'Tentative','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-30','10:00:00.000Z','2022-09-29T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(185,'Tentative','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-07','10:00:00.000Z','2022-10-06T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(186,'Tentative','2022-11-11','11:00:00.000Z','2022-11-11T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-11','10:00:00.000Z','2022-11-10T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(187,'Tentative','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-04','10:00:00.000Z','2022-11-03T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(188,'Tentative','2022-11-18','11:00:00.000Z','2022-11-18T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-18','10:00:00.000Z','2022-11-17T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(189,'Tentative','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-05','10:00:00.000Z','2022-08-05T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(190,'Tentative','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-12','10:00:00.000Z','2022-08-12T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(191,'Tentative','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-19','10:00:00.000Z','2022-08-19T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(192,'Tentative','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-26','10:00:00.000Z','2022-08-26T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(193,'Tentative','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-08','10:00:00.000Z','2022-07-08T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(194,'Tentative','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-15','10:00:00.000Z','2022-07-15T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(195,'Tentative','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-22','10:00:00.000Z','2022-07-22T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(196,'Tentative','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-29','10:00:00.000Z','2022-07-29T00:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(197,'Tentative','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-14','10:00:00.000Z','2022-10-13T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(198,'Tentative','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-21','10:00:00.000Z','2022-10-20T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(199,'Tentative','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-28','10:00:00.000Z','2022-10-27T23:00:00.000+0000','Good','Allocated','True','4','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(200,'Tentative','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-17','13:00:00.000Z','2022-08-17T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(201,'Tentative','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-24','13:00:00.000Z','2022-08-24T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(202,'Tentative','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-31','13:00:00.000Z','2022-08-31T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(203,'Tentative','2022-09-07','14:00:00.000Z','2022-09-07T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-07','13:00:00.000Z','2022-09-07T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(204,'Tentative','2022-09-14','14:00:00.000Z','2022-09-14T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-14','13:00:00.000Z','2022-09-14T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(205,'Tentative','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-21','13:00:00.000Z','2022-09-21T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(206,'Tentative','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-06','13:00:00.000Z','2022-07-06T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(207,'Tentative','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-13','13:00:00.000Z','2022-07-13T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(208,'Tentative','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-20','13:00:00.000Z','2022-07-20T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(209,'Tentative','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-27','13:00:00.000Z','2022-07-27T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(210,'Tentative','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-03','13:00:00.000Z','2022-08-03T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(211,'Tentative','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-10','13:00:00.000Z','2022-08-10T03:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(212,'Tentative','2022-03-10','15:00:00.000Z','2022-03-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-10','14:00:00.000Z','2022-03-10T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(213,'Tentative','2022-03-17','15:00:00.000Z','2022-03-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-17','14:00:00.000Z','2022-03-17T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(214,'Tentative','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-24','14:00:00.000Z','2022-03-24T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(215,'Tentative','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-31','14:00:00.000Z','2022-03-31T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(216,'Tentative','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-07','14:00:00.000Z','2022-04-07T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(217,'Tentative','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-14','14:00:00.000Z','2022-04-14T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(218,'Tentative','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-21','14:00:00.000Z','2022-04-21T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(219,'Tentative','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-28','14:00:00.000Z','2022-04-28T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(220,'Tentative','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-05','14:00:00.000Z','2022-05-05T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(221,'Tentative','2022-05-19','15:00:00.000Z','2022-05-19T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-19','14:00:00.000Z','2022-05-19T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(222,'Tentative','2022-05-12','15:00:00.000Z','2022-05-12T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-12','14:00:00.000Z','2022-05-12T04:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(223,'Tentative','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-28','13:00:00.000Z','2022-09-28T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(224,'Tentative','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-05','13:00:00.000Z','2022-10-05T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(225,'Tentative','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-12','13:00:00.000Z','2022-10-12T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(226,'Tentative','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-19','13:00:00.000Z','2022-10-19T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(227,'Tentative','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-26','13:00:00.000Z','2022-10-26T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(228,'Tentative','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-02','13:00:00.000Z','2022-11-02T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(229,'Tentative','2022-11-09','14:00:00.000Z','2022-11-09T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-09','13:00:00.000Z','2022-11-09T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(230,'Tentative','2022-11-16','14:00:00.000Z','2022-11-16T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-16','13:00:00.000Z','2022-11-16T02:00:00.000+0000','Good','Allocated','True','4','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(231,'Tentative','2022-01-13','15:00:00.000Z','2022-01-13T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-13','14:00:00.000Z','2022-01-13T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(232,'Tentative','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-20','14:00:00.000Z','2022-01-20T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(233,'Tentative','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-27','14:00:00.000Z','2022-01-27T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(234,'Tentative','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-03','14:00:00.000Z','2022-02-03T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(235,'Tentative','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-10','14:00:00.000Z','2022-02-10T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(236,'Tentative','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-17','14:00:00.000Z','2022-02-17T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(237,'Tentative','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-24','14:00:00.000Z','2022-02-24T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(238,'Tentative','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-03','14:00:00.000Z','2022-03-03T03:00:00.000+0000','Good','Allocated','True','11','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(239,'Tentative','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(240,'Tentative','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(241,'Tentative','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(242,'Tentative','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(243,'Tentative','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(244,'Tentative','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(245,'Tentative','2022-03-09','11:00:00.000Z','2022-03-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-09','10:00:00.000Z','2022-03-08T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(246,'Tentative','2022-03-16','11:00:00.000Z','2022-03-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-16','10:00:00.000Z','2022-03-15T23:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(247,'Tentative','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(248,'Tentative','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(249,'Tentative','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(250,'Tentative','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(251,'Tentative','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(252,'Tentative','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(253,'Tentative','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(254,'Tentative','2022-05-11','11:00:00.000Z','2022-05-11T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-11','10:00:00.000Z','2022-05-11T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(255,'Tentative','2022-05-18','11:00:00.000Z','2022-05-18T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-18','10:00:00.000Z','2022-05-18T00:00:00.000+0000','Good','Allocated','True','4','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(256,'Tentative','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(257,'Tentative','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(258,'Tentative','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(259,'Tentative','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(260,'Tentative','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(261,'Tentative','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(262,'Tentative','2022-03-09','12:00:00.000Z','2022-03-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-09','11:00:00.000Z','2022-03-09T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(263,'Tentative','2022-03-16','12:00:00.000Z','2022-03-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-16','11:00:00.000Z','2022-03-16T00:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(264,'Tentative','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(265,'Tentative','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(266,'Tentative','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(267,'Tentative','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(268,'Tentative','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(269,'Tentative','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(270,'Tentative','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(271,'Tentative','2022-05-11','12:00:00.000Z','2022-05-11T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-11','11:00:00.000Z','2022-05-11T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(272,'Tentative','2022-05-18','12:00:00.000Z','2022-05-18T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-18','11:00:00.000Z','2022-05-18T01:00:00.000+0000','Good','Allocated','True','4','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(273,'Tentative','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-01-26','09:00:00.000Z','2022-01-25T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(274,'Tentative','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-02','09:00:00.000Z','2022-02-01T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(275,'Tentative','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-09','09:00:00.000Z','2022-02-08T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(276,'Tentative','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-16','09:00:00.000Z','2022-02-15T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(277,'Tentative','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-23','09:00:00.000Z','2022-02-22T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(278,'Tentative','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-23','09:00:00.000Z','2022-03-22T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(279,'Tentative','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-30','09:00:00.000Z','2022-03-29T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(280,'Tentative','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-06','09:00:00.000Z','2022-04-05T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(281,'Tentative','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-13','09:00:00.000Z','2022-04-12T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(282,'Tentative','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-20','09:00:00.000Z','2022-04-19T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(283,'Tentative','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-27','09:00:00.000Z','2022-04-26T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(284,'Tentative','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-04','09:00:00.000Z','2022-05-03T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(285,'Tentative','2022-05-11','10:00:00.000Z','2022-05-11T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-11','09:00:00.000Z','2022-05-10T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(286,'Tentative','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-02','09:00:00.000Z','2022-03-01T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(287,'Tentative','2022-03-09','10:00:00.000Z','2022-03-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-09','09:00:00.000Z','2022-03-08T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(288,'Tentative','2022-03-16','10:00:00.000Z','2022-03-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-16','09:00:00.000Z','2022-03-15T22:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(289,'Tentative','2022-05-18','10:00:00.000Z','2022-05-18T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-18','09:00:00.000Z','2022-05-17T23:00:00.000+0000','Good','Allocated','True','4','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(290,'Tentative','2022-04-21','17:00:00.000Z','2022-04-21T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(291,'Tentative','2022-04-28','17:00:00.000Z','2022-04-28T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(292,'Tentative','2022-05-05','17:00:00.000Z','2022-05-05T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(293,'Tentative','2022-05-12','17:00:00.000Z','2022-05-12T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-12','16:00:00.000Z','2022-05-12T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(294,'Tentative','2022-05-19','17:00:00.000Z','2022-05-19T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-19','16:00:00.000Z','2022-05-19T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(295,'Tentative','2022-01-20','17:00:00.000Z','2022-01-20T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(296,'Tentative','2022-01-27','17:00:00.000Z','2022-01-27T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(297,'Tentative','2022-02-03','17:00:00.000Z','2022-02-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(298,'Tentative','2022-02-10','17:00:00.000Z','2022-02-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(299,'Tentative','2022-02-17','17:00:00.000Z','2022-02-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(300,'Tentative','2022-02-24','17:00:00.000Z','2022-02-24T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(301,'Tentative','2022-03-03','17:00:00.000Z','2022-03-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(302,'Tentative','2022-03-10','17:00:00.000Z','2022-03-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-10','16:00:00.000Z','2022-03-10T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(303,'Tentative','2022-03-17','17:00:00.000Z','2022-03-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-17','16:00:00.000Z','2022-03-17T05:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(304,'Tentative','2022-03-24','17:00:00.000Z','2022-03-24T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(305,'Tentative','2022-03-31','17:00:00.000Z','2022-03-31T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(306,'Tentative','2022-04-07','17:00:00.000Z','2022-04-07T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(307,'Tentative','2022-04-14','17:00:00.000Z','2022-04-14T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','Good','Allocated','True','4','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(308,'Tentative','2022-04-22','10:00:00.000Z','2022-04-22T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-22','09:00:00.000Z','2022-04-21T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(309,'Tentative','2022-04-29','10:00:00.000Z','2022-04-29T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-29','09:00:00.000Z','2022-04-28T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(310,'Tentative','2022-05-06','10:00:00.000Z','2022-05-06T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-05-06','09:00:00.000Z','2022-05-05T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(311,'Tentative','2022-05-13','10:00:00.000Z','2022-05-13T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-05-13','09:00:00.000Z','2022-05-12T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(312,'Tentative','2022-01-21','10:00:00.000Z','2022-01-20T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-21','09:00:00.000Z','2022-01-20T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(313,'Tentative','2022-01-28','10:00:00.000Z','2022-01-27T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-28','09:00:00.000Z','2022-01-27T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(314,'Tentative','2022-02-04','10:00:00.000Z','2022-02-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-04','09:00:00.000Z','2022-02-03T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(315,'Tentative','2022-02-11','10:00:00.000Z','2022-02-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-11','09:00:00.000Z','2022-02-10T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(316,'Tentative','2022-02-18','10:00:00.000Z','2022-02-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-18','09:00:00.000Z','2022-02-17T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(317,'Tentative','2022-02-25','10:00:00.000Z','2022-02-24T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-25','09:00:00.000Z','2022-02-24T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(318,'Tentative','2022-03-04','10:00:00.000Z','2022-03-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-04','09:00:00.000Z','2022-03-03T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(319,'Tentative','2022-03-11','10:00:00.000Z','2022-03-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-11','09:00:00.000Z','2022-03-10T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(320,'Tentative','2022-03-18','10:00:00.000Z','2022-03-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-18','09:00:00.000Z','2022-03-17T22:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(321,'Tentative','2022-03-25','10:00:00.000Z','2022-03-25T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-25','09:00:00.000Z','2022-03-24T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(322,'Tentative','2022-04-01','10:00:00.000Z','2022-04-01T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-01','09:00:00.000Z','2022-03-31T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(323,'Tentative','2022-04-08','10:00:00.000Z','2022-04-08T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-08','09:00:00.000Z','2022-04-07T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(324,'Tentative','2022-04-15','10:00:00.000Z','2022-04-15T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-15','09:00:00.000Z','2022-04-14T23:00:00.000+0000','Good','Allocated','True','4','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(325,'Tentative','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(326,'Tentative','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(327,'Tentative','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(328,'Tentative','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(329,'Tentative','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(330,'Tentative','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(331,'Tentative','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(332,'Tentative','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(333,'Tentative','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(334,'Tentative','2022-09-09','12:00:00.000Z','2022-09-09T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-09','11:00:00.000Z','2022-09-09T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(335,'Tentative','2022-09-16','12:00:00.000Z','2022-09-16T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-16','11:00:00.000Z','2022-09-16T01:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(336,'Tentative','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(337,'Tentative','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(338,'Tentative','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(339,'Tentative','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(340,'Tentative','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(341,'Tentative','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(342,'Tentative','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(343,'Tentative','2022-11-18','12:00:00.000Z','2022-11-18T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-18','11:00:00.000Z','2022-11-18T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(344,'Tentative','2022-11-11','12:00:00.000Z','2022-11-11T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-11','11:00:00.000Z','2022-11-11T00:00:00.000+0000','Good','Allocated','True','4','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(345,'Tentative','2022-07-08','14:00:00.000Z','2022-07-08T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(346,'Tentative','2022-07-15','14:00:00.000Z','2022-07-15T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(347,'Tentative','2022-07-22','14:00:00.000Z','2022-07-22T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(348,'Tentative','2022-07-29','14:00:00.000Z','2022-07-29T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(349,'Tentative','2022-08-05','14:00:00.000Z','2022-08-05T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(350,'Tentative','2022-08-19','14:00:00.000Z','2022-08-19T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(351,'Tentative','2022-08-26','14:00:00.000Z','2022-08-26T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(352,'Tentative','2022-09-02','14:00:00.000Z','2022-09-02T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(353,'Tentative','2022-09-09','14:00:00.000Z','2022-09-09T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-09','13:00:00.000Z','2022-09-09T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(354,'Tentative','2022-09-16','14:00:00.000Z','2022-09-16T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-16','13:00:00.000Z','2022-09-16T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(355,'Tentative','2022-09-23','14:00:00.000Z','2022-09-23T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(356,'Tentative','2022-08-12','14:00:00.000Z','2022-08-12T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(357,'Tentative','2022-09-30','14:00:00.000Z','2022-09-30T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(358,'Tentative','2022-10-07','14:00:00.000Z','2022-10-07T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(359,'Tentative','2022-10-14','14:00:00.000Z','2022-10-14T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(360,'Tentative','2022-10-21','14:00:00.000Z','2022-10-21T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(361,'Tentative','2022-10-28','14:00:00.000Z','2022-10-28T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(362,'Tentative','2022-11-04','14:00:00.000Z','2022-11-04T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(363,'Tentative','2022-11-11','14:00:00.000Z','2022-11-11T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-11','13:00:00.000Z','2022-11-11T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(364,'Tentative','2022-11-18','14:00:00.000Z','2022-11-18T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-18','13:00:00.000Z','2022-11-18T02:00:00.000+0000','Good','Allocated','True','4','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(365,'Tentative','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(366,'Tentative','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(367,'Tentative','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(368,'Tentative','2022-09-09','13:00:00.000Z','2022-09-09T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-09','12:00:00.000Z','2022-09-09T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(369,'Tentative','2022-09-16','13:00:00.000Z','2022-09-16T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-16','12:00:00.000Z','2022-09-16T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(370,'Tentative','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(371,'Tentative','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(372,'Tentative','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(373,'Tentative','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(374,'Tentative','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(375,'Tentative','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(376,'Tentative','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(377,'Tentative','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(378,'Tentative','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(379,'Tentative','2022-11-11','13:00:00.000Z','2022-11-11T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-11','12:00:00.000Z','2022-11-11T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(380,'Tentative','2022-11-18','13:00:00.000Z','2022-11-18T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-18','12:00:00.000Z','2022-11-18T01:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(381,'Tentative','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(382,'Tentative','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(383,'Tentative','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(384,'Tentative','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','Good','Allocated','True','4','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(385,'Tentative','2023-11-02','13:00:00.000Z','2023-11-02T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-02','12:00:00.000Z','2023-11-02T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(386,'Tentative','2023-11-09','13:00:00.000Z','2023-11-09T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-09','12:00:00.000Z','2023-11-09T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(387,'Tentative','2023-11-16','13:00:00.000Z','2023-11-16T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-16','12:00:00.000Z','2023-11-16T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(388,'Tentative','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-03','14:00:00.000Z','2023-11-03T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(389,'Tentative','2023-11-10','15:00:00.000Z','2023-11-10T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-10','14:00:00.000Z','2023-11-10T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(390,'Tentative','2023-11-17','15:00:00.000Z','2023-11-17T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-17','14:00:00.000Z','2023-11-17T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(391,'Tentative','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-11','14:00:00.000Z','2023-08-11T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(392,'Tentative','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-18','14:00:00.000Z','2023-08-18T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(393,'Tentative','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-25','14:00:00.000Z','2023-08-25T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(394,'Tentative','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-01','14:00:00.000Z','2023-09-01T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(395,'Tentative','2023-09-08','15:00:00.000Z','2023-09-08T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-08','14:00:00.000Z','2023-09-08T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(396,'Tentative','2023-09-15','15:00:00.000Z','2023-09-15T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-15','14:00:00.000Z','2023-09-15T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(397,'Tentative','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-22','14:00:00.000Z','2023-09-22T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(398,'Tentative','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-29','14:00:00.000Z','2023-09-29T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(399,'Tentative','2023-08-31','13:00:00.000Z','2023-08-31T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-31','12:00:00.000Z','2023-08-31T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(400,'Tentative','2023-09-07','13:00:00.000Z','2023-09-07T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-07','12:00:00.000Z','2023-09-07T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(401,'Tentative','2023-09-14','13:00:00.000Z','2023-09-14T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-14','12:00:00.000Z','2023-09-14T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(402,'Tentative','2023-09-21','13:00:00.000Z','2023-09-21T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-21','12:00:00.000Z','2023-09-21T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(403,'Tentative','2023-07-06','13:00:00.000Z','2023-07-06T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-06','12:00:00.000Z','2023-07-06T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(404,'Tentative','2023-07-13','13:00:00.000Z','2023-07-13T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-13','12:00:00.000Z','2023-07-13T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(405,'Tentative','2023-07-20','13:00:00.000Z','2023-07-20T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-20','12:00:00.000Z','2023-07-20T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(406,'Tentative','2023-07-27','13:00:00.000Z','2023-07-27T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-27','12:00:00.000Z','2023-07-27T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(407,'Tentative','2023-08-03','13:00:00.000Z','2023-08-03T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-03','12:00:00.000Z','2023-08-03T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(408,'Tentative','2023-08-10','13:00:00.000Z','2023-08-10T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-10','12:00:00.000Z','2023-08-10T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(409,'Tentative','2023-08-17','13:00:00.000Z','2023-08-17T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-17','12:00:00.000Z','2023-08-17T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(410,'Tentative','2023-08-24','13:00:00.000Z','2023-08-24T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-24','12:00:00.000Z','2023-08-24T02:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(411,'Tentative','2023-10-12','13:00:00.000Z','2023-10-12T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-12','12:00:00.000Z','2023-10-12T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(412,'Tentative','2023-09-28','13:00:00.000Z','2023-09-28T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-28','12:00:00.000Z','2023-09-28T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(413,'Tentative','2023-10-05','13:00:00.000Z','2023-10-05T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-05','12:00:00.000Z','2023-10-05T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(414,'Tentative','2023-10-19','13:00:00.000Z','2023-10-19T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-19','12:00:00.000Z','2023-10-19T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(415,'Tentative','2023-10-26','13:00:00.000Z','2023-10-26T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-26','12:00:00.000Z','2023-10-26T01:00:00.000+0000','Good','Allocated','True','4','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(416,'Tentative','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-07','14:00:00.000Z','2023-07-07T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(417,'Tentative','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-14','14:00:00.000Z','2023-07-14T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(418,'Tentative','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-06','14:00:00.000Z','2023-10-06T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(419,'Tentative','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-13','14:00:00.000Z','2023-10-13T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(420,'Tentative','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-20','14:00:00.000Z','2023-10-20T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(421,'Tentative','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-27','14:00:00.000Z','2023-10-27T03:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(422,'Tentative','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-21','14:00:00.000Z','2023-07-21T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(423,'Tentative','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-28','14:00:00.000Z','2023-07-28T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(424,'Tentative','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-04','14:00:00.000Z','2023-08-04T04:00:00.000+0000','Good','Allocated','False','4','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(425,'Tentative','2023-09-01','16:00:00.000Z','2023-09-01T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(426,'Tentative','2023-09-08','16:00:00.000Z','2023-09-08T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-08','15:00:00.000Z','2023-09-08T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(427,'Tentative','2023-09-15','16:00:00.000Z','2023-09-15T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-15','15:00:00.000Z','2023-09-15T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(428,'Tentative','2023-07-07','16:00:00.000Z','2023-07-07T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(429,'Tentative','2023-07-14','16:00:00.000Z','2023-07-14T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(430,'Tentative','2023-07-21','16:00:00.000Z','2023-07-21T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(431,'Tentative','2023-07-28','16:00:00.000Z','2023-07-28T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(432,'Tentative','2023-08-04','16:00:00.000Z','2023-08-04T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(433,'Tentative','2023-08-11','16:00:00.000Z','2023-08-11T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(434,'Tentative','2023-08-18','16:00:00.000Z','2023-08-18T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(435,'Tentative','2023-08-25','16:00:00.000Z','2023-08-25T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(436,'Tentative','2023-09-29','16:00:00.000Z','2023-09-29T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(437,'Tentative','2023-10-06','16:00:00.000Z','2023-10-06T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(438,'Tentative','2023-10-13','16:00:00.000Z','2023-10-13T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(439,'Tentative','2023-10-20','16:00:00.000Z','2023-10-20T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(440,'Tentative','2023-10-27','16:00:00.000Z','2023-10-27T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(441,'Tentative','2023-11-03','16:00:00.000Z','2023-11-03T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(442,'Tentative','2023-11-10','16:00:00.000Z','2023-11-10T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-10','15:00:00.000Z','2023-11-10T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(443,'Tentative','2023-11-17','16:00:00.000Z','2023-11-17T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-17','15:00:00.000Z','2023-11-17T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(444,'Tentative','2023-09-22','16:00:00.000Z','2023-09-22T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','Good','Allocated','False','4','23');
INSERT INTO "rio_ed__Allocation__c" VALUES(445,'Tentative','2022-01-23','10:00:00.000Z','2022-01-22T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-23','09:00:00.000Z','2022-01-22T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(446,'Tentative','2022-01-30','10:00:00.000Z','2022-01-29T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-30','09:00:00.000Z','2022-01-29T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(447,'Tentative','2022-02-06','10:00:00.000Z','2022-02-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-06','09:00:00.000Z','2022-02-05T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(448,'Tentative','2022-02-13','10:00:00.000Z','2022-02-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-13','09:00:00.000Z','2022-02-12T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(449,'Tentative','2022-02-20','10:00:00.000Z','2022-02-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-20','09:00:00.000Z','2022-02-19T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(450,'Tentative','2022-02-27','10:00:00.000Z','2022-02-26T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-27','09:00:00.000Z','2022-02-26T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(451,'Tentative','2022-03-06','10:00:00.000Z','2022-03-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-06','09:00:00.000Z','2022-03-05T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(452,'Tentative','2022-03-13','10:00:00.000Z','2022-03-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-13','09:00:00.000Z','2022-03-12T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(453,'Tentative','2022-03-20','10:00:00.000Z','2022-03-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-20','09:00:00.000Z','2022-03-19T22:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(454,'Tentative','2022-03-27','10:00:00.000Z','2022-03-27T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-27','09:00:00.000Z','2022-03-26T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(455,'Tentative','2022-04-03','10:00:00.000Z','2022-04-03T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-03','09:00:00.000Z','2022-04-02T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(456,'Tentative','2022-04-10','10:00:00.000Z','2022-04-10T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-10','09:00:00.000Z','2022-04-09T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(457,'Tentative','2022-04-17','10:00:00.000Z','2022-04-17T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-17','09:00:00.000Z','2022-04-16T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(458,'Tentative','2022-04-24','10:00:00.000Z','2022-04-24T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-24','09:00:00.000Z','2022-04-23T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(459,'Tentative','2022-05-01','10:00:00.000Z','2022-05-01T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-01','09:00:00.000Z','2022-04-30T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(460,'Tentative','2022-05-08','10:00:00.000Z','2022-05-08T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-08','09:00:00.000Z','2022-05-07T23:00:00.000+0000','Good','Allocated','True','4','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(461,'Tentative','2022-05-15','10:00:00.000Z','2022-05-15T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-15','09:00:00.000Z','2022-05-14T23:00:00.000+0000','Good','Allocated','True','4','25');
CREATE TABLE "rio_ed__Appointment_Availability__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(1,'1','25','');
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(2,'1','','12');
CREATE TABLE "rio_ed__Appointment_Time__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"rio_ed__Appointment_Duration__c" VARCHAR(255), 
	"rio_ed__Day_of_the_Week__c" VARCHAR(255), 
	"rio_ed__End_Time__c" VARCHAR(255), 
	"rio_ed__Start_Time__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Campus__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(1,'Available Time','True','60.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','4');
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(2,'Available Time','True','60.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','6');
CREATE TABLE "rio_ed__Appointment_Type__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Appointment_Type__c" VALUES(1,'Academic Counsel','True','True','False','Academic Counsel','None','False','False','True','None');
CREATE TABLE "rio_ed__Assigned_Location__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Location__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Assigned_Location__c" VALUES(1,'6','25');
CREATE TABLE "rio_ed__Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Session_Date__c" VARCHAR(255), 
	"rio_ed__Booking__c" VARCHAR(255), 
	"rio_ed__Session_Connection__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Attendance__c" VALUES(1,'2022-03-17','213','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(2,'2022-03-24','214','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(3,'2022-03-31','215','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(4,'2022-04-07','216','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(5,'2022-04-14','217','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(6,'2022-04-21','218','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(7,'2022-04-28','219','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(8,'2022-05-05','220','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(9,'2022-05-12','222','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(10,'2022-05-19','221','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(11,'2022-01-27','233','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(12,'2022-02-03','234','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(13,'2022-02-10','235','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(14,'2022-02-17','236','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(15,'2022-02-24','237','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(16,'2022-03-03','238','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(17,'2022-03-10','212','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(18,'2022-01-13','231','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(19,'2022-01-20','232','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(20,'2022-05-11','285','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(21,'2022-05-18','289','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(22,'2022-01-26','273','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(23,'2022-02-02','274','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(24,'2022-02-09','275','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(25,'2022-02-16','276','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(26,'2022-02-23','277','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(27,'2022-03-02','286','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(28,'2022-03-09','287','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(29,'2022-03-16','288','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(30,'2022-03-23','278','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(31,'2022-03-30','279','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(32,'2022-04-06','280','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(33,'2022-04-13','281','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(34,'2022-04-20','282','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(35,'2022-04-27','283','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(36,'2022-05-04','284','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(37,'2022-07-06','206','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(38,'2022-07-13','207','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(39,'2022-07-20','208','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(40,'2022-07-27','209','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(41,'2022-08-03','210','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(42,'2022-08-10','211','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(43,'2022-08-17','200','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(44,'2022-08-24','201','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(45,'2022-08-31','202','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(46,'2022-09-07','203','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(47,'2022-09-14','204','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(48,'2022-09-21','205','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(49,'2022-09-28','223','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(50,'2022-10-05','224','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(51,'2022-10-12','225','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(52,'2022-10-26','227','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(53,'2022-11-02','228','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(54,'2022-11-09','229','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(55,'2022-11-16','230','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(56,'2023-01-25','158','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(57,'2023-02-01','159','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(58,'2023-02-08','75','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(59,'2023-02-15','76','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(60,'2023-02-22','77','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(61,'2023-03-01','78','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(62,'2023-03-08','79','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(63,'2023-03-15','80','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(64,'2022-10-19','226','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(65,'2023-03-22','81','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(66,'2023-03-29','87','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(67,'2023-04-05','82','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(68,'2023-04-12','83','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(69,'2023-04-19','84','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(70,'2023-04-26','85','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(71,'2023-05-03','86','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(72,'2023-05-10','88','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(73,'2023-05-17','89','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(74,'2023-05-24','90','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(75,'2023-05-31','91','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(76,'2023-06-07','109','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(77,'2023-06-14','110','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(78,'2022-02-10','62','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(79,'2022-02-17','63','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(80,'2022-03-31','122','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(81,'2022-02-24','64','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(82,'2022-03-03','65','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(83,'2022-03-10','66','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(84,'2022-03-17','67','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(85,'2022-03-24','121','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(86,'2022-04-07','123','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(87,'2022-04-14','69','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(88,'2022-04-21','70','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(89,'2022-04-28','68','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(90,'2022-09-23','355','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(91,'2022-09-30','357','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(92,'2022-10-07','358','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(93,'2022-10-14','359','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(94,'2022-10-21','360','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(95,'2022-10-28','361','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(96,'2022-11-04','362','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(97,'2022-11-11','363','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(98,'2022-09-16','354','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(99,'2022-11-18','364','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(100,'2022-05-05','71','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(101,'2022-05-12','72','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(102,'2022-05-19','129','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(103,'2022-07-08','345','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(104,'2022-07-15','346','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(105,'2023-01-26','18','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(106,'2023-02-02','19','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(107,'2023-02-09','20','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(108,'2023-02-16','21','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(109,'2023-02-23','22','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(110,'2023-03-02','23','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(111,'2023-03-09','24','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(112,'2023-03-16','25','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(113,'2023-03-23','26','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(114,'2023-03-30','27','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(115,'2023-04-06','28','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(116,'2023-04-13','29','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(117,'2023-04-20','30','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(118,'2023-04-27','31','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(119,'2023-05-04','32','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(120,'2023-05-11','33','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(121,'2023-05-18','34','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(122,'2023-05-25','35','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(123,'2023-06-01','36','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(124,'2023-06-08','37','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(125,'2023-06-15','38','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(126,'2022-01-20','59','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(127,'2022-01-27','60','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(128,'2022-02-03','61','12');
INSERT INTO "rio_ed__Attendance__c" VALUES(129,'2022-07-29','348','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(130,'2022-08-05','349','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(131,'2022-08-12','356','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(132,'2022-07-22','347','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(133,'2022-08-19','350','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(134,'2022-08-26','351','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(135,'2022-09-02','352','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(136,'2022-09-09','353','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(137,'2022-04-27','252','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(138,'2022-05-04','253','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(139,'2022-05-11','254','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(140,'2022-05-18','255','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(141,'2022-01-26','256','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(142,'2022-02-02','257','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(143,'2022-02-09','258','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(144,'2022-02-16','259','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(145,'2022-02-23','260','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(146,'2022-03-16','246','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(147,'2022-03-23','247','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(148,'2022-03-30','248','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(149,'2022-04-06','249','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(150,'2022-04-13','250','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(151,'2022-04-20','251','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(152,'2022-07-08','381','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(153,'2022-07-15','382','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(154,'2022-07-22','383','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(155,'2022-07-29','384','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(156,'2022-08-05','365','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(157,'2022-08-12','366','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(158,'2022-08-19','367','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(159,'2022-08-26','372','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(160,'2022-09-02','373','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(161,'2022-09-09','368','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(162,'2022-09-16','369','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(163,'2022-09-23','370','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(164,'2022-09-30','371','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(165,'2022-03-02','261','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(166,'2022-03-09','262','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(167,'2022-03-16','263','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(168,'2022-03-23','264','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(169,'2022-03-30','265','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(170,'2022-04-06','266','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(171,'2022-04-13','267','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(172,'2022-04-20','268','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(173,'2022-04-27','269','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(174,'2022-05-04','270','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(175,'2022-05-11','271','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(176,'2022-05-18','272','14');
INSERT INTO "rio_ed__Attendance__c" VALUES(177,'2022-07-06','73','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(178,'2022-07-13','74','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(179,'2022-07-20','127','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(180,'2022-07-27','124','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(181,'2022-08-03','125','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(182,'2022-08-10','126','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(183,'2022-08-17','128','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(184,'2022-08-24','130','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(185,'2022-08-31','131','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(186,'2022-09-07','132','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(187,'2022-09-14','133','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(188,'2022-09-21','134','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(189,'2022-09-28','150','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(190,'2022-10-05','151','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(191,'2022-10-12','152','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(192,'2022-10-19','153','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(193,'2022-10-26','154','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(194,'2022-11-02','155','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(195,'2022-11-09','156','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(196,'2022-11-16','157','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(197,'2022-07-06','42','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(198,'2022-07-13','43','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(199,'2022-07-20','39','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(200,'2022-07-27','40','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(201,'2022-08-03','41','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(202,'2022-10-28','377','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(203,'2022-11-04','378','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(204,'2022-11-11','379','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(205,'2022-11-18','380','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(206,'2022-10-07','374','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(207,'2022-10-14','375','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(208,'2022-10-21','376','15');
INSERT INTO "rio_ed__Attendance__c" VALUES(209,'2022-08-10','44','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(210,'2022-08-17','45','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(211,'2022-08-24','46','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(212,'2022-08-31','47','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(213,'2022-09-07','48','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(214,'2022-09-14','49','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(215,'2022-09-21','50','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(216,'2022-09-28','52','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(217,'2022-10-05','51','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(218,'2022-10-12','53','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(219,'2022-10-19','54','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(220,'2022-10-26','55','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(221,'2022-11-02','56','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(222,'2022-11-09','57','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(223,'2022-11-16','58','17');
INSERT INTO "rio_ed__Attendance__c" VALUES(224,'2022-01-21','312','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(225,'2022-01-28','313','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(226,'2022-02-04','314','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(227,'2022-02-11','315','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(228,'2022-02-18','316','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(229,'2022-02-25','317','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(230,'2022-03-04','318','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(231,'2022-03-11','319','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(232,'2022-03-18','320','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(233,'2022-03-25','321','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(234,'2022-04-01','322','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(235,'2022-04-08','323','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(236,'2022-04-15','324','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(237,'2022-04-22','308','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(238,'2022-04-29','309','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(239,'2022-05-06','310','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(240,'2022-05-13','311','18');
INSERT INTO "rio_ed__Attendance__c" VALUES(241,'2022-01-26','239','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(242,'2022-02-02','240','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(243,'2022-02-09','241','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(244,'2022-02-16','242','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(245,'2022-02-23','243','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(246,'2022-03-02','244','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(247,'2022-03-09','245','19');
INSERT INTO "rio_ed__Attendance__c" VALUES(248,'2023-01-26','97','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(249,'2023-02-02','98','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(250,'2023-02-09','92','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(251,'2023-02-16','93','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(252,'2023-02-23','94','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(253,'2023-03-02','95','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(254,'2023-03-09','96','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(255,'2023-03-16','99','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(256,'2023-03-23','100','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(257,'2023-03-30','101','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(258,'2023-04-06','102','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(259,'2023-04-13','103','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(260,'2023-04-20','104','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(261,'2023-04-27','105','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(262,'2023-05-04','106','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(263,'2023-05-11','107','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(264,'2023-05-18','108','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(265,'2023-05-25','138','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(266,'2023-06-01','135','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(267,'2023-06-08','136','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(268,'2023-06-15','137','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(269,'2022-01-20','295','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(270,'2022-01-27','296','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(271,'2022-02-03','297','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(272,'2022-02-10','298','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(273,'2022-02-17','299','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(274,'2022-02-24','300','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(275,'2022-03-03','301','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(276,'2022-03-10','302','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(277,'2022-03-17','303','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(278,'2022-03-24','304','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(279,'2022-03-31','305','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(280,'2022-04-07','306','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(281,'2022-04-14','307','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(282,'2022-04-21','290','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(283,'2022-04-28','291','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(284,'2022-05-05','292','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(285,'2022-05-12','293','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(286,'2022-05-19','294','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(287,'2022-07-08','193','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(288,'2022-07-15','194','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(289,'2022-07-22','195','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(290,'2022-08-12','190','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(291,'2022-08-19','191','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(292,'2022-08-26','192','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(293,'2022-09-02','180','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(294,'2022-09-09','181','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(295,'2022-09-16','182','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(296,'2022-09-23','183','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(297,'2022-07-29','196','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(298,'2022-08-05','189','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(299,'2022-09-30','184','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(300,'2022-10-07','185','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(301,'2022-10-14','197','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(302,'2022-10-21','198','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(303,'2022-10-28','199','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(304,'2022-11-04','187','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(305,'2022-11-11','186','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(306,'2023-01-26','139','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(307,'2023-02-02','140','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(308,'2023-02-09','141','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(309,'2022-11-18','188','22');
INSERT INTO "rio_ed__Attendance__c" VALUES(310,'2023-02-16','142','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(311,'2023-02-23','143','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(312,'2023-03-02','144','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(313,'2023-03-09','145','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(314,'2023-03-16','146','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(315,'2023-03-23','147','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(316,'2023-03-30','111','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(317,'2023-04-06','112','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(318,'2023-04-13','113','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(319,'2023-04-20','114','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(320,'2023-04-27','115','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(321,'2023-05-04','116','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(322,'2023-05-11','117','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(323,'2023-05-18','118','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(324,'2023-05-25','119','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(325,'2023-06-01','120','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(326,'2023-06-15','149','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(327,'2023-06-08','148','23');
INSERT INTO "rio_ed__Attendance__c" VALUES(328,'2022-10-21','169','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(329,'2022-10-28','171','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(330,'2022-11-04','177','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(331,'2022-11-11','178','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(332,'2022-11-18','179','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(333,'2022-07-08','329','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(334,'2022-07-15','325','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(335,'2022-07-22','326','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(336,'2022-07-29','327','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(337,'2022-08-05','328','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(338,'2022-08-12','330','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(339,'2022-08-19','331','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(340,'2022-08-26','332','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(341,'2022-09-02','333','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(342,'2022-09-09','334','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(343,'2022-09-16','335','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(344,'2022-09-23','336','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(345,'2022-09-30','337','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(346,'2022-10-07','338','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(347,'2022-10-14','339','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(348,'2022-08-19','166','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(349,'2022-08-26','167','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(350,'2022-09-02','168','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(351,'2022-09-09','170','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(352,'2022-09-16','172','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(353,'2022-09-23','173','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(354,'2022-09-30','174','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(355,'2022-10-07','175','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(356,'2022-10-21','340','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(357,'2022-10-28','341','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(358,'2022-11-04','342','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(359,'2022-11-11','344','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(360,'2022-11-18','343','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(361,'2022-10-14','176','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(362,'2022-01-26','1','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(363,'2022-02-02','2','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(364,'2022-02-09','3','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(365,'2022-02-16','4','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(366,'2022-02-23','5','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(367,'2022-03-02','6','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(368,'2022-03-09','7','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(369,'2022-03-16','8','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(370,'2022-03-23','9','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(371,'2022-03-30','10','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(372,'2022-04-06','11','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(373,'2022-04-13','12','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(374,'2022-04-20','13','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(375,'2022-04-27','14','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(376,'2022-05-04','15','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(377,'2022-05-11','16','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(378,'2022-05-18','17','25');
INSERT INTO "rio_ed__Attendance__c" VALUES(379,'2022-07-08','160','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(380,'2022-07-15','161','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(381,'2022-07-22','162','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(382,'2022-07-29','163','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(383,'2022-08-05','164','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(384,'2022-08-12','165','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(385,'2023-07-06','403','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(386,'2023-07-13','404','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(387,'2023-07-20','405','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(388,'2023-07-27','406','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(389,'2023-08-03','407','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(390,'2023-08-10','408','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(391,'2023-08-17','409','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(392,'2023-08-24','410','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(393,'2023-08-31','399','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(394,'2023-09-07','400','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(395,'2023-09-14','401','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(396,'2023-09-21','402','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(397,'2023-10-05','413','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(398,'2023-10-12','411','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(399,'2023-10-19','414','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(400,'2023-10-26','415','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(401,'2023-11-02','385','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(402,'2023-11-09','386','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(403,'2023-11-16','387','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(404,'2023-09-28','412','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(405,'2022-01-23','445','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(406,'2022-01-30','446','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(407,'2022-02-06','447','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(408,'2022-02-13','448','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(409,'2022-02-20','449','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(410,'2022-02-27','450','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(411,'2022-03-06','451','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(412,'2022-03-13','452','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(413,'2022-03-20','453','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(414,'2022-03-27','454','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(415,'2022-04-03','455','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(416,'2022-04-10','456','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(417,'2022-04-17','457','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(418,'2022-04-24','458','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(419,'2022-05-01','459','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(420,'2022-05-08','460','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(421,'2022-05-15','461','30');
CREATE TABLE "rio_ed__Availability_Time__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Availability_Time__c" VALUES(1,'All Time','True','Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;Sunday','23:45:00.000Z','','00:00:00.000Z','','25');
CREATE TABLE "rio_ed__Contact_Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Primary_Contact__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(1,'True','Tentative','25');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(2,'True','Tentative','28');
CREATE TABLE "rio_ed__Course_Connection_Requirement__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Requirement_ID__c" VARCHAR(255), 
	"rio_ed__Requirement_Met__c" VARCHAR(255), 
	"rio_ed__Requirement_Type__c" VARCHAR(255), 
	"rio_ed__Course_Connection__c" VARCHAR(255), 
	"rio_ed__Related_Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(1,'ICT112 Pre-Requisite','A','True','Pre-Requisite','35','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(2,'ICT112 Pre-Requisite','A','False','Pre-Requisite','74','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(3,'ICT112 Pre-Requisite','A','False','Pre-Requisite','90','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(4,'ICT112 Pre-Requisite','A','False','Pre-Requisite','98','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(5,'ICT112 Pre-Requisite','A','False','Pre-Requisite','110','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(6,'ICT112 Pre-Requisite','A','False','Pre-Requisite','122','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(7,'ICT112 Pre-Requisite','A','False','Pre-Requisite','134','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(8,'ICT112 Pre-Requisite','A','False','Pre-Requisite','146','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(9,'ICT112 Pre-Requisite','A','False','Pre-Requisite','158','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(10,'ICT112 Pre-Requisite','A','False','Pre-Requisite','170','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(11,'ICT112 Pre-Requisite','A','False','Pre-Requisite','182','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(12,'ICT112 Pre-Requisite','A','False','Pre-Requisite','194','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(13,'ICT112 Pre-Requisite','A','False','Pre-Requisite','205','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(14,'ICT112 Pre-Requisite','A','False','Pre-Requisite','217','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(15,'ICT112 Pre-Requisite','A','False','Pre-Requisite','229','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(16,'ICT112 Pre-Requisite','A','False','Pre-Requisite','242','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(17,'ICT112 Pre-Requisite','A','False','Pre-Requisite','254','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(18,'ICT112 Pre-Requisite','A','False','Pre-Requisite','266','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(19,'ICT112 Pre-Requisite','A','False','Pre-Requisite','278','10');
CREATE TABLE "rio_ed__Discipline_Requirement__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Requirement__c" VARCHAR(255), 
	"rio_ed__Parent__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	"rio_ed__Program_Discipline__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(1,'Major Group A','0125j000000HUlzAAG','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(2,'Major Group B','0125j000000HUlzAAG','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(3,'ICT112','0125j000000HUlyAAG','','Mandatory','2','44','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(4,'BUS101','0125j000000HUlyAAG','','Mandatory','1','34','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(5,'BUS102','0125j000000HUlyAAG','','Optional','1','35','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(6,'ICT115','0125j000000HUlyAAG','','Optional','2','47','1');
CREATE TABLE "rio_ed__Discipline_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0125j000000HUlyAAG','Course');
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0125j000000HUlzAAG','Group');
CREATE TABLE "rio_ed__Fee_Line__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Fee_Line__c" VALUES(1,'2022-01-20','','1000.0','Self Paid','','Self Paid','1','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(2,'2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','42','3','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(3,'2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','33','3','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(4,'2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','44','3','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(5,'2021-12-20','2022-01-09','1000.0','Self Paid','','Self Paid','40','3','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(6,'2021-12-20','','1000.0','Self Paid','','Self Paid','79','3','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(7,'2022-01-20','','1000.0','Self Paid','','Self Paid','83','3','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(8,'2022-01-20','','1000.0','Self Paid','','Self Paid','95','3','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(9,'2022-01-20','','1000.0','Self Paid','','Self Paid','88','3','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(10,'2021-12-20','','1000.0','Self Paid','','Self Paid','85','3','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(11,'2022-01-20','','1000.0','Self Paid','','Self Paid','87','3','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(12,'2022-01-20','','1000.0','Self Paid','','Self Paid','81','3','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(13,'2022-01-20','','1000.0','Self Paid','','Self Paid','72','3','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(14,'2021-12-20','','1000.0','Self Paid','','Self Paid','115','3','6');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(15,'2021-12-20','','1000.0','Self Paid','','Self Paid','151','3','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(16,'2021-12-20','','1000.0','Self Paid','','Self Paid','127','3','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(17,'2021-12-20','','1000.0','Self Paid','','Self Paid','175','3','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(18,'2021-12-20','','1000.0','Self Paid','','Self Paid','210','3','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(19,'2021-12-20','','1000.0','Self Paid','','Self Paid','187','3','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(20,'2021-12-20','','1000.0','Self Paid','','Self Paid','139','3','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(21,'2021-12-20','','1000.0','Self Paid','','Self Paid','234','3','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(22,'2021-12-20','','1000.0','Self Paid','','Self Paid','163','3','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(23,'2021-12-20','','1000.0','Self Paid','','Self Paid','199','3','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(24,'2021-12-20','','1000.0','Self Paid','','Self Paid','222','3','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(25,'2021-12-20','','1000.0','Self Paid','','Self Paid','247','3','17');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(26,'2021-12-20','','1000.0','Self Paid','','Self Paid','259','3','18');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(27,'2021-12-20','','1000.0','Self Paid','','Self Paid','271','3','19');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(28,'2022-01-20','','1000.0','Self Paid','','Self Paid','2','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(29,'2022-01-20','','1000.0','Self Paid','','Self Paid','5','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(30,'2022-01-20','','1000.0','Self Paid','','Self Paid','6','3','1');
CREATE TABLE "rio_ed__Fee_Schedule_Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Fee_Schedule__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(1,'1','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(2,'1','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(3,'1','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(4,'1','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(5,'2','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(6,'2','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(7,'2','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(8,'2','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(9,'6','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(10,'5','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(11,'4','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(12,'3','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(13,'3','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(14,'4','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(15,'4','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(16,'3','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(17,'3','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(18,'5','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(19,'6','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(20,'6','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(21,'4','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(22,'5','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(23,'5','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(24,'6','5');
CREATE TABLE "rio_ed__Fee_Schedule__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(1,'Default','False','False','1000.0','1000.0','2032-01-20','Course','2022-01-20','False','Draft','2');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(2,'Discountable Default','False','False','1000.0','1000.0','2032-01-20','','2022-01-20','False','','3');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(3,'Default','False','False','2000.0','2000.0','2032-01-20','Term','2022-01-20','False','Draft','1');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(4,'Default','False','False','2500.0','2500.0','2032-01-20','Program','2022-01-20','False','Draft','4');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(5,'Default','False','False','500.0','500.0','2032-01-20','Application','2022-01-20','False','Draft','6');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(6,'Default','False','False','1000.0','1000.0','2032-01-20','Deposit','2022-01-20','False','Draft','5');
CREATE TABLE "rio_ed__Fee__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Fee_Unit__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee__c" VALUES(1,'Standard Term Fee','Tuition','Term');
INSERT INTO "rio_ed__Fee__c" VALUES(2,'Standard Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(3,'Discountable Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(4,'Standard Program Fee','Tuition','Program');
INSERT INTO "rio_ed__Fee__c" VALUES(5,'Standard Deposit Fee','Deposit','Deposit');
INSERT INTO "rio_ed__Fee__c" VALUES(6,'Standard Application Fee','Application','Application');
CREATE TABLE "rio_ed__Funding__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Funding__c" VALUES(1,'Standard Funding (Scholarship)','','','False','Scholarship','100.0','250.0','Active','False','500.0');
INSERT INTO "rio_ed__Funding__c" VALUES(2,'Standard Funding (Sponsor)','','','False','Sponsor','50.0','75.0','Active','False','250.0');
INSERT INTO "rio_ed__Funding__c" VALUES(3,'Standard Funding (Discount %)','','10.0','False','Discount %','','','Active','False','');
INSERT INTO "rio_ed__Funding__c" VALUES(4,'Standard Funding (Discount Amount)','100.0','','False','Discount','','','Active','False','');
CREATE TABLE "rio_ed__Grade_Criteria__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(1,'ICT112 Assignment 2','2.0','30.0','10');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(2,'ICT112 Final Exam','3.0','50.0','10');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(3,'ICT112 Assignment 1','1.0','20.0','10');
CREATE TABLE "rio_ed__Grade_Setting__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(1,'RIOSOB-HD','False','7.0','91-100','Pass','University Department','0015j00000EQs5IAAT-HD - High Distinction','Higher Range','HD - High Distinction','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(2,'RIOSOB-D','False','6.0','81-90','Pass','University Department','0015j00000EQs5IAAT-D - Distinction','Higher Range','D - Distinction','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(3,'RIOSOB-FA','True','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FA - Fail Absent','Higher Range','FA - Fail Absent','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(4,'RIOSOB-FL','False','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FL - Fail','Higher Range','FL - Fail','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(5,'RIOSOB-CR','False','5.0','61-80','Pass','University Department','0015j00000EQs5IAAT-CR - Credit','Higher Range','CR - Credit','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(6,'RIOSOB-PS','False','4.0','50-60','Pass','University Department','0015j00000EQs5IAAT-PS - Pass','Higher Range','PS - Pass','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(7,'RIOUNI-FL','False','0.0','0 - 49','Fail','Educational Institution','0015j00000EQs58AAD-FL - Fail','Higher Range','FL - Fail','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(8,'RIOUNI-D','False','6.0','75 - 84','Pass','Educational Institution','0015j00000EQs58AAD-D - Distinction','Higher Range','D - Distinction','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(9,'RIOUNI-CR','False','5.0','65 - 74','Pass','Educational Institution','0015j00000EQs58AAD-CR - Credit','Higher Range','CR - Credit','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(10,'RIOUNI-PS','False','4.0','50 - 64','Pass','Educational Institution','0015j00000EQs58AAD-PS - Pass','Higher Range','PS - Pass','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(11,'RIOUNI-HD','False','7.0','85 - 100','Pass','Educational Institution','0015j00000EQs58AAD-HD - High Distinction','Higher Range','HD - High Distinction','5');
CREATE TABLE "rio_ed__Grade__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Grade_Criteria_Id__c" VARCHAR(255), 
	"rio_ed__Grade_Value__c" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Term_Grade__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade__c" VALUES(1,'ICT112 Assignment 1','0125j000000HUm0AAG','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(2,'ICT112 Assignment 2','0125j000000HUm0AAG','a0y5j000000hDmoAAE','HD - High Distinction','2.0','30.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(3,'ICT112 Final Exam','0125j000000HUm0AAG','a0y5j000000hDmtAAE','HD - High Distinction','3.0','50.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(4,'ICT112 Assignment 1','0125j000000HUm0AAG','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(5,'ICT112 Assignment 2','0125j000000HUm0AAG','a0y5j000000hDmoAAE','D - Distinction','2.0','30.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(6,'ICT112 Final Exam','0125j000000HUm0AAG','a0y5j000000hDmtAAE','D - Distinction','3.0','50.0','2');
CREATE TABLE "rio_ed__Grade__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0125j000000HUm0AAG','Grade');
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0125j000000HUm1AAG','Sub_Grade');
CREATE TABLE "rio_ed__PE_Group_Status__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(1,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(2,'RIOUNI02-Mandatory','Required','33.333333333333336','4.0','40.0','40.0','120.0','24.0','In Progress','False','16','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(3,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(4,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(5,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(6,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(7,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','Not Started','False','16','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(8,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(9,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(10,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(11,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(12,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(13,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(14,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(15,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(16,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(17,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(18,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(19,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(20,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(21,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(22,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(23,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(24,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(25,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(26,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(27,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(28,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(29,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(30,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(31,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(32,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(33,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(34,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(35,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(36,'RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','16','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(37,'RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','9','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(38,'RIOUNI02-Mandatory','Required','33.333333333333336','0.0','40.0','40.0','120.0','25.0','In Progress','False','16','19');
CREATE TABLE "rio_ed__PE_Pathway_Status__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(1,'False','False','False','0.0','0.0','False','','Not generated','','0.0','2.0','4.0','Full-time','1','1','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(2,'False','False','False','0.0','0.0','False','','Not generated','','0.0','3.0','4.0','Full-time','1','1','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(3,'False','False','False','40.0','40.0','False','5.0','Not generated','6.0','24.0','1.0','4.0','Full-time','1','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(4,'False','False','False','0.0','0.0','False','','Not generated','','0.0','4.0','4.0','Full-time','1','1','4');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(5,'False','False','False','0.0','0.0','False','','Not generated','','0.0','2.0','4.0','Full-time','2','1','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(6,'False','False','False','0.0','0.0','False','','Not generated','','0.0','3.0','4.0','Full-time','2','1','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(7,'False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','2','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(8,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','2','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(9,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','3','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(10,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','3','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(11,'False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','3','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(12,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','3','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(13,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','4','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(14,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','4','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(15,'False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','1.0','4.0','Full-time','4','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(16,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','4','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(17,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','8.0','Half-time','5','4','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(18,'False','False','False','','','False','','Not generated','','','2.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(19,'False','False','False','','','False','','Not generated','','','8.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(20,'False','False','False','','','False','','Not generated','','','3.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(21,'False','False','False','','','False','','Not generated','','','5.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(22,'False','False','False','','','False','','Not generated','','','4.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(23,'False','False','False','','','False','','Not generated','','','6.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(24,'False','False','False','','','False','','Not generated','','','7.0','8.0','Half-time','5','4','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(25,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','6','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(26,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','6','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(27,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','6','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(28,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','6','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(29,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','7','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(30,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','7','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(31,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','7','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(32,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','7','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(33,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','8','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(34,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','8','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(35,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','8','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(36,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','8','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(37,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','9','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(38,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','9','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(39,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','9','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(40,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','9','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(41,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','10','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(42,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','10','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(43,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','10','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(44,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','10','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(45,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','11','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(46,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','11','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(47,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','11','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(48,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','11','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(49,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','13','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(50,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','13','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(51,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','13','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(52,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','13','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(53,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','14','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(54,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','14','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(55,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','14','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(56,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','14','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(57,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','15','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(58,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','15','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(59,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','15','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(60,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','15','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(61,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','12','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(62,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','12','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(63,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','12','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(64,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','12','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(65,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','16','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(66,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','16','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(67,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','16','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(68,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','16','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(69,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','17','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(70,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','17','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(71,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','17','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(72,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','17','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(73,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','18','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(74,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','18','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(75,'False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','18','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(76,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','18','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(77,'False','False','False','','','False','','Not generated','','','2.0','4.0','Full-time','19','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(78,'False','False','False','','','False','','Not generated','','','3.0','4.0','Full-time','19','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(79,'False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','19','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(80,'False','False','False','','','False','','Not generated','','','4.0','4.0','Full-time','19','1','');
CREATE TABLE "rio_ed__Pathway_Unit__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Term_Number__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Group__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(1,'','2.0','6','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(2,'','3.0','21','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(3,'','1.0','20','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(4,'','1.0','1','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(5,'','3.0','10','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(6,'','3.0','8','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(7,'','4.0','','9','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(8,'','2.0','4','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(9,'','2.0','42','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(10,'','2.0','39','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(11,'','1.0','31','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(12,'','3.0','24','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(13,'','3.0','40','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(14,'','1.0','11','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(15,'','1.0','22','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(16,'','3.0','37','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(17,'','2.0','19','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(18,'','2.0','3','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(19,'','3.0','7','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(20,'','2.0','5','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(21,'','4.0','','23','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(22,'','1.0','34','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(23,'','1.0','28','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(24,'','1.0','35','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(25,'','2.0','38','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(26,'','3.0','52','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(27,'','2.0','','54','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(28,'','3.0','','54','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(29,'','1.0','','54','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(30,'','4.0','','53','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(31,'','4.0','3','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(32,'','6.0','10','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(33,'','2.0','1','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(34,'','4.0','19','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(35,'','3.0','5','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(36,'','1.0','11','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(37,'','2.0','22','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(38,'','8.0','','9','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(39,'','7.0','','9','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(40,'','3.0','6','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(41,'','5.0','7','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(42,'','5.0','21','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(43,'','1.0','20','','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(44,'','6.0','8','','4');
CREATE TABLE "rio_ed__Plan__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Plan__c" VALUES(1,'2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-06-18','Role','Resource','False','2022-01-20');
INSERT INTO "rio_ed__Plan__c" VALUES(2,'2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-06-18','Role','Resource','False','2021-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(3,'Appointments','False','','2072-01-12','Role','Resource','False','2022-01-12');
INSERT INTO "rio_ed__Plan__c" VALUES(4,'Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(5,'Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(6,'Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(7,'Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(8,'Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(9,'Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(10,'Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(11,'Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(12,'Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(13,'Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(14,'Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(15,'Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(16,'Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(17,'Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(18,'Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(19,'Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(20,'Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(21,'Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(22,'Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(23,'Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(24,'Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(25,'Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(26,'Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(27,'Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(28,'Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(29,'Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(30,'Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(31,'Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(32,'Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(33,'Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(34,'Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(35,'Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-18','Role','Resource','False','2021-07-02');
CREATE TABLE "rio_ed__Program_Application__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Program_Application__c" VALUES(1,'Course','Self Paid','Self Paid','Yes','False','January','2020','2021-12-23T07:16:53.000+0000','Approved','Full-time','24','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(2,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-09T05:52:53.000+0000','Approved','Full-time','30','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(3,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:39:12.000+0000','Draft','Full-time','27','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(4,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:38:16.000+0000','Approved','Full-time','26','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(5,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:17:49.000+0000','Approved','Full-time','29','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(6,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:34:24.000+0000','Approved','Full-time','31','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(7,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:43:21.000+0000','Approved','Half-time','40','4','1','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(8,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:45:14.000+0000','Approved','Full-time','41','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(9,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:49:27.000+0000','Approved','Full-time','39','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(10,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:59:07.000+0000','Approved','Full-time','45','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(11,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:08:59.000+0000','Approved','Full-time','35','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(12,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:03:57.000+0000','Approved','Full-time','38','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(13,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:03:30.000+0000','Approved','Full-time','33','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(14,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:04:25.000+0000','Approved','Full-time','34','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(15,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:47:51.000+0000','Approved','Full-time','32','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(16,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:52:05.000+0000','Approved','Full-time','42','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(17,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:57:54.000+0000','Approved','Full-time','44','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(18,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:53:44.000+0000','Approved','Full-time','43','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(19,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:06:48.000+0000','Approved','Full-time','36','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(20,'Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:08:16.000+0000','Approved','Full-time','37','','','8');
CREATE TABLE "rio_ed__Program_Course_Requirement__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Requirement_ID__c" VARCHAR(255), 
	"rio_ed__Requirement_Type__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(1,'BUS101 pre-requisite','A','Pre-Requisite','17','40');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(2,'BUS101 pre-requisite','A','Pre-Requisite','17','14');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(3,'ICT112 Pre-Requisite','A','Pre-Requisite','10','5');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(4,'ICT112 pre-requisite','A','Pre-Requisite','10','51');
CREATE TABLE "rio_ed__Program_Discipline__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Discipline__c" VALUES(1,'BUS Major','20.0','Major','2');
CREATE TABLE "rio_ed__Program_Pathway__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Enrollment_Method__c" VARCHAR(255), 
	"rio_ed__Name__c" VARCHAR(255), 
	"rio_ed__Number_of_Terms__c" VARCHAR(255), 
	"rio_ed__Study_Mode__c" VARCHAR(255), 
	"rio_ed__Term_Label__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(1,'Manual','Full Time','4.0','Full-time','Default','1');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(2,'Manual','Full Time','4.0','Full-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(3,'Manual','Full Time','4.0','Full-time','Default','3');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(4,'Manual','Half Time','8.0','Half-time','Default','1');
CREATE TABLE "rio_ed__Qualified_Faculty__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Roles__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(1,'Lecturer','14','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(2,'Lecturer','10','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(3,'Lecturer','7','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(4,'Lecturer','2','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(5,'Lecturer','3','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(6,'Lecturer','11','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(7,'Lecturer','21','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(8,'Lecturer','23','22');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(9,'Lecturer','9','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(10,'Lecturer','6','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(11,'Lecturer','19','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(12,'Lecturer','17','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(13,'Lecturer','18','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(14,'Lecturer','22','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(15,'Lecturer','13','22');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(16,'Lecturer','20','22');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(17,'Lecturer','1','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(18,'Lecturer','4','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(19,'Lecturer','12','22');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(20,'Lecturer','15','22');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(21,'Lecturer','24','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(22,'Lecturer','16','22');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(23,'Lecturer','5','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(24,'Lecturer','8','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(25,'Lecturer','4','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(26,'Lecturer','10','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(27,'Lecturer','21','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(28,'Lecturer','8','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(29,'Lecturer','11','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(30,'Lecturer','22','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(31,'Lecturer','14','25');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(32,'Lecturer','5','25');
CREATE TABLE "rio_ed__Resource_Type__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource_Type__c" VALUES(1,'Location');
CREATE TABLE "rio_ed__Resource__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"rio_ed__Public__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	"rio_ed__Resource_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource__c" VALUES(1,'Alpha 102','True','False','12','1');
INSERT INTO "rio_ed__Resource__c" VALUES(2,'Beta Building','True','False','6','1');
INSERT INTO "rio_ed__Resource__c" VALUES(3,'Beta 101','True','False','1','1');
INSERT INTO "rio_ed__Resource__c" VALUES(4,'Alpha 100','True','False','9','1');
INSERT INTO "rio_ed__Resource__c" VALUES(5,'Beta 102','True','False','2','1');
INSERT INTO "rio_ed__Resource__c" VALUES(6,'Beta 103','True','False','3','1');
INSERT INTO "rio_ed__Resource__c" VALUES(7,'Alpha Building','True','False','5','1');
INSERT INTO "rio_ed__Resource__c" VALUES(8,'Beta 104','True','False','4','1');
INSERT INTO "rio_ed__Resource__c" VALUES(9,'Alpha 103','True','False','7','1');
INSERT INTO "rio_ed__Resource__c" VALUES(10,'Beta 100','True','False','8','1');
INSERT INTO "rio_ed__Resource__c" VALUES(11,'Alpha 104','True','False','10','1');
INSERT INTO "rio_ed__Resource__c" VALUES(12,'Alpha 101','True','False','11','1');
CREATE TABLE "rio_ed__Role__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"rio_ed__Auto_Allocate__c" VARCHAR(255), 
	"rio_ed__Double_Booking_Count__c" VARCHAR(255), 
	"rio_ed__Published__c" VARCHAR(255), 
	"rio_ed__Session_Id__c" VARCHAR(255), 
	"rio_ed__Plan__c" VARCHAR(255), 
	"rio_ed__Resource_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Role__c" VALUES(1,'BUS105 Lecture #1','False','0.0','True','a1c5j000000UtGlAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(2,'BUS101 Lecture #1','False','0.0','True','a1c5j000000UtGWAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(3,'BUS104 Lecture #1','False','0.0','True','a1c5j000000UtGgAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(4,'HRM311 Lecture #1','False','0.0','True','a1c5j000000UtHFAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(5,'ICT115 Lecture #1','False','0.0','True','a1c5j000000UtHKAA0','1','1');
INSERT INTO "rio_ed__Role__c" VALUES(6,'BUS320 Lecture #1','False','0.0','True','a1c5j000000UtHAAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(7,'BUS106 Lecture #1','False','0.0','True','a1c5j000000UtGqAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(8,'BUS203 Lecture #1','False','0.0','True','a1c5j000000UtGvAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(9,'ICT112 Lecture #1','False','0.0','True','a1c5j000000UtGSAA0','2','1');
INSERT INTO "rio_ed__Role__c" VALUES(10,'ICT310 Lecture #1','False','0.0','True','a1c5j000000UtHeAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(11,'BUS108 Lecture #1','False','0.0','True','a1c5j000000UtGhAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(12,'COR109 Lecture #1','False','0.0','True','a1c5j000000UtGXAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(13,'BUS301 Lecture #1','False','0.0','True','a1c5j000000UtH5AAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(14,'BUS102 Lecture #1','False','0.0','True','a1c5j000000UtGbAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(15,'BUS211 Lecture #1','False','0.0','True','a1c5j000000UtH0AAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(16,'ICT211 Lecture #1','False','0.0','True','a1c5j000000UtHUAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(17,'ICT120 Lecture #1','False','0.0','True','a1c5j000000UtHBAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(18,'ICT352 Lecture #1','False','0.0','True','a1c5j000000UtH6AAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(19,'ICT221 Lecture #1','False','0.0','True','a1c5j000000UtHZAA0','','1');
INSERT INTO "rio_ed__Role__c" VALUES(20,'ICT320 Lecture #1','False','0.0','True','a1c5j000000UtHjAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(21,'MGT210 Lecture #1','False','0.0','True','a1c5j000000UuKpAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(22,'HRM321 Lecture #1','False','0.0','True','a1c5j000000UuKkAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(23,'MGT310 Lecture #1','False','0.0','True','a1c5j000000UuKuAAK','','1');
INSERT INTO "rio_ed__Role__c" VALUES(24,'Appointments','False','0.0','False','','3','1');
INSERT INTO "rio_ed__Role__c" VALUES(25,'BUS101 Lecture #2 (Session Group)','False','0.0','True','a1c5j000000UunKAAS','','1');
INSERT INTO "rio_ed__Role__c" VALUES(26,'ICT115 Tutorial Series #1','False','0.0','False','a1c5j000000UfN7AAK','','1');
CREATE TABLE "rio_ed__Session_Connection__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Session_Connection__c" VALUES(1,'CC-0075 - Test Student 1','False','','','False','False','','Current','33','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(2,'CC-0082 - Test Student 1','False','','','False','False','','Current','40','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(3,'CC-0084 - Test Student 1','False','','','False','False','','Current','42','','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(4,'CC-0086 - Test Student 1','False','','','False','False','','Current','44','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(5,'CC-0087 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-12','Current','64','26','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(6,'CC-0000 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','45','10','14');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(7,'CC-0014 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','16','28','30');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(8,'CC-0022 - Fran Fisher','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','27','30','32');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(9,'CC-0095 - Test Student 2','False','','','False','False','','Current','72','','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(10,'CC-0094 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','65','40','38');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(11,'CC-0024 - Fiona Forton','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','15','15','16');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(12,'CC-0088 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','66','19','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(13,'CC-0102 - Test Student 2','False','','','False','False','','Current','79','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(14,'CC-0007 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','12','14','15');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(15,'CC-0093 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','67','44','41');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(16,'CC-0016 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','17','23','20');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(17,'CC-0013 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','47','36','34');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(18,'CC-0090 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','68','38','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(19,'CC-0006 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','7','34','33');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(20,'CC-0021 - Fran Fisher','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','49','20','18');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(21,'CC-0089 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','69','41','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(22,'CC-0091 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','70','43','40');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(23,'CC-0023 - Fiona Forton','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','23','29','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(24,'CC-0092 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','71','27','22');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(25,'CC-0008 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','13','1','13');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(26,'CC-0015 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','50','22','19');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(27,'CC-0034 - Fiona Forton','True','2023-11-18','Confirmed','True','False','2023-07-02','Current','28','48','47');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(28,'CC-0104 - Test Student 2','False','','','False','False','','Current','81','','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(29,'CC-0106 - Test Student 2','False','','','False','False','','Current','83','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(30,'CC-0000 - Fran Fisher','False','2022-05-15','Confirmed','True','False','2022-01-23','Current','45','50','49');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(31,'CC-0296 - Test Student 17','False','','','False','False','','Current','199','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(32,'CC-0236 - Test Student 12','False','','','False','False','','Current','234','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(33,'CC-0176 - Test Student 7','False','','','False','False','','Current','115','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(34,'CC-0200 - Test Student 9','False','','','False','False','','Current','163','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(35,'CC-0212 - Test Student 10','False','','','False','False','','Current','139','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(36,'CC-0188 - Test Student 8','False','','','False','False','','Current','127','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(37,'CC-0248 - Test Student 13','False','','','False','False','','Current','210','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(38,'CC-0260 - Test Student 14','False','','','False','False','','Current','187','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(39,'CC-0272 - Test Student 15','False','','','False','False','','Current','151','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(40,'CC-0284 - Test Student 16','False','','','False','False','','Current','222','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(41,'CC-0224 - Test Student 11','False','','','False','False','','Current','175','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(42,'CC-0308 - Test Student 20','False','','','False','False','','Current','247','','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(43,'CC-0320 - Test Student 18','False','','','False','False','','Current','259','','21');
CREATE TABLE "rio_ed__Session_Time__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Session_Time__c" VALUES(1,'Recreate','Session booking generation log 21/1/2022, 5:42 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','13:00','Weekly','False','Monday','Weekly','2022-01-20','12:00','Active','Create/Update after today','9','13');
INSERT INTO "rio_ed__Session_Time__c" VALUES(2,'','','Monday','','14:00','','False','Monday','Weekly','','13:00','Active','Create/Update after today','9','24');
INSERT INTO "rio_ed__Session_Time__c" VALUES(3,'','','Monday','','16:00','','False','Monday','Weekly','','15:00','Active','Create/Update after today','9','3');
INSERT INTO "rio_ed__Session_Time__c" VALUES(4,'','','Tuesday','','10:00','','False','Tuesday','Weekly','','09:00','Active','Create/Update after today','9','9');
INSERT INTO "rio_ed__Session_Time__c" VALUES(5,'','','Tuesday','','13:00','','False','Tuesday','Weekly','','12:00','Active','Create/Update after today','9','25');
INSERT INTO "rio_ed__Session_Time__c" VALUES(6,'','','Monday','','17:00','','False','Monday','Weekly','','16:00','Active','Create/Update after today','9','27');
INSERT INTO "rio_ed__Session_Time__c" VALUES(7,'','','Monday','','11:00','','False','Monday','Weekly','','10:00','Active','Create/Update after today','9','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(8,'','','Tuesday','','14:00','','False','Tuesday','Weekly','','13:00','Active','Create/Update after today','9','28');
INSERT INTO "rio_ed__Session_Time__c" VALUES(9,'','','Wednesday','','11:00','','False','Wednesday','Weekly','','10:00','Active','Create/Update after today','9','26');
INSERT INTO "rio_ed__Session_Time__c" VALUES(10,'Recreate','Session booking generation log 21/1/2022, 5:40 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','10:00','Weekly','False','Monday','Weekly','2022-01-20','09:00','Active','Create/Update after today','9','14');
INSERT INTO "rio_ed__Session_Time__c" VALUES(11,'','','Tuesday','','15:00','','False','Tuesday','Weekly','','14:00','Active','Create/Update after today','10','44');
INSERT INTO "rio_ed__Session_Time__c" VALUES(12,'','','Wednesday','','14:00','','False','Wednesday','Weekly','','13:00','Active','Create/Update after today','9','23');
INSERT INTO "rio_ed__Session_Time__c" VALUES(13,'','','Wednesday','','16:00','','False','Wednesday','Weekly','','15:00','Active','Create/Update after today','9','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(14,'Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','12:00','Weekly','False','Monday','Weekly','2022-01-20','11:00','Active','Create/Update after today','9','15');
INSERT INTO "rio_ed__Session_Time__c" VALUES(15,'Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','12:00','Weekly','False','Tuesday','Weekly','2023-01-20','11:00','Active','Create/Update after today','9','16');
INSERT INTO "rio_ed__Session_Time__c" VALUES(16,'','','Tuesday','','16:00','','False','Tuesday','Weekly','','15:00','Active','Create/Update after today','10','50');
INSERT INTO "rio_ed__Session_Time__c" VALUES(17,'','','Monday','','13:00','','False','Monday','Weekly','','12:00','Active','Create/Update after today','9','6');
INSERT INTO "rio_ed__Session_Time__c" VALUES(18,'','','Monday','','12:00','','False','Monday','Weekly','','11:00','Active','Create/Update after today','9','7');
INSERT INTO "rio_ed__Session_Time__c" VALUES(19,'Recreate','Session booking generation log 21/1/2022, 5:53 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','16:00','Weekly','False','Tuesday','Weekly','2022-01-20','15:00','Active','Create/Update after today','10','17');
INSERT INTO "rio_ed__Session_Time__c" VALUES(20,'Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','10:00','Weekly','False','Tuesday','Weekly','2023-01-20','09:00','Active','Create/Update after today','9','18');
INSERT INTO "rio_ed__Session_Time__c" VALUES(21,'','','Wednesday','','13:00','','False','Wednesday','Weekly','','12:00','Active','Create/Update after today','9','4');
INSERT INTO "rio_ed__Session_Time__c" VALUES(22,'Recreate','Session booking generation log 21/1/2022, 5:43 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','17:00','Weekly','False','Wednesday','Weekly','2022-07-02','16:00','Active','Create/Update after today','9','19');
INSERT INTO "rio_ed__Session_Time__c" VALUES(23,'Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','15:00','Weekly','False','Monday','Weekly','2022-07-02','14:00','Active','Create/Update after today','9','20');
INSERT INTO "rio_ed__Session_Time__c" VALUES(24,'','','Tuesday','','11:00','','False','Tuesday','Weekly','','10:00','Active','Create/Update after today','9','8');
INSERT INTO "rio_ed__Session_Time__c" VALUES(25,'','','Tuesday','','12:00','','False','Tuesday','Weekly','','11:00','Active','Create/Update after today','9','29');
INSERT INTO "rio_ed__Session_Time__c" VALUES(26,'Recreate','Session booking generation log 21/1/2022, 5:49 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','15:00','Weekly','False','Tuesday','Weekly','2021-12-20','14:00','Active','Create/Update after today','10','21');
INSERT INTO "rio_ed__Session_Time__c" VALUES(27,'Recreate','Session booking generation log 21/1/2022, 6:06 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','12:00','Weekly','False','Wednesday','Weekly','2022-07-02','11:00','Active','Create/Update after today','9','22');
INSERT INTO "rio_ed__Session_Time__c" VALUES(28,'Recreate','Session booking generation log 21/1/2022, 5:45 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','14:00','Weekly','False','Monday','Weekly','2022-07-02','13:00','Active','Create/Update after today','9','30');
INSERT INTO "rio_ed__Session_Time__c" VALUES(29,'Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','11:00','Weekly','False','Tuesday','Weekly','2023-01-20','10:00','Active','Create/Update after today','9','31');
INSERT INTO "rio_ed__Session_Time__c" VALUES(30,'Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-06-18','17:00','Weekly','False','Monday','Weekly','2023-01-20','16:00','Active','Create/Update after today','9','32');
INSERT INTO "rio_ed__Session_Time__c" VALUES(31,'','','Monday','','15:00','','False','Monday','Weekly','','14:00','Active','Create/Update after today','9','2');
INSERT INTO "rio_ed__Session_Time__c" VALUES(32,'','','Wednesday','','12:00','','False','Wednesday','Weekly','','11:00','Active','Create/Update after today','9','1');
INSERT INTO "rio_ed__Session_Time__c" VALUES(33,'','','Wednesday','','15:00','','False','Wednesday','Weekly','','14:00','Active','Create/Update after today','9','12');
INSERT INTO "rio_ed__Session_Time__c" VALUES(34,'Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','11:00','Weekly','False','Monday','Weekly','2022-01-20','10:00','Active','Create/Update after today','9','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(35,'','','Monday','','10:00','','False','Monday','Weekly','','09:00','Active','Create/Update after today','9','43');
INSERT INTO "rio_ed__Session_Time__c" VALUES(36,'Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','16:00','Weekly','False','Monday','Weekly','2022-07-02','15:00','Active','Create/Update after today','9','34');
INSERT INTO "rio_ed__Session_Time__c" VALUES(37,'','','Wednesday','','17:00','','False','Wednesday','Weekly','','16:00','Active','Create/Update after today','9','5');
INSERT INTO "rio_ed__Session_Time__c" VALUES(38,'Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-06-18','10:00','Weekly','False','Wednesday','Weekly','2022-01-20','09:00','Active','Create/Update after today','9','36');
INSERT INTO "rio_ed__Session_Time__c" VALUES(39,'','','Wednesday','','10:00','','False','Wednesday','Weekly','','09:00','Active','Create/Update after today','9','39');
INSERT INTO "rio_ed__Session_Time__c" VALUES(40,'Recreate','Session booking generation log 21/1/2022, 6:09 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','14:00','Weekly','False','Wednesday','Weekly','2022-07-02','13:00','Active','Create/Update after today','9','38');
INSERT INTO "rio_ed__Session_Time__c" VALUES(41,'Recreate','Session booking generation log 21/1/2022, 6:03 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','17:00','Weekly','False','Tuesday','Weekly','2022-01-20','16:00','Active','Create/Update after today','9','37');
INSERT INTO "rio_ed__Session_Time__c" VALUES(42,'','','Tuesday','','17:00','','False','Tuesday','Weekly','','16:00','Active','Create/Update after today','9','35');
INSERT INTO "rio_ed__Session_Time__c" VALUES(43,'Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','11:00','Weekly','False','Wednesday','Weekly','2022-07-02','10:00','Active','Create/Update after today','9','40');
INSERT INTO "rio_ed__Session_Time__c" VALUES(44,'Recreate','Session booking generation log 21/1/2022, 6:07 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','13:00','Weekly','False','Wednesday','Weekly','2022-07-02','12:00','Active','Create/Update after today','9','41');
INSERT INTO "rio_ed__Session_Time__c" VALUES(45,'','','Thursday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(46,'','','Friday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(47,'Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-18','15:00','Weekly','False','Wednesday','Weekly','2023-07-02','14:00','Active','Create/Update after today','9','46');
INSERT INTO "rio_ed__Session_Time__c" VALUES(48,'Recreate','Session booking generation log 24/1/2022, 3:58 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-18','13:00','Weekly','False','Tuesday','Weekly','2023-07-02','12:00','Active','Create/Update after today','9','47');
INSERT INTO "rio_ed__Session_Time__c" VALUES(49,'Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-18','16:00','Weekly','False','Wednesday','Weekly','2023-07-02','15:00','Active','Create/Update after today','9','48');
INSERT INTO "rio_ed__Session_Time__c" VALUES(50,'Upsert','Session booking generation log 25/1/2022, 4:29 pm:
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
[Custom Booking Updated]: a0a5j000002WUmuAAG from Friday 27 May 2022, 09:00-10:00 to Friday 27 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100','Friday','2022-06-18','10:00','Weekly','False','Friday','Weekly','2022-01-20','09:00','Active','Create/Update all','9','49');
CREATE TABLE "rio_ed__Session__c" (
	id INTEGER NOT NULL, 
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
INSERT INTO "rio_ed__Session__c" VALUES(1,'ICT310 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','8','');
INSERT INTO "rio_ed__Session__c" VALUES(2,'BUS203 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','3','');
INSERT INTO "rio_ed__Session__c" VALUES(3,'BUS211 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','9','');
INSERT INTO "rio_ed__Session__c" VALUES(4,'ICT320 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','14','');
INSERT INTO "rio_ed__Session__c" VALUES(5,'BUS106 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','18','');
INSERT INTO "rio_ed__Session__c" VALUES(6,'BUS105 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(7,'BUS104 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','2','');
INSERT INTO "rio_ed__Session__c" VALUES(8,'COR109 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(9,'BUS320 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','24','');
INSERT INTO "rio_ed__Session__c" VALUES(10,'BUS102 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','1','');
INSERT INTO "rio_ed__Session__c" VALUES(11,'MGT310 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','20','');
INSERT INTO "rio_ed__Session__c" VALUES(12,'MGT210 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','13','');
INSERT INTO "rio_ed__Session__c" VALUES(13,'BUS105 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:42:12.000+0000','21.0','True','Classroom','Lecture','Booked','','6','','1');
INSERT INTO "rio_ed__Session__c" VALUES(14,'BUS101 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:40:46.000+0000','21.0','True','Classroom','Lecture','Booked','','26','','2');
INSERT INTO "rio_ed__Session__c" VALUES(15,'BUS104 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:41:48.000+0000','21.0','True','Classroom','Lecture','Booked','','5','','3');
INSERT INTO "rio_ed__Session__c" VALUES(16,'HRM311 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:48:54.000+0000','21.0','True','Classroom','Lecture','Booked','','8','','4');
INSERT INTO "rio_ed__Session__c" VALUES(17,'ICT115 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T06:53:46.000+0000','22.0','True','Computer Lab','Lecture','Booked','0.0','2','','5');
INSERT INTO "rio_ed__Session__c" VALUES(18,'BUS320 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:47:35.000+0000','21.0','True','Classroom','Lecture','Booked','','30','','6');
INSERT INTO "rio_ed__Session__c" VALUES(19,'BUS106 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:44:00.000+0000','20.0','True','Classroom','Lecture','Booked','','31','','7');
INSERT INTO "rio_ed__Session__c" VALUES(20,'BUS203 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:46:06.000+0000','20.0','True','Classroom','Lecture','Booked','','11','','8');
INSERT INTO "rio_ed__Session__c" VALUES(21,'ICT112 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','15.0','15.0','All Confirmed','2022-01-09T06:49:56.000+0000','23.0','True','Computer Lab','Lecture','Booked','0.0','27','','9');
INSERT INTO "rio_ed__Session__c" VALUES(22,'ICT310 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:06:55.000+0000','20.0','True','Classroom','Lecture','Booked','','32','','10');
INSERT INTO "rio_ed__Session__c" VALUES(23,'ICT352 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','5','');
INSERT INTO "rio_ed__Session__c" VALUES(24,'BUS108 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','7','');
INSERT INTO "rio_ed__Session__c" VALUES(25,'HRM321 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','15','');
INSERT INTO "rio_ed__Session__c" VALUES(26,'ICT221 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','22','');
INSERT INTO "rio_ed__Session__c" VALUES(27,'BUS301 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','6','');
INSERT INTO "rio_ed__Session__c" VALUES(28,'IBS220 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','16','');
INSERT INTO "rio_ed__Session__c" VALUES(29,'HRM311 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','23','');
INSERT INTO "rio_ed__Session__c" VALUES(30,'BUS108 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:45:44.000+0000','20.0','True','Classroom','Lecture','Booked','','9','','11');
INSERT INTO "rio_ed__Session__c" VALUES(31,'COR109 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:48:11.000+0000','21.0','True','Classroom','Lecture','Booked','','16','','12');
INSERT INTO "rio_ed__Session__c" VALUES(32,'BUS301 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:47:04.000+0000','21.0','True','Classroom','Lecture','Booked','','20','','13');
INSERT INTO "rio_ed__Session__c" VALUES(33,'BUS102 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:41:16.000+0000','21.0','True','Classroom','Lecture','Booked','','1','','14');
INSERT INTO "rio_ed__Session__c" VALUES(34,'BUS211 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:46:39.000+0000','20.0','True','Classroom','Lecture','Booked','','28','','15');
INSERT INTO "rio_ed__Session__c" VALUES(35,'ICT120 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','4','');
INSERT INTO "rio_ed__Session__c" VALUES(36,'ICT211 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T07:05:28.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','4','','16');
INSERT INTO "rio_ed__Session__c" VALUES(37,'ICT120 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T07:03:19.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','3','','17');
INSERT INTO "rio_ed__Session__c" VALUES(38,'ICT352 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:09:21.000+0000','20.0','True','Classroom','Lecture','Booked','','33','','18');
INSERT INTO "rio_ed__Session__c" VALUES(39,'ICT211 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','21','');
INSERT INTO "rio_ed__Session__c" VALUES(40,'ICT221 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:05:59.000+0000','20.0','True','Classroom','Lecture','Booked','','12','','19');
INSERT INTO "rio_ed__Session__c" VALUES(41,'ICT320 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:07:37.000+0000','20.0','True','Classroom','Lecture','Booked','','7','','20');
INSERT INTO "rio_ed__Session__c" VALUES(42,'BUS101 Tutorial Series #2','0125j000000HUm7AAG','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(43,'BUS101 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(44,'ICT112 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(45,'ICT112 Practical Series #2','0125j000000HUm7AAG','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(46,'MGT210 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','No Faculty Assigned','2022-01-12T04:59:16.000+0000','20.0','True','Classroom','Lecture','Booked','','43','','21');
INSERT INTO "rio_ed__Session__c" VALUES(47,'HRM321 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','All Confirmed','2022-01-12T04:58:35.000+0000','20.0','True','Classroom','Lecture','Booked','','21','','22');
INSERT INTO "rio_ed__Session__c" VALUES(48,'MGT310 Lecture #1','0125j000000HUm6AAG','Each Session Time','A','','15.0','No Faculty Assigned','2022-01-12T04:59:39.000+0000','20.0','True','Classroom','Lecture','Booked','','42','','23');
INSERT INTO "rio_ed__Session__c" VALUES(49,'BUS101 Lecture #2 (Session Group)','0125j000000HUm6AAG','Each Session Time','A','0.0','10.0','All Confirmed','2022-01-13T05:29:44.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','26','','25');
INSERT INTO "rio_ed__Session__c" VALUES(50,'ICT115 Lecture #1','0125j000000HUm7AAG','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','Draft','','','11','26');
CREATE TABLE "rio_ed__Session__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0125j000000HUm6AAG','Class');
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0125j000000HUm7AAG','Template');
CREATE TABLE "rio_ed__Student_Fee__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Due_Date__c" VARCHAR(255), 
	"rio_ed__Fee_Reference__c" VARCHAR(255), 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Student_Fee_Label__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Enrollment__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Student_Fee__c" VALUES(1,'2021-12-23','F-000000010','','Bachelor of Business Information System','Tuition','19');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(2,'2022-01-09','F-000000011','','Bachelor of Business Information System','Tuition','1');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(3,'2022-01-12','F-000000012','','Bachelor of Business Information System','Tuition','2');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(4,'2022-01-12','F-000000013','','Bachelor of Business Information System','Tuition','3');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(5,'2022-01-13','F-000000014','','Bachelor of Business Information System','Tuition','4');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(6,'2022-01-15','F-000000015','','Bachelor of Business Information System','Tuition','5');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(7,'2022-01-15','F-000000023','','Bachelor of Business Information System','Tuition','8');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(8,'2022-01-15','F-000000016','','Bachelor of Business Information System','Tuition','6');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(9,'2022-01-15','F-000000019','','Bachelor of Business Information System','Tuition','10');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(10,'2022-01-15','F-000000021','','Bachelor of Business Information System','Tuition','13');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(11,'2022-01-15','F-000000022','','Bachelor of Business Information System','Tuition','11');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(12,'2022-01-15','F-000000018','','Bachelor of Business Information System','Tuition','7');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(13,'2022-01-15','F-000000020','','Bachelor of Business Information System','Tuition','15');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(14,'2022-01-15','F-000000017','','Bachelor of Business Information System','Tuition','9');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(15,'2022-01-15','F-000000025','','Bachelor of Business Information System','Tuition','12');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(16,'2022-01-15','F-000000024','','Bachelor of Business Information System','Tuition','14');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(17,'2022-01-16','F-000000026','','Bachelor of Business Information System','Tuition','16');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(18,'2022-01-16','F-000000027','','Bachelor of Business Information System','Tuition','17');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(19,'2022-01-16','F-000000028','','Bachelor of Business Information System','Tuition','18');
COMMIT;
