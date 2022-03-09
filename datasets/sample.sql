BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "Account" VALUES(1,'Installer Sample Data','School of Business','0125j000000IJiXAAW','False','','Full Program','','5','21');
INSERT INTO "Account" VALUES(2,'Installer Sample Data','Bachelor of Business Management','0125j000000IJiRAAW','False','RIOUNI03','Full Program','','1','');
INSERT INTO "Account" VALUES(3,'Installer Sample Data','Campus: Sunshine Coast','0125j000000IJk9AAG','True','','Full Program','Australia/Brisbane','5','');
INSERT INTO "Account" VALUES(4,'Installer Sample Data','Campus: Brisbane','0125j000000IJk9AAG','True','','Full Program','Australia/Brisbane','5','');
INSERT INTO "Account" VALUES(5,'Installer Sample Data','RIO University','0125j000000IJiUAAW','False','','Full Program','','','');
INSERT INTO "Account" VALUES(6,'Installer Sample Data','Campus: Sydney','0125j000000IJk9AAG','True','','Full Program','Australia/Sydney','5','');
INSERT INTO "Account" VALUES(7,'Installer Sample Data','School of Art','0125j000000IJiXAAW','False','','Full Program','','5','');
INSERT INTO "Account" VALUES(8,'Installer Sample Data','Bachelor of Business Information System','0125j000000IJiRAAW','False','RIOUNI02','Full Program','','1','');
INSERT INTO "Account" VALUES(9,'Installer Sample Data','Freeman Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','45');
INSERT INTO "Account" VALUES(10,'Installer Sample Data','Christensen Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','22');
INSERT INTO "Account" VALUES(11,'Installer Sample Data','Smith Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','23');
INSERT INTO "Account" VALUES(12,'Installer Sample Data','Forton Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','24');
INSERT INTO "Account" VALUES(13,'Installer Sample Data','Huber Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','25');
INSERT INTO "Account" VALUES(14,'Installer Sample Data','Andrews Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','26');
INSERT INTO "Account" VALUES(15,'Installer Sample Data','Educator Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','27');
INSERT INTO "Account" VALUES(16,'Installer Sample Data','Cruz Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','28');
INSERT INTO "Account" VALUES(17,'Installer Sample Data','Randall Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','29');
INSERT INTO "Account" VALUES(18,'Installer Sample Data','Robinson Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','30');
INSERT INTO "Account" VALUES(19,'Installer Sample Data','Burton Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','31');
INSERT INTO "Account" VALUES(20,'Installer Sample Data','Wang Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','32');
INSERT INTO "Account" VALUES(21,'Installer Sample Data','Poole Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','33');
INSERT INTO "Account" VALUES(22,'Installer Sample Data','Vance Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','34');
INSERT INTO "Account" VALUES(23,'Installer Sample Data','Steward Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','35');
INSERT INTO "Account" VALUES(24,'Installer Sample Data','Mack Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','36');
INSERT INTO "Account" VALUES(25,'Installer Sample Data','Shay Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','37');
INSERT INTO "Account" VALUES(26,'Installer Sample Data','Richards Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','38');
INSERT INTO "Account" VALUES(27,'Installer Sample Data','Hunter Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','39');
INSERT INTO "Account" VALUES(28,'Installer Sample Data','Daily Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','40');
INSERT INTO "Account" VALUES(29,'Installer Sample Data','Short Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','41');
INSERT INTO "Account" VALUES(30,'Installer Sample Data','Shelton Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','42');
INSERT INTO "Account" VALUES(31,'Installer Sample Data','Underwood Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','43');
INSERT INTO "Account" VALUES(32,'Installer Sample Data','Kramer Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','44');
CREATE TABLE "Account_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiRAAW','Academic_Program');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiSAAW','Administrative');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiTAAW','Business_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiUAAW','Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJk8AAG','External_Educational_Institution');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiVAAW','HH_Account');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJk9AAG','Location');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiWAAW','Sports_Organization');
INSERT INTO "Account_rt_mapping" VALUES('0125j000000IJiXAAW','University_Department');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "Contact" VALUES(21,'Installer Sample Data','fran@riouni.edu','Fran','Fisher','Ms.','','Female','University Email','fran@riouni.edu','','','True','1');
INSERT INTO "Contact" VALUES(22,'Installer Sample Data','','Bonnie','Christensen','','','','University Email','teststudent8@riouni.com','','','False','10');
INSERT INTO "Contact" VALUES(23,'Installer Sample Data','jsmith@riouni.edu','John','Smith','','jsmith@riouni.edu','Male','Alternate Email','','john.smith','john.smith@rioedplayground.com','False','11');
INSERT INTO "Contact" VALUES(24,'Installer Sample Data','fiona@riouni.edu','Fiona','Forton','Ms.','','Female','University Email','fiona@riouni.edu','','','True','12');
INSERT INTO "Contact" VALUES(25,'Installer Sample Data','','Eleanor','Huber','','','Female','University Email','teststudent4@riouni.com','','','False','13');
INSERT INTO "Contact" VALUES(26,'Installer Sample Data','','Charlotte','Andrews','','','Female','University Email','teststudent3@riouni.com','','','False','14');
INSERT INTO "Contact" VALUES(27,'Installer Sample Data','eef@eef.eef','Edward','Educator','','','Male','University Email','eef@eef.eef','','','True','15');
INSERT INTO "Contact" VALUES(28,'Installer Sample Data','','Tim','Cruz','','','Male','University Email','teststudent5@riouni.com','','','False','16');
INSERT INTO "Contact" VALUES(29,'Installer Sample Data','','Howard','Randall','','','Male','University Email','teststudent6@riouni.com','','','False','17');
INSERT INTO "Contact" VALUES(30,'Installer Sample Data','','Gregg','Robinson','','','Male','University Email','teststudent2@riouni.com','','','False','18');
INSERT INTO "Contact" VALUES(31,'Installer Sample Data','','Gwen','Burton','','','','University Email','teststudent1@riouni.com','','','False','19');
INSERT INTO "Contact" VALUES(32,'Installer Sample Data','','Lucy','Wang','','','','University Email','teststudent18@riouni.com','','','False','20');
INSERT INTO "Contact" VALUES(33,'Installer Sample Data','','Sidney','Poole','','','','University Email','teststudent11@riouni.com','','','False','21');
INSERT INTO "Contact" VALUES(34,'Installer Sample Data','','Brenda','Vance','','','','University Email','teststudent12@riouni.com','','','False','22');
INSERT INTO "Contact" VALUES(35,'Installer Sample Data','','Kristin','Steward','','','','University Email','teststudent7@riouni.com','','','False','23');
INSERT INTO "Contact" VALUES(36,'Installer Sample Data','','Emmanuel','Mack','','','','University Email','teststudent10@riouni.com','','','False','24');
INSERT INTO "Contact" VALUES(37,'Installer Sample Data','','Christy','Shay','','','','University Email','teststudent13@riouni.com','','','False','25');
INSERT INTO "Contact" VALUES(38,'Installer Sample Data','','Brandy','Richards','','','','University Email','teststudent14@riouni.com','','','False','26');
INSERT INTO "Contact" VALUES(39,'Installer Sample Data','','Sammy','Hunter','','','','University Email','teststudent9@riouni.com','','','False','27');
INSERT INTO "Contact" VALUES(40,'Installer Sample Data','','Lorna','Daily','','','','University Email','teststudent15@riouni.com','','','False','28');
INSERT INTO "Contact" VALUES(41,'Installer Sample Data','','Buddy','Short','','','','University Email','teststudent16@riouni.com','','','False','29');
INSERT INTO "Contact" VALUES(42,'Installer Sample Data','','Madeline','Shelton','','','','University Email','teststudent17@riouni.com','','','False','30');
INSERT INTO "Contact" VALUES(43,'Installer Sample Data','','Donna','Underwood','','','','University Email','teststudent19@riouni.com','','','False','31');
INSERT INTO "Contact" VALUES(44,'Installer Sample Data','','Doris','Kramer','','','','University Email','teststudent20@riouni.com','','','False','32');
INSERT INTO "Contact" VALUES(45,'Installer Sample Data','fred@riouni.edu','Freddie','Freeman','Mr.','','Male','University Email','fred@riouni.edu','','','True','9');
CREATE TABLE "hed__Affiliation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"hed__Role__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Affiliation__c" VALUES(1,'Installer Sample Data','','Current','8','35');
INSERT INTO "hed__Affiliation__c" VALUES(2,'Installer Sample Data','','Former','8','35');
INSERT INTO "hed__Affiliation__c" VALUES(3,'Installer Sample Data','','Current','8','22');
INSERT INTO "hed__Affiliation__c" VALUES(4,'Installer Sample Data','','Current','8','33');
INSERT INTO "hed__Affiliation__c" VALUES(5,'Installer Sample Data','','Current','8','34');
INSERT INTO "hed__Affiliation__c" VALUES(6,'Installer Sample Data','','Current','8','37');
INSERT INTO "hed__Affiliation__c" VALUES(7,'Installer Sample Data','','Current','8','38');
INSERT INTO "hed__Affiliation__c" VALUES(8,'Installer Sample Data','Faculty','Current','1','45');
INSERT INTO "hed__Affiliation__c" VALUES(9,'Installer Sample Data','Faculty','Current','1','24');
INSERT INTO "hed__Affiliation__c" VALUES(10,'Installer Sample Data','Faculty','Current','1','21');
INSERT INTO "hed__Affiliation__c" VALUES(11,'Installer Sample Data','Faculty','Current','1','27');
INSERT INTO "hed__Affiliation__c" VALUES(12,'Installer Sample Data','','Former','8','23');
INSERT INTO "hed__Affiliation__c" VALUES(13,'Installer Sample Data','','Current','8','23');
INSERT INTO "hed__Affiliation__c" VALUES(14,'Installer Sample Data','','Current','8','25');
INSERT INTO "hed__Affiliation__c" VALUES(15,'Installer Sample Data','','Current','8','30');
INSERT INTO "hed__Affiliation__c" VALUES(16,'Installer Sample Data','','Current','8','31');
INSERT INTO "hed__Affiliation__c" VALUES(17,'Installer Sample Data','','Current','8','26');
INSERT INTO "hed__Affiliation__c" VALUES(18,'Installer Sample Data','','Current','8','39');
INSERT INTO "hed__Affiliation__c" VALUES(19,'Installer Sample Data','','Current','8','40');
INSERT INTO "hed__Affiliation__c" VALUES(20,'Installer Sample Data','','Current','8','41');
INSERT INTO "hed__Affiliation__c" VALUES(21,'Installer Sample Data','','Current','8','42');
INSERT INTO "hed__Affiliation__c" VALUES(22,'Installer Sample Data','','Current','8','32');
INSERT INTO "hed__Affiliation__c" VALUES(23,'Installer Sample Data','','Current','8','43');
INSERT INTO "hed__Affiliation__c" VALUES(24,'Installer Sample Data','','Current','8','44');
INSERT INTO "hed__Affiliation__c" VALUES(25,'Installer Sample Data','','Current','8','36');
INSERT INTO "hed__Affiliation__c" VALUES(26,'Installer Sample Data','','Former','8','35');
INSERT INTO "hed__Affiliation__c" VALUES(27,'Installer Sample Data','','Former','8','35');
CREATE TABLE "hed__Course_Enrollment__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Course_Enrollment__c" VALUES(1,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','51','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(2,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(3,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','49','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(4,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','39','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(5,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(6,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','7','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(7,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','11','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(8,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','57','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(9,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','16','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(10,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(11,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','50','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(12,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(13,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','52','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(14,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','38','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(15,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','37','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(16,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','8','45','17','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(17,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','13','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(18,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','18','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(19,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','42','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(20,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','14','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(21,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(22,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','34','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(23,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(24,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','9','24','41','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(25,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(26,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','46','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(27,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','45','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(28,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(29,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','22','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(30,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','44','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(31,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','53','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(32,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','23','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(33,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(34,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','60','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(35,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','28','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(36,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','43','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(37,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','25','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(38,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','3','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(39,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(40,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','55','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(41,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','54','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(42,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','59','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(43,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','33','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(44,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','29','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(45,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','1','10','21','56','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(46,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(47,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(48,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(49,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','50','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(50,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(51,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','52','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(52,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','38','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(53,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','1','11','27','17','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(54,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(55,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(56,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(57,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(58,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','23','','15','11','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(59,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(60,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(61,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','23','','15','11','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(62,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','96.0','False','Current','1.0','','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','7.0','Pass','Educational Institution','HD - High Distinction','Self Paid','True','True','Insufficient','','2022-01-20','8','','23','12','15','11','44','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(63,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-24','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','2022-01-20','8','','23','12','15','11','44','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(64,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','23','12','15','11','44','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(65,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','77.0','False','Current','1.0','','2022-06-18','2021-12-23','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Insufficient','','2022-01-20','8','','23','8','15','11','44','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(66,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','23','8','15','11','44','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(67,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','23','50','15','11','44','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(68,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','78.0','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-20','8','','23','50','15','11','44','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(69,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','23','50','15','11','44','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(70,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','84.0','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-20','8','','23','38','15','11','44','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(71,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','23','38','15','11','44','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(72,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(73,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(74,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(75,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(76,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(77,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(78,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(79,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(80,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','25','','19','14','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(81,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(82,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','25','','19','14','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(83,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','','8','','25','','19','14','56','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(84,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(85,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(86,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(87,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(88,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','30','','17','12','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(89,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(90,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(91,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','30','','17','12','47','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(92,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','8','','30','12','17','12','47','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(93,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','30','8','17','12','47','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(94,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','8','','30','50','17','12','47','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(95,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','8','','30','38','17','12','47','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(96,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(97,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(98,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(99,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(100,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(101,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(102,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','31','','16','1','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(103,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','81.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','8','','31','12','16','1','3','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(104,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2022-01-13','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','31','23','16','1','3','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(105,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','85.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','University Department','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2021-12-20','8','','31','8','16','1','3','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(106,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','83.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','8','','31','50','16','1','3','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(107,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','79.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','8','','31','38','16','1','3','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(108,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(109,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(110,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(111,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(112,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','33','','6','2','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(113,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(114,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(115,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(116,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','33','8','6','2','8','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(117,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(118,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(119,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(120,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(121,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(122,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(123,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(124,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(125,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(126,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','26','','18','13','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(127,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(128,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(129,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','26','','18','13','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(130,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','26','12','18','13','52','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(131,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-20','8','','26','8','18','13','52','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(132,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','26','50','18','13','52','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(133,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','8','','26','38','18','13','52','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(134,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(135,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(136,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(137,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(138,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(139,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(140,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(141,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','39','','5','19','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(142,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(143,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(144,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(145,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','34','','11','7','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(146,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(147,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(148,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','34','','11','7','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(149,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','34','8','11','7','28','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(150,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(151,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(152,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(153,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(154,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(155,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(156,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(157,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','37','','9','5','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(158,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(159,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(160,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','37','','9','5','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(161,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','37','8','9','5','20','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(162,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(163,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(164,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(165,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','39','','5','19','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(166,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','39','8','5','19','80','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(167,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(168,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(169,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(170,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(171,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(172,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(173,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(174,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','40','','4','18','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(175,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(176,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(177,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','40','','4','18','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(178,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','40','8','4','18','76','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(179,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(180,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(181,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(182,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(183,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(184,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(185,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(186,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(187,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','44','8','12','8','32','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(188,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(189,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(190,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(191,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(192,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(193,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(194,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(195,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','36','','3','17','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(196,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(197,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(198,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','36','','3','17','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(199,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','36','8','3','17','72','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(200,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(201,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(202,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(203,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(204,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(205,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(206,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(207,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(208,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(209,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(210,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(211,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','38','','7','3','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(212,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(213,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(214,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','38','','7','3','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(215,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','38','8','7','3','12','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(216,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(217,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','41','','10','6','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(218,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(219,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(220,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','41','','10','6','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(221,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','41','8','10','6','24','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(222,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(223,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(224,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(225,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(226,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(227,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(228,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(229,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','42','','8','4','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(230,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(231,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(232,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','42','','8','4','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(233,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','42','8','8','4','16','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(234,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(235,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(236,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(237,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(238,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','35','','1','15','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(239,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(240,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(241,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','35','','1','15','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(242,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','35','8','1','15','64','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(243,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(244,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(245,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(246,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(247,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(248,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(249,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(250,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','22','','2','16','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(251,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(252,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(253,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','22','','2','16','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(254,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','22','8','2','16','68','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(255,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(256,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(257,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','33','','6','2','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(258,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(259,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(260,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(261,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(262,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','32','','13','9','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(263,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(264,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(265,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','32','','13','9','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(266,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','8','','32','8','13','9','36','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(267,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(268,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(269,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(270,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(271,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(272,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(273,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(274,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','43','','14','10','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(275,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','17');
INSERT INTO "hed__Course_Enrollment__c" VALUES(276,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','23');
INSERT INTO "hed__Course_Enrollment__c" VALUES(277,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','43','','14','10','','27');
INSERT INTO "hed__Course_Enrollment__c" VALUES(278,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-20','8','','43','8','14','10','40','9');
INSERT INTO "hed__Course_Enrollment__c" VALUES(279,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','43');
INSERT INTO "hed__Course_Enrollment__c" VALUES(280,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','29');
INSERT INTO "hed__Course_Enrollment__c" VALUES(281,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','51');
INSERT INTO "hed__Course_Enrollment__c" VALUES(282,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','11');
INSERT INTO "hed__Course_Enrollment__c" VALUES(283,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','7');
INSERT INTO "hed__Course_Enrollment__c" VALUES(284,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','33');
INSERT INTO "hed__Course_Enrollment__c" VALUES(285,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','45');
INSERT INTO "hed__Course_Enrollment__c" VALUES(286,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','8','','44','','12','8','','35');
INSERT INTO "hed__Course_Enrollment__c" VALUES(287,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','8','','44','','12','8','','17');
CREATE TABLE "hed__Course_Enrollment__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0125j000000IJivAAG','Default');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0125j000000IJiwAAG','Faculty');
INSERT INTO "hed__Course_Enrollment__c_rt_mapping" VALUES('0125j000000IJixAAG','Student');
CREATE TABLE "hed__Course_Offering__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Course_Offering__c" VALUES(1,'Installer Sample Data','Last Year Term 2 BUS102','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','1','','1','6','','2','24');
INSERT INTO "hed__Course_Offering__c" VALUES(2,'Installer Sample Data','Last Year Term 1 BUS102','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','1','','2','6','','2','18');
INSERT INTO "hed__Course_Offering__c" VALUES(3,'Installer Sample Data','2023 Term 1 BUS102','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','1','21','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(4,'Installer Sample Data','2022 Term 1 BUS102','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','1','21','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(5,'Installer Sample Data','Last Year Term 2 ICT112','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','10','','1','6','','2','22');
INSERT INTO "hed__Course_Offering__c" VALUES(6,'Installer Sample Data','Last Year Term 1 ICT112','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','10','','2','6','','2','12');
INSERT INTO "hed__Course_Offering__c" VALUES(7,'Installer Sample Data','2023 Term 2 ICT112','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','10','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(8,'Installer Sample Data','2022 Term 1 ICT112','50.0','2022-06-18','2021-12-20','18.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','10','45','5','6','3','2','2');
INSERT INTO "hed__Course_Offering__c" VALUES(9,'Installer Sample Data','Last Year Term 2 ICT115','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','11','','1','6','','2','20');
INSERT INTO "hed__Course_Offering__c" VALUES(10,'Installer Sample Data','Last Year Term 1 ICT115','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','11','','2','6','','2','16');
INSERT INTO "hed__Course_Offering__c" VALUES(11,'Installer Sample Data','2023 Term 2 ICT115','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','11','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(12,'Installer Sample Data','2022 Term 1 ICT115','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','11','45','5','6','3','2','1');
INSERT INTO "hed__Course_Offering__c" VALUES(13,'Installer Sample Data','2023 Term 1 COR109','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','12','24','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(14,'Installer Sample Data','2023 Term 2 COR109','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','12','24','4','','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(15,'Installer Sample Data','2023 Term 2 MGT210','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','13','24','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(16,'Installer Sample Data','2023 Term 2 ICT320','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(17,'Installer Sample Data','2022 Term 2 ICT320','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','45','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(18,'Installer Sample Data','2023 Term 2 HRM321','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','15','24','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(19,'Installer Sample Data','2023 Term 2 IBS220','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','16','24','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(20,'Installer Sample Data','Last Year Term 2 BUS101','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','17','','1','6','','2','32');
INSERT INTO "hed__Course_Offering__c" VALUES(21,'Installer Sample Data','Last Year Term 1 BUS101','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','17','','2','6','','2','10');
INSERT INTO "hed__Course_Offering__c" VALUES(22,'Installer Sample Data','2023 Term 1 BUS101','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','17','21','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(23,'Installer Sample Data','2022 Term 1 BUS101','50.0','2022-06-18','2022-01-20','1.0','','1000.0','1000.0','Final Grade','Hour','False','0.0','17','21','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(24,'Installer Sample Data','2023 Term 2 BUS106','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','21','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(25,'Installer Sample Data','2022 Term 2 BUS106','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','21','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(26,'Installer Sample Data','Last Year Term 2 BUS105','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','19','','1','6','','2','26');
INSERT INTO "hed__Course_Offering__c" VALUES(27,'Installer Sample Data','Last Year Term 1 BUS105','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','19','','2','6','','2','6');
INSERT INTO "hed__Course_Offering__c" VALUES(28,'Installer Sample Data','2023 Term 1 BUS105','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','19','21','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(29,'Installer Sample Data','2022 Term 1 BUS105','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','19','21','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(30,'Installer Sample Data','Last Year Term 2 BUS104','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','2','','1','6','','2','30');
INSERT INTO "hed__Course_Offering__c" VALUES(31,'Installer Sample Data','Last Year Term 1 BUS104','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','2','','2','6','','2','4');
INSERT INTO "hed__Course_Offering__c" VALUES(32,'Installer Sample Data','2023 Term 1 BUS104','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','2','21','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(33,'Installer Sample Data','2022 Term 1 BUS104','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','2','21','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(34,'Installer Sample Data','2023 Term 2 MGT310','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','20','24','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(35,'Installer Sample Data','Last Year Term 2 ICT211','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','21','','1','6','','2','28');
INSERT INTO "hed__Course_Offering__c" VALUES(36,'Installer Sample Data','Last Year Term 1 ICT211','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','21','','2','6','','2','14');
INSERT INTO "hed__Course_Offering__c" VALUES(37,'Installer Sample Data','2023 Term 2 ICT211','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','21','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(38,'Installer Sample Data','2022 Term 1 ICT211','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','21','45','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(39,'Installer Sample Data','2023 Term 2 ICT221','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(40,'Installer Sample Data','2022 Term 2 ICT221','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','45','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(41,'Installer Sample Data','2023 Term 1 HRM311','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','23','24','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(42,'Installer Sample Data','2023 Term 2 HRM311','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','23','24','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(43,'Installer Sample Data','2023 Term 1 BUS320','50.0','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','24','21','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(44,'Installer Sample Data','2023 Term 2 BUS320','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','24','21','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(45,'Installer Sample Data','2023 Term 2 BUS203','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','21','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(46,'Installer Sample Data','2022 Term 2 BUS203','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','21','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(47,'Installer Sample Data','Last Year Term 2 ICT120','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','4','','1','6','','2','34');
INSERT INTO "hed__Course_Offering__c" VALUES(48,'Installer Sample Data','Last Year Term 1 ICT120','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','4','','2','6','','2','8');
INSERT INTO "hed__Course_Offering__c" VALUES(49,'Installer Sample Data','2023 Term 2 ICT120','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','4','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(50,'Installer Sample Data','2022 Term 1 ICT120','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','4','45','5','6','3','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(51,'Installer Sample Data','2023 Term 2 ICT352','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(52,'Installer Sample Data','2022 Term 2 ICT352','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','45','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(53,'Installer Sample Data','2023 Term 1 BUS301','50.0','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','6','21','3','6','1','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(54,'Installer Sample Data','2023 Term 2 BUS301','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','6','21','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(55,'Installer Sample Data','2023 Term 2 BUS108','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','21','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(56,'Installer Sample Data','2022 Term 2 BUS108','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','21','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(57,'Installer Sample Data','2023 Term 2 ICT310','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','45','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(58,'Installer Sample Data','2022 Term 2 ICT310','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','45','6','6','4','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(59,'Installer Sample Data','2023 Term 2 BUS211','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','21','4','6','2','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(60,'Installer Sample Data','2022 Term 2 BUS211','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','21','6','6','4','2','');
CREATE TABLE "hed__Course__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Course__c" VALUES(1,'Installer Sample Data','BUS102: Introduction to Economics','BUS102','10.0','#FF69B4','Hour','BUS102','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(2,'Installer Sample Data','BUS104 Introduction to Management','BUS104','10.0','#FF69B4','Hour','BUS104','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(3,'Installer Sample Data','BUS203 Business Law and Ethics','BUS203','10.0','#FF69B4','Hour','BUS203','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(4,'Installer Sample Data','ICT120 Introduction to Telecommunications and Networks','ICT120','10.0','#DC143C','Hour','ICT120','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(5,'Installer Sample Data','ICT352 ICT Project Management','ICT352','10.0','#DC143C','Hour','ICT352','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(6,'Installer Sample Data','BUS301 Business Analytics 2','BUS301','10.0','#FF69B4','Hour','BUS301','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(7,'Installer Sample Data','BUS108 Introduction to Informatics','BUS108','10.0','#FF69B4','Hour','BUS108','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(8,'Installer Sample Data','ICT310 Systems Analysis and Design','ICT310','10.0','#DC143C','Hour','ICT310','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(9,'Installer Sample Data','BUS211 Strategic Management','BUS211','10.0','#FF69B4','Hour','BUS211','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(10,'Installer Sample Data','ICT112 Creative Problem Solving with Programming','ICT112','10.0','#DC143C','Hour','ICT112','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(11,'Installer Sample Data','ICT115 Introduction to Systems Design','ICT115','10.0','#DC143C','Hour','ICT115','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(12,'Installer Sample Data','COR109 Communication and Thought','COR109','10.0','#FF00FF','Hour','COR109','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(13,'Installer Sample Data','MGT210 Project Management','MGT210','10.0','#FF00FF','Hour','MGT210','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(14,'Installer Sample Data','ICT320 Database Programming','ICT320','10.0','#DC143C','Hour','ICT320','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(15,'Installer Sample Data','HRM321 Managing Organisational Change','HRM321','10.0','#FF00FF','Hour','HRM321','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(16,'Installer Sample Data','IBS220 Cross-Cultural Management','IBS220','10.0','#FF00FF','Hour','IBS220','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(17,'Installer Sample Data','BUS101: Business Analytics','BUS101','10.0','#FF69B4','Hour','BUS101','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(18,'Installer Sample Data','BUS106 Accounting for Business','BUS106','10.0','#FF69B4','Hour','BUS106','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(19,'Installer Sample Data','BUS105 Introduction to Marketing','BUS105','10.0','#FF69B4','Hour','BUS105','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(20,'Installer Sample Data','MGT310 Small Business and New Venture Management','MGT310','10.0','#FF00FF','Hour','MGT310','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(21,'Installer Sample Data','ICT211 Database Design','ICT211','10.0','#DC143C','Hour','ICT211','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(22,'Installer Sample Data','ICT221 Software Development 1','ICT221','10.0','#DC143C','Hour','ICT221','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(23,'Installer Sample Data','HRM311 Leadership and Team Dynamics','HRM311','10.0','#FF00FF','Hour','HRM311','Educational Institution','Value','Term','True','1','2');
INSERT INTO "hed__Course__c" VALUES(24,'Installer Sample Data','BUS320 Corporate Governance and Social Responsibility','BUS320','10.0','#FF69B4','Hour','BUS320','Educational Institution','Value','Term','True','1','2');
CREATE TABLE "hed__Facility__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__Capacity__c" VARCHAR(255), 
	"hed__Facility_Type__c" VARCHAR(255), 
	"rio_ed__Active__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Parent_Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Facility__c" VALUES(1,'Installer Sample Data','Beta 101','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(2,'Installer Sample Data','Beta 102','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(3,'Installer Sample Data','Beta 103','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(4,'Installer Sample Data','Beta 104','10.0','Computer Lab','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(5,'Installer Sample Data','Alpha Building','','Building','True','6','');
INSERT INTO "hed__Facility__c" VALUES(6,'Installer Sample Data','Beta Building','','Building','True','6','');
INSERT INTO "hed__Facility__c" VALUES(7,'Installer Sample Data','Alpha 103','10.0','Classroom','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(8,'Installer Sample Data','Beta 100','10.0','Classroom','True','6','6');
INSERT INTO "hed__Facility__c" VALUES(9,'Installer Sample Data','Alpha 100','10.0','Classroom','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(10,'Installer Sample Data','Alpha 104','10.0','Computer Lab','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(11,'Installer Sample Data','Alpha 101','10.0','Classroom','True','6','5');
INSERT INTO "hed__Facility__c" VALUES(12,'Installer Sample Data','Alpha 102','10.0','Classroom','True','6','5');
CREATE TABLE "hed__Plan_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Plan_Requirement__c" VALUES(1,'Installer Sample Data','RIOUNI02-Elective','0125j000000IJkLAAW','Required','40.0','2.0','False','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(2,'Installer Sample Data','RIOUNI02-Mandatory','0125j000000IJkLAAW','Required','120.0','1.0','False','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(3,'Installer Sample Data','RIOUNI03-Elective','0125j000000IJkLAAW','Required','40.0','2.0','False','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(4,'Installer Sample Data','RIOUNI03-Mandatory','0125j000000IJkLAAW','Required','120.0','1.0','False','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(5,'Installer Sample Data','RIOUNI04-Electives','0125j000000IJkLAAW','Required','40.0','','False','False','False','','','False','','','3','1');
INSERT INTO "hed__Plan_Requirement__c" VALUES(6,'Installer Sample Data','RIOUNI04-Mandatory','0125j000000IJkLAAW','Required','120.0','','False','False','False','','','False','','','3','2');
INSERT INTO "hed__Plan_Requirement__c" VALUES(7,'Installer Sample Data','RIOUNI02 - BUS102','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','1','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(8,'Installer Sample Data','RIOUNI03 - BUS102','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','1','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(9,'Installer Sample Data','RIOUNI02 - ICT112','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','10','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(10,'Installer Sample Data','RIOUNI03 - ICT112','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','10','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(11,'Installer Sample Data','RIOUNI02 - ICT115','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','11','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(12,'Installer Sample Data','RIOUNI03 - ICT115','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','11','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(13,'Installer Sample Data','RIOUNI02 - COR109','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','12','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(14,'Installer Sample Data','RIOUNI03 - COR109','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','12','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(15,'Installer Sample Data','RIOUNI02 - MGT210','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','13','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(16,'Installer Sample Data','RIOUNI03 - MGT210','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','13','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(17,'Installer Sample Data','RIOUNI02 - ICT320','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','14','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(18,'Installer Sample Data','RIOUNI03 - ICT320','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','14','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(19,'Installer Sample Data','RIOUNI02 - HRM321','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','15','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(20,'Installer Sample Data','RIOUNI03 - HRM321','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','15','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(21,'Installer Sample Data','RIOUNI02 - IBS220','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','16','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(22,'Installer Sample Data','RIOUNI03 - IBS220','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','16','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(23,'Installer Sample Data','RIOUNI02 - BUS101','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','17','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(24,'Installer Sample Data','RIOUNI03 - BUS101','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','17','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(25,'Installer Sample Data','RIOUNI02 - BUS106','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','18','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(26,'Installer Sample Data','RIOUNI03 - BUS106','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','18','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(27,'Installer Sample Data','RIOUNI02 - BUS105','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','19','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(28,'Installer Sample Data','RIOUNI03 - BUS105','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','19','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(29,'Installer Sample Data','RIOUNI02 - BUS104','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','2','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(30,'Installer Sample Data','RIOUNI03 - BUS104','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','2','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(31,'Installer Sample Data','RIOUNI02 - MGT310','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','20','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(32,'Installer Sample Data','RIOUNI03 - MGT310','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','20','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(33,'Installer Sample Data','RIOUNI02 - ICT211','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','21','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(34,'Installer Sample Data','RIOUNI03 - ICT211','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','21','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(35,'Installer Sample Data','RIOUNI02 - ICT221','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','<p>ICT112 is the pre-requisite for this course.</p>','A','False','22','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(36,'Installer Sample Data','RIOUNI03 - ICT221','0125j000000IJkKAAW','Optional','10.0','','False','False','False','<p>ICT112 is a pre-requisite for this course.</p>','A','False','22','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(37,'Installer Sample Data','RIOUNI02 - HRM311','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','23','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(38,'Installer Sample Data','RIOUNI03 - HRM311','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','23','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(39,'Installer Sample Data','RIOUNI02 - BUS320','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','24','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(40,'Installer Sample Data','RIOUNI03 - BUS320','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','24','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(41,'Installer Sample Data','RIOUNI02 - BUS203','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','3','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(42,'Installer Sample Data','RIOUNI03 - BUS203','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','3','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(43,'Installer Sample Data','RIOUNI02 - ICT120','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','4','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(44,'Installer Sample Data','RIOUNI03 - ICT120','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','4','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(45,'Installer Sample Data','RIOUNI02 - ICT352','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','5','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(46,'Installer Sample Data','RIOUNI03 - ICT352','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','5','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(47,'Installer Sample Data','RIOUNI02 - BUS301','0125j000000IJkKAAW','Optional','10.0','','False','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','6','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(48,'Installer Sample Data','RIOUNI03 - BUS301','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','6','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(49,'Installer Sample Data','RIOUNI02 - BUS108','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','7','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(50,'Installer Sample Data','RIOUNI03 - BUS108','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','7','4','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(51,'Installer Sample Data','RIOUNI02 - ICT310','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','8','2','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(52,'Installer Sample Data','RIOUNI03 - ICT310','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','8','3','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(53,'Installer Sample Data','RIOUNI02 - BUS211','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','9','1','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(54,'Installer Sample Data','RIOUNI03 - BUS211','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','9','4','1','');
CREATE TABLE "hed__Plan_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0125j000000IJkKAAW','Course');
INSERT INTO "hed__Plan_Requirement__c_rt_mapping" VALUES('0125j000000IJkLAAW','Group');
CREATE TABLE "hed__Program_Enrollment__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Program_Enrollment__c" VALUES(1,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Half-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','1','35','2','15','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(2,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','3','22','2','16','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(3,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','25','36','2','14','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(4,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','19','40','2','8','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(5,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','18','39','2','7','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(6,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','4','33','2','17','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(7,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','7','38','2','20','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(8,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','21','42','2','10','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(9,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','6','37','2','19','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(10,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','20','41','2','9','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(11,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','5','34','2','18','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(12,'Installer Sample Data','2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','24','44','2','13','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(13,'Installer Sample Data','2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','22','32','2','11','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(14,'Installer Sample Data','2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','23','43','2','12','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(15,'Installer Sample Data','2021-12-23','2021-12-23','40.0','40.0','True','Full-time','6.25','25.0','Course','Self Paid','25.0','Self Paid','Yes','Current','','Default','8','13','23','2','1','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(16,'Installer Sample Data','2022-01-09','2022-01-09','40.0','40.0','True','Full-time','6.0','25.0','Course','Self Paid','24.0','Self Paid','Yes','Current','Group A','Default','8','16','31','2','5','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(17,'Installer Sample Data','2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group B','Default','8','15','30','2','4','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(18,'Installer Sample Data','2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','8','17','26','2','6','1');
INSERT INTO "hed__Program_Enrollment__c" VALUES(19,'Installer Sample Data','2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group A','Default','8','14','25','2','2','1');
CREATE TABLE "hed__Program_Plan__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Program_Plan__c" VALUES(1,'Installer Sample Data','Bachelor of Business Management (Course-Upfront)','True','2022-01-20','Current','False','False','False','False','Course','Yes','For application fee only','True','2','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(2,'Installer Sample Data','Bachelor of Business Information System V1','True','2022-01-20','Current','False','False','False','False','Course','Yes','For application fee only','True','8','','1','');
INSERT INTO "hed__Program_Plan__c" VALUES(3,'Installer Sample Data','Bachelor of Business Information System V1.5','False','2022-01-20','Current','True','False','False','False','Course','Yes','For application fee only','True','8','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(4,'Installer Sample Data','Bachelor of Business Information System V2','False','2022-01-20','Current','True','True','True','False','Course','Yes','For application fee only','True','8','6','','5');
CREATE TABLE "hed__Term_Grade__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Term_Grade__c" VALUES(1,'Installer Sample Data','','','','','','','23','65','8','','5');
INSERT INTO "hed__Term_Grade__c" VALUES(2,'Installer Sample Data','','','','','','','31','105','8','','5');
CREATE TABLE "hed__Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "hed__Term__c" VALUES(1,'Installer Sample Data','Last Year Term 2','2021-11-18','2021-07-02','','','Final Grade','Default','5','2');
INSERT INTO "hed__Term__c" VALUES(2,'Installer Sample Data','Last Year Term 1','2021-06-18','2020-12-20','','','Final Grade','Default','5','');
INSERT INTO "hed__Term__c" VALUES(3,'Installer Sample Data','Next Year Term 1','2023-06-18','2023-01-20','Semester','2023-01-19T14:00:00.000+0000','Final Grade','Default','5','6');
INSERT INTO "hed__Term__c" VALUES(4,'Installer Sample Data','Next Year Term 2','2023-11-18','2023-07-02','Semester','2023-07-01T14:00:00.000+0000','Final Grade','Default','5','3');
INSERT INTO "hed__Term__c" VALUES(5,'Installer Sample Data','Current Year Term 1','2022-06-18','2022-01-20','Semester','2021-12-19T14:00:00.000+0000','Final Grade','Default','5','');
INSERT INTO "hed__Term__c" VALUES(6,'Installer Sample Data','Current Year Term 2','2022-11-18','2022-07-02','Semester','2022-07-01T14:00:00.000+0000','Final Grade','Default','5','5');
CREATE TABLE "hed__Time_Block__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"hed__End_Time__c" VARCHAR(255), 
	"hed__Start_Time__c" VARCHAR(255), 
	"rio_ed__Is_Extended__c" VARCHAR(255), 
	"hed__Educational_Institution__c" VARCHAR(255), 
	"rio_ed__Parent_Time_Block__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Time_Block__c" VALUES(1,'Installer Sample Data','Lunch','13:00:00.000Z','12:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(2,'Installer Sample Data','Noon #2','15:00:00.000Z','14:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(3,'Installer Sample Data','Noon #3','16:00:00.000Z','15:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(4,'Installer Sample Data','Evening #1','18:00:00.000Z','17:00:00.000Z','True','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(5,'Installer Sample Data','Morning #1','10:00:00.000Z','09:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(6,'Installer Sample Data','Default Time Block','','','False','5','');
INSERT INTO "hed__Time_Block__c" VALUES(7,'Installer Sample Data','Morning #2','11:00:00.000Z','10:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(8,'Installer Sample Data','Morning #3','12:00:00.000Z','11:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(9,'Installer Sample Data','Noon #4','17:00:00.000Z','16:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(10,'Installer Sample Data','Noon #1','14:00:00.000Z','13:00:00.000Z','False','5','6');
INSERT INTO "hed__Time_Block__c" VALUES(11,'Installer Sample Data','Afternoon','17:00:00.000Z','13:00:00.000Z','False','5','12');
INSERT INTO "hed__Time_Block__c" VALUES(12,'Installer Sample Data','Other Parent Time Block','17:00:00.000Z','09:00:00.000Z','False','5','');
INSERT INTO "hed__Time_Block__c" VALUES(13,'Installer Sample Data','Morning','12:00:00.000Z','09:00:00.000Z','False','5','12');
CREATE TABLE "rio_ed__Allocation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Allocation__c" VALUES(1,'Installer Sample Data','Tentative','2022-03-10','15:00:00.000Z','2022-03-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-10','14:00:00.000Z','2022-03-10T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(2,'Installer Sample Data','Tentative','2022-03-17','15:00:00.000Z','2022-03-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-17','14:00:00.000Z','2022-03-17T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(3,'Installer Sample Data','Tentative','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-24','14:00:00.000Z','2022-03-24T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(4,'Installer Sample Data','Tentative','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-31','14:00:00.000Z','2022-03-31T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(5,'Installer Sample Data','Tentative','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-07','14:00:00.000Z','2022-04-07T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(6,'Installer Sample Data','Tentative','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-14','14:00:00.000Z','2022-04-14T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(7,'Installer Sample Data','Tentative','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-21','14:00:00.000Z','2022-04-21T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(8,'Installer Sample Data','Tentative','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-28','14:00:00.000Z','2022-04-28T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(9,'Installer Sample Data','Tentative','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-05','14:00:00.000Z','2022-05-05T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(10,'Installer Sample Data','Tentative','2022-05-19','15:00:00.000Z','2022-05-19T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-19','14:00:00.000Z','2022-05-19T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(11,'Installer Sample Data','Tentative','2022-05-12','15:00:00.000Z','2022-05-12T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-12','14:00:00.000Z','2022-05-12T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(12,'Installer Sample Data','Tentative','2022-01-13','15:00:00.000Z','2022-01-13T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-13','14:00:00.000Z','2022-01-13T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(13,'Installer Sample Data','Tentative','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-20','14:00:00.000Z','2022-01-20T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(14,'Installer Sample Data','Tentative','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-27','14:00:00.000Z','2022-01-27T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(15,'Installer Sample Data','Tentative','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-03','14:00:00.000Z','2022-02-03T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(16,'Installer Sample Data','Tentative','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-10','14:00:00.000Z','2022-02-10T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(17,'Installer Sample Data','Tentative','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-17','14:00:00.000Z','2022-02-17T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(18,'Installer Sample Data','Tentative','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-24','14:00:00.000Z','2022-02-24T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(19,'Installer Sample Data','Tentative','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-03','14:00:00.000Z','2022-03-03T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(20,'Installer Sample Data','Tentative','2022-01-26','13:00:00.000Z','2022-01-26T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(21,'Installer Sample Data','Tentative','2022-02-02','13:00:00.000Z','2022-02-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(22,'Installer Sample Data','Tentative','2022-02-09','13:00:00.000Z','2022-02-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(23,'Installer Sample Data','Tentative','2022-02-24','17:00:00.000Z','2022-02-24T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(24,'Installer Sample Data','Tentative','2022-03-03','17:00:00.000Z','2022-03-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(25,'Installer Sample Data','Tentative','2022-03-10','17:00:00.000Z','2022-03-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-10','16:00:00.000Z','2022-03-10T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(26,'Installer Sample Data','Tentative','2022-03-17','17:00:00.000Z','2022-03-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-17','16:00:00.000Z','2022-03-17T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(27,'Installer Sample Data','Tentative','2022-03-24','17:00:00.000Z','2022-03-24T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(28,'Installer Sample Data','Tentative','2022-03-31','17:00:00.000Z','2022-03-31T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(29,'Installer Sample Data','Tentative','2022-04-07','17:00:00.000Z','2022-04-07T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(30,'Installer Sample Data','Tentative','2022-02-16','13:00:00.000Z','2022-02-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(31,'Installer Sample Data','Tentative','2022-02-23','13:00:00.000Z','2022-02-23T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(32,'Installer Sample Data','Tentative','2022-03-02','13:00:00.000Z','2022-03-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(33,'Installer Sample Data','Tentative','2022-03-09','13:00:00.000Z','2022-03-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-09','12:00:00.000Z','2022-03-09T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(34,'Installer Sample Data','Tentative','2022-03-16','13:00:00.000Z','2022-03-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-16','12:00:00.000Z','2022-03-16T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(35,'Installer Sample Data','Tentative','2022-03-23','13:00:00.000Z','2022-03-23T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(36,'Installer Sample Data','Tentative','2022-03-30','13:00:00.000Z','2022-03-30T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(37,'Installer Sample Data','Tentative','2022-04-06','13:00:00.000Z','2022-04-06T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(38,'Installer Sample Data','Tentative','2022-04-13','13:00:00.000Z','2022-04-13T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(39,'Installer Sample Data','Tentative','2022-04-20','13:00:00.000Z','2022-04-20T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(40,'Installer Sample Data','Tentative','2022-04-27','13:00:00.000Z','2022-04-27T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(41,'Installer Sample Data','Tentative','2022-05-04','13:00:00.000Z','2022-05-04T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(42,'Installer Sample Data','Tentative','2022-05-11','13:00:00.000Z','2022-05-11T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-11','12:00:00.000Z','2022-05-11T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(43,'Installer Sample Data','Tentative','2022-05-18','13:00:00.000Z','2022-05-18T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-18','12:00:00.000Z','2022-05-18T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(44,'Installer Sample Data','Tentative','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(45,'Installer Sample Data','Tentative','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(46,'Installer Sample Data','Tentative','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(47,'Installer Sample Data','Tentative','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(48,'Installer Sample Data','Tentative','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(49,'Installer Sample Data','Tentative','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(50,'Installer Sample Data','Tentative','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(51,'Installer Sample Data','Tentative','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(52,'Installer Sample Data','Tentative','2022-04-14','17:00:00.000Z','2022-04-14T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(53,'Installer Sample Data','Tentative','2022-07-08','14:00:00.000Z','2022-07-08T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(54,'Installer Sample Data','Tentative','2022-07-15','14:00:00.000Z','2022-07-15T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(55,'Installer Sample Data','Tentative','2022-07-22','14:00:00.000Z','2022-07-22T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(56,'Installer Sample Data','Tentative','2022-07-29','14:00:00.000Z','2022-07-29T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(57,'Installer Sample Data','Tentative','2022-08-05','14:00:00.000Z','2022-08-05T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(58,'Installer Sample Data','Tentative','2022-08-19','14:00:00.000Z','2022-08-19T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(59,'Installer Sample Data','Tentative','2022-08-26','14:00:00.000Z','2022-08-26T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(60,'Installer Sample Data','Tentative','2022-09-02','14:00:00.000Z','2022-09-02T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(61,'Installer Sample Data','Tentative','2022-09-09','14:00:00.000Z','2022-09-09T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-09','13:00:00.000Z','2022-09-09T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(62,'Installer Sample Data','Tentative','2022-09-16','14:00:00.000Z','2022-09-16T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-16','13:00:00.000Z','2022-09-16T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(63,'Installer Sample Data','Tentative','2022-09-23','14:00:00.000Z','2022-09-23T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(64,'Installer Sample Data','Tentative','2022-08-12','14:00:00.000Z','2022-08-12T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(65,'Installer Sample Data','Tentative','2022-09-30','14:00:00.000Z','2022-09-30T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(66,'Installer Sample Data','Tentative','2022-10-07','14:00:00.000Z','2022-10-07T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(67,'Installer Sample Data','Tentative','2022-10-14','14:00:00.000Z','2022-10-14T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(68,'Installer Sample Data','Tentative','2022-10-21','14:00:00.000Z','2022-10-21T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(69,'Installer Sample Data','Tentative','2022-10-28','14:00:00.000Z','2022-10-28T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(70,'Installer Sample Data','Tentative','2022-11-04','14:00:00.000Z','2022-11-04T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(71,'Installer Sample Data','Tentative','2022-11-11','14:00:00.000Z','2022-11-11T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-11','13:00:00.000Z','2022-11-11T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(72,'Installer Sample Data','Tentative','2022-11-18','14:00:00.000Z','2022-11-18T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-18','13:00:00.000Z','2022-11-18T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(73,'Installer Sample Data','Tentative','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-02','10:00:00.000Z','2022-09-02T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(74,'Installer Sample Data','Tentative','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(75,'Installer Sample Data','Tentative','2022-09-09','12:00:00.000Z','2022-09-09T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-09','11:00:00.000Z','2022-09-09T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(76,'Installer Sample Data','Tentative','2022-09-16','12:00:00.000Z','2022-09-16T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-16','11:00:00.000Z','2022-09-16T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(77,'Installer Sample Data','Tentative','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(78,'Installer Sample Data','Tentative','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(79,'Installer Sample Data','Tentative','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(80,'Installer Sample Data','Tentative','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(81,'Installer Sample Data','Tentative','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(82,'Installer Sample Data','Tentative','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(83,'Installer Sample Data','Tentative','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(84,'Installer Sample Data','Tentative','2022-11-18','12:00:00.000Z','2022-11-18T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-18','11:00:00.000Z','2022-11-18T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(85,'Installer Sample Data','Tentative','2022-11-11','12:00:00.000Z','2022-11-11T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-11','11:00:00.000Z','2022-11-11T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(86,'Installer Sample Data','Tentative','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-17','13:00:00.000Z','2022-08-17T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(87,'Installer Sample Data','Tentative','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-24','13:00:00.000Z','2022-08-24T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(88,'Installer Sample Data','Tentative','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-31','13:00:00.000Z','2022-08-31T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(89,'Installer Sample Data','Tentative','2022-09-07','14:00:00.000Z','2022-09-07T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-07','13:00:00.000Z','2022-09-07T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(90,'Installer Sample Data','Tentative','2022-09-14','14:00:00.000Z','2022-09-14T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-14','13:00:00.000Z','2022-09-14T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(91,'Installer Sample Data','Tentative','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-21','13:00:00.000Z','2022-09-21T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(92,'Installer Sample Data','Tentative','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-06','13:00:00.000Z','2022-07-06T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(93,'Installer Sample Data','Tentative','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-13','13:00:00.000Z','2022-07-13T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(94,'Installer Sample Data','Tentative','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-20','13:00:00.000Z','2022-07-20T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(95,'Installer Sample Data','Tentative','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-27','13:00:00.000Z','2022-07-27T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(96,'Installer Sample Data','Tentative','2022-09-09','11:00:00.000Z','2022-09-09T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-09','10:00:00.000Z','2022-09-09T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(97,'Installer Sample Data','Tentative','2022-09-16','11:00:00.000Z','2022-09-16T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-16','10:00:00.000Z','2022-09-16T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(98,'Installer Sample Data','Tentative','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-23','10:00:00.000Z','2022-09-22T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(99,'Installer Sample Data','Tentative','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-30','10:00:00.000Z','2022-09-29T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(100,'Installer Sample Data','Tentative','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-07','10:00:00.000Z','2022-10-06T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(101,'Installer Sample Data','Tentative','2022-11-11','11:00:00.000Z','2022-11-11T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-11','10:00:00.000Z','2022-11-10T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(102,'Installer Sample Data','Tentative','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-04','10:00:00.000Z','2022-11-03T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(103,'Installer Sample Data','Tentative','2022-11-18','11:00:00.000Z','2022-11-18T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-18','10:00:00.000Z','2022-11-17T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(104,'Installer Sample Data','Tentative','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-05','10:00:00.000Z','2022-08-05T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(105,'Installer Sample Data','Tentative','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-12','10:00:00.000Z','2022-08-12T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(106,'Installer Sample Data','Tentative','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-19','10:00:00.000Z','2022-08-19T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(107,'Installer Sample Data','Tentative','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-26','10:00:00.000Z','2022-08-26T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(108,'Installer Sample Data','Tentative','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-08','10:00:00.000Z','2022-07-08T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(109,'Installer Sample Data','Tentative','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-15','10:00:00.000Z','2022-07-15T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(110,'Installer Sample Data','Tentative','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-22','10:00:00.000Z','2022-07-22T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(111,'Installer Sample Data','Tentative','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-29','10:00:00.000Z','2022-07-29T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(112,'Installer Sample Data','Tentative','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-14','10:00:00.000Z','2022-10-13T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(113,'Installer Sample Data','Tentative','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-21','10:00:00.000Z','2022-10-20T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(114,'Installer Sample Data','Tentative','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-28','10:00:00.000Z','2022-10-27T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(115,'Installer Sample Data','Tentative','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-01-26','09:00:00.000Z','2022-01-25T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(116,'Installer Sample Data','Tentative','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-02','09:00:00.000Z','2022-02-01T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(117,'Installer Sample Data','Tentative','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-09','09:00:00.000Z','2022-02-08T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(118,'Installer Sample Data','Tentative','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-03','13:00:00.000Z','2022-08-03T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(119,'Installer Sample Data','Tentative','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-10','13:00:00.000Z','2022-08-10T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(120,'Installer Sample Data','Tentative','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-28','13:00:00.000Z','2022-09-28T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(121,'Installer Sample Data','Tentative','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-05','13:00:00.000Z','2022-10-05T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(122,'Installer Sample Data','Tentative','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-12','13:00:00.000Z','2022-10-12T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(123,'Installer Sample Data','Tentative','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-19','13:00:00.000Z','2022-10-19T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(124,'Installer Sample Data','Tentative','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-26','13:00:00.000Z','2022-10-26T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(125,'Installer Sample Data','Tentative','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-02','13:00:00.000Z','2022-11-02T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(126,'Installer Sample Data','Tentative','2022-11-09','14:00:00.000Z','2022-11-09T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-09','13:00:00.000Z','2022-11-09T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(127,'Installer Sample Data','Tentative','2022-11-16','14:00:00.000Z','2022-11-16T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-16','13:00:00.000Z','2022-11-16T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(128,'Installer Sample Data','Tentative','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(129,'Installer Sample Data','Tentative','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(130,'Installer Sample Data','Tentative','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(131,'Installer Sample Data','Tentative','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(132,'Installer Sample Data','Tentative','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(133,'Installer Sample Data','Tentative','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(134,'Installer Sample Data','Tentative','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(135,'Installer Sample Data','Tentative','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(136,'Installer Sample Data','Tentative','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(137,'Installer Sample Data','Tentative','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(138,'Installer Sample Data','Tentative','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(139,'Installer Sample Data','Tentative','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(140,'Installer Sample Data','Tentative','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-16','09:00:00.000Z','2022-02-15T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(141,'Installer Sample Data','Tentative','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-23','09:00:00.000Z','2022-02-22T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(142,'Installer Sample Data','Tentative','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-23','09:00:00.000Z','2022-03-22T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(143,'Installer Sample Data','Tentative','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-30','09:00:00.000Z','2022-03-29T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(144,'Installer Sample Data','Tentative','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-06','09:00:00.000Z','2022-04-05T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(145,'Installer Sample Data','Tentative','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-13','09:00:00.000Z','2022-04-12T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(146,'Installer Sample Data','Tentative','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-20','09:00:00.000Z','2022-04-19T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(147,'Installer Sample Data','Tentative','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-27','09:00:00.000Z','2022-04-26T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(148,'Installer Sample Data','Tentative','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-04','09:00:00.000Z','2022-05-03T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(149,'Installer Sample Data','Tentative','2022-05-11','10:00:00.000Z','2022-05-11T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-11','09:00:00.000Z','2022-05-10T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(150,'Installer Sample Data','Tentative','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-02','09:00:00.000Z','2022-03-01T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(151,'Installer Sample Data','Tentative','2022-03-09','10:00:00.000Z','2022-03-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-09','09:00:00.000Z','2022-03-08T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(152,'Installer Sample Data','Tentative','2022-03-16','10:00:00.000Z','2022-03-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-16','09:00:00.000Z','2022-03-15T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(153,'Installer Sample Data','Tentative','2022-05-18','10:00:00.000Z','2022-05-18T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-18','09:00:00.000Z','2022-05-17T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(154,'Installer Sample Data','Tentative','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(155,'Installer Sample Data','Tentative','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(156,'Installer Sample Data','Tentative','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(157,'Installer Sample Data','Tentative','2022-09-09','13:00:00.000Z','2022-09-09T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-09','12:00:00.000Z','2022-09-09T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(158,'Installer Sample Data','Tentative','2022-09-16','13:00:00.000Z','2022-09-16T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-16','12:00:00.000Z','2022-09-16T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(159,'Installer Sample Data','Tentative','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(160,'Installer Sample Data','Tentative','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(161,'Installer Sample Data','Tentative','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(162,'Installer Sample Data','Tentative','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(163,'Installer Sample Data','Tentative','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(164,'Installer Sample Data','Tentative','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(165,'Installer Sample Data','Tentative','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(166,'Installer Sample Data','Tentative','2023-03-09','11:00:00.000Z','2023-03-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-09','10:00:00.000Z','2023-03-08T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(167,'Installer Sample Data','Tentative','2023-03-16','11:00:00.000Z','2023-03-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-16','10:00:00.000Z','2023-03-15T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(168,'Installer Sample Data','Tentative','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(169,'Installer Sample Data','Tentative','2023-06-08','11:00:00.000Z','2023-06-08T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-08','10:00:00.000Z','2023-06-08T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(170,'Installer Sample Data','Tentative','2023-06-15','11:00:00.000Z','2023-06-15T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-15','10:00:00.000Z','2023-06-15T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(171,'Installer Sample Data','Tentative','2023-02-08','17:00:00.000Z','2023-02-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-08','16:00:00.000Z','2023-02-08T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(172,'Installer Sample Data','Tentative','2023-02-15','17:00:00.000Z','2023-02-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-15','16:00:00.000Z','2023-02-15T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(173,'Installer Sample Data','Tentative','2023-02-22','17:00:00.000Z','2023-02-22T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-22','16:00:00.000Z','2023-02-22T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(174,'Installer Sample Data','Tentative','2023-03-01','17:00:00.000Z','2023-03-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-01','16:00:00.000Z','2023-03-01T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(175,'Installer Sample Data','Tentative','2023-03-08','17:00:00.000Z','2023-03-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-08','16:00:00.000Z','2023-03-08T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(176,'Installer Sample Data','Tentative','2023-03-15','17:00:00.000Z','2023-03-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-15','16:00:00.000Z','2023-03-15T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(177,'Installer Sample Data','Tentative','2023-03-22','17:00:00.000Z','2023-03-22T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-22','16:00:00.000Z','2023-03-22T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(178,'Installer Sample Data','Tentative','2023-04-05','17:00:00.000Z','2023-04-05T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-05','16:00:00.000Z','2023-04-05T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(179,'Installer Sample Data','Tentative','2023-04-12','17:00:00.000Z','2023-04-12T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-12','16:00:00.000Z','2023-04-12T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(180,'Installer Sample Data','Tentative','2023-04-19','17:00:00.000Z','2023-04-19T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-19','16:00:00.000Z','2023-04-19T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(181,'Installer Sample Data','Tentative','2023-04-26','17:00:00.000Z','2023-04-26T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-26','16:00:00.000Z','2023-04-26T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(182,'Installer Sample Data','Tentative','2023-05-03','17:00:00.000Z','2023-05-03T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-03','16:00:00.000Z','2023-05-03T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(183,'Installer Sample Data','Tentative','2023-03-29','17:00:00.000Z','2023-03-29T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-29','16:00:00.000Z','2023-03-29T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(184,'Installer Sample Data','Tentative','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(185,'Installer Sample Data','Tentative','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(186,'Installer Sample Data','Tentative','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(187,'Installer Sample Data','Tentative','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(188,'Installer Sample Data','Tentative','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(189,'Installer Sample Data','Tentative','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(190,'Installer Sample Data','Tentative','2022-11-11','13:00:00.000Z','2022-11-11T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-11','12:00:00.000Z','2022-11-11T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(191,'Installer Sample Data','Tentative','2022-11-18','13:00:00.000Z','2022-11-18T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-18','12:00:00.000Z','2022-11-18T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(192,'Installer Sample Data','Tentative','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(193,'Installer Sample Data','Tentative','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(194,'Installer Sample Data','Tentative','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(195,'Installer Sample Data','Tentative','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(196,'Installer Sample Data','Tentative','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-03','14:00:00.000Z','2023-11-03T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(197,'Installer Sample Data','Tentative','2023-11-10','15:00:00.000Z','2023-11-10T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-10','14:00:00.000Z','2023-11-10T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(198,'Installer Sample Data','Tentative','2023-11-17','15:00:00.000Z','2023-11-17T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-17','14:00:00.000Z','2023-11-17T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(199,'Installer Sample Data','Tentative','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-11','14:00:00.000Z','2023-08-11T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(200,'Installer Sample Data','Tentative','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-18','14:00:00.000Z','2023-08-18T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(201,'Installer Sample Data','Tentative','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-25','14:00:00.000Z','2023-08-25T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(202,'Installer Sample Data','Tentative','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-01','14:00:00.000Z','2023-09-01T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(203,'Installer Sample Data','Tentative','2023-09-08','15:00:00.000Z','2023-09-08T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-08','14:00:00.000Z','2023-09-08T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(204,'Installer Sample Data','Tentative','2023-09-15','15:00:00.000Z','2023-09-15T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-15','14:00:00.000Z','2023-09-15T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(205,'Installer Sample Data','Tentative','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-22','14:00:00.000Z','2023-09-22T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(206,'Installer Sample Data','Tentative','2023-05-10','17:00:00.000Z','2023-05-10T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-10','16:00:00.000Z','2023-05-10T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(207,'Installer Sample Data','Tentative','2023-05-17','17:00:00.000Z','2023-05-17T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-17','16:00:00.000Z','2023-05-17T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(208,'Installer Sample Data','Tentative','2023-05-24','17:00:00.000Z','2023-05-24T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-24','16:00:00.000Z','2023-05-24T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(209,'Installer Sample Data','Tentative','2023-05-31','17:00:00.000Z','2023-05-31T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-31','16:00:00.000Z','2023-05-31T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(210,'Installer Sample Data','Tentative','2023-06-07','17:00:00.000Z','2023-06-07T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-06-07','16:00:00.000Z','2023-06-07T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(211,'Installer Sample Data','Tentative','2023-06-14','17:00:00.000Z','2023-06-14T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-06-14','16:00:00.000Z','2023-06-14T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(212,'Installer Sample Data','Tentative','2023-01-25','17:00:00.000Z','2023-01-25T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-01-25','16:00:00.000Z','2023-01-25T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(213,'Installer Sample Data','Tentative','2023-02-01','17:00:00.000Z','2023-02-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-01','16:00:00.000Z','2023-02-01T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(214,'Installer Sample Data','Tentative','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(215,'Installer Sample Data','Tentative','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(216,'Installer Sample Data','Tentative','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(217,'Installer Sample Data','Tentative','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(218,'Installer Sample Data','Tentative','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(219,'Installer Sample Data','Tentative','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(220,'Installer Sample Data','Tentative','2022-03-09','11:00:00.000Z','2022-03-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-09','10:00:00.000Z','2022-03-08T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(221,'Installer Sample Data','Tentative','2022-03-16','11:00:00.000Z','2022-03-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-16','10:00:00.000Z','2022-03-15T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(222,'Installer Sample Data','Tentative','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(223,'Installer Sample Data','Tentative','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(224,'Installer Sample Data','Tentative','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(225,'Installer Sample Data','Tentative','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(226,'Installer Sample Data','Tentative','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(227,'Installer Sample Data','Tentative','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(228,'Installer Sample Data','Tentative','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-29','14:00:00.000Z','2023-09-29T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(229,'Installer Sample Data','Tentative','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-07','14:00:00.000Z','2023-07-07T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(230,'Installer Sample Data','Tentative','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-14','14:00:00.000Z','2023-07-14T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(231,'Installer Sample Data','Tentative','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-06','14:00:00.000Z','2023-10-06T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(232,'Installer Sample Data','Tentative','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-13','14:00:00.000Z','2023-10-13T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(233,'Installer Sample Data','Tentative','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-20','14:00:00.000Z','2023-10-20T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(234,'Installer Sample Data','Tentative','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-27','14:00:00.000Z','2023-10-27T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(235,'Installer Sample Data','Tentative','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-21','14:00:00.000Z','2023-07-21T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(236,'Installer Sample Data','Tentative','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-28','14:00:00.000Z','2023-07-28T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(237,'Installer Sample Data','Tentative','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-04','14:00:00.000Z','2023-08-04T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(238,'Installer Sample Data','Tentative','2023-11-02','13:00:00.000Z','2023-11-02T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-02','12:00:00.000Z','2023-11-02T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(239,'Installer Sample Data','Tentative','2023-11-09','13:00:00.000Z','2023-11-09T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-09','12:00:00.000Z','2023-11-09T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(240,'Installer Sample Data','Tentative','2023-11-16','13:00:00.000Z','2023-11-16T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-16','12:00:00.000Z','2023-11-16T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(241,'Installer Sample Data','Tentative','2023-08-31','13:00:00.000Z','2023-08-31T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-31','12:00:00.000Z','2023-08-31T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(242,'Installer Sample Data','Tentative','2023-09-07','13:00:00.000Z','2023-09-07T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-07','12:00:00.000Z','2023-09-07T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(243,'Installer Sample Data','Tentative','2023-09-14','13:00:00.000Z','2023-09-14T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-14','12:00:00.000Z','2023-09-14T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(244,'Installer Sample Data','Tentative','2023-09-21','13:00:00.000Z','2023-09-21T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-21','12:00:00.000Z','2023-09-21T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(245,'Installer Sample Data','Tentative','2023-07-06','13:00:00.000Z','2023-07-06T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-06','12:00:00.000Z','2023-07-06T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(246,'Installer Sample Data','Tentative','2023-07-13','13:00:00.000Z','2023-07-13T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-13','12:00:00.000Z','2023-07-13T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(247,'Installer Sample Data','Tentative','2023-07-20','13:00:00.000Z','2023-07-20T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-20','12:00:00.000Z','2023-07-20T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(248,'Installer Sample Data','Tentative','2023-07-27','13:00:00.000Z','2023-07-27T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-27','12:00:00.000Z','2023-07-27T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(249,'Installer Sample Data','Tentative','2023-08-03','13:00:00.000Z','2023-08-03T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-03','12:00:00.000Z','2023-08-03T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(250,'Installer Sample Data','Tentative','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(251,'Installer Sample Data','Tentative','2022-05-11','11:00:00.000Z','2022-05-11T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-11','10:00:00.000Z','2022-05-11T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(252,'Installer Sample Data','Tentative','2022-05-18','11:00:00.000Z','2022-05-18T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-18','10:00:00.000Z','2022-05-18T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(253,'Installer Sample Data','Tentative','2022-07-20','16:00:00.000Z','2022-07-20T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(254,'Installer Sample Data','Tentative','2022-07-27','16:00:00.000Z','2022-07-27T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(255,'Installer Sample Data','Tentative','2022-08-03','16:00:00.000Z','2022-08-03T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(256,'Installer Sample Data','Tentative','2022-07-06','16:00:00.000Z','2022-07-06T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(257,'Installer Sample Data','Tentative','2022-07-13','16:00:00.000Z','2022-07-13T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(258,'Installer Sample Data','Tentative','2022-08-10','16:00:00.000Z','2022-08-10T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(259,'Installer Sample Data','Tentative','2022-08-17','16:00:00.000Z','2022-08-17T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(260,'Installer Sample Data','Tentative','2022-08-24','16:00:00.000Z','2022-08-24T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(261,'Installer Sample Data','Tentative','2022-08-31','16:00:00.000Z','2022-08-31T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(262,'Installer Sample Data','Tentative','2022-09-07','16:00:00.000Z','2022-09-07T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-07','15:00:00.000Z','2022-09-07T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(263,'Installer Sample Data','Tentative','2022-09-14','16:00:00.000Z','2022-09-14T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-14','15:00:00.000Z','2022-09-14T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(264,'Installer Sample Data','Tentative','2022-09-21','16:00:00.000Z','2022-09-21T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(265,'Installer Sample Data','Tentative','2022-10-05','16:00:00.000Z','2022-10-05T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(266,'Installer Sample Data','Tentative','2022-09-28','16:00:00.000Z','2022-09-28T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(267,'Installer Sample Data','Tentative','2022-10-12','16:00:00.000Z','2022-10-12T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(268,'Installer Sample Data','Tentative','2022-10-19','16:00:00.000Z','2022-10-19T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(269,'Installer Sample Data','Tentative','2022-10-26','16:00:00.000Z','2022-10-26T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(270,'Installer Sample Data','Tentative','2022-11-02','16:00:00.000Z','2022-11-02T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(271,'Installer Sample Data','Tentative','2022-11-09','16:00:00.000Z','2022-11-09T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-09','15:00:00.000Z','2022-11-09T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(272,'Installer Sample Data','Tentative','2023-08-10','13:00:00.000Z','2023-08-10T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-10','12:00:00.000Z','2023-08-10T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(273,'Installer Sample Data','Tentative','2023-08-17','13:00:00.000Z','2023-08-17T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-17','12:00:00.000Z','2023-08-17T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(274,'Installer Sample Data','Tentative','2023-08-24','13:00:00.000Z','2023-08-24T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-24','12:00:00.000Z','2023-08-24T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(275,'Installer Sample Data','Tentative','2023-10-12','13:00:00.000Z','2023-10-12T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-12','12:00:00.000Z','2023-10-12T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(276,'Installer Sample Data','Tentative','2023-09-28','13:00:00.000Z','2023-09-28T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-28','12:00:00.000Z','2023-09-28T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(277,'Installer Sample Data','Tentative','2023-10-05','13:00:00.000Z','2023-10-05T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-05','12:00:00.000Z','2023-10-05T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(278,'Installer Sample Data','Tentative','2023-10-19','13:00:00.000Z','2023-10-19T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-19','12:00:00.000Z','2023-10-19T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(279,'Installer Sample Data','Tentative','2023-10-26','13:00:00.000Z','2023-10-26T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-26','12:00:00.000Z','2023-10-26T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(280,'Installer Sample Data','Tentative','2023-09-01','16:00:00.000Z','2023-09-01T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(281,'Installer Sample Data','Tentative','2023-09-08','16:00:00.000Z','2023-09-08T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-08','15:00:00.000Z','2023-09-08T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(282,'Installer Sample Data','Tentative','2023-09-15','16:00:00.000Z','2023-09-15T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-15','15:00:00.000Z','2023-09-15T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(283,'Installer Sample Data','Tentative','2023-07-07','16:00:00.000Z','2023-07-07T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(284,'Installer Sample Data','Tentative','2023-07-14','16:00:00.000Z','2023-07-14T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(285,'Installer Sample Data','Tentative','2023-07-21','16:00:00.000Z','2023-07-21T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(286,'Installer Sample Data','Tentative','2023-07-28','16:00:00.000Z','2023-07-28T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(287,'Installer Sample Data','Tentative','2023-08-04','16:00:00.000Z','2023-08-04T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(288,'Installer Sample Data','Tentative','2023-08-11','16:00:00.000Z','2023-08-11T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(289,'Installer Sample Data','Tentative','2023-08-18','16:00:00.000Z','2023-08-18T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(290,'Installer Sample Data','Tentative','2023-08-25','16:00:00.000Z','2023-08-25T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(291,'Installer Sample Data','Tentative','2023-09-29','16:00:00.000Z','2023-09-29T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(292,'Installer Sample Data','Tentative','2023-10-06','16:00:00.000Z','2023-10-06T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(293,'Installer Sample Data','Tentative','2023-10-13','16:00:00.000Z','2023-10-13T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(294,'Installer Sample Data','Tentative','2022-11-16','16:00:00.000Z','2022-11-16T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-16','15:00:00.000Z','2022-11-16T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(295,'Installer Sample Data','Tentative','2022-04-22','10:00:00.000Z','2022-04-22T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-22','09:00:00.000Z','2022-04-21T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(296,'Installer Sample Data','Tentative','2022-04-29','10:00:00.000Z','2022-04-29T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-29','09:00:00.000Z','2022-04-28T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(297,'Installer Sample Data','Tentative','2022-05-06','10:00:00.000Z','2022-05-06T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-05-06','09:00:00.000Z','2022-05-05T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(298,'Installer Sample Data','Tentative','2022-05-13','10:00:00.000Z','2022-05-13T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-05-13','09:00:00.000Z','2022-05-12T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(299,'Installer Sample Data','Tentative','2022-01-21','10:00:00.000Z','2022-01-20T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-21','09:00:00.000Z','2022-01-20T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(300,'Installer Sample Data','Tentative','2022-01-28','10:00:00.000Z','2022-01-27T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-28','09:00:00.000Z','2022-01-27T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(301,'Installer Sample Data','Tentative','2022-02-04','10:00:00.000Z','2022-02-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-04','09:00:00.000Z','2022-02-03T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(302,'Installer Sample Data','Tentative','2022-02-11','10:00:00.000Z','2022-02-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-11','09:00:00.000Z','2022-02-10T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(303,'Installer Sample Data','Tentative','2022-02-18','10:00:00.000Z','2022-02-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-18','09:00:00.000Z','2022-02-17T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(304,'Installer Sample Data','Tentative','2022-02-25','10:00:00.000Z','2022-02-24T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-25','09:00:00.000Z','2022-02-24T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(305,'Installer Sample Data','Tentative','2022-03-04','10:00:00.000Z','2022-03-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-04','09:00:00.000Z','2022-03-03T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(306,'Installer Sample Data','Tentative','2022-03-11','10:00:00.000Z','2022-03-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-11','09:00:00.000Z','2022-03-10T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(307,'Installer Sample Data','Tentative','2022-03-18','10:00:00.000Z','2022-03-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-18','09:00:00.000Z','2022-03-17T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(308,'Installer Sample Data','Tentative','2022-03-25','10:00:00.000Z','2022-03-25T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-25','09:00:00.000Z','2022-03-24T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(309,'Installer Sample Data','Tentative','2022-04-01','10:00:00.000Z','2022-04-01T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-01','09:00:00.000Z','2022-03-31T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(310,'Installer Sample Data','Tentative','2022-04-08','10:00:00.000Z','2022-04-08T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-08','09:00:00.000Z','2022-04-07T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(311,'Installer Sample Data','Tentative','2022-04-15','10:00:00.000Z','2022-04-15T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-15','09:00:00.000Z','2022-04-14T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(312,'Installer Sample Data','Tentative','2022-04-21','17:00:00.000Z','2022-04-21T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(313,'Installer Sample Data','Tentative','2022-04-28','17:00:00.000Z','2022-04-28T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(314,'Installer Sample Data','Tentative','2022-05-05','17:00:00.000Z','2022-05-05T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(315,'Installer Sample Data','Tentative','2022-05-12','17:00:00.000Z','2022-05-12T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-12','16:00:00.000Z','2022-05-12T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(316,'Installer Sample Data','Tentative','2023-10-20','16:00:00.000Z','2023-10-20T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(317,'Installer Sample Data','Tentative','2023-10-27','16:00:00.000Z','2023-10-27T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(318,'Installer Sample Data','Tentative','2023-11-03','16:00:00.000Z','2023-11-03T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(319,'Installer Sample Data','Tentative','2023-11-10','16:00:00.000Z','2023-11-10T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-10','15:00:00.000Z','2023-11-10T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(320,'Installer Sample Data','Tentative','2023-11-17','16:00:00.000Z','2023-11-17T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-17','15:00:00.000Z','2023-11-17T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(321,'Installer Sample Data','Tentative','2023-09-22','16:00:00.000Z','2023-09-22T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(322,'Installer Sample Data','Tentative','2022-01-23','10:00:00.000Z','2022-01-22T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-23','09:00:00.000Z','2022-01-22T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(323,'Installer Sample Data','Tentative','2022-01-30','10:00:00.000Z','2022-01-29T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-30','09:00:00.000Z','2022-01-29T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(324,'Installer Sample Data','Tentative','2022-02-06','10:00:00.000Z','2022-02-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-06','09:00:00.000Z','2022-02-05T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(325,'Installer Sample Data','Tentative','2022-02-13','10:00:00.000Z','2022-02-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-13','09:00:00.000Z','2022-02-12T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(326,'Installer Sample Data','Tentative','2022-02-20','10:00:00.000Z','2022-02-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-20','09:00:00.000Z','2022-02-19T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(327,'Installer Sample Data','Tentative','2022-02-27','10:00:00.000Z','2022-02-26T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-27','09:00:00.000Z','2022-02-26T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(328,'Installer Sample Data','Tentative','2022-03-06','10:00:00.000Z','2022-03-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-06','09:00:00.000Z','2022-03-05T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(329,'Installer Sample Data','Tentative','2022-03-13','10:00:00.000Z','2022-03-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-13','09:00:00.000Z','2022-03-12T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(330,'Installer Sample Data','Tentative','2022-03-20','10:00:00.000Z','2022-03-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-20','09:00:00.000Z','2022-03-19T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(331,'Installer Sample Data','Tentative','2022-03-27','10:00:00.000Z','2022-03-27T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-27','09:00:00.000Z','2022-03-26T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(332,'Installer Sample Data','Tentative','2022-04-03','10:00:00.000Z','2022-04-03T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-03','09:00:00.000Z','2022-04-02T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(333,'Installer Sample Data','Tentative','2022-04-10','10:00:00.000Z','2022-04-10T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-10','09:00:00.000Z','2022-04-09T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(334,'Installer Sample Data','Tentative','2022-04-17','10:00:00.000Z','2022-04-17T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-17','09:00:00.000Z','2022-04-16T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(335,'Installer Sample Data','Tentative','2022-04-24','10:00:00.000Z','2022-04-24T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-24','09:00:00.000Z','2022-04-23T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(336,'Installer Sample Data','Tentative','2022-05-01','10:00:00.000Z','2022-05-01T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-01','09:00:00.000Z','2022-04-30T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(337,'Installer Sample Data','Tentative','2022-05-08','10:00:00.000Z','2022-05-08T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-08','09:00:00.000Z','2022-05-07T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(338,'Installer Sample Data','Tentative','2023-02-23','12:00:00.000Z','2023-02-23T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(339,'Installer Sample Data','Tentative','2023-03-02','12:00:00.000Z','2023-03-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(340,'Installer Sample Data','Tentative','2023-03-09','12:00:00.000Z','2023-03-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-09','11:00:00.000Z','2023-03-09T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(341,'Installer Sample Data','Tentative','2023-03-16','12:00:00.000Z','2023-03-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-16','11:00:00.000Z','2023-03-16T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(342,'Installer Sample Data','Tentative','2023-03-23','12:00:00.000Z','2023-03-23T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(343,'Installer Sample Data','Tentative','2023-03-30','12:00:00.000Z','2023-03-30T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(344,'Installer Sample Data','Tentative','2022-05-19','17:00:00.000Z','2022-05-19T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-19','16:00:00.000Z','2022-05-19T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(345,'Installer Sample Data','Tentative','2022-01-20','17:00:00.000Z','2022-01-20T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(346,'Installer Sample Data','Tentative','2022-01-27','17:00:00.000Z','2022-01-27T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(347,'Installer Sample Data','Tentative','2022-02-03','17:00:00.000Z','2022-02-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(348,'Installer Sample Data','Tentative','2022-02-10','17:00:00.000Z','2022-02-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(349,'Installer Sample Data','Tentative','2022-02-17','17:00:00.000Z','2022-02-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(350,'Installer Sample Data','Tentative','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(351,'Installer Sample Data','Tentative','2022-09-07','15:00:00.000Z','2022-09-07T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-07','14:00:00.000Z','2022-09-07T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(352,'Installer Sample Data','Tentative','2022-09-14','15:00:00.000Z','2022-09-14T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-14','14:00:00.000Z','2022-09-14T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(353,'Installer Sample Data','Tentative','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(354,'Installer Sample Data','Tentative','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(355,'Installer Sample Data','Tentative','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(356,'Installer Sample Data','Tentative','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(357,'Installer Sample Data','Tentative','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(358,'Installer Sample Data','Tentative','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(359,'Installer Sample Data','Tentative','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(360,'Installer Sample Data','Tentative','2022-11-09','15:00:00.000Z','2022-11-09T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-09','14:00:00.000Z','2022-11-09T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(361,'Installer Sample Data','Tentative','2022-11-16','15:00:00.000Z','2022-11-16T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-16','14:00:00.000Z','2022-11-16T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(362,'Installer Sample Data','Tentative','2022-05-15','10:00:00.000Z','2022-05-15T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-15','09:00:00.000Z','2022-05-14T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(363,'Installer Sample Data','Tentative','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(364,'Installer Sample Data','Tentative','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(365,'Installer Sample Data','Tentative','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(366,'Installer Sample Data','Tentative','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(367,'Installer Sample Data','Tentative','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(368,'Installer Sample Data','Tentative','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(369,'Installer Sample Data','Tentative','2022-03-09','12:00:00.000Z','2022-03-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-09','11:00:00.000Z','2022-03-09T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(370,'Installer Sample Data','Tentative','2022-03-16','12:00:00.000Z','2022-03-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-16','11:00:00.000Z','2022-03-16T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(371,'Installer Sample Data','Tentative','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(372,'Installer Sample Data','Tentative','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(373,'Installer Sample Data','Tentative','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(374,'Installer Sample Data','Tentative','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(375,'Installer Sample Data','Tentative','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(376,'Installer Sample Data','Tentative','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(377,'Installer Sample Data','Tentative','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(378,'Installer Sample Data','Tentative','2022-05-11','12:00:00.000Z','2022-05-11T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-11','11:00:00.000Z','2022-05-11T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(379,'Installer Sample Data','Tentative','2022-05-18','12:00:00.000Z','2022-05-18T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-18','11:00:00.000Z','2022-05-18T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(380,'Installer Sample Data','Tentative','2023-01-26','12:00:00.000Z','2023-01-26T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(381,'Installer Sample Data','Tentative','2023-02-02','12:00:00.000Z','2023-02-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(382,'Installer Sample Data','Tentative','2023-02-09','12:00:00.000Z','2023-02-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(383,'Installer Sample Data','Tentative','2023-02-16','12:00:00.000Z','2023-02-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(384,'Installer Sample Data','Tentative','2023-04-06','12:00:00.000Z','2023-04-06T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(385,'Installer Sample Data','Tentative','2023-04-13','12:00:00.000Z','2023-04-13T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(386,'Installer Sample Data','Tentative','2023-04-20','12:00:00.000Z','2023-04-20T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(387,'Installer Sample Data','Tentative','2023-04-27','12:00:00.000Z','2023-04-27T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(388,'Installer Sample Data','Tentative','2023-05-04','12:00:00.000Z','2023-05-04T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(389,'Installer Sample Data','Tentative','2023-05-11','12:00:00.000Z','2023-05-11T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(390,'Installer Sample Data','Tentative','2023-05-18','12:00:00.000Z','2023-05-18T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(391,'Installer Sample Data','Tentative','2023-05-25','12:00:00.000Z','2023-05-25T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(392,'Installer Sample Data','Tentative','2023-06-01','12:00:00.000Z','2023-06-01T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(393,'Installer Sample Data','Tentative','2023-06-08','12:00:00.000Z','2023-06-08T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-08','11:00:00.000Z','2023-06-08T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(394,'Installer Sample Data','Tentative','2023-06-15','12:00:00.000Z','2023-06-15T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-15','11:00:00.000Z','2023-06-15T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(395,'Installer Sample Data','Tentative','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-09','09:00:00.000Z','2023-02-08T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(396,'Installer Sample Data','Tentative','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-16','09:00:00.000Z','2023-02-15T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(397,'Installer Sample Data','Tentative','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-23','09:00:00.000Z','2023-02-22T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(398,'Installer Sample Data','Tentative','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-02','09:00:00.000Z','2023-03-01T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(399,'Installer Sample Data','Tentative','2023-03-09','10:00:00.000Z','2023-03-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-09','09:00:00.000Z','2023-03-08T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(400,'Installer Sample Data','Tentative','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-01-26','09:00:00.000Z','2023-01-25T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(401,'Installer Sample Data','Tentative','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-02','09:00:00.000Z','2023-02-01T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(402,'Installer Sample Data','Tentative','2023-03-16','10:00:00.000Z','2023-03-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-16','09:00:00.000Z','2023-03-15T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(403,'Installer Sample Data','Tentative','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-23','09:00:00.000Z','2023-03-22T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(404,'Installer Sample Data','Tentative','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-30','09:00:00.000Z','2023-03-29T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(405,'Installer Sample Data','Tentative','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-06','09:00:00.000Z','2023-04-05T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(406,'Installer Sample Data','Tentative','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-13','09:00:00.000Z','2023-04-12T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(407,'Installer Sample Data','Tentative','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-20','09:00:00.000Z','2023-04-19T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(408,'Installer Sample Data','Tentative','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-27','09:00:00.000Z','2023-04-26T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(409,'Installer Sample Data','Tentative','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-04','09:00:00.000Z','2023-05-03T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(410,'Installer Sample Data','Tentative','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-11','09:00:00.000Z','2023-05-10T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(411,'Installer Sample Data','Tentative','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-18','09:00:00.000Z','2023-05-17T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(412,'Installer Sample Data','Tentative','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-01','09:00:00.000Z','2023-05-31T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(413,'Installer Sample Data','Tentative','2023-06-08','10:00:00.000Z','2023-06-08T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-08','09:00:00.000Z','2023-06-07T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(414,'Installer Sample Data','Tentative','2023-06-15','10:00:00.000Z','2023-06-15T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-15','09:00:00.000Z','2023-06-14T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(415,'Installer Sample Data','Tentative','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-25','09:00:00.000Z','2023-05-24T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(416,'Installer Sample Data','Tentative','2022-07-08','17:00:00.000Z','2022-07-08T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-08','16:00:00.000Z','2022-07-08T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(417,'Installer Sample Data','Tentative','2022-07-15','17:00:00.000Z','2022-07-15T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-15','16:00:00.000Z','2022-07-15T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(418,'Installer Sample Data','Tentative','2022-07-22','17:00:00.000Z','2022-07-22T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-22','16:00:00.000Z','2022-07-22T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(419,'Installer Sample Data','Tentative','2022-07-29','17:00:00.000Z','2022-07-29T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-29','16:00:00.000Z','2022-07-29T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(420,'Installer Sample Data','Tentative','2022-08-05','17:00:00.000Z','2022-08-05T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-05','16:00:00.000Z','2022-08-05T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(421,'Installer Sample Data','Tentative','2022-08-12','17:00:00.000Z','2022-08-12T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-12','16:00:00.000Z','2022-08-12T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(422,'Installer Sample Data','Tentative','2022-08-19','17:00:00.000Z','2022-08-19T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-19','16:00:00.000Z','2022-08-19T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(423,'Installer Sample Data','Tentative','2022-08-26','17:00:00.000Z','2022-08-26T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-26','16:00:00.000Z','2022-08-26T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(424,'Installer Sample Data','Tentative','2022-09-02','17:00:00.000Z','2022-09-02T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-02','16:00:00.000Z','2022-09-02T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(425,'Installer Sample Data','Tentative','2022-10-21','17:00:00.000Z','2022-10-21T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-21','16:00:00.000Z','2022-10-21T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(426,'Installer Sample Data','Tentative','2022-09-09','17:00:00.000Z','2022-09-09T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-09','16:00:00.000Z','2022-09-09T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(427,'Installer Sample Data','Tentative','2022-10-28','17:00:00.000Z','2022-10-28T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-28','16:00:00.000Z','2022-10-28T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(428,'Installer Sample Data','Tentative','2022-09-16','17:00:00.000Z','2022-09-16T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-16','16:00:00.000Z','2022-09-16T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(429,'Installer Sample Data','Tentative','2022-09-23','17:00:00.000Z','2022-09-23T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-23','16:00:00.000Z','2022-09-23T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(430,'Installer Sample Data','Tentative','2022-09-30','17:00:00.000Z','2022-09-30T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-30','16:00:00.000Z','2022-09-30T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(431,'Installer Sample Data','Tentative','2022-10-07','17:00:00.000Z','2022-10-07T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-07','16:00:00.000Z','2022-10-07T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(432,'Installer Sample Data','Tentative','2022-10-14','17:00:00.000Z','2022-10-14T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-14','16:00:00.000Z','2022-10-14T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(433,'Installer Sample Data','Tentative','2022-11-04','17:00:00.000Z','2022-11-04T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-04','16:00:00.000Z','2022-11-04T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(434,'Installer Sample Data','Tentative','2022-11-11','17:00:00.000Z','2022-11-11T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-11','16:00:00.000Z','2022-11-11T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(435,'Installer Sample Data','Tentative','2022-11-18','17:00:00.000Z','2022-11-18T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-18','16:00:00.000Z','2022-11-18T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(436,'Installer Sample Data','Tentative','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(437,'Installer Sample Data','Tentative','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(438,'Installer Sample Data','Tentative','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(439,'Installer Sample Data','Tentative','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(440,'Installer Sample Data','Tentative','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(441,'Installer Sample Data','Tentative','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(442,'Installer Sample Data','Tentative','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(443,'Installer Sample Data','Tentative','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(444,'Installer Sample Data','Tentative','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(445,'Installer Sample Data','Tentative','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(446,'Installer Sample Data','Tentative','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(447,'Installer Sample Data','Tentative','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(448,'Installer Sample Data','Tentative','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(449,'Installer Sample Data','Tentative','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(450,'Installer Sample Data','Tentative','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(451,'Installer Sample Data','Tentative','2022-03-10','16:00:00.000Z','2022-03-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-10','15:00:00.000Z','2022-03-10T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(452,'Installer Sample Data','Tentative','2022-03-17','16:00:00.000Z','2022-03-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-17','15:00:00.000Z','2022-03-17T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(453,'Installer Sample Data','Tentative','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(454,'Installer Sample Data','Tentative','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(455,'Installer Sample Data','Tentative','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(456,'Installer Sample Data','Tentative','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(457,'Installer Sample Data','Tentative','2022-05-12','16:00:00.000Z','2022-05-12T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-12','15:00:00.000Z','2022-05-12T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(458,'Installer Sample Data','Tentative','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(459,'Installer Sample Data','Tentative','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(460,'Installer Sample Data','Tentative','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(461,'Installer Sample Data','Tentative','2022-05-19','16:00:00.000Z','2022-05-19T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-19','15:00:00.000Z','2022-05-19T05:00:00.000+0000','Good','Allocated','True','2','24');
CREATE TABLE "rio_ed__Appointment_Availability__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(1,'Installer Sample Data','1','','12');
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(2,'Installer Sample Data','1','27','');
CREATE TABLE "rio_ed__Appointment_Time__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(1,'Installer Sample Data','Available Time','True','60.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','4');
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(2,'Installer Sample Data','Available Time','True','60.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','6');
CREATE TABLE "rio_ed__Appointment_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Appointment_Type__c" VALUES(1,'Installer Sample Data','Academic Counsel','True','True','False','Academic Counsel','None','False','False','True','None');
CREATE TABLE "rio_ed__Assigned_Location__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Location__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Assigned_Location__c" VALUES(1,'Installer Sample Data','6','27');
CREATE TABLE "rio_ed__Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Session_Date__c" VARCHAR(255), 
	"rio_ed__Booking__c" VARCHAR(255), 
	"rio_ed__Session_Connection__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Attendance__c" VALUES(1,'Installer Sample Data','2022-04-20','146','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(2,'Installer Sample Data','2022-04-27','147','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(3,'Installer Sample Data','2022-05-04','148','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(4,'Installer Sample Data','2022-05-11','149','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(5,'Installer Sample Data','2022-03-02','150','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(6,'Installer Sample Data','2022-03-09','151','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(7,'Installer Sample Data','2022-03-16','152','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(8,'Installer Sample Data','2022-05-18','153','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(9,'Installer Sample Data','2023-04-13','385','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(10,'Installer Sample Data','2022-04-21','312','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(11,'Installer Sample Data','2022-04-28','313','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(12,'Installer Sample Data','2022-05-05','314','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(13,'Installer Sample Data','2022-05-12','315','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(14,'Installer Sample Data','2022-05-19','344','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(15,'Installer Sample Data','2022-01-20','345','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(16,'Installer Sample Data','2022-01-27','346','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(17,'Installer Sample Data','2022-02-03','347','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(18,'Installer Sample Data','2022-02-10','348','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(19,'Installer Sample Data','2022-02-17','349','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(20,'Installer Sample Data','2022-02-09','22','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(21,'Installer Sample Data','2023-04-20','386','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(22,'Installer Sample Data','2022-02-24','23','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(23,'Installer Sample Data','2022-03-03','24','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(24,'Installer Sample Data','2022-03-10','25','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(25,'Installer Sample Data','2022-03-17','26','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(26,'Installer Sample Data','2022-03-24','27','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(27,'Installer Sample Data','2022-03-31','28','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(28,'Installer Sample Data','2022-04-07','29','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(29,'Installer Sample Data','2022-04-14','52','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(30,'Installer Sample Data','2022-04-22','295','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(31,'Installer Sample Data','2022-04-29','296','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(32,'Installer Sample Data','2023-04-27','387','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(33,'Installer Sample Data','2022-05-06','297','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(34,'Installer Sample Data','2022-05-13','298','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(35,'Installer Sample Data','2022-01-21','299','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(36,'Installer Sample Data','2022-01-28','300','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(37,'Installer Sample Data','2022-02-04','301','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(38,'Installer Sample Data','2022-02-11','302','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(39,'Installer Sample Data','2022-02-18','303','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(40,'Installer Sample Data','2022-02-25','304','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(41,'Installer Sample Data','2022-03-04','305','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(42,'Installer Sample Data','2022-03-11','306','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(43,'Installer Sample Data','2023-05-04','388','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(44,'Installer Sample Data','2022-03-18','307','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(45,'Installer Sample Data','2022-03-25','308','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(46,'Installer Sample Data','2022-04-01','309','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(47,'Installer Sample Data','2022-04-08','310','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(48,'Installer Sample Data','2022-04-15','311','35');
INSERT INTO "rio_ed__Attendance__c" VALUES(49,'Installer Sample Data','2022-07-15','44','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(50,'Installer Sample Data','2022-07-22','45','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(51,'Installer Sample Data','2022-07-29','46','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(52,'Installer Sample Data','2022-08-05','47','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(53,'Installer Sample Data','2022-07-08','48','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(54,'Installer Sample Data','2023-05-11','389','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(55,'Installer Sample Data','2022-08-12','49','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(56,'Installer Sample Data','2022-08-19','50','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(57,'Installer Sample Data','2022-08-26','51','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(58,'Installer Sample Data','2022-09-02','74','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(59,'Installer Sample Data','2022-09-09','75','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(60,'Installer Sample Data','2022-09-16','76','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(61,'Installer Sample Data','2022-09-23','77','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(62,'Installer Sample Data','2022-09-30','78','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(63,'Installer Sample Data','2022-10-07','79','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(64,'Installer Sample Data','2022-10-14','80','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(65,'Installer Sample Data','2023-05-18','390','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(66,'Installer Sample Data','2022-10-21','81','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(67,'Installer Sample Data','2022-10-28','82','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(68,'Installer Sample Data','2022-11-04','83','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(69,'Installer Sample Data','2022-11-18','84','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(70,'Installer Sample Data','2022-11-11','85','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(71,'Installer Sample Data','2022-07-08','53','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(72,'Installer Sample Data','2022-07-15','54','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(73,'Installer Sample Data','2022-07-22','55','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(74,'Installer Sample Data','2022-07-29','56','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(75,'Installer Sample Data','2022-08-05','57','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(76,'Installer Sample Data','2023-05-25','391','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(77,'Installer Sample Data','2022-08-19','58','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(78,'Installer Sample Data','2022-08-26','59','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(79,'Installer Sample Data','2022-09-02','60','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(80,'Installer Sample Data','2022-09-09','61','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(81,'Installer Sample Data','2022-09-16','62','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(82,'Installer Sample Data','2022-09-23','63','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(83,'Installer Sample Data','2022-08-12','64','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(84,'Installer Sample Data','2022-09-30','65','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(85,'Installer Sample Data','2022-10-07','66','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(86,'Installer Sample Data','2022-10-14','67','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(87,'Installer Sample Data','2023-06-01','392','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(88,'Installer Sample Data','2022-10-21','68','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(89,'Installer Sample Data','2022-10-28','69','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(90,'Installer Sample Data','2022-11-04','70','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(91,'Installer Sample Data','2022-11-11','71','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(92,'Installer Sample Data','2022-11-18','72','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(93,'Installer Sample Data','2022-08-05','154','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(94,'Installer Sample Data','2022-08-12','155','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(95,'Installer Sample Data','2022-08-19','156','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(96,'Installer Sample Data','2022-09-09','157','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(97,'Installer Sample Data','2022-09-16','158','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(98,'Installer Sample Data','2023-06-08','393','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(99,'Installer Sample Data','2022-09-23','159','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(100,'Installer Sample Data','2022-09-30','160','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(101,'Installer Sample Data','2022-08-26','161','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(102,'Installer Sample Data','2022-09-02','184','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(103,'Installer Sample Data','2022-10-07','185','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(104,'Installer Sample Data','2022-10-14','186','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(105,'Installer Sample Data','2022-10-21','187','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(106,'Installer Sample Data','2022-10-28','188','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(107,'Installer Sample Data','2022-11-04','189','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(108,'Installer Sample Data','2022-11-11','190','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(109,'Installer Sample Data','2023-06-15','394','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(110,'Installer Sample Data','2022-11-18','191','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(111,'Installer Sample Data','2022-07-08','192','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(112,'Installer Sample Data','2022-07-15','193','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(113,'Installer Sample Data','2022-07-22','194','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(114,'Installer Sample Data','2022-07-29','195','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(115,'Installer Sample Data','2023-11-02','238','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(116,'Installer Sample Data','2023-11-09','239','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(117,'Installer Sample Data','2023-11-16','240','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(118,'Installer Sample Data','2022-07-20','253','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(119,'Installer Sample Data','2023-08-31','241','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(120,'Installer Sample Data','2022-02-16','30','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(121,'Installer Sample Data','2022-07-27','254','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(122,'Installer Sample Data','2023-09-07','242','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(123,'Installer Sample Data','2023-09-14','243','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(124,'Installer Sample Data','2023-09-21','244','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(125,'Installer Sample Data','2023-07-06','245','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(126,'Installer Sample Data','2023-07-13','246','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(127,'Installer Sample Data','2023-07-20','247','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(128,'Installer Sample Data','2023-07-27','248','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(129,'Installer Sample Data','2023-08-03','249','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(130,'Installer Sample Data','2023-08-10','272','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(131,'Installer Sample Data','2023-08-17','273','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(132,'Installer Sample Data','2022-08-03','255','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(133,'Installer Sample Data','2023-08-24','274','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(134,'Installer Sample Data','2023-10-12','275','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(135,'Installer Sample Data','2023-09-28','276','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(136,'Installer Sample Data','2023-10-05','277','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(137,'Installer Sample Data','2023-10-19','278','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(138,'Installer Sample Data','2023-10-26','279','21');
INSERT INTO "rio_ed__Attendance__c" VALUES(139,'Installer Sample Data','2022-07-06','256','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(140,'Installer Sample Data','2022-07-13','257','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(141,'Installer Sample Data','2022-08-10','258','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(142,'Installer Sample Data','2022-01-23','322','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(143,'Installer Sample Data','2022-01-30','323','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(144,'Installer Sample Data','2022-02-06','324','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(145,'Installer Sample Data','2022-02-13','325','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(146,'Installer Sample Data','2022-02-20','326','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(147,'Installer Sample Data','2022-08-17','259','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(148,'Installer Sample Data','2022-02-27','327','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(149,'Installer Sample Data','2022-03-06','328','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(150,'Installer Sample Data','2022-03-13','329','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(151,'Installer Sample Data','2022-03-20','330','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(152,'Installer Sample Data','2022-03-27','331','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(153,'Installer Sample Data','2022-04-03','332','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(154,'Installer Sample Data','2022-04-10','333','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(155,'Installer Sample Data','2022-04-17','334','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(156,'Installer Sample Data','2022-04-24','335','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(157,'Installer Sample Data','2022-05-01','336','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(158,'Installer Sample Data','2022-08-24','260','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(159,'Installer Sample Data','2022-05-08','337','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(160,'Installer Sample Data','2022-05-15','362','27');
INSERT INTO "rio_ed__Attendance__c" VALUES(161,'Installer Sample Data','2022-08-31','261','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(162,'Installer Sample Data','2022-09-07','262','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(163,'Installer Sample Data','2022-09-14','263','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(164,'Installer Sample Data','2022-02-23','31','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(165,'Installer Sample Data','2022-09-21','264','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(166,'Installer Sample Data','2022-10-05','265','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(167,'Installer Sample Data','2022-09-28','266','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(168,'Installer Sample Data','2022-10-12','267','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(169,'Installer Sample Data','2022-10-19','268','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(170,'Installer Sample Data','2022-10-26','269','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(171,'Installer Sample Data','2022-11-02','270','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(172,'Installer Sample Data','2022-11-09','271','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(173,'Installer Sample Data','2022-11-16','294','28');
INSERT INTO "rio_ed__Attendance__c" VALUES(174,'Installer Sample Data','2022-01-20','444','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(175,'Installer Sample Data','2022-03-02','32','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(176,'Installer Sample Data','2022-01-27','445','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(177,'Installer Sample Data','2022-02-03','446','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(178,'Installer Sample Data','2022-02-10','447','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(179,'Installer Sample Data','2022-02-17','448','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(180,'Installer Sample Data','2022-02-24','449','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(181,'Installer Sample Data','2022-03-03','450','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(182,'Installer Sample Data','2022-03-10','451','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(183,'Installer Sample Data','2022-03-17','452','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(184,'Installer Sample Data','2022-04-28','453','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(185,'Installer Sample Data','2022-04-14','454','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(186,'Installer Sample Data','2022-03-09','33','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(187,'Installer Sample Data','2022-04-21','455','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(188,'Installer Sample Data','2022-05-05','456','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(189,'Installer Sample Data','2022-05-12','457','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(190,'Installer Sample Data','2022-07-06','436','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(191,'Installer Sample Data','2022-07-13','437','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(192,'Installer Sample Data','2023-02-08','171','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(193,'Installer Sample Data','2023-02-15','172','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(194,'Installer Sample Data','2023-02-22','173','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(195,'Installer Sample Data','2023-03-01','174','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(196,'Installer Sample Data','2023-03-08','175','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(197,'Installer Sample Data','2022-03-16','34','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(198,'Installer Sample Data','2022-01-26','20','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(199,'Installer Sample Data','2022-03-30','36','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(200,'Installer Sample Data','2023-03-23','403','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(201,'Installer Sample Data','2023-03-30','404','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(202,'Installer Sample Data','2023-04-06','405','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(203,'Installer Sample Data','2023-04-13','406','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(204,'Installer Sample Data','2023-04-20','407','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(205,'Installer Sample Data','2023-04-27','408','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(206,'Installer Sample Data','2023-05-04','409','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(207,'Installer Sample Data','2023-05-11','410','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(208,'Installer Sample Data','2023-05-18','411','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(209,'Installer Sample Data','2023-06-07','210','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(210,'Installer Sample Data','2022-04-06','37','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(211,'Installer Sample Data','2023-06-14','211','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(212,'Installer Sample Data','2023-03-30','128','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(213,'Installer Sample Data','2023-04-06','129','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(214,'Installer Sample Data','2023-04-13','130','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(215,'Installer Sample Data','2023-04-20','131','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(216,'Installer Sample Data','2023-04-27','132','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(217,'Installer Sample Data','2023-05-04','133','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(218,'Installer Sample Data','2023-05-11','134','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(219,'Installer Sample Data','2023-05-18','135','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(220,'Installer Sample Data','2023-05-25','136','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(221,'Installer Sample Data','2022-04-13','38','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(222,'Installer Sample Data','2023-06-01','137','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(223,'Installer Sample Data','2022-03-24','458','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(224,'Installer Sample Data','2022-03-31','459','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(225,'Installer Sample Data','2022-04-07','460','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(226,'Installer Sample Data','2022-07-27','438','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(227,'Installer Sample Data','2022-08-03','439','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(228,'Installer Sample Data','2022-08-10','440','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(229,'Installer Sample Data','2022-07-20','441','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(230,'Installer Sample Data','2022-08-17','442','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(231,'Installer Sample Data','2022-05-19','461','33');
INSERT INTO "rio_ed__Attendance__c" VALUES(232,'Installer Sample Data','2023-03-15','176','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(233,'Installer Sample Data','2023-03-22','177','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(234,'Installer Sample Data','2023-04-05','178','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(235,'Installer Sample Data','2023-04-12','179','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(236,'Installer Sample Data','2023-04-19','180','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(237,'Installer Sample Data','2023-04-26','181','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(238,'Installer Sample Data','2023-05-03','182','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(239,'Installer Sample Data','2023-03-29','183','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(240,'Installer Sample Data','2023-05-10','206','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(241,'Installer Sample Data','2023-05-17','207','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(242,'Installer Sample Data','2022-03-23','35','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(243,'Installer Sample Data','2023-05-24','208','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(244,'Installer Sample Data','2022-04-20','39','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(245,'Installer Sample Data','2022-08-24','443','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(246,'Installer Sample Data','2022-08-31','350','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(247,'Installer Sample Data','2022-09-07','351','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(248,'Installer Sample Data','2022-09-14','352','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(249,'Installer Sample Data','2022-09-21','353','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(250,'Installer Sample Data','2023-06-01','412','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(251,'Installer Sample Data','2023-06-08','413','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(252,'Installer Sample Data','2023-06-15','414','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(253,'Installer Sample Data','2023-05-25','415','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(254,'Installer Sample Data','2023-01-26','138','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(255,'Installer Sample Data','2022-04-27','40','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(256,'Installer Sample Data','2023-02-02','139','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(257,'Installer Sample Data','2023-02-09','162','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(258,'Installer Sample Data','2023-02-16','163','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(259,'Installer Sample Data','2023-02-23','164','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(260,'Installer Sample Data','2023-03-02','165','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(261,'Installer Sample Data','2023-03-09','166','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(262,'Installer Sample Data','2023-03-16','167','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(263,'Installer Sample Data','2023-03-23','168','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(264,'Installer Sample Data','2023-06-08','169','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(265,'Installer Sample Data','2023-06-15','170','16');
INSERT INTO "rio_ed__Attendance__c" VALUES(266,'Installer Sample Data','2022-05-04','41','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(267,'Installer Sample Data','2022-09-28','354','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(268,'Installer Sample Data','2022-10-05','355','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(269,'Installer Sample Data','2022-10-12','356','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(270,'Installer Sample Data','2022-10-19','357','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(271,'Installer Sample Data','2022-10-26','358','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(272,'Installer Sample Data','2022-11-02','359','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(273,'Installer Sample Data','2022-11-09','360','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(274,'Installer Sample Data','2022-11-16','361','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(275,'Installer Sample Data','2023-01-25','212','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(276,'Installer Sample Data','2023-02-01','213','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(277,'Installer Sample Data','2023-05-31','209','20');
INSERT INTO "rio_ed__Attendance__c" VALUES(278,'Installer Sample Data','2023-02-09','395','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(279,'Installer Sample Data','2023-02-16','396','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(280,'Installer Sample Data','2023-02-23','397','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(281,'Installer Sample Data','2023-03-02','398','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(282,'Installer Sample Data','2023-03-09','399','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(283,'Installer Sample Data','2023-01-26','400','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(284,'Installer Sample Data','2023-02-02','401','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(285,'Installer Sample Data','2023-03-16','402','29');
INSERT INTO "rio_ed__Attendance__c" VALUES(286,'Installer Sample Data','2022-05-11','42','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(287,'Installer Sample Data','2022-07-08','416','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(288,'Installer Sample Data','2022-07-15','417','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(289,'Installer Sample Data','2022-07-22','418','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(290,'Installer Sample Data','2022-07-29','419','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(291,'Installer Sample Data','2022-08-05','420','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(292,'Installer Sample Data','2022-08-12','421','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(293,'Installer Sample Data','2022-08-19','422','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(294,'Installer Sample Data','2022-08-26','423','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(295,'Installer Sample Data','2022-09-02','424','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(296,'Installer Sample Data','2022-10-21','425','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(297,'Installer Sample Data','2022-05-18','43','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(298,'Installer Sample Data','2022-09-09','426','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(299,'Installer Sample Data','2022-10-28','427','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(300,'Installer Sample Data','2022-09-16','428','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(301,'Installer Sample Data','2022-09-23','429','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(302,'Installer Sample Data','2022-09-30','430','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(303,'Installer Sample Data','2022-10-07','431','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(304,'Installer Sample Data','2022-10-14','432','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(305,'Installer Sample Data','2022-11-04','433','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(306,'Installer Sample Data','2022-11-11','434','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(307,'Installer Sample Data','2022-11-18','435','30');
INSERT INTO "rio_ed__Attendance__c" VALUES(308,'Installer Sample Data','2023-01-26','380','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(309,'Installer Sample Data','2022-09-02','73','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(310,'Installer Sample Data','2022-09-09','96','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(311,'Installer Sample Data','2022-09-16','97','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(312,'Installer Sample Data','2022-09-23','98','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(313,'Installer Sample Data','2022-09-30','99','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(314,'Installer Sample Data','2022-10-07','100','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(315,'Installer Sample Data','2022-11-11','101','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(316,'Installer Sample Data','2022-11-04','102','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(317,'Installer Sample Data','2022-11-18','103','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(318,'Installer Sample Data','2022-08-05','104','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(319,'Installer Sample Data','2023-02-02','381','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(320,'Installer Sample Data','2022-08-12','105','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(321,'Installer Sample Data','2022-08-19','106','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(322,'Installer Sample Data','2022-08-26','107','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(323,'Installer Sample Data','2022-07-08','108','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(324,'Installer Sample Data','2022-07-15','109','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(325,'Installer Sample Data','2022-07-22','110','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(326,'Installer Sample Data','2022-07-29','111','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(327,'Installer Sample Data','2022-10-14','112','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(328,'Installer Sample Data','2022-10-21','113','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(329,'Installer Sample Data','2022-10-28','114','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(330,'Installer Sample Data','2022-02-02','21','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(331,'Installer Sample Data','2023-02-09','382','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(332,'Installer Sample Data','2022-08-17','86','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(333,'Installer Sample Data','2022-08-24','87','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(334,'Installer Sample Data','2022-08-31','88','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(335,'Installer Sample Data','2022-09-07','89','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(336,'Installer Sample Data','2022-09-14','90','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(337,'Installer Sample Data','2022-09-21','91','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(338,'Installer Sample Data','2022-07-06','92','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(339,'Installer Sample Data','2022-07-13','93','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(340,'Installer Sample Data','2022-07-20','94','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(341,'Installer Sample Data','2022-07-27','95','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(342,'Installer Sample Data','2023-02-16','383','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(343,'Installer Sample Data','2022-08-03','118','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(344,'Installer Sample Data','2022-08-10','119','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(345,'Installer Sample Data','2022-03-10','1','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(346,'Installer Sample Data','2022-03-17','2','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(347,'Installer Sample Data','2022-03-24','3','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(348,'Installer Sample Data','2022-03-31','4','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(349,'Installer Sample Data','2022-04-07','5','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(350,'Installer Sample Data','2022-04-14','6','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(351,'Installer Sample Data','2022-04-21','7','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(352,'Installer Sample Data','2022-04-28','8','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(353,'Installer Sample Data','2023-02-23','338','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(354,'Installer Sample Data','2022-05-05','9','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(355,'Installer Sample Data','2022-05-19','10','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(356,'Installer Sample Data','2022-05-12','11','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(357,'Installer Sample Data','2022-09-28','120','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(358,'Installer Sample Data','2022-10-05','121','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(359,'Installer Sample Data','2022-10-12','122','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(360,'Installer Sample Data','2022-10-19','123','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(361,'Installer Sample Data','2022-10-26','124','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(362,'Installer Sample Data','2022-11-02','125','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(363,'Installer Sample Data','2022-11-09','126','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(364,'Installer Sample Data','2023-03-02','339','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(365,'Installer Sample Data','2022-11-16','127','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(366,'Installer Sample Data','2022-01-13','12','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(367,'Installer Sample Data','2022-01-20','13','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(368,'Installer Sample Data','2022-01-27','14','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(369,'Installer Sample Data','2022-02-03','15','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(370,'Installer Sample Data','2022-02-10','16','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(371,'Installer Sample Data','2022-02-17','17','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(372,'Installer Sample Data','2022-02-24','18','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(373,'Installer Sample Data','2022-03-03','19','31');
INSERT INTO "rio_ed__Attendance__c" VALUES(374,'Installer Sample Data','2022-01-26','214','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(375,'Installer Sample Data','2023-03-09','340','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(376,'Installer Sample Data','2022-02-02','215','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(377,'Installer Sample Data','2022-02-09','216','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(378,'Installer Sample Data','2022-02-16','217','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(379,'Installer Sample Data','2022-02-23','218','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(380,'Installer Sample Data','2022-03-02','219','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(381,'Installer Sample Data','2022-03-09','220','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(382,'Installer Sample Data','2022-03-16','221','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(383,'Installer Sample Data','2022-03-23','222','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(384,'Installer Sample Data','2022-03-30','223','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(385,'Installer Sample Data','2022-04-06','224','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(386,'Installer Sample Data','2023-03-16','341','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(387,'Installer Sample Data','2022-04-13','225','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(388,'Installer Sample Data','2022-04-20','226','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(389,'Installer Sample Data','2022-04-27','227','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(390,'Installer Sample Data','2022-05-04','250','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(391,'Installer Sample Data','2022-05-11','251','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(392,'Installer Sample Data','2022-05-18','252','37');
INSERT INTO "rio_ed__Attendance__c" VALUES(393,'Installer Sample Data','2022-01-26','363','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(394,'Installer Sample Data','2022-02-02','364','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(395,'Installer Sample Data','2022-02-09','365','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(396,'Installer Sample Data','2022-02-16','366','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(397,'Installer Sample Data','2023-03-23','342','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(398,'Installer Sample Data','2022-02-23','367','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(399,'Installer Sample Data','2022-03-02','368','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(400,'Installer Sample Data','2022-03-09','369','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(401,'Installer Sample Data','2022-03-16','370','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(402,'Installer Sample Data','2022-03-23','371','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(403,'Installer Sample Data','2022-03-30','372','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(404,'Installer Sample Data','2022-04-06','373','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(405,'Installer Sample Data','2022-04-13','374','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(406,'Installer Sample Data','2022-04-20','375','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(407,'Installer Sample Data','2022-04-27','376','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(408,'Installer Sample Data','2023-03-30','343','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(409,'Installer Sample Data','2022-05-04','377','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(410,'Installer Sample Data','2022-05-11','378','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(411,'Installer Sample Data','2022-05-18','379','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(412,'Installer Sample Data','2022-01-26','115','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(413,'Installer Sample Data','2022-02-02','116','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(414,'Installer Sample Data','2022-02-09','117','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(415,'Installer Sample Data','2022-02-16','140','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(416,'Installer Sample Data','2022-02-23','141','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(417,'Installer Sample Data','2022-03-23','142','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(418,'Installer Sample Data','2022-03-30','143','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(419,'Installer Sample Data','2023-04-06','384','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(420,'Installer Sample Data','2022-04-06','144','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(421,'Installer Sample Data','2022-04-13','145','26');
CREATE TABLE "rio_ed__Availability_Time__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Availability_Time__c" VALUES(1,'Installer Sample Data','All Time','True','Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;Sunday','23:45:00.000Z','','00:00:00.000Z','','27');
CREATE TABLE "rio_ed__Contact_Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__Primary_Contact__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(1,'True','Tentative','27');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(2,'True','Tentative','29');
CREATE TABLE "rio_ed__Course_Connection_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Requirement_ID__c" VARCHAR(255), 
	"rio_ed__Requirement_Met__c" VARCHAR(255), 
	"rio_ed__Requirement_Type__c" VARCHAR(255), 
	"rio_ed__Course_Connection__c" VARCHAR(255), 
	"rio_ed__Related_Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(1,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','238','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(2,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','250','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(3,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','195','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(4,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','174','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(5,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','141','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(6,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','112','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(7,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','211','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(8,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','229','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(9,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','157','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(10,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','217','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(11,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','145','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(12,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','286','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(13,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','262','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(14,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','274','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(15,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','58','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(16,'Installer Sample Data','ICT112 Pre-Requisite','A','True','Pre-Requisite','100','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(17,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','88','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(18,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','126','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(19,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','80','10');
CREATE TABLE "rio_ed__Discipline_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Requirement__c" VARCHAR(255), 
	"rio_ed__Parent__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	"rio_ed__Program_Discipline__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(1,'Installer Sample Data','Major Group A','0125j000000IJkBAAW','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(2,'Installer Sample Data','Major Group B','0125j000000IJkBAAW','10.0','Mandatory','','','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(3,'Installer Sample Data','BUS101','0125j000000IJkAAAW','','Mandatory','1','24','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(4,'Installer Sample Data','BUS102','0125j000000IJkAAAW','','Optional','1','8','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(5,'Installer Sample Data','ICT112','0125j000000IJkAAAW','','Mandatory','2','10','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(6,'Installer Sample Data','ICT115','0125j000000IJkAAAW','','Optional','2','12','1');
CREATE TABLE "rio_ed__Discipline_Requirement__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0125j000000IJkAAAW','Course');
INSERT INTO "rio_ed__Discipline_Requirement__c_rt_mapping" VALUES('0125j000000IJkBAAW','Group');
CREATE TABLE "rio_ed__Fee_Line__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Fee_Line__c" VALUES(1,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','65','3','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(2,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','242','3','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(3,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','254','3','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(4,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','199','3','17');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(5,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','178','3','18');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(6,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','166','3','19');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(7,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','116','3','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(8,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','215','3','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(9,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','233','3','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(10,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','62','3','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(11,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','161','3','5');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(12,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','221','3','6');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(13,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','149','3','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(14,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','187','3','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(15,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','266','3','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(16,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','278','3','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(17,'Installer Sample Data','2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','106','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(18,'Installer Sample Data','2021-12-20','2022-01-09','1000.0','Self Paid','','Self Paid','105','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(19,'Installer Sample Data','2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','103','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(20,'Installer Sample Data','2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','107','3','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(21,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','70','3','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(22,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','68','3','11');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(23,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','94','3','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(24,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','93','3','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(25,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','92','3','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(26,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','95','3','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(27,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','131','3','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(28,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','130','3','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(29,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','132','3','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(30,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','133','3','13');
CREATE TABLE "rio_ed__Fee_Schedule_Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(1,'Installer Sample Data','2','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(2,'Installer Sample Data','2','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(3,'Installer Sample Data','2','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(4,'Installer Sample Data','2','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(5,'Installer Sample Data','3','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(6,'Installer Sample Data','3','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(7,'Installer Sample Data','3','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(8,'Installer Sample Data','3','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(9,'Installer Sample Data','1','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(10,'Installer Sample Data','1','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(11,'Installer Sample Data','1','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(12,'Installer Sample Data','1','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(13,'Installer Sample Data','4','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(14,'Installer Sample Data','4','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(15,'Installer Sample Data','4','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(16,'Installer Sample Data','4','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(17,'Installer Sample Data','6','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(18,'Installer Sample Data','6','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(19,'Installer Sample Data','6','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(20,'Installer Sample Data','6','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(21,'Installer Sample Data','5','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(22,'Installer Sample Data','5','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(23,'Installer Sample Data','5','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(24,'Installer Sample Data','5','6');
CREATE TABLE "rio_ed__Fee_Schedule__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(1,'Installer Sample Data','Default','False','False','2000.0','2000.0','2032-01-20','Term','2022-01-20','False','Draft','1');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(2,'Installer Sample Data','Default','False','False','1000.0','1000.0','2032-01-20','Course','2022-01-20','False','Draft','2');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(3,'Installer Sample Data','Discountable Default','False','False','1000.0','1000.0','2032-01-20','','2022-01-20','False','','3');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(4,'Installer Sample Data','Default','False','False','2500.0','2500.0','2032-01-20','Program','2022-01-20','False','Draft','4');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(5,'Installer Sample Data','Default','False','False','1000.0','1000.0','2032-01-20','Deposit','2022-01-20','False','Draft','5');
INSERT INTO "rio_ed__Fee_Schedule__c" VALUES(6,'Installer Sample Data','Default','False','False','500.0','500.0','2032-01-20','Application','2022-01-20','False','Draft','6');
CREATE TABLE "rio_ed__Fee__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Fee_Type__c" VARCHAR(255), 
	"rio_ed__Fee_Unit__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee__c" VALUES(1,'Installer Sample Data','Standard Term Fee','Tuition','Term');
INSERT INTO "rio_ed__Fee__c" VALUES(2,'Installer Sample Data','Standard Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(3,'Installer Sample Data','Discountable Course Fee','Tuition','Course');
INSERT INTO "rio_ed__Fee__c" VALUES(4,'Installer Sample Data','Standard Program Fee','Tuition','Program');
INSERT INTO "rio_ed__Fee__c" VALUES(5,'Installer Sample Data','Standard Deposit Fee','Deposit','Deposit');
INSERT INTO "rio_ed__Fee__c" VALUES(6,'Installer Sample Data','Standard Application Fee','Application','Application');
CREATE TABLE "rio_ed__Funding__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Funding__c" VALUES(1,'Installer Sample Data','Standard Funding (Scholarship)','','','False','Scholarship','100.0','250.0','Active','False','500.0');
INSERT INTO "rio_ed__Funding__c" VALUES(2,'Installer Sample Data','Standard Funding (Sponsor)','','','False','Sponsor','50.0','75.0','Active','False','250.0');
INSERT INTO "rio_ed__Funding__c" VALUES(3,'Installer Sample Data','Standard Funding (Discount %)','','10.0','False','Discount %','','','Active','False','');
INSERT INTO "rio_ed__Funding__c" VALUES(4,'Installer Sample Data','Standard Funding (Discount Amount)','100.0','','False','Discount','','','Active','False','');
CREATE TABLE "rio_ed__Grade_Criteria__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(1,'Installer Sample Data','ICT112 Assignment 2','2.0','30.0','10');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(2,'Installer Sample Data','ICT112 Final Exam','3.0','50.0','10');
INSERT INTO "rio_ed__Grade_Criteria__c" VALUES(3,'Installer Sample Data','ICT112 Assignment 1','1.0','20.0','10');
CREATE TABLE "rio_ed__Grade_Setting__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(1,'Installer Sample Data','RIOSOB-HD','False','7.0','91-100','Pass','University Department','0015j00000EQs5IAAT-HD - High Distinction','Higher Range','HD - High Distinction','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(2,'Installer Sample Data','RIOSOB-D','False','6.0','81-90','Pass','University Department','0015j00000EQs5IAAT-D - Distinction','Higher Range','D - Distinction','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(3,'Installer Sample Data','RIOSOB-FA','True','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FA - Fail Absent','Higher Range','FA - Fail Absent','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(4,'Installer Sample Data','RIOSOB-FL','False','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FL - Fail','Higher Range','FL - Fail','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(5,'Installer Sample Data','RIOSOB-CR','False','5.0','61-80','Pass','University Department','0015j00000EQs5IAAT-CR - Credit','Higher Range','CR - Credit','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(6,'Installer Sample Data','RIOSOB-PS','False','4.0','50-60','Pass','University Department','0015j00000EQs5IAAT-PS - Pass','Higher Range','PS - Pass','1');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(7,'Installer Sample Data','RIOUNI-FL','False','0.0','0 - 49','Fail','Educational Institution','0015j00000EQs58AAD-FL - Fail','Higher Range','FL - Fail','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(8,'Installer Sample Data','RIOUNI-D','False','6.0','75 - 84','Pass','Educational Institution','0015j00000EQs58AAD-D - Distinction','Higher Range','D - Distinction','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(9,'Installer Sample Data','RIOUNI-CR','False','5.0','65 - 74','Pass','Educational Institution','0015j00000EQs58AAD-CR - Credit','Higher Range','CR - Credit','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(10,'Installer Sample Data','RIOUNI-PS','False','4.0','50 - 64','Pass','Educational Institution','0015j00000EQs58AAD-PS - Pass','Higher Range','PS - Pass','5');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(11,'Installer Sample Data','RIOUNI-HD','False','7.0','85 - 100','Pass','Educational Institution','0015j00000EQs58AAD-HD - High Distinction','Higher Range','HD - High Distinction','5');
CREATE TABLE "rio_ed__Grade__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"RecordTypeId" VARCHAR(255), 
	"rio_ed__Grade_Criteria_Id__c" VARCHAR(255), 
	"rio_ed__Grade_Value__c" VARCHAR(255), 
	"rio_ed__Sequence__c" VARCHAR(255), 
	"rio_ed__Weight__c" VARCHAR(255), 
	"rio_ed__Term_Grade__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Grade__c" VALUES(1,'Installer Sample Data','ICT112 Assignment 1','0125j000000IJkCAAW','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(2,'Installer Sample Data','ICT112 Assignment 2','0125j000000IJkCAAW','a0y5j000000hDmoAAE','HD - High Distinction','2.0','30.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(3,'Installer Sample Data','ICT112 Final Exam','0125j000000IJkCAAW','a0y5j000000hDmtAAE','HD - High Distinction','3.0','50.0','1');
INSERT INTO "rio_ed__Grade__c" VALUES(4,'Installer Sample Data','ICT112 Assignment 1','0125j000000IJkCAAW','a0y5j000000hDmjAAE','HD - High Distinction','1.0','20.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(5,'Installer Sample Data','ICT112 Assignment 2','0125j000000IJkCAAW','a0y5j000000hDmoAAE','D - Distinction','2.0','30.0','2');
INSERT INTO "rio_ed__Grade__c" VALUES(6,'Installer Sample Data','ICT112 Final Exam','0125j000000IJkCAAW','a0y5j000000hDmtAAE','D - Distinction','3.0','50.0','2');
CREATE TABLE "rio_ed__Grade__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0125j000000IJkCAAW','Grade');
INSERT INTO "rio_ed__Grade__c_rt_mapping" VALUES('0125j000000IJkDAAW','Sub_Grade');
CREATE TABLE "rio_ed__PE_Group_Status__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(1,'Installer Sample Data','RIOUNI02-Mandatory','Required','33.333333333333336','4.0','40.0','40.0','120.0','24.0','In Progress','False','2','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(2,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(3,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(4,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(5,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(6,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(7,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(8,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(9,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(10,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(11,'Installer Sample Data','RIOUNI02-Mandatory','Required','33.333333333333336','0.0','40.0','40.0','120.0','25.0','In Progress','False','2','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(12,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(13,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(14,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','Not Started','False','2','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(15,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(16,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(17,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(18,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(19,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','2','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(20,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(21,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(22,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(23,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(24,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(25,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(26,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(27,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(28,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(29,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(30,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(31,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(32,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(33,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(34,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(35,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(36,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(37,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(38,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','1','5');
CREATE TABLE "rio_ed__PE_Pathway_Status__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(1,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','16','1','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(2,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','4.0','4.0','Full-time','16','1','4');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(3,'Installer Sample Data','False','False','False','40.0','40.0','False','5.0','Not generated','6.0','24.0','1.0','4.0','Full-time','16','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(4,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','16','1','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(5,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','6','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(6,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','6','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(7,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','6','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(8,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','6','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(9,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','7','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(10,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','7','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(11,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','7','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(12,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','7','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(13,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','8','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(14,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','8','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(15,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','8','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(16,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','8','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(17,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','9','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(18,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','9','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(19,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','9','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(20,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','9','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(21,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','10','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(22,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','10','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(23,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','10','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(24,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','10','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(25,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','11','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(26,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','11','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(27,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','11','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(28,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','11','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(29,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','12','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(30,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','12','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(31,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','12','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(32,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','12','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(33,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','13','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(34,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','13','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(35,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','13','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(36,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','13','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(37,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','14','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(38,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','14','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(39,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','14','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(40,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','14','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(41,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','15','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(42,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','15','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(43,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','15','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(44,'Installer Sample Data','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','15','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(45,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','17','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(46,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','17','1','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(47,'Installer Sample Data','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','17','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(48,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','17','1','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(49,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','18','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(50,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','18','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(51,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','18','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(52,'Installer Sample Data','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','18','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(53,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','19','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(54,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','19','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(55,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','19','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(56,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','1.0','4.0','Full-time','19','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(57,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(58,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','8.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(59,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(60,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','5.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(61,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(62,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','6.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(63,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','7.0','8.0','Half-time','1','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(64,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','8.0','Half-time','1','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(65,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','2','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(66,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','2','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(67,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','2','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(68,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','2','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(69,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','3','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(70,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','3','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(71,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','3','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(72,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','3','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(73,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','4','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(74,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','4','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(75,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','4','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(76,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','4','1','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(77,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','5','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(78,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','5','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(79,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','5','1','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(80,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','5','1','5');
CREATE TABLE "rio_ed__Pathway_Unit__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Term_Number__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Group__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(1,'Installer Sample Data','4.0','','3','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(2,'Installer Sample Data','4.0','','5','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(3,'Installer Sample Data','2.0','','6','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(4,'Installer Sample Data','3.0','','6','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(5,'Installer Sample Data','1.0','','6','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(6,'Installer Sample Data','4.0','','1','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(7,'Installer Sample Data','8.0','','1','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(8,'Installer Sample Data','7.0','','1','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(9,'Installer Sample Data','1.0','43','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(10,'Installer Sample Data','2.0','43','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(11,'Installer Sample Data','3.0','29','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(12,'Installer Sample Data','6.0','29','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(13,'Installer Sample Data','1.0','9','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(14,'Installer Sample Data','1.0','9','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(15,'Installer Sample Data','2.0','51','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(16,'Installer Sample Data','4.0','51','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(17,'Installer Sample Data','1.0','11','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(18,'Installer Sample Data','1.0','11','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(19,'Installer Sample Data','3.0','7','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(20,'Installer Sample Data','5.0','7','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(21,'Installer Sample Data','1.0','33','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(22,'Installer Sample Data','2.0','33','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(23,'Installer Sample Data','3.0','38','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(24,'Installer Sample Data','1.0','28','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(25,'Installer Sample Data','2.0','45','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(26,'Installer Sample Data','4.0','45','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(27,'Installer Sample Data','1.0','30','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(28,'Installer Sample Data','1.0','24','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(29,'Installer Sample Data','1.0','8','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(30,'Installer Sample Data','3.0','14','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(31,'Installer Sample Data','2.0','50','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(32,'Installer Sample Data','2.0','54','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(33,'Installer Sample Data','2.0','26','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(34,'Installer Sample Data','3.0','48','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(35,'Installer Sample Data','2.0','42','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(36,'Installer Sample Data','2.0','35','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(37,'Installer Sample Data','3.0','35','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(38,'Installer Sample Data','3.0','40','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(39,'Installer Sample Data','2.0','17','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(40,'Installer Sample Data','3.0','17','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(41,'Installer Sample Data','3.0','23','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(42,'Installer Sample Data','5.0','23','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(43,'Installer Sample Data','3.0','27','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(44,'Installer Sample Data','6.0','27','','2');
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
INSERT INTO "rio_ed__Plan__c" VALUES(1,'Installer Sample Data','2022 Term 1 ICT115','False','a0C5j000000qiheEAA','2022-06-18','Role','Resource','False','2022-01-20');
INSERT INTO "rio_ed__Plan__c" VALUES(2,'Installer Sample Data','2022 Term 1 ICT112','False','a0C5j000000qihPEAQ','2022-06-18','Role','Resource','False','2021-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(3,'Installer Sample Data','Appointments','False','','2072-01-12','Role','Resource','False','2022-01-12');
INSERT INTO "rio_ed__Plan__c" VALUES(4,'Installer Sample Data','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(5,'Installer Sample Data','Last Year Term 1 BUS104','False','a0C5j000000s9VNEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(6,'Installer Sample Data','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(7,'Installer Sample Data','Last Year Term 1 BUS105','False','a0C5j000000s9VJEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(8,'Installer Sample Data','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(9,'Installer Sample Data','Last Year Term 1 ICT120','False','a0C5j000000s9UtEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(10,'Installer Sample Data','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(11,'Installer Sample Data','Last Year Term 1 BUS101','False','a0C5j000000s9V8EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(12,'Installer Sample Data','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(13,'Installer Sample Data','Last Year Term 1 ICT112','False','a0C5j000000s9UjEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(14,'Installer Sample Data','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(15,'Installer Sample Data','Last Year Term 1 ICT211','False','a0C5j000000s9V3EAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(16,'Installer Sample Data','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(17,'Installer Sample Data','Last Year Term 1 ICT115','False','a0C5j000000s9UoEAI','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(18,'Installer Sample Data','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(19,'Installer Sample Data','Last Year Term 1 BUS102','False','a0C5j000000s9VIEAY','2021-06-18','Role','Resource','False','2020-12-20');
INSERT INTO "rio_ed__Plan__c" VALUES(20,'Installer Sample Data','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(21,'Installer Sample Data','Last Year Term 2 ICT115','False','a0C5j000000s9VrEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(22,'Installer Sample Data','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(23,'Installer Sample Data','Last Year Term 2 ICT112','False','a0C5j000000s9VhEAI','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(24,'Installer Sample Data','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(25,'Installer Sample Data','Last Year Term 2 BUS102','False','a0C5j000000s9WQEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(26,'Installer Sample Data','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(27,'Installer Sample Data','Last Year Term 2 BUS105','False','a0C5j000000s9WREAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(28,'Installer Sample Data','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(29,'Installer Sample Data','Last Year Term 2 ICT211','False','a0C5j000000s9WBEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(30,'Installer Sample Data','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(31,'Installer Sample Data','Last Year Term 2 BUS104','False','a0C5j000000s9WCEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(32,'Installer Sample Data','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(33,'Installer Sample Data','Last Year Term 2 BUS101','False','a0C5j000000s9WLEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(34,'Installer Sample Data','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-18','Role','Resource','False','2021-07-02');
INSERT INTO "rio_ed__Plan__c" VALUES(35,'Installer Sample Data','Last Year Term 2 ICT120','False','a0C5j000000s9VKEAY','2021-11-18','Role','Resource','False','2021-07-02');
CREATE TABLE "rio_ed__Program_Application__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Program_Application__c" VALUES(1,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2020','2021-12-23T07:16:53.000+0000','Approved','Full-time','23','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(2,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:38:16.000+0000','Approved','Full-time','25','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(3,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:39:12.000+0000','Draft','Full-time','28','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(4,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:17:49.000+0000','Approved','Full-time','30','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(5,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-09T05:52:53.000+0000','Approved','Full-time','31','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(6,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:34:24.000+0000','Approved','Full-time','26','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(7,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:47:51.000+0000','Approved','Full-time','39','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(8,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:03:30.000+0000','Approved','Full-time','40','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(9,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:04:25.000+0000','Approved','Full-time','41','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(10,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:08:59.000+0000','Approved','Full-time','42','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(11,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:06:48.000+0000','Approved','Full-time','32','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(12,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:08:16.000+0000','Approved','Full-time','43','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(13,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:03:57.000+0000','Approved','Full-time','44','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(14,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:49:27.000+0000','Approved','Full-time','36','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(15,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:43:21.000+0000','Approved','Half-time','35','2','2','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(16,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:45:14.000+0000','Approved','Full-time','22','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(17,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:52:05.000+0000','Approved','Full-time','33','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(18,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:53:44.000+0000','Approved','Full-time','34','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(19,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:57:54.000+0000','Approved','Full-time','37','','','8');
INSERT INTO "rio_ed__Program_Application__c" VALUES(20,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:59:07.000+0000','Approved','Full-time','38','','','8');
CREATE TABLE "rio_ed__Program_Course_Requirement__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Requirement_ID__c" VARCHAR(255), 
	"rio_ed__Requirement_Type__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(1,'Installer Sample Data','ICT112 Pre-Requisite','A','Pre-Requisite','10','35');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(2,'Installer Sample Data','ICT112 pre-requisite','A','Pre-Requisite','10','36');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(3,'Installer Sample Data','BUS101 pre-requisite','A','Pre-Requisite','17','47');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(4,'Installer Sample Data','BUS101 pre-requisite','A','Pre-Requisite','17','48');
CREATE TABLE "rio_ed__Program_Discipline__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"rio_ed__Credits__c" VARCHAR(255), 
	"rio_ed__Type__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Discipline__c" VALUES(1,'Installer Sample Data','BUS Major','20.0','Major','1');
CREATE TABLE "rio_ed__Program_Pathway__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Enrollment_Method__c" VARCHAR(255), 
	"rio_ed__Name__c" VARCHAR(255), 
	"rio_ed__Number_of_Terms__c" VARCHAR(255), 
	"rio_ed__Study_Mode__c" VARCHAR(255), 
	"rio_ed__Term_Label__c" VARCHAR(255), 
	"rio_ed__Program_Plan__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(1,'Installer Sample Data','Manual','Full Time','4.0','Full-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(2,'Installer Sample Data','Manual','Half Time','8.0','Half-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(3,'Installer Sample Data','Manual','Full Time','4.0','Full-time','Default','1');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(4,'Installer Sample Data','Manual','Full Time','4.0','Full-time','Default','3');
CREATE TABLE "rio_ed__Qualified_Faculty__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Roles__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(1,'Installer Sample Data','Lecturer','1','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(2,'Installer Sample Data','Lecturer','10','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(3,'Installer Sample Data','Lecturer','10','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(4,'Installer Sample Data','Lecturer','11','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(5,'Installer Sample Data','Lecturer','11','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(6,'Installer Sample Data','Lecturer','12','24');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(7,'Installer Sample Data','Lecturer','13','24');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(8,'Installer Sample Data','Lecturer','14','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(9,'Installer Sample Data','Lecturer','14','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(10,'Installer Sample Data','Lecturer','15','24');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(11,'Installer Sample Data','Lecturer','16','24');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(12,'Installer Sample Data','Lecturer','17','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(13,'Installer Sample Data','Lecturer','18','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(14,'Installer Sample Data','Lecturer','19','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(15,'Installer Sample Data','Lecturer','2','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(16,'Installer Sample Data','Lecturer','20','24');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(17,'Installer Sample Data','Lecturer','21','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(18,'Installer Sample Data','Lecturer','21','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(19,'Installer Sample Data','Lecturer','22','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(20,'Installer Sample Data','Lecturer','22','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(21,'Installer Sample Data','Lecturer','23','24');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(22,'Installer Sample Data','Lecturer','24','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(23,'Installer Sample Data','Lecturer','3','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(24,'Installer Sample Data','Lecturer','4','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(25,'Installer Sample Data','Lecturer','4','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(26,'Installer Sample Data','Lecturer','5','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(27,'Installer Sample Data','Lecturer','5','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(28,'Installer Sample Data','Lecturer','6','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(29,'Installer Sample Data','Lecturer','7','21');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(30,'Installer Sample Data','Lecturer','8','45');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(31,'Installer Sample Data','Lecturer','8','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(32,'Installer Sample Data','Lecturer','9','21');
CREATE TABLE "rio_ed__Resource_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource_Type__c" VALUES(1,'Installer Sample Data','Location');
INSERT INTO "rio_ed__Resource_Type__c" VALUES(2,'Installer Sample Data','Location');
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
INSERT INTO "rio_ed__Resource__c" VALUES(1,'Installer Sample Data','Beta 101','True','False','1','2');
INSERT INTO "rio_ed__Resource__c" VALUES(2,'Installer Sample Data','Alpha 104','True','False','10','2');
INSERT INTO "rio_ed__Resource__c" VALUES(3,'Installer Sample Data','Alpha 101','True','False','11','2');
INSERT INTO "rio_ed__Resource__c" VALUES(4,'Installer Sample Data','Alpha 102','True','False','12','2');
INSERT INTO "rio_ed__Resource__c" VALUES(5,'Installer Sample Data','Beta 102','True','False','2','2');
INSERT INTO "rio_ed__Resource__c" VALUES(6,'Installer Sample Data','Beta 103','True','False','3','2');
INSERT INTO "rio_ed__Resource__c" VALUES(7,'Installer Sample Data','Beta 104','True','False','4','2');
INSERT INTO "rio_ed__Resource__c" VALUES(8,'Installer Sample Data','Alpha Building','True','False','5','2');
INSERT INTO "rio_ed__Resource__c" VALUES(9,'Installer Sample Data','Beta Building','True','False','6','2');
INSERT INTO "rio_ed__Resource__c" VALUES(10,'Installer Sample Data','Alpha 103','True','False','7','2');
INSERT INTO "rio_ed__Resource__c" VALUES(11,'Installer Sample Data','Beta 100','True','False','8','2');
INSERT INTO "rio_ed__Resource__c" VALUES(12,'Installer Sample Data','Alpha 100','True','False','9','2');
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
INSERT INTO "rio_ed__Role__c" VALUES(1,'Installer Sample Data','BUS105 Lecture #1','False','0.0','True','a1c5j000000UtGlAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(2,'Installer Sample Data','BUS101 Lecture #1','False','0.0','True','a1c5j000000UtGWAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(3,'Installer Sample Data','BUS104 Lecture #1','False','0.0','True','a1c5j000000UtGgAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(4,'Installer Sample Data','HRM311 Lecture #1','False','0.0','True','a1c5j000000UtHFAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(5,'Installer Sample Data','BUS320 Lecture #1','False','0.0','True','a1c5j000000UtHAAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(6,'Installer Sample Data','BUS106 Lecture #1','False','0.0','True','a1c5j000000UtGqAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(7,'Installer Sample Data','BUS203 Lecture #1','False','0.0','True','a1c5j000000UtGvAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(8,'Installer Sample Data','ICT310 Lecture #1','False','0.0','True','a1c5j000000UtHeAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(9,'Installer Sample Data','BUS108 Lecture #1','False','0.0','True','a1c5j000000UtGhAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(10,'Installer Sample Data','COR109 Lecture #1','False','0.0','True','a1c5j000000UtGXAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(11,'Installer Sample Data','BUS301 Lecture #1','False','0.0','True','a1c5j000000UtH5AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(12,'Installer Sample Data','BUS102 Lecture #1','False','0.0','True','a1c5j000000UtGbAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(13,'Installer Sample Data','BUS211 Lecture #1','False','0.0','True','a1c5j000000UtH0AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(14,'Installer Sample Data','ICT211 Lecture #1','False','0.0','True','a1c5j000000UtHUAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(15,'Installer Sample Data','ICT120 Lecture #1','False','0.0','True','a1c5j000000UtHBAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(16,'Installer Sample Data','ICT352 Lecture #1','False','0.0','True','a1c5j000000UtH6AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(17,'Installer Sample Data','ICT221 Lecture #1','False','0.0','True','a1c5j000000UtHZAA0','','2');
INSERT INTO "rio_ed__Role__c" VALUES(18,'Installer Sample Data','ICT320 Lecture #1','False','0.0','True','a1c5j000000UtHjAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(19,'Installer Sample Data','MGT210 Lecture #1','False','0.0','True','a1c5j000000UuKpAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(20,'Installer Sample Data','HRM321 Lecture #1','False','0.0','True','a1c5j000000UuKkAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(21,'Installer Sample Data','MGT310 Lecture #1','False','0.0','True','a1c5j000000UuKuAAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(22,'Installer Sample Data','BUS101 Lecture #2 (Session Group)','False','0.0','True','a1c5j000000UunKAAS','','2');
INSERT INTO "rio_ed__Role__c" VALUES(23,'Installer Sample Data','ICT115 Tutorial Series #1','False','0.0','False','a1c5j000000UfN7AAK','','2');
INSERT INTO "rio_ed__Role__c" VALUES(24,'Installer Sample Data','ICT115 Lecture #1','False','0.0','True','a1c5j000000UtHKAA0','1','2');
INSERT INTO "rio_ed__Role__c" VALUES(25,'Installer Sample Data','ICT112 Lecture #1','False','0.0','True','a1c5j000000UtGSAA0','2','2');
INSERT INTO "rio_ed__Role__c" VALUES(26,'Installer Sample Data','Appointments','False','0.0','False','','3','2');
CREATE TABLE "rio_ed__Session_Connection__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Session_Connection__c" VALUES(1,'Installer Sample Data','CC-0176 - Test Student 7','False','','','False','False','','Current','242','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(2,'Installer Sample Data','CC-0007 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','43','2','46');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(3,'Installer Sample Data','CC-0188 - Test Student 8','False','','','False','False','','Current','254','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(4,'Installer Sample Data','CC-0008 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','44','50','47');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(5,'Installer Sample Data','CC-0212 - Test Student 10','False','','','False','False','','Current','199','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(6,'Installer Sample Data','CC-0024 - Fiona Forton','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','24','3','49');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(7,'Installer Sample Data','CC-0272 - Test Student 15','False','','','False','False','','Current','178','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(8,'Installer Sample Data','CC-0014 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','45','17','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(9,'Installer Sample Data','CC-0200 - Test Student 9','False','','','False','False','','Current','166','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(10,'Installer Sample Data','CC-0016 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','26','7','28');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(11,'Installer Sample Data','CC-0224 - Test Student 11','False','','','False','False','','Current','116','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(12,'Installer Sample Data','CC-0260 - Test Student 14','False','','','False','False','','Current','215','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(13,'Installer Sample Data','CC-0296 - Test Student 17','False','','','False','False','','Current','233','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(14,'Installer Sample Data','CC-0248 - Test Student 13','False','','','False','False','','Current','161','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(15,'Installer Sample Data','CC-0284 - Test Student 16','False','','','False','False','','Current','221','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(16,'Installer Sample Data','CC-0023 - Fiona Forton','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','17','18','30');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(17,'Installer Sample Data','CC-0236 - Test Student 12','False','','','False','False','','Current','149','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(18,'Installer Sample Data','CC-0308 - Test Student 20','False','','','False','False','','Current','187','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(19,'Installer Sample Data','CC-0320 - Test Student 18','False','','','False','False','','Current','266','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(20,'Installer Sample Data','CC-0022 - Fran Fisher','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','31','19','32');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(21,'Installer Sample Data','CC-0034 - Fiona Forton','True','2023-11-18','Confirmed','True','False','2023-07-02','Current','18','32','33');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(22,'Installer Sample Data','CC-0075 - Test Student 1','False','','','False','False','','Current','106','','38');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(23,'Installer Sample Data','CC-0082 - Test Student 1','False','','','False','False','','Current','105','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(24,'Installer Sample Data','CC-0084 - Test Student 1','False','','','False','False','','Current','103','','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(25,'Installer Sample Data','CC-0086 - Test Student 1','False','','','False','False','','Current','107','','43');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(26,'Installer Sample Data','CC-0000 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','32','1','34');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(27,'Installer Sample Data','CC-0000 - Fran Fisher','False','2022-05-15','Confirmed','True','False','2022-01-23','Current','32','34','35');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(28,'Installer Sample Data','CC-0013 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','34','21','37');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(29,'Installer Sample Data','CC-0021 - Fran Fisher','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','36','4','39');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(30,'Installer Sample Data','CC-0015 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','37','5','40');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(31,'Installer Sample Data','CC-0087 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-12','Current','48','43','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(32,'Installer Sample Data','CC-0094 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','51','25','42');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(33,'Installer Sample Data','CC-0088 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','47','42','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(34,'Installer Sample Data','CC-0093 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','53','29','48');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(35,'Installer Sample Data','CC-0090 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','52','23','43');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(36,'Installer Sample Data','CC-0089 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','49','24','38');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(37,'Installer Sample Data','CC-0006 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','25','20','27');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(38,'Installer Sample Data','CC-0091 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','46','28','29');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(39,'Installer Sample Data','CC-0092 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','50','8','41');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(40,'Installer Sample Data','CC-0095 - Test Student 2','False','','','False','False','','Current','94','','38');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(41,'Installer Sample Data','CC-0102 - Test Student 2','False','','','False','False','','Current','93','','36');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(42,'Installer Sample Data','CC-0104 - Test Student 2','False','','','False','False','','Current','92','','31');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(43,'Installer Sample Data','CC-0106 - Test Student 2','False','','','False','False','','Current','95','','43');
CREATE TABLE "rio_ed__Session_Time__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Session_Time__c" VALUES(1,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:40 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','10:00','Weekly','False','Monday','Weekly','2022-01-20','09:00','Active','Create/Update after today','9','34');
INSERT INTO "rio_ed__Session_Time__c" VALUES(2,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','12:00','Weekly','False','Monday','Weekly','2022-01-20','11:00','Active','Create/Update after today','9','46');
INSERT INTO "rio_ed__Session_Time__c" VALUES(3,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','12:00','Weekly','False','Tuesday','Weekly','2023-01-20','11:00','Active','Create/Update after today','9','49');
INSERT INTO "rio_ed__Session_Time__c" VALUES(4,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','10:00','Weekly','False','Tuesday','Weekly','2023-01-20','09:00','Active','Create/Update after today','9','39');
INSERT INTO "rio_ed__Session_Time__c" VALUES(5,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:43 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','17:00','Weekly','False','Wednesday','Weekly','2022-07-02','16:00','Active','Create/Update after today','9','40');
INSERT INTO "rio_ed__Session_Time__c" VALUES(6,'Installer Sample Data','','','Monday','','15:00','','False','Monday','Weekly','','14:00','Active','Create/Update after today','9','20');
INSERT INTO "rio_ed__Session_Time__c" VALUES(7,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','15:00','Weekly','False','Monday','Weekly','2022-07-02','14:00','Active','Create/Update after today','9','28');
INSERT INTO "rio_ed__Session_Time__c" VALUES(8,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:06 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','12:00','Weekly','False','Wednesday','Weekly','2022-07-02','11:00','Active','Create/Update after today','9','41');
INSERT INTO "rio_ed__Session_Time__c" VALUES(9,'Installer Sample Data','','','Wednesday','','14:00','','False','Wednesday','Weekly','','13:00','Active','Create/Update after today','9','22');
INSERT INTO "rio_ed__Session_Time__c" VALUES(10,'Installer Sample Data','','','Monday','','14:00','','False','Monday','Weekly','','13:00','Active','Create/Update after today','9','24');
INSERT INTO "rio_ed__Session_Time__c" VALUES(11,'Installer Sample Data','','','Tuesday','','13:00','','False','Tuesday','Weekly','','12:00','Active','Create/Update after today','9','8');
INSERT INTO "rio_ed__Session_Time__c" VALUES(12,'Installer Sample Data','','','Wednesday','','11:00','','False','Wednesday','Weekly','','10:00','Active','Create/Update after today','9','17');
INSERT INTO "rio_ed__Session_Time__c" VALUES(13,'Installer Sample Data','','','Monday','','17:00','','False','Monday','Weekly','','16:00','Active','Create/Update after today','9','23');
INSERT INTO "rio_ed__Session_Time__c" VALUES(14,'Installer Sample Data','','','Tuesday','','14:00','','False','Tuesday','Weekly','','13:00','Active','Create/Update after today','9','9');
INSERT INTO "rio_ed__Session_Time__c" VALUES(15,'Installer Sample Data','','','Tuesday','','12:00','','False','Tuesday','Weekly','','11:00','Active','Create/Update after today','9','18');
INSERT INTO "rio_ed__Session_Time__c" VALUES(16,'Installer Sample Data','','','Monday','','16:00','','False','Monday','Weekly','','15:00','Active','Create/Update after today','9','26');
INSERT INTO "rio_ed__Session_Time__c" VALUES(17,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:45 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','14:00','Weekly','False','Monday','Weekly','2022-07-02','13:00','Active','Create/Update after today','9','50');
INSERT INTO "rio_ed__Session_Time__c" VALUES(18,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','11:00','Weekly','False','Tuesday','Weekly','2023-01-20','10:00','Active','Create/Update after today','9','30');
INSERT INTO "rio_ed__Session_Time__c" VALUES(19,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-06-18','17:00','Weekly','False','Monday','Weekly','2023-01-20','16:00','Active','Create/Update after today','9','32');
INSERT INTO "rio_ed__Session_Time__c" VALUES(20,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','11:00','Weekly','False','Monday','Weekly','2022-01-20','10:00','Active','Create/Update after today','9','27');
INSERT INTO "rio_ed__Session_Time__c" VALUES(21,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','16:00','Weekly','False','Monday','Weekly','2022-07-02','15:00','Active','Create/Update after today','9','37');
INSERT INTO "rio_ed__Session_Time__c" VALUES(22,'Installer Sample Data','','','Tuesday','','17:00','','False','Tuesday','Weekly','','16:00','Active','Create/Update after today','9','21');
INSERT INTO "rio_ed__Session_Time__c" VALUES(23,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-06-18','10:00','Weekly','False','Wednesday','Weekly','2022-01-20','09:00','Active','Create/Update after today','9','43');
INSERT INTO "rio_ed__Session_Time__c" VALUES(24,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:03 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','17:00','Weekly','False','Tuesday','Weekly','2022-01-20','16:00','Active','Create/Update after today','9','38');
INSERT INTO "rio_ed__Session_Time__c" VALUES(25,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:09 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','14:00','Weekly','False','Wednesday','Weekly','2022-07-02','13:00','Active','Create/Update after today','9','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(26,'Installer Sample Data','','','Wednesday','','10:00','','False','Wednesday','Weekly','','09:00','Active','Create/Update after today','9','16');
INSERT INTO "rio_ed__Session_Time__c" VALUES(27,'Installer Sample Data','','','Wednesday','','13:00','','False','Wednesday','Weekly','','12:00','Active','Create/Update after today','9','7');
INSERT INTO "rio_ed__Session_Time__c" VALUES(28,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','11:00','Weekly','False','Wednesday','Weekly','2022-07-02','10:00','Active','Create/Update after today','9','29');
INSERT INTO "rio_ed__Session_Time__c" VALUES(29,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:07 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','13:00','Weekly','False','Wednesday','Weekly','2022-07-02','12:00','Active','Create/Update after today','9','48');
INSERT INTO "rio_ed__Session_Time__c" VALUES(30,'Installer Sample Data','','','Monday','','10:00','','False','Monday','Weekly','','09:00','Active','Create/Update after today','9','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(31,'Installer Sample Data','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-18','15:00','Weekly','False','Wednesday','Weekly','2023-07-02','14:00','Active','Create/Update after today','9','45');
INSERT INTO "rio_ed__Session_Time__c" VALUES(32,'Installer Sample Data','Recreate','Session booking generation log 24/1/2022, 3:58 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-18','13:00','Weekly','False','Tuesday','Weekly','2023-07-02','12:00','Active','Create/Update after today','9','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(33,'Installer Sample Data','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-18','16:00','Weekly','False','Wednesday','Weekly','2023-07-02','15:00','Active','Create/Update after today','9','44');
INSERT INTO "rio_ed__Session_Time__c" VALUES(34,'Installer Sample Data','Upsert','Session booking generation log 25/1/2022, 4:29 pm:
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
[Custom Booking Updated]: a0a5j000002WUmuAAG from Friday 27 May 2022, 09:00-10:00 to Friday 27 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100','Friday','2022-06-18','10:00','Weekly','False','Friday','Weekly','2022-01-20','09:00','Active','Create/Update all','9','35');
INSERT INTO "rio_ed__Session_Time__c" VALUES(35,'Installer Sample Data','','','Wednesday','','17:00','','False','Wednesday','Weekly','','16:00','Active','Create/Update after today','9','12');
INSERT INTO "rio_ed__Session_Time__c" VALUES(36,'Installer Sample Data','','','Monday','','13:00','','False','Monday','Weekly','','12:00','Active','Create/Update after today','9','13');
INSERT INTO "rio_ed__Session_Time__c" VALUES(37,'Installer Sample Data','','','Monday','','12:00','','False','Monday','Weekly','','11:00','Active','Create/Update after today','9','14');
INSERT INTO "rio_ed__Session_Time__c" VALUES(38,'Installer Sample Data','','','Tuesday','','11:00','','False','Tuesday','Weekly','','10:00','Active','Create/Update after today','9','5');
INSERT INTO "rio_ed__Session_Time__c" VALUES(39,'Installer Sample Data','','','Tuesday','','10:00','','False','Tuesday','Weekly','','09:00','Active','Create/Update after today','9','19');
INSERT INTO "rio_ed__Session_Time__c" VALUES(40,'Installer Sample Data','','','Thursday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(41,'Installer Sample Data','','','Friday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(42,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:53 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','16:00','Weekly','False','Tuesday','Weekly','2022-01-20','15:00','Active','Create/Update after today','10','31');
INSERT INTO "rio_ed__Session_Time__c" VALUES(43,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:49 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','15:00','Weekly','False','Tuesday','Weekly','2021-12-20','14:00','Active','Create/Update after today','10','36');
INSERT INTO "rio_ed__Session_Time__c" VALUES(44,'Installer Sample Data','','','Tuesday','','15:00','','False','Tuesday','Weekly','','14:00','Active','Create/Update after today','10','2');
INSERT INTO "rio_ed__Session_Time__c" VALUES(45,'Installer Sample Data','','','Tuesday','','16:00','','False','Tuesday','Weekly','','15:00','Active','Create/Update after today','10','4');
INSERT INTO "rio_ed__Session_Time__c" VALUES(46,'Installer Sample Data','','','Wednesday','','12:00','','False','Wednesday','Weekly','','11:00','Active','Create/Update after today','9','25');
INSERT INTO "rio_ed__Session_Time__c" VALUES(47,'Installer Sample Data','','','Monday','','11:00','','False','Monday','Weekly','','10:00','Active','Create/Update after today','9','1');
INSERT INTO "rio_ed__Session_Time__c" VALUES(48,'Installer Sample Data','','','Wednesday','','16:00','','False','Wednesday','Weekly','','15:00','Active','Create/Update after today','9','15');
INSERT INTO "rio_ed__Session_Time__c" VALUES(49,'Installer Sample Data','','','Wednesday','','15:00','','False','Wednesday','Weekly','','14:00','Active','Create/Update after today','9','6');
INSERT INTO "rio_ed__Session_Time__c" VALUES(50,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:42 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','13:00','Weekly','False','Monday','Weekly','2022-01-20','12:00','Active','Create/Update after today','9','47');
CREATE TABLE "rio_ed__Session__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
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
INSERT INTO "rio_ed__Session__c" VALUES(1,'Installer Sample Data','BUS102 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','1','');
INSERT INTO "rio_ed__Session__c" VALUES(2,'Installer Sample Data','ICT112 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(3,'Installer Sample Data','ICT112 Practical Series #2','0125j000000IJkJAAW','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(4,'Installer Sample Data','ICT115 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','Draft','','','11','23');
INSERT INTO "rio_ed__Session__c" VALUES(5,'Installer Sample Data','COR109 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(6,'Installer Sample Data','MGT210 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','13','');
INSERT INTO "rio_ed__Session__c" VALUES(7,'Installer Sample Data','ICT320 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','14','');
INSERT INTO "rio_ed__Session__c" VALUES(8,'Installer Sample Data','HRM321 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','15','');
INSERT INTO "rio_ed__Session__c" VALUES(9,'Installer Sample Data','IBS220 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','16','');
INSERT INTO "rio_ed__Session__c" VALUES(10,'Installer Sample Data','BUS101 Tutorial Series #2','0125j000000IJkJAAW','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(11,'Installer Sample Data','BUS101 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(12,'Installer Sample Data','BUS106 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','18','');
INSERT INTO "rio_ed__Session__c" VALUES(13,'Installer Sample Data','BUS105 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(14,'Installer Sample Data','BUS104 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','2','');
INSERT INTO "rio_ed__Session__c" VALUES(15,'Installer Sample Data','MGT310 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','20','');
INSERT INTO "rio_ed__Session__c" VALUES(16,'Installer Sample Data','ICT211 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','21','');
INSERT INTO "rio_ed__Session__c" VALUES(17,'Installer Sample Data','ICT221 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','22','');
INSERT INTO "rio_ed__Session__c" VALUES(18,'Installer Sample Data','HRM311 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','23','');
INSERT INTO "rio_ed__Session__c" VALUES(19,'Installer Sample Data','BUS320 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','24','');
INSERT INTO "rio_ed__Session__c" VALUES(20,'Installer Sample Data','BUS203 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','3','');
INSERT INTO "rio_ed__Session__c" VALUES(21,'Installer Sample Data','ICT120 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','4','');
INSERT INTO "rio_ed__Session__c" VALUES(22,'Installer Sample Data','ICT352 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','5','');
INSERT INTO "rio_ed__Session__c" VALUES(23,'Installer Sample Data','BUS301 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','6','');
INSERT INTO "rio_ed__Session__c" VALUES(24,'Installer Sample Data','BUS108 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','7','');
INSERT INTO "rio_ed__Session__c" VALUES(25,'Installer Sample Data','ICT310 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','8','');
INSERT INTO "rio_ed__Session__c" VALUES(26,'Installer Sample Data','BUS211 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','9','');
INSERT INTO "rio_ed__Session__c" VALUES(27,'Installer Sample Data','BUS102 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:41:16.000+0000','21.0','True','Classroom','Lecture','Booked','','4','','12');
INSERT INTO "rio_ed__Session__c" VALUES(28,'Installer Sample Data','BUS203 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:46:06.000+0000','20.0','True','Classroom','Lecture','Booked','','46','','7');
INSERT INTO "rio_ed__Session__c" VALUES(29,'Installer Sample Data','ICT221 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:05:59.000+0000','20.0','True','Classroom','Lecture','Booked','','40','','17');
INSERT INTO "rio_ed__Session__c" VALUES(30,'Installer Sample Data','COR109 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:48:11.000+0000','21.0','True','Classroom','Lecture','Booked','','13','','10');
INSERT INTO "rio_ed__Session__c" VALUES(31,'Installer Sample Data','ICT115 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T06:53:46.000+0000','22.0','True','Computer Lab','Lecture','Booked','0.0','12','','24');
INSERT INTO "rio_ed__Session__c" VALUES(32,'Installer Sample Data','BUS301 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:47:04.000+0000','21.0','True','Classroom','Lecture','Booked','','53','','11');
INSERT INTO "rio_ed__Session__c" VALUES(33,'Installer Sample Data','HRM321 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-12T04:58:35.000+0000','20.0','True','Classroom','Lecture','Booked','','18','','20');
INSERT INTO "rio_ed__Session__c" VALUES(34,'Installer Sample Data','BUS101 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:40:46.000+0000','21.0','True','Classroom','Lecture','Booked','','23','','2');
INSERT INTO "rio_ed__Session__c" VALUES(35,'Installer Sample Data','BUS101 Lecture #2 (Session Group)','0125j000000IJkIAAW','Each Session Time','A','0.0','10.0','All Confirmed','2022-01-13T05:29:44.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','23','','22');
INSERT INTO "rio_ed__Session__c" VALUES(36,'Installer Sample Data','ICT112 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','15.0','15.0','All Confirmed','2022-01-09T06:49:56.000+0000','23.0','True','Computer Lab','Lecture','Booked','0.0','8','','25');
INSERT INTO "rio_ed__Session__c" VALUES(37,'Installer Sample Data','BUS211 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:46:39.000+0000','20.0','True','Classroom','Lecture','Booked','','60','','13');
INSERT INTO "rio_ed__Session__c" VALUES(38,'Installer Sample Data','ICT120 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T07:03:19.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','50','','15');
INSERT INTO "rio_ed__Session__c" VALUES(39,'Installer Sample Data','BUS320 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:47:35.000+0000','21.0','True','Classroom','Lecture','Booked','','43','','5');
INSERT INTO "rio_ed__Session__c" VALUES(40,'Installer Sample Data','BUS106 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:44:00.000+0000','20.0','True','Classroom','Lecture','Booked','','25','','6');
INSERT INTO "rio_ed__Session__c" VALUES(41,'Installer Sample Data','ICT310 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:06:55.000+0000','20.0','True','Classroom','Lecture','Booked','','58','','8');
INSERT INTO "rio_ed__Session__c" VALUES(42,'Installer Sample Data','ICT352 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:09:21.000+0000','20.0','True','Classroom','Lecture','Booked','','52','','16');
INSERT INTO "rio_ed__Session__c" VALUES(43,'Installer Sample Data','ICT211 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T07:05:28.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','38','','14');
INSERT INTO "rio_ed__Session__c" VALUES(44,'Installer Sample Data','MGT310 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','No Faculty Assigned','2022-01-12T04:59:39.000+0000','20.0','True','Classroom','Lecture','Booked','','34','','21');
INSERT INTO "rio_ed__Session__c" VALUES(45,'Installer Sample Data','MGT210 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','No Faculty Assigned','2022-01-12T04:59:16.000+0000','20.0','True','Classroom','Lecture','Booked','','15','','19');
INSERT INTO "rio_ed__Session__c" VALUES(46,'Installer Sample Data','BUS104 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:41:48.000+0000','21.0','True','Classroom','Lecture','Booked','','33','','3');
INSERT INTO "rio_ed__Session__c" VALUES(47,'Installer Sample Data','BUS105 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:42:12.000+0000','21.0','True','Classroom','Lecture','Booked','','29','','1');
INSERT INTO "rio_ed__Session__c" VALUES(48,'Installer Sample Data','ICT320 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:07:37.000+0000','20.0','True','Classroom','Lecture','Booked','','17','','18');
INSERT INTO "rio_ed__Session__c" VALUES(49,'Installer Sample Data','HRM311 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:48:54.000+0000','21.0','True','Classroom','Lecture','Booked','','41','','4');
INSERT INTO "rio_ed__Session__c" VALUES(50,'Installer Sample Data','BUS108 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:45:44.000+0000','20.0','True','Classroom','Lecture','Booked','','56','','9');
CREATE TABLE "rio_ed__Session__c_rt_mapping" (
	record_type_id VARCHAR(18) NOT NULL, 
	developer_name VARCHAR(255), 
	PRIMARY KEY (record_type_id)
);
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0125j000000IJkIAAW','Class');
INSERT INTO "rio_ed__Session__c_rt_mapping" VALUES('0125j000000IJkJAAW','Template');
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
INSERT INTO "rio_ed__Student_Fee__c" VALUES(1,'Installer Sample Data','2022-01-09','F-000000011','Bachelor of Business Information System','Tuition','16');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(2,'Installer Sample Data','2022-01-15','F-000000019','Bachelor of Business Information System','Tuition','6');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(3,'Installer Sample Data','2022-01-15','F-000000022','Bachelor of Business Information System','Tuition','7');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(4,'Installer Sample Data','2022-01-15','F-000000025','Bachelor of Business Information System','Tuition','8');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(5,'Installer Sample Data','2022-01-15','F-000000021','Bachelor of Business Information System','Tuition','9');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(6,'Installer Sample Data','2022-01-15','F-000000024','Bachelor of Business Information System','Tuition','10');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(7,'Installer Sample Data','2022-01-15','F-000000020','Bachelor of Business Information System','Tuition','11');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(8,'Installer Sample Data','2022-01-16','F-000000026','Bachelor of Business Information System','Tuition','12');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(9,'Installer Sample Data','2022-01-16','F-000000027','Bachelor of Business Information System','Tuition','13');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(10,'Installer Sample Data','2022-01-16','F-000000028','Bachelor of Business Information System','Tuition','14');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(11,'Installer Sample Data','2021-12-23','F-000000010','Bachelor of Business Information System','Tuition','15');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(12,'Installer Sample Data','2022-01-12','F-000000012','Bachelor of Business Information System','Tuition','17');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(13,'Installer Sample Data','2022-01-12','F-000000013','Bachelor of Business Information System','Tuition','18');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(14,'Installer Sample Data','2022-01-13','F-000000014','Bachelor of Business Information System','Tuition','19');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(15,'Installer Sample Data','2022-01-15','F-000000015','Bachelor of Business Information System','Tuition','1');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(16,'Installer Sample Data','2022-01-15','F-000000016','Bachelor of Business Information System','Tuition','2');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(17,'Installer Sample Data','2022-01-15','F-000000018','Bachelor of Business Information System','Tuition','3');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(18,'Installer Sample Data','2022-01-15','F-000000023','Bachelor of Business Information System','Tuition','4');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(19,'Installer Sample Data','2022-01-15','F-000000017','Bachelor of Business Information System','Tuition','5');
COMMIT;
