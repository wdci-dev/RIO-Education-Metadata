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
INSERT INTO "Account" VALUES(14,'Installer Sample Data','School of Business','0125j000000IJiXAAW','False','','Full Program','','18','27');
INSERT INTO "Account" VALUES(15,'Installer Sample Data','Bachelor of Business Management','0125j000000IJiRAAW','False','RIOUNI03','Full Program','','14','');
INSERT INTO "Account" VALUES(16,'Installer Sample Data','Campus: Sunshine Coast','0125j000000IJk9AAG','True','','Full Program','Australia/Brisbane','18','');
INSERT INTO "Account" VALUES(17,'Installer Sample Data','Campus: Brisbane','0125j000000IJk9AAG','True','','Full Program','Australia/Brisbane','18','');
INSERT INTO "Account" VALUES(18,'Installer Sample Data','RIO University','0125j000000IJiUAAW','False','','Full Program','','','');
INSERT INTO "Account" VALUES(19,'Installer Sample Data','Campus: Sydney','0125j000000IJk9AAG','True','','Full Program','Australia/Sydney','18','');
INSERT INTO "Account" VALUES(20,'Installer Sample Data','School of Art','0125j000000IJiXAAW','False','','Full Program','','18','');
INSERT INTO "Account" VALUES(21,'Installer Sample Data','Bachelor of Business Information System','0125j000000IJiRAAW','False','RIOUNI02','Full Program','','14','');
INSERT INTO "Account" VALUES(22,'Installer Sample Data','Freeman Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','44');
INSERT INTO "Account" VALUES(23,'Installer Sample Data','Christensen Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','21');
INSERT INTO "Account" VALUES(24,'Installer Sample Data','Smith Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','22');
INSERT INTO "Account" VALUES(25,'Installer Sample Data','Forton Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','23');
INSERT INTO "Account" VALUES(26,'Installer Sample Data','Huber Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','24');
INSERT INTO "Account" VALUES(27,'Installer Sample Data','Andrews Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','25');
INSERT INTO "Account" VALUES(28,'Installer Sample Data','Educator Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','26');
INSERT INTO "Account" VALUES(29,'Installer Sample Data','Cruz Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','28');
INSERT INTO "Account" VALUES(30,'Installer Sample Data','Randall Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','29');
INSERT INTO "Account" VALUES(31,'Installer Sample Data','Robinson Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','45');
INSERT INTO "Account" VALUES(32,'Installer Sample Data','Burton Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','30');
INSERT INTO "Account" VALUES(33,'Installer Sample Data','Wang Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','31');
INSERT INTO "Account" VALUES(34,'Installer Sample Data','Poole Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','32');
INSERT INTO "Account" VALUES(35,'Installer Sample Data','Vance Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','33');
INSERT INTO "Account" VALUES(36,'Installer Sample Data','Steward Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','34');
INSERT INTO "Account" VALUES(37,'Installer Sample Data','Mack Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','35');
INSERT INTO "Account" VALUES(38,'Installer Sample Data','Shay Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','36');
INSERT INTO "Account" VALUES(39,'Installer Sample Data','Richards Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','37');
INSERT INTO "Account" VALUES(40,'Installer Sample Data','Hunter Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','38');
INSERT INTO "Account" VALUES(41,'Installer Sample Data','Daily Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','39');
INSERT INTO "Account" VALUES(42,'Installer Sample Data','Short Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','40');
INSERT INTO "Account" VALUES(43,'Installer Sample Data','Shelton Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','41');
INSERT INTO "Account" VALUES(44,'Installer Sample Data','Underwood Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','42');
INSERT INTO "Account" VALUES(45,'Installer Sample Data','Kramer Administrative Account','0125j000000IJiSAAW','False','','Full Program','','','43');
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
INSERT INTO "Contact" VALUES(21,'Installer Sample Data','2002-07-13','bchristensen@riouni.com','Bonnie','Christensen','Montgomery','USA','36109','AL','7253 Snake Hill Lane','','','United States of America (the)','Female','University Email','bchristensen@riouni.com','','','False','rio000000011','23');
INSERT INTO "Contact" VALUES(22,'Installer Sample Data','','jsmith@riouni.edu','John','Smith','','','','','','','jsmith@riouni.edu','','Male','Alternate Email','','john.smith','john.smith@rioedplayground.com','False','','24');
INSERT INTO "Contact" VALUES(23,'Installer Sample Data','','fiona@riouni.edu','Fiona','Forton','','','','','','Ms.','','','Female','University Email','fiona@riouni.edu','','','True','','25');
INSERT INTO "Contact" VALUES(24,'Installer Sample Data','2003-10-15','ehuber@riouni.com','Eleanor','Huber','Charlotte','USA','28205','NC','301 W. Wild Rose Street','','','United States of America (the)','Female','University Email','ehuber@riouni.com','','','False','rio000000012','26');
INSERT INTO "Contact" VALUES(25,'Installer Sample Data','2003-06-11','candrews@riouni.com','Charlotte','Andrews','Pickerington','USA','43147','OH','9946 Ocean St.','','','United States of America (the)','Female','University Email','candrews@riouni.com','','','False','rio000000013','27');
INSERT INTO "Contact" VALUES(26,'Installer Sample Data','','eef@eef.eef','Edward','Educator','','','','','','','','','Male','University Email','eef@eef.eef','','','True','','28');
INSERT INTO "Contact" VALUES(27,'Installer Sample Data','','fran@riouni.edu','Fran','Fisher','','','','','','Ms.','','','Female','University Email','fran@riouni.edu','','','True','','14');
INSERT INTO "Contact" VALUES(28,'Installer Sample Data','2001-07-10','tcruz@riouni.com','Tim','Cruz','Latrobe','USA','15650','PA','9867 Windfall Ave.','','','United States of America (the)','Male','University Email','tcruz@riouni.com','','','False','rio000000014','29');
INSERT INTO "Contact" VALUES(29,'Installer Sample Data','2002-01-02','hrandall@riouni.com','Howard','Randall','Dalton','USA','30721','GA','880 Chapel Street','','','United States of America (the)','Male','University Email','hrandall@riouni.com','','','False','rio000000015','30');
INSERT INTO "Contact" VALUES(30,'Installer Sample Data','2002-01-25','gburton@riouni.com','Gwen','Burton','Hinesville','USA','31313','GA','7778 Canterbury Street','','','United States of America (the)','Female','University Email','gburton@riouni.com','','','False','rio000000017','32');
INSERT INTO "Contact" VALUES(31,'Installer Sample Data','2002-04-01','lwang@riouni.com','Lucy','Wang','Lynchburg','USA','24502','VA','7364 W. Arlington Street','','','United States of America (the)','Female','University Email','lwang@riouni.com','','','False','rio000000018','33');
INSERT INTO "Contact" VALUES(32,'Installer Sample Data','2001-09-15','spoole@riouni.com','Sidney','Poole','Alabaster','USA','35007','AL','276 Essex Ave.','','','United States of America (the)','Male','University Email','spoole@riouni.com','','','False','rio000000019','34');
INSERT INTO "Contact" VALUES(33,'Installer Sample Data','2001-05-06','bvance@riouni.com','Brenda','Vance','Maineville','USA','45039','OH','7514 Westport Ave.','','','United States of America (the)','Female','University Email','bvance@riouni.com','','','False','rio000000020','35');
INSERT INTO "Contact" VALUES(34,'Installer Sample Data','2003-03-10','ksteward@riouni.com','Kristin','Steward','Edison','USA','08817','NJ','925 Princess Ave.','','','United States of America (the)','Female','University Email','ksteward@riouni.com','','','False','rio000000010','36');
INSERT INTO "Contact" VALUES(35,'Installer Sample Data','2002-11-20','emack@riouni.com','Emmanuel','Mack','Taylors','USA','29687','SC','8591 Blackburn Street','','','United States of America (the)','Male','University Email','emack@riouni.com','','','False','rio000000009','37');
INSERT INTO "Contact" VALUES(36,'Installer Sample Data','2003-05-16','cshay@riouni.com','Christy','Shay','Decatur','USA','30030','GA','7717 Tower St.','','','United States of America (the)','Female','University Email','cshay@riouni.com','','','False','rio000000008','38');
INSERT INTO "Contact" VALUES(37,'Installer Sample Data','2001-08-31','brichards@riouni.com','Brandy','Richards','Hanover Park','USA','60133','IL','8 Fulton St.','','','United States of America (the)','Female','University Email','brichards@riouni.com','','','False','rio000000007','39');
INSERT INTO "Contact" VALUES(38,'Installer Sample Data','2003-05-26','shunter@riouni.com','Sammy','Hunter','Niles','USA','49120','MI','209 Greenview Drive','','','United States of America (the)','Male','University Email','shunter@riouni.com','','','False','rio000000006','40');
INSERT INTO "Contact" VALUES(39,'Installer Sample Data','2001-10-28','ldaily@riouni.com','Lorna','Daily','Gallatin','USA','37066','TN','9 Arnold Rd.','','','','Female','University Email','ldaily@riouni.com','','','False','rio000000005','41');
INSERT INTO "Contact" VALUES(40,'Installer Sample Data','2002-12-22','bshort@riouni.com','Buddy','Short','Dearborn','USA','48124','MI','9420 West Drive','','','United States of America (the)','Male','University Email','bshort@riouni.com','','','False','rio000000004','42');
INSERT INTO "Contact" VALUES(41,'Installer Sample Data','2002-02-04','mshelton@riouni.com','Madeline','Shelton','Niceville','USA','32578','FL','7200 Hartford Drive','','','United States of America (the)','Female','University Email','mshelton@riouni.com','','','False','rio000000003','43');
INSERT INTO "Contact" VALUES(42,'Installer Sample Data','2003-01-04','dunderwood@riouni.com','Donna','Underwood','Madisonville','USA','42431','KY','32 Orange Lane','','','United States of America (the)','Female','University Email','dunderwood@riouni.com','','','False','rio000000002','44');
INSERT INTO "Contact" VALUES(43,'Installer Sample Data','2003-04-06','dkramer@riouni.com','Doris','Kramer','Powder Springs','USA','30127','GA','967 Fordham St.','','','United States of America (the)','Female','University Email','dkramer@riouni.com','','','False','rio000000001','45');
INSERT INTO "Contact" VALUES(44,'Installer Sample Data','','fred@riouni.edu','Freddie','Freeman','','','','','','Mr.','','','Male','University Email','fred@riouni.edu','','','True','','22');
INSERT INTO "Contact" VALUES(45,'Installer Sample Data','2001-05-02','grobinson@riouni.com','Gregg','Robinson','Billerica','USA','01821','MA','302 W. Cardinal Lane','','','United States of America (the)','Male','University Email','grobinson@riouni.com','','','False','rio000000016','31');
CREATE TABLE "hed__Affiliation__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"hed__Role__c" VARCHAR(255), 
	"hed__Status__c" VARCHAR(255), 
	"hed__Account__c" VARCHAR(255), 
	"hed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "hed__Affiliation__c" VALUES(1,'Installer Sample Data','Faculty','Current','14','27');
INSERT INTO "hed__Affiliation__c" VALUES(2,'Installer Sample Data','Faculty','Current','14','23');
INSERT INTO "hed__Affiliation__c" VALUES(3,'Installer Sample Data','Faculty','Current','14','26');
INSERT INTO "hed__Affiliation__c" VALUES(4,'Installer Sample Data','Faculty','Current','14','44');
INSERT INTO "hed__Affiliation__c" VALUES(5,'Installer Sample Data','','Current','21','21');
INSERT INTO "hed__Affiliation__c" VALUES(6,'Installer Sample Data','','Former','21','22');
INSERT INTO "hed__Affiliation__c" VALUES(7,'Installer Sample Data','','Current','21','22');
INSERT INTO "hed__Affiliation__c" VALUES(8,'Installer Sample Data','','Current','21','24');
INSERT INTO "hed__Affiliation__c" VALUES(9,'Installer Sample Data','','Current','21','25');
INSERT INTO "hed__Affiliation__c" VALUES(10,'Installer Sample Data','','Current','21','45');
INSERT INTO "hed__Affiliation__c" VALUES(11,'Installer Sample Data','','Current','21','30');
INSERT INTO "hed__Affiliation__c" VALUES(12,'Installer Sample Data','','Current','21','31');
INSERT INTO "hed__Affiliation__c" VALUES(13,'Installer Sample Data','','Current','21','32');
INSERT INTO "hed__Affiliation__c" VALUES(14,'Installer Sample Data','','Current','21','33');
INSERT INTO "hed__Affiliation__c" VALUES(15,'Installer Sample Data','','Current','21','34');
INSERT INTO "hed__Affiliation__c" VALUES(16,'Installer Sample Data','','Former','21','34');
INSERT INTO "hed__Affiliation__c" VALUES(17,'Installer Sample Data','','Former','21','34');
INSERT INTO "hed__Affiliation__c" VALUES(18,'Installer Sample Data','','Former','21','34');
INSERT INTO "hed__Affiliation__c" VALUES(19,'Installer Sample Data','','Current','21','35');
INSERT INTO "hed__Affiliation__c" VALUES(20,'Installer Sample Data','','Current','21','36');
INSERT INTO "hed__Affiliation__c" VALUES(21,'Installer Sample Data','','Current','21','37');
INSERT INTO "hed__Affiliation__c" VALUES(22,'Installer Sample Data','','Current','21','38');
INSERT INTO "hed__Affiliation__c" VALUES(23,'Installer Sample Data','','Current','21','39');
INSERT INTO "hed__Affiliation__c" VALUES(24,'Installer Sample Data','','Current','21','40');
INSERT INTO "hed__Affiliation__c" VALUES(25,'Installer Sample Data','','Current','21','41');
INSERT INTO "hed__Affiliation__c" VALUES(26,'Installer Sample Data','','Current','21','42');
INSERT INTO "hed__Affiliation__c" VALUES(27,'Installer Sample Data','','Current','21','43');
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
INSERT INTO "hed__Course_Enrollment__c" VALUES(1,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','22','38','2','26','32','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(2,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','22','50','2','26','32','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(3,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','78.0','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-20','21','','22','50','2','26','32','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(4,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','22','50','2','26','32','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(5,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','77.0','False','Current','1.0','','2022-06-18','2021-12-23','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Insufficient','','2022-01-20','21','','22','8','2','26','32','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(6,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','22','8','2','26','32','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(7,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(8,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(9,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(10,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(11,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(12,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','24','','3','30','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(13,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(14,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(15,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(16,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(17,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','24','','3','30','','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(18,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','','21','','24','','3','30','48','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(19,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(20,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(21,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(22,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(23,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','25','','6','29','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(24,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(25,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(26,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','25','','6','29','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(27,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','25','12','6','29','44','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(28,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','25','38','6','29','44','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(29,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','25','50','6','29','44','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(30,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-20','21','','25','8','6','29','44','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(31,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(32,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(33,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(34,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','45','','4','28','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(35,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(36,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(37,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(38,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','45','','4','28','39','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(39,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','21','','45','12','4','28','39','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(40,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','21','','45','38','4','28','39','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(41,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2022-01-20','21','','45','50','4','28','39','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(42,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-12','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','45','8','4','28','39','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(43,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(44,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(45,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(46,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(47,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(48,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(49,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','30','','5','27','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(50,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','81.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','21','','30','12','5','27','35','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(51,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2022-01-13','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','30','23','5','27','35','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(52,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','79.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','21','','30','38','5','27','35','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(53,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','83.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2022-01-20','21','','30','50','5','27','35','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(54,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','85.0','False','Current','1.0','2022-03-20','2022-06-18','2022-01-09','Completed','1000.0','Self Paid','6.0','Pass','University Department','D - Distinction','Self Paid','True','True','Sufficient','Lecture=1','2021-12-20','21','','30','8','5','27','35','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(55,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(56,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(57,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(58,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(59,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(60,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(61,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','31','','11','24','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(62,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(63,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(64,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(65,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','31','','11','24','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(66,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','31','8','11','24','24','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(67,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(68,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(69,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(70,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(71,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(72,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(73,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','32','','16','35','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(74,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(75,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(76,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(77,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(78,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','36','8','18','38','80','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(79,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(80,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(81,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(82,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(83,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(84,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(85,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','37','','19','36','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(86,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(87,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(88,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(89,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','37','','19','36','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(90,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','37','8','19','36','72','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(91,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(92,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(93,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(94,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(95,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(96,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(97,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','32','','16','35','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(98,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','32','8','16','35','68','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(99,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(100,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(101,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(102,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(103,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(104,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(105,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','33','','17','22','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(106,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(107,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(108,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(109,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','33','','17','22','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(110,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','33','8','17','22','16','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(111,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(112,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(113,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(114,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(115,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(116,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(117,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','38','','7','34','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(118,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(119,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(120,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(121,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','38','','7','34','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(122,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','38','8','7','34','64','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(123,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(124,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(125,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(126,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(127,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(128,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(129,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','39','','8','33','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(130,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(131,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(132,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(133,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','39','','8','33','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(134,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','39','8','8','33','60','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(135,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(136,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(137,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','34','','1','20','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(138,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(139,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(140,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(141,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','34','','1','20','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(142,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','34','8','1','20','8','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(143,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(144,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(145,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(146,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(147,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(148,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(149,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','35','','14','32','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(150,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(151,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(152,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(153,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','35','','14','32','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(154,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','35','8','14','32','56','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(155,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(156,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(157,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(158,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(159,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(160,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(161,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','40','','9','21','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(162,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(163,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(164,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(165,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','40','','9','21','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(166,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','40','8','9','21','12','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(167,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(168,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(169,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(170,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(171,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(172,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(173,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(174,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(175,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(176,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(177,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','36','','18','38','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(178,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(179,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','36','','18','38','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(180,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(181,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','41','','10','37','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(182,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(183,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(184,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(185,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','41','','10','37','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(186,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','41','8','10','37','76','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(187,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(188,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(189,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(190,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(191,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(192,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(193,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','42','','12','25','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(194,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(195,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(196,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(197,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','42','','12','25','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(198,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2021-12-20','21','','42','8','12','25','28','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(199,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(200,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(201,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(202,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(203,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(204,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(205,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','43','','13','23','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(206,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(207,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(208,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(209,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','43','','13','23','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(210,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-16','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','43','8','13','23','20','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(211,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','22','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(212,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','23','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(213,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','24','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(214,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','25','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(215,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','28','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(216,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','29','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(217,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','3','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(218,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','32','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(219,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','33','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(220,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','4','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(221,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','43','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(222,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','44','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(223,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','45','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(224,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','46','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(225,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','53','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(226,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','54','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(227,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','55','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(228,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','56','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(229,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','59','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(230,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','60','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(231,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','1','27','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(232,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(233,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','17','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(234,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','38','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(235,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(236,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','50','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(237,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','52','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(238,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(239,'Installer Sample Data','0125j000000IJiwAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','14','3','26','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(240,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','11','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(241,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','12','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(242,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','16','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(243,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','17','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(244,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','37','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(245,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','38','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(246,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','39','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(247,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','40','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(248,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','49','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(249,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','50','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(250,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','51','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(251,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','52','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(252,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','57','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(253,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','58','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(254,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','7','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(255,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','4','44','8','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(256,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','13','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(257,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','14','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(258,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','15','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(259,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','18','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(260,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','19','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(261,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','34','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(262,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','41','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(263,'Installer Sample Data','0125j000000IJiwAAG','','','','True','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','14','2','23','42','','','','');
INSERT INTO "hed__Course_Enrollment__c" VALUES(264,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(265,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(266,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(267,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(268,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(269,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','12');
INSERT INTO "hed__Course_Enrollment__c" VALUES(270,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','21','','15','31','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(271,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','22');
INSERT INTO "hed__Course_Enrollment__c" VALUES(272,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(273,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(274,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','21','','15','31','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(275,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','2022-03-20','2022-06-18','2022-01-15','Enrolled','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Sufficient','Lecture=1','2021-12-20','21','','21','8','15','31','52','42');
INSERT INTO "hed__Course_Enrollment__c" VALUES(276,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','50');
INSERT INTO "hed__Course_Enrollment__c" VALUES(277,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','2');
INSERT INTO "hed__Course_Enrollment__c" VALUES(278,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','6');
INSERT INTO "hed__Course_Enrollment__c" VALUES(279,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','8');
INSERT INTO "hed__Course_Enrollment__c" VALUES(280,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','False','','','','21','','22','','2','26','','14');
INSERT INTO "hed__Course_Enrollment__c" VALUES(281,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','24');
INSERT INTO "hed__Course_Enrollment__c" VALUES(282,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','30');
INSERT INTO "hed__Course_Enrollment__c" VALUES(283,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','','','','','Self Paid','','','Educational Institution','','Self Paid','False','True','','','','21','','22','','2','26','','40');
INSERT INTO "hed__Course_Enrollment__c" VALUES(284,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','96.0','False','Current','1.0','','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','7.0','Pass','Educational Institution','HD - High Distinction','Self Paid','True','True','Insufficient','','2022-01-20','21','','22','12','2','26','32','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(285,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-24','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','Insufficient','','2022-01-20','21','','22','12','2','26','32','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(286,'Installer Sample Data','0125j000000IJixAAG','','','','False','Current','1.0','','2022-06-18','2021-12-23','Withdrawn','1000.0','Self Paid','','','Educational Institution','','Self Paid','False','True','','','2022-01-20','21','','22','12','2','26','32','44');
INSERT INTO "hed__Course_Enrollment__c" VALUES(287,'Installer Sample Data','0125j000000IJixAAG','10.0','10.0','84.0','False','Current','1.0','2022-03-20','2022-06-18','2021-12-24','Enrolled','1000.0','Self Paid','6.0','Pass','Educational Institution','D - Distinction','Self Paid','True','True','','','2022-01-20','21','','22','38','2','26','32','12');
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
INSERT INTO "hed__Course_Offering__c" VALUES(1,'Installer Sample Data','Last Year Term 2 BUS102','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','1','','1','19','','2','24');
INSERT INTO "hed__Course_Offering__c" VALUES(2,'Installer Sample Data','Last Year Term 1 BUS102','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','1','','2','19','','2','18');
INSERT INTO "hed__Course_Offering__c" VALUES(3,'Installer Sample Data','2023 Term 1 BUS102','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','1','27','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(4,'Installer Sample Data','2022 Term 1 BUS102','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','1','27','5','19','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(5,'Installer Sample Data','Last Year Term 2 ICT112','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','10','','1','19','','2','22');
INSERT INTO "hed__Course_Offering__c" VALUES(6,'Installer Sample Data','Last Year Term 1 ICT112','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','10','','2','19','','2','12');
INSERT INTO "hed__Course_Offering__c" VALUES(7,'Installer Sample Data','2023 Term 2 ICT112','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','10','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(8,'Installer Sample Data','2022 Term 1 ICT112','50.0','2022-06-18','2021-12-20','18.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','10','44','5','19','7','2','2');
INSERT INTO "hed__Course_Offering__c" VALUES(9,'Installer Sample Data','Last Year Term 2 ICT115','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','11','','1','19','','2','20');
INSERT INTO "hed__Course_Offering__c" VALUES(10,'Installer Sample Data','Last Year Term 1 ICT115','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','11','','2','19','','2','16');
INSERT INTO "hed__Course_Offering__c" VALUES(11,'Installer Sample Data','2023 Term 2 ICT115','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','11','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(12,'Installer Sample Data','2022 Term 1 ICT115','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','11','44','5','19','7','2','1');
INSERT INTO "hed__Course_Offering__c" VALUES(13,'Installer Sample Data','2023 Term 1 COR109','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','12','23','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(14,'Installer Sample Data','2023 Term 2 COR109','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','12','23','4','','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(15,'Installer Sample Data','2023 Term 2 MGT210','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','13','23','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(16,'Installer Sample Data','2023 Term 2 ICT320','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(17,'Installer Sample Data','2022 Term 2 ICT320','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','14','44','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(18,'Installer Sample Data','2023 Term 2 HRM321','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','15','23','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(19,'Installer Sample Data','2023 Term 2 IBS220','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','16','23','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(20,'Installer Sample Data','Last Year Term 2 BUS101','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','17','','1','19','','2','32');
INSERT INTO "hed__Course_Offering__c" VALUES(21,'Installer Sample Data','Last Year Term 1 BUS101','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','17','','2','19','','2','10');
INSERT INTO "hed__Course_Offering__c" VALUES(22,'Installer Sample Data','2023 Term 1 BUS101','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','17','27','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(23,'Installer Sample Data','2022 Term 1 BUS101','50.0','2022-06-18','2022-01-20','1.0','','1000.0','1000.0','Final Grade','Hour','False','0.0','17','27','5','19','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(24,'Installer Sample Data','2023 Term 2 BUS106','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','27','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(25,'Installer Sample Data','2022 Term 2 BUS106','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','18','27','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(26,'Installer Sample Data','Last Year Term 2 BUS105','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','19','','1','19','','2','26');
INSERT INTO "hed__Course_Offering__c" VALUES(27,'Installer Sample Data','Last Year Term 1 BUS105','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','19','','2','19','','2','6');
INSERT INTO "hed__Course_Offering__c" VALUES(28,'Installer Sample Data','2023 Term 1 BUS105','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','19','27','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(29,'Installer Sample Data','2022 Term 1 BUS105','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','19','27','5','19','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(30,'Installer Sample Data','Last Year Term 2 BUS104','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','2','','1','19','','2','30');
INSERT INTO "hed__Course_Offering__c" VALUES(31,'Installer Sample Data','Last Year Term 1 BUS104','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','2','','2','19','','2','4');
INSERT INTO "hed__Course_Offering__c" VALUES(32,'Installer Sample Data','2023 Term 1 BUS104','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','2','27','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(33,'Installer Sample Data','2022 Term 1 BUS104','50.0','2022-06-18','2022-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','2','27','5','19','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(34,'Installer Sample Data','2023 Term 2 MGT310','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','20','23','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(35,'Installer Sample Data','Last Year Term 2 ICT211','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','21','','1','19','','2','28');
INSERT INTO "hed__Course_Offering__c" VALUES(36,'Installer Sample Data','Last Year Term 1 ICT211','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','21','','2','19','','2','14');
INSERT INTO "hed__Course_Offering__c" VALUES(37,'Installer Sample Data','2023 Term 2 ICT211','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','21','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(38,'Installer Sample Data','2022 Term 1 ICT211','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','21','44','5','19','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(39,'Installer Sample Data','2023 Term 2 ICT221','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(40,'Installer Sample Data','2022 Term 2 ICT221','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','22','44','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(41,'Installer Sample Data','2023 Term 1 HRM311','','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','23','23','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(42,'Installer Sample Data','2023 Term 2 HRM311','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','23','23','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(43,'Installer Sample Data','2023 Term 1 BUS320','50.0','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','24','27','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(44,'Installer Sample Data','2023 Term 2 BUS320','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','24','27','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(45,'Installer Sample Data','2023 Term 2 BUS203','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','27','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(46,'Installer Sample Data','2022 Term 2 BUS203','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','3','27','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(47,'Installer Sample Data','Last Year Term 2 ICT120','50.0','2021-11-18','2021-07-02','','','','','Final Grade','Hour','False','','4','','1','19','','2','34');
INSERT INTO "hed__Course_Offering__c" VALUES(48,'Installer Sample Data','Last Year Term 1 ICT120','50.0','2021-06-18','2020-12-20','','','','','Final Grade','Hour','False','','4','','2','19','','2','8');
INSERT INTO "hed__Course_Offering__c" VALUES(49,'Installer Sample Data','2023 Term 2 ICT120','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','4','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(50,'Installer Sample Data','2022 Term 1 ICT120','50.0','2022-06-18','2022-01-20','4.0','2022-03-20','1000.0','1000.0','Final Grade','Hour','False','0.0','4','44','5','19','7','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(51,'Installer Sample Data','2023 Term 2 ICT352','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(52,'Installer Sample Data','2022 Term 2 ICT352','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','5','44','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(53,'Installer Sample Data','2023 Term 1 BUS301','50.0','2023-06-18','2023-01-20','','','1000.0','1000.0','Final Grade','Hour','False','','6','27','3','19','5','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(54,'Installer Sample Data','2023 Term 2 BUS301','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','6','27','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(55,'Installer Sample Data','2023 Term 2 BUS108','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','27','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(56,'Installer Sample Data','2022 Term 2 BUS108','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','7','27','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(57,'Installer Sample Data','2023 Term 2 ICT310','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','44','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(58,'Installer Sample Data','2022 Term 2 ICT310','','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','8','44','6','19','8','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(59,'Installer Sample Data','2023 Term 2 BUS211','','2023-11-18','2023-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','27','4','19','6','2','');
INSERT INTO "hed__Course_Offering__c" VALUES(60,'Installer Sample Data','2022 Term 2 BUS211','50.0','2022-11-18','2022-07-02','','','1000.0','1000.0','Final Grade','Hour','False','','9','27','6','19','8','2','');
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
INSERT INTO "hed__Course__c" VALUES(1,'Installer Sample Data','BUS102: Introduction to Economics','BUS102','10.0','#FF69B4','Hour','BUS102','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(2,'Installer Sample Data','BUS104 Introduction to Management','BUS104','10.0','#FF69B4','Hour','BUS104','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(3,'Installer Sample Data','BUS203 Business Law and Ethics','BUS203','10.0','#FF69B4','Hour','BUS203','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(4,'Installer Sample Data','ICT120 Introduction to Telecommunications and Networks','ICT120','10.0','#DC143C','Hour','ICT120','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(5,'Installer Sample Data','ICT352 ICT Project Management','ICT352','10.0','#DC143C','Hour','ICT352','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(6,'Installer Sample Data','BUS301 Business Analytics 2','BUS301','10.0','#FF69B4','Hour','BUS301','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(7,'Installer Sample Data','BUS108 Introduction to Informatics','BUS108','10.0','#FF69B4','Hour','BUS108','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(8,'Installer Sample Data','ICT310 Systems Analysis and Design','ICT310','10.0','#DC143C','Hour','ICT310','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(9,'Installer Sample Data','BUS211 Strategic Management','BUS211','10.0','#FF69B4','Hour','BUS211','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(10,'Installer Sample Data','ICT112 Creative Problem Solving with Programming','ICT112','10.0','#DC143C','Hour','ICT112','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(11,'Installer Sample Data','ICT115 Introduction to Systems Design','ICT115','10.0','#DC143C','Hour','ICT115','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(12,'Installer Sample Data','COR109 Communication and Thought','COR109','10.0','#FF00FF','Hour','COR109','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(13,'Installer Sample Data','MGT210 Project Management','MGT210','10.0','#FF00FF','Hour','MGT210','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(14,'Installer Sample Data','ICT320 Database Programming','ICT320','10.0','#DC143C','Hour','ICT320','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(15,'Installer Sample Data','HRM321 Managing Organisational Change','HRM321','10.0','#FF00FF','Hour','HRM321','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(16,'Installer Sample Data','IBS220 Cross-Cultural Management','IBS220','10.0','#FF00FF','Hour','IBS220','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(17,'Installer Sample Data','BUS101: Business Analytics','BUS101','10.0','#FF69B4','Hour','BUS101','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(18,'Installer Sample Data','BUS106 Accounting for Business','BUS106','10.0','#FF69B4','Hour','BUS106','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(19,'Installer Sample Data','BUS105 Introduction to Marketing','BUS105','10.0','#FF69B4','Hour','BUS105','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(20,'Installer Sample Data','MGT310 Small Business and New Venture Management','MGT310','10.0','#FF00FF','Hour','MGT310','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(21,'Installer Sample Data','ICT211 Database Design','ICT211','10.0','#DC143C','Hour','ICT211','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(22,'Installer Sample Data','ICT221 Software Development 1','ICT221','10.0','#DC143C','Hour','ICT221','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(23,'Installer Sample Data','HRM311 Leadership and Team Dynamics','HRM311','10.0','#FF00FF','Hour','HRM311','Educational Institution','Value','Term','True','14','2');
INSERT INTO "hed__Course__c" VALUES(24,'Installer Sample Data','BUS320 Corporate Governance and Social Responsibility','BUS320','10.0','#FF69B4','Hour','BUS320','Educational Institution','Value','Term','True','14','2');
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
INSERT INTO "hed__Facility__c" VALUES(1,'Installer Sample Data','Beta 101','10.0','Classroom','True','19','6');
INSERT INTO "hed__Facility__c" VALUES(2,'Installer Sample Data','Beta 102','10.0','Classroom','True','19','6');
INSERT INTO "hed__Facility__c" VALUES(3,'Installer Sample Data','Beta 103','10.0','Classroom','True','19','6');
INSERT INTO "hed__Facility__c" VALUES(4,'Installer Sample Data','Beta 104','10.0','Computer Lab','True','19','6');
INSERT INTO "hed__Facility__c" VALUES(5,'Installer Sample Data','Alpha Building','','Building','True','19','');
INSERT INTO "hed__Facility__c" VALUES(6,'Installer Sample Data','Beta Building','','Building','True','19','');
INSERT INTO "hed__Facility__c" VALUES(7,'Installer Sample Data','Alpha 103','10.0','Classroom','True','19','5');
INSERT INTO "hed__Facility__c" VALUES(8,'Installer Sample Data','Beta 100','10.0','Classroom','True','19','6');
INSERT INTO "hed__Facility__c" VALUES(9,'Installer Sample Data','Alpha 100','10.0','Classroom','True','19','5');
INSERT INTO "hed__Facility__c" VALUES(10,'Installer Sample Data','Alpha 104','10.0','Computer Lab','True','19','5');
INSERT INTO "hed__Facility__c" VALUES(11,'Installer Sample Data','Alpha 101','10.0','Classroom','True','19','5');
INSERT INTO "hed__Facility__c" VALUES(12,'Installer Sample Data','Alpha 102','10.0','Classroom','True','19','5');
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
INSERT INTO "hed__Plan_Requirement__c" VALUES(1,'Installer Sample Data','RIOUNI03 - BUS101','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','17','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(2,'Installer Sample Data','RIOUNI02 - BUS101','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','17','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(3,'Installer Sample Data','RIOUNI03 - BUS106','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','18','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(4,'Installer Sample Data','RIOUNI02 - BUS106','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','18','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(5,'Installer Sample Data','RIOUNI03 - BUS105','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','19','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(6,'Installer Sample Data','RIOUNI02 - BUS105','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','19','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(7,'Installer Sample Data','RIOUNI03 - BUS104','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','2','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(8,'Installer Sample Data','RIOUNI02 - BUS104','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','2','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(9,'Installer Sample Data','RIOUNI03 - MGT310','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','20','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(10,'Installer Sample Data','RIOUNI02 - MGT310','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','20','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(11,'Installer Sample Data','RIOUNI03 - ICT211','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','21','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(12,'Installer Sample Data','RIOUNI02 - ICT211','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','21','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(13,'Installer Sample Data','RIOUNI03 - ICT221','0125j000000IJkKAAW','Optional','10.0','','False','False','False','<p>ICT112 is a pre-requisite for this course.</p>','A','False','22','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(14,'Installer Sample Data','RIOUNI02 - ICT221','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','<p>ICT112 is the pre-requisite for this course.</p>','A','False','22','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(15,'Installer Sample Data','RIOUNI03 - HRM311','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','23','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(16,'Installer Sample Data','RIOUNI02 - HRM311','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','23','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(17,'Installer Sample Data','RIOUNI03 - BUS320','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','24','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(18,'Installer Sample Data','RIOUNI02 - BUS320','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','24','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(19,'Installer Sample Data','RIOUNI03 - BUS203','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','3','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(20,'Installer Sample Data','RIOUNI02 - BUS203','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','3','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(21,'Installer Sample Data','RIOUNI03 - ICT120','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','4','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(22,'Installer Sample Data','RIOUNI02 - ICT120','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','4','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(23,'Installer Sample Data','RIOUNI03 - ICT352','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','5','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(24,'Installer Sample Data','RIOUNI02 - ICT352','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','5','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(25,'Installer Sample Data','RIOUNI03 - BUS301','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','6','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(26,'Installer Sample Data','RIOUNI02 - BUS301','0125j000000IJkKAAW','Optional','10.0','','False','False','False','<p><span style="color: rgb(62, 62, 60);">BUS101 is a pre-requisite for this course.</span></p>','A','False','6','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(27,'Installer Sample Data','RIOUNI03 - BUS108','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','7','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(28,'Installer Sample Data','RIOUNI02 - BUS108','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','7','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(29,'Installer Sample Data','RIOUNI03 - ICT310','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','8','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(30,'Installer Sample Data','RIOUNI02 - ICT310','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','8','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(31,'Installer Sample Data','RIOUNI03 - BUS211','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','9','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(32,'Installer Sample Data','RIOUNI02 - BUS211','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','9','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(33,'Installer Sample Data','RIOUNI03-Elective','0125j000000IJkLAAW','Required','40.0','2.0','False','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(34,'Installer Sample Data','RIOUNI03-Mandatory','0125j000000IJkLAAW','Required','120.0','1.0','False','False','False','','','False','','','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(35,'Installer Sample Data','RIOUNI02-Elective','0125j000000IJkLAAW','Required','40.0','2.0','False','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(36,'Installer Sample Data','RIOUNI02-Mandatory','0125j000000IJkLAAW','Required','120.0','1.0','False','False','False','','','False','','','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(37,'Installer Sample Data','RIOUNI04-Electives','0125j000000IJkLAAW','Required','40.0','','False','False','False','','','False','','','3','35');
INSERT INTO "hed__Plan_Requirement__c" VALUES(38,'Installer Sample Data','RIOUNI04-Mandatory','0125j000000IJkLAAW','Required','120.0','','False','False','False','','','False','','','3','36');
INSERT INTO "hed__Plan_Requirement__c" VALUES(39,'Installer Sample Data','RIOUNI03 - BUS102','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','1','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(40,'Installer Sample Data','RIOUNI02 - BUS102','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','1','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(41,'Installer Sample Data','RIOUNI03 - ICT112','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','10','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(42,'Installer Sample Data','RIOUNI02 - ICT112','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','10','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(43,'Installer Sample Data','RIOUNI03 - ICT115','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','11','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(44,'Installer Sample Data','RIOUNI02 - ICT115','0125j000000IJkKAAW','Required','10.0','1.0','False','False','False','','','False','11','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(45,'Installer Sample Data','RIOUNI03 - COR109','0125j000000IJkKAAW','Required','10.0','3.0','False','False','False','','','False','12','34','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(46,'Installer Sample Data','RIOUNI02 - COR109','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','12','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(47,'Installer Sample Data','RIOUNI03 - MGT210','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','13','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(48,'Installer Sample Data','RIOUNI02 - MGT210','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','13','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(49,'Installer Sample Data','RIOUNI03 - ICT320','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','14','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(50,'Installer Sample Data','RIOUNI02 - ICT320','0125j000000IJkKAAW','Required','10.0','2.0','False','False','False','','','False','14','36','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(51,'Installer Sample Data','RIOUNI03 - HRM321','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','15','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(52,'Installer Sample Data','RIOUNI02 - HRM321','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','15','35','2','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(53,'Installer Sample Data','RIOUNI03 - IBS220','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','16','33','1','');
INSERT INTO "hed__Plan_Requirement__c" VALUES(54,'Installer Sample Data','RIOUNI02 - IBS220','0125j000000IJkKAAW','Optional','10.0','','False','False','False','','','False','16','35','2','');
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
INSERT INTO "hed__Program_Enrollment__c" VALUES(1,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Half-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','15','34','2','11','3');
INSERT INTO "hed__Program_Enrollment__c" VALUES(2,'Installer Sample Data','2021-12-23','2021-12-23','40.0','40.0','True','Full-time','6.25','25.0','Course','Self Paid','25.0','Self Paid','Yes','Current','','Default','21','7','22','2','2','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(3,'Installer Sample Data','2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group A','Default','21','8','24','2','3','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(4,'Installer Sample Data','2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','Group B','Default','21','10','45','2','6','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(5,'Installer Sample Data','2022-01-09','2022-01-09','40.0','40.0','True','Full-time','6.0','25.0','Course','Self Paid','24.0','Self Paid','Yes','Current','Group A','Default','21','11','30','2','7','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(6,'Installer Sample Data','2022-01-12','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','9','25','2','4','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(7,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','22','38','2','15','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(8,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','23','39','2','16','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(9,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','24','40','2','17','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(10,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','25','41','2','18','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(11,'Installer Sample Data','2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','12','31','2','8','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(12,'Installer Sample Data','2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','26','42','2','19','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(13,'Installer Sample Data','2022-01-16','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','27','43','2','20','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(14,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','19','35','2','12','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(15,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','5','21','2','1','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(16,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','13','32','2','9','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(17,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','14','33','2','10','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(18,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','20','36','2','13','2');
INSERT INTO "hed__Program_Enrollment__c" VALUES(19,'Installer Sample Data','2022-01-15','','0.0','0.0','True','Full-time','','0.0','Course','Self Paid','0.0','Self Paid','Yes','Current','','Default','21','21','37','2','14','2');
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
INSERT INTO "hed__Program_Plan__c" VALUES(1,'Installer Sample Data','Bachelor of Business Management (Course-Upfront)','True','2022-01-20','Current','False','False','False','False','Course','Yes','For application fee only','True','15','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(2,'Installer Sample Data','Bachelor of Business Information System V1','True','2022-01-20','Current','False','False','False','False','Course','Yes','For application fee only','True','21','','2','');
INSERT INTO "hed__Program_Plan__c" VALUES(3,'Installer Sample Data','Bachelor of Business Information System V1.5','False','2022-01-20','Current','True','False','False','False','Course','Yes','For application fee only','True','21','','','');
INSERT INTO "hed__Program_Plan__c" VALUES(4,'Installer Sample Data','Bachelor of Business Information System V2','False','2022-01-20','Current','True','True','True','False','Course','Yes','For application fee only','True','21','6','','5');
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
INSERT INTO "hed__Term_Grade__c" VALUES(1,'Installer Sample Data','','','','','','','22','5','8','','5');
INSERT INTO "hed__Term_Grade__c" VALUES(2,'Installer Sample Data','','','','','','','30','54','8','','5');
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
INSERT INTO "hed__Term__c" VALUES(1,'Installer Sample Data','Last Year Term 2','2021-11-18','2021-07-02','','','Final Grade','Default','18','2');
INSERT INTO "hed__Term__c" VALUES(2,'Installer Sample Data','Last Year Term 1','2021-06-18','2020-12-20','','','Final Grade','Default','18','');
INSERT INTO "hed__Term__c" VALUES(3,'Installer Sample Data','Next Year Term 1','2023-06-18','2023-01-20','Semester','2023-01-19T14:00:00.000+0000','Final Grade','Default','18','6');
INSERT INTO "hed__Term__c" VALUES(4,'Installer Sample Data','Next Year Term 2','2023-11-18','2023-07-02','Semester','2023-07-01T14:00:00.000+0000','Final Grade','Default','18','3');
INSERT INTO "hed__Term__c" VALUES(5,'Installer Sample Data','Current Year Term 1','2022-06-18','2022-01-20','Semester','2021-12-19T14:00:00.000+0000','Final Grade','Default','18','');
INSERT INTO "hed__Term__c" VALUES(6,'Installer Sample Data','Current Year Term 2','2022-11-18','2022-07-02','Semester','2022-07-01T14:00:00.000+0000','Final Grade','Default','18','5');
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
INSERT INTO "hed__Time_Block__c" VALUES(1,'Installer Sample Data','Lunch','13:00:00.000Z','12:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(2,'Installer Sample Data','Noon #2','15:00:00.000Z','14:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(3,'Installer Sample Data','Noon #3','16:00:00.000Z','15:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(4,'Installer Sample Data','Evening #1','18:00:00.000Z','17:00:00.000Z','True','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(5,'Installer Sample Data','Morning #1','10:00:00.000Z','09:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(6,'Installer Sample Data','Default Time Block','','','False','18','');
INSERT INTO "hed__Time_Block__c" VALUES(7,'Installer Sample Data','Morning #2','11:00:00.000Z','10:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(8,'Installer Sample Data','Morning #3','12:00:00.000Z','11:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(9,'Installer Sample Data','Noon #4','17:00:00.000Z','16:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(10,'Installer Sample Data','Noon #1','14:00:00.000Z','13:00:00.000Z','False','18','6');
INSERT INTO "hed__Time_Block__c" VALUES(11,'Installer Sample Data','Afternoon','17:00:00.000Z','13:00:00.000Z','False','18','12');
INSERT INTO "hed__Time_Block__c" VALUES(12,'Installer Sample Data','Other Parent Time Block','17:00:00.000Z','09:00:00.000Z','False','18','');
INSERT INTO "hed__Time_Block__c" VALUES(13,'Installer Sample Data','Morning','12:00:00.000Z','09:00:00.000Z','False','18','12');
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
INSERT INTO "rio_ed__Allocation__c" VALUES(1,'Installer Sample Data','Tentative','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-20','09:00:00.000Z','2022-04-19T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(2,'Installer Sample Data','Tentative','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-27','09:00:00.000Z','2022-04-26T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(3,'Installer Sample Data','Tentative','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-04','09:00:00.000Z','2022-05-03T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(4,'Installer Sample Data','Tentative','2022-05-11','10:00:00.000Z','2022-05-11T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-11','09:00:00.000Z','2022-05-10T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(5,'Installer Sample Data','Tentative','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-02','09:00:00.000Z','2022-03-01T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(6,'Installer Sample Data','Tentative','2022-03-09','10:00:00.000Z','2022-03-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-09','09:00:00.000Z','2022-03-08T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(7,'Installer Sample Data','Tentative','2022-03-16','10:00:00.000Z','2022-03-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-16','09:00:00.000Z','2022-03-15T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(8,'Installer Sample Data','Tentative','2022-05-18','10:00:00.000Z','2022-05-18T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-05-18','09:00:00.000Z','2022-05-17T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(9,'Installer Sample Data','Tentative','2023-11-02','13:00:00.000Z','2023-11-02T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-02','12:00:00.000Z','2023-11-02T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(10,'Installer Sample Data','Tentative','2023-11-09','13:00:00.000Z','2023-11-09T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-09','12:00:00.000Z','2023-11-09T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(11,'Installer Sample Data','Tentative','2023-11-16','13:00:00.000Z','2023-11-16T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-11-16','12:00:00.000Z','2023-11-16T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(12,'Installer Sample Data','Tentative','2023-08-31','13:00:00.000Z','2023-08-31T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-31','12:00:00.000Z','2023-08-31T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(13,'Installer Sample Data','Tentative','2023-09-07','13:00:00.000Z','2023-09-07T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-07','12:00:00.000Z','2023-09-07T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(14,'Installer Sample Data','Tentative','2023-09-14','13:00:00.000Z','2023-09-14T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-14','12:00:00.000Z','2023-09-14T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(15,'Installer Sample Data','Tentative','2023-09-21','13:00:00.000Z','2023-09-21T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-21','12:00:00.000Z','2023-09-21T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(16,'Installer Sample Data','Tentative','2023-07-06','13:00:00.000Z','2023-07-06T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-06','12:00:00.000Z','2023-07-06T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(17,'Installer Sample Data','Tentative','2023-07-13','13:00:00.000Z','2023-07-13T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-13','12:00:00.000Z','2023-07-13T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(18,'Installer Sample Data','Tentative','2023-07-20','13:00:00.000Z','2023-07-20T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-20','12:00:00.000Z','2023-07-20T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(19,'Installer Sample Data','Tentative','2023-07-27','13:00:00.000Z','2023-07-27T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-07-27','12:00:00.000Z','2023-07-27T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(20,'Installer Sample Data','Tentative','2023-08-03','13:00:00.000Z','2023-08-03T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-03','12:00:00.000Z','2023-08-03T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(21,'Installer Sample Data','Tentative','2023-08-10','13:00:00.000Z','2023-08-10T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-10','12:00:00.000Z','2023-08-10T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(22,'Installer Sample Data','Tentative','2023-08-17','13:00:00.000Z','2023-08-17T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-17','12:00:00.000Z','2023-08-17T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(23,'Installer Sample Data','Tentative','2023-08-24','13:00:00.000Z','2023-08-24T03:00:00.000+0000','a1b5j000000TZR7AAO','2023-08-24','12:00:00.000Z','2023-08-24T02:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(24,'Installer Sample Data','Tentative','2023-10-12','13:00:00.000Z','2023-10-12T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-12','12:00:00.000Z','2023-10-12T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(25,'Installer Sample Data','Tentative','2023-09-28','13:00:00.000Z','2023-09-28T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-09-28','12:00:00.000Z','2023-09-28T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(26,'Installer Sample Data','Tentative','2023-10-05','13:00:00.000Z','2023-10-05T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-05','12:00:00.000Z','2023-10-05T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(27,'Installer Sample Data','Tentative','2023-10-19','13:00:00.000Z','2023-10-19T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-19','12:00:00.000Z','2023-10-19T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(28,'Installer Sample Data','Tentative','2023-10-26','13:00:00.000Z','2023-10-26T02:00:00.000+0000','a1b5j000000TZR7AAO','2023-10-26','12:00:00.000Z','2023-10-26T01:00:00.000+0000','Good','Allocated','True','12','20');
INSERT INTO "rio_ed__Allocation__c" VALUES(29,'Installer Sample Data','Tentative','2023-09-01','16:00:00.000Z','2023-09-01T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(30,'Installer Sample Data','Tentative','2023-09-08','16:00:00.000Z','2023-09-08T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-08','15:00:00.000Z','2023-09-08T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(31,'Installer Sample Data','Tentative','2023-09-15','16:00:00.000Z','2023-09-15T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-15','15:00:00.000Z','2023-09-15T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(32,'Installer Sample Data','Tentative','2023-07-07','16:00:00.000Z','2023-07-07T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(33,'Installer Sample Data','Tentative','2023-07-14','16:00:00.000Z','2023-07-14T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(34,'Installer Sample Data','Tentative','2023-07-21','16:00:00.000Z','2023-07-21T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(35,'Installer Sample Data','Tentative','2023-07-28','16:00:00.000Z','2023-07-28T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(36,'Installer Sample Data','Tentative','2023-08-04','16:00:00.000Z','2023-08-04T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(37,'Installer Sample Data','Tentative','2023-08-11','16:00:00.000Z','2023-08-11T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(38,'Installer Sample Data','Tentative','2023-08-18','16:00:00.000Z','2023-08-18T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(39,'Installer Sample Data','Tentative','2023-08-25','16:00:00.000Z','2023-08-25T06:00:00.000+0000','a1b5j000000TZRHAA4','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(40,'Installer Sample Data','Tentative','2023-09-29','16:00:00.000Z','2023-09-29T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(41,'Installer Sample Data','Tentative','2023-10-06','16:00:00.000Z','2023-10-06T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(42,'Installer Sample Data','Tentative','2023-10-13','16:00:00.000Z','2023-10-13T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(43,'Installer Sample Data','Tentative','2023-10-20','16:00:00.000Z','2023-10-20T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(44,'Installer Sample Data','Tentative','2023-10-27','16:00:00.000Z','2023-10-27T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(45,'Installer Sample Data','Tentative','2023-11-03','16:00:00.000Z','2023-11-03T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(46,'Installer Sample Data','Tentative','2023-11-10','16:00:00.000Z','2023-11-10T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-10','15:00:00.000Z','2023-11-10T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(47,'Installer Sample Data','Tentative','2023-11-17','16:00:00.000Z','2023-11-17T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-11-17','15:00:00.000Z','2023-11-17T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(48,'Installer Sample Data','Tentative','2023-09-22','16:00:00.000Z','2023-09-22T05:00:00.000+0000','a1b5j000000TZRHAA4','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','Good','Allocated','False','12','21');
INSERT INTO "rio_ed__Allocation__c" VALUES(49,'Installer Sample Data','Tentative','2022-01-23','10:00:00.000Z','2022-01-22T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-23','09:00:00.000Z','2022-01-22T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(50,'Installer Sample Data','Tentative','2022-01-30','10:00:00.000Z','2022-01-29T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-01-30','09:00:00.000Z','2022-01-29T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(51,'Installer Sample Data','Tentative','2022-02-06','10:00:00.000Z','2022-02-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-06','09:00:00.000Z','2022-02-05T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(52,'Installer Sample Data','Tentative','2022-02-13','10:00:00.000Z','2022-02-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-13','09:00:00.000Z','2022-02-12T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(53,'Installer Sample Data','Tentative','2022-02-20','10:00:00.000Z','2022-02-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-20','09:00:00.000Z','2022-02-19T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(54,'Installer Sample Data','Tentative','2022-02-27','10:00:00.000Z','2022-02-26T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-02-27','09:00:00.000Z','2022-02-26T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(55,'Installer Sample Data','Tentative','2022-03-06','10:00:00.000Z','2022-03-05T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-06','09:00:00.000Z','2022-03-05T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(56,'Installer Sample Data','Tentative','2022-03-13','10:00:00.000Z','2022-03-12T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-13','09:00:00.000Z','2022-03-12T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(57,'Installer Sample Data','Tentative','2022-03-20','10:00:00.000Z','2022-03-19T23:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-20','09:00:00.000Z','2022-03-19T22:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(58,'Installer Sample Data','Tentative','2022-03-27','10:00:00.000Z','2022-03-27T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-03-27','09:00:00.000Z','2022-03-26T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(59,'Installer Sample Data','Tentative','2022-04-03','10:00:00.000Z','2022-04-03T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-03','09:00:00.000Z','2022-04-02T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(60,'Installer Sample Data','Tentative','2022-04-10','10:00:00.000Z','2022-04-10T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-10','09:00:00.000Z','2022-04-09T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(61,'Installer Sample Data','Tentative','2022-04-17','10:00:00.000Z','2022-04-17T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-17','09:00:00.000Z','2022-04-16T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(62,'Installer Sample Data','Tentative','2022-04-24','10:00:00.000Z','2022-04-24T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-04-24','09:00:00.000Z','2022-04-23T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(63,'Installer Sample Data','Tentative','2022-05-01','10:00:00.000Z','2022-05-01T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-01','09:00:00.000Z','2022-04-30T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(64,'Installer Sample Data','Tentative','2022-05-08','10:00:00.000Z','2022-05-08T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-08','09:00:00.000Z','2022-05-07T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(65,'Installer Sample Data','Tentative','2022-05-15','10:00:00.000Z','2022-05-15T00:00:00.000+0000','a1b5j000000TZUFAA4','2022-05-15','09:00:00.000Z','2022-05-14T23:00:00.000+0000','Good','Allocated','True','12','22');
INSERT INTO "rio_ed__Allocation__c" VALUES(66,'Installer Sample Data','Tentative','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(67,'Installer Sample Data','Tentative','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(68,'Installer Sample Data','Tentative','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(69,'Installer Sample Data','Tentative','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(70,'Installer Sample Data','Tentative','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(71,'Installer Sample Data','Tentative','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(72,'Installer Sample Data','Tentative','2022-03-09','12:00:00.000Z','2022-03-09T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-09','11:00:00.000Z','2022-03-09T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(73,'Installer Sample Data','Tentative','2022-03-16','12:00:00.000Z','2022-03-16T01:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-16','11:00:00.000Z','2022-03-16T00:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(74,'Installer Sample Data','Tentative','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(75,'Installer Sample Data','Tentative','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(76,'Installer Sample Data','Tentative','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(77,'Installer Sample Data','Tentative','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(78,'Installer Sample Data','Tentative','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(79,'Installer Sample Data','Tentative','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(80,'Installer Sample Data','Tentative','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(81,'Installer Sample Data','Tentative','2022-01-26','13:00:00.000Z','2022-01-26T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-01-26','12:00:00.000Z','2022-01-26T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(82,'Installer Sample Data','Tentative','2022-02-02','13:00:00.000Z','2022-02-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-02','12:00:00.000Z','2022-02-02T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(83,'Installer Sample Data','Tentative','2022-02-09','13:00:00.000Z','2022-02-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-09','12:00:00.000Z','2022-02-09T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(84,'Installer Sample Data','Tentative','2022-02-16','13:00:00.000Z','2022-02-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-16','12:00:00.000Z','2022-02-16T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(85,'Installer Sample Data','Tentative','2022-02-23','13:00:00.000Z','2022-02-23T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-02-23','12:00:00.000Z','2022-02-23T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(86,'Installer Sample Data','Tentative','2022-03-02','13:00:00.000Z','2022-03-02T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-02','12:00:00.000Z','2022-03-02T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(87,'Installer Sample Data','Tentative','2022-03-09','13:00:00.000Z','2022-03-09T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-09','12:00:00.000Z','2022-03-09T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(88,'Installer Sample Data','Tentative','2022-03-16','13:00:00.000Z','2022-03-16T02:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-16','12:00:00.000Z','2022-03-16T01:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(89,'Installer Sample Data','Tentative','2022-03-23','13:00:00.000Z','2022-03-23T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-23','12:00:00.000Z','2022-03-23T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(90,'Installer Sample Data','Tentative','2022-03-30','13:00:00.000Z','2022-03-30T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-03-30','12:00:00.000Z','2022-03-30T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(91,'Installer Sample Data','Tentative','2022-04-06','13:00:00.000Z','2022-04-06T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-06','12:00:00.000Z','2022-04-06T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(92,'Installer Sample Data','Tentative','2022-05-11','12:00:00.000Z','2022-05-11T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-11','11:00:00.000Z','2022-05-11T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(93,'Installer Sample Data','Tentative','2022-05-18','12:00:00.000Z','2022-05-18T02:00:00.000+0000','a1b5j000000TZFBAA4','2022-05-18','11:00:00.000Z','2022-05-18T01:00:00.000+0000','Good','Allocated','True','12','3');
INSERT INTO "rio_ed__Allocation__c" VALUES(94,'Installer Sample Data','Tentative','2023-02-23','12:00:00.000Z','2023-02-23T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(95,'Installer Sample Data','Tentative','2023-03-02','12:00:00.000Z','2023-03-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(96,'Installer Sample Data','Tentative','2023-03-09','12:00:00.000Z','2023-03-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-09','11:00:00.000Z','2023-03-09T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(97,'Installer Sample Data','Tentative','2023-03-16','12:00:00.000Z','2023-03-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-16','11:00:00.000Z','2023-03-16T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(98,'Installer Sample Data','Tentative','2023-03-23','12:00:00.000Z','2023-03-23T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(99,'Installer Sample Data','Tentative','2023-03-30','12:00:00.000Z','2023-03-30T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(100,'Installer Sample Data','Tentative','2023-01-26','12:00:00.000Z','2023-01-26T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(101,'Installer Sample Data','Tentative','2023-02-02','12:00:00.000Z','2023-02-02T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(102,'Installer Sample Data','Tentative','2023-02-09','12:00:00.000Z','2023-02-09T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(103,'Installer Sample Data','Tentative','2023-02-16','12:00:00.000Z','2023-02-16T01:00:00.000+0000','a1b5j000000TZG3AAO','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(104,'Installer Sample Data','Tentative','2023-04-06','12:00:00.000Z','2023-04-06T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(105,'Installer Sample Data','Tentative','2023-04-13','12:00:00.000Z','2023-04-13T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(106,'Installer Sample Data','Tentative','2023-04-20','12:00:00.000Z','2023-04-20T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(107,'Installer Sample Data','Tentative','2023-04-27','12:00:00.000Z','2023-04-27T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(108,'Installer Sample Data','Tentative','2023-05-04','12:00:00.000Z','2023-05-04T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(109,'Installer Sample Data','Tentative','2023-05-11','12:00:00.000Z','2023-05-11T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(110,'Installer Sample Data','Tentative','2023-05-18','12:00:00.000Z','2023-05-18T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(111,'Installer Sample Data','Tentative','2023-05-25','12:00:00.000Z','2023-05-25T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(112,'Installer Sample Data','Tentative','2022-04-13','13:00:00.000Z','2022-04-13T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-13','12:00:00.000Z','2022-04-13T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(113,'Installer Sample Data','Tentative','2022-04-20','13:00:00.000Z','2022-04-20T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-20','12:00:00.000Z','2022-04-20T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(114,'Installer Sample Data','Tentative','2022-04-27','13:00:00.000Z','2022-04-27T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-04-27','12:00:00.000Z','2022-04-27T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(115,'Installer Sample Data','Tentative','2022-05-04','13:00:00.000Z','2022-05-04T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-04','12:00:00.000Z','2022-05-04T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(116,'Installer Sample Data','Tentative','2022-05-11','13:00:00.000Z','2022-05-11T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-11','12:00:00.000Z','2022-05-11T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(117,'Installer Sample Data','Tentative','2022-05-18','13:00:00.000Z','2022-05-18T03:00:00.000+0000','a1b5j000000TZFUAA4','2022-05-18','12:00:00.000Z','2022-05-18T02:00:00.000+0000','Good','Allocated','True','12','1');
INSERT INTO "rio_ed__Allocation__c" VALUES(118,'Installer Sample Data','Tentative','2023-03-30','11:00:00.000Z','2023-03-30T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(119,'Installer Sample Data','Tentative','2023-04-06','11:00:00.000Z','2023-04-06T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(120,'Installer Sample Data','Tentative','2023-04-13','11:00:00.000Z','2023-04-13T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(121,'Installer Sample Data','Tentative','2023-04-20','11:00:00.000Z','2023-04-20T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(122,'Installer Sample Data','Tentative','2023-04-27','11:00:00.000Z','2023-04-27T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(123,'Installer Sample Data','Tentative','2023-05-04','11:00:00.000Z','2023-05-04T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(124,'Installer Sample Data','Tentative','2023-05-11','11:00:00.000Z','2023-05-11T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(125,'Installer Sample Data','Tentative','2023-05-18','11:00:00.000Z','2023-05-18T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(126,'Installer Sample Data','Tentative','2023-05-25','11:00:00.000Z','2023-05-25T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(127,'Installer Sample Data','Tentative','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(128,'Installer Sample Data','Tentative','2023-01-26','11:00:00.000Z','2023-01-26T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(129,'Installer Sample Data','Tentative','2023-02-02','11:00:00.000Z','2023-02-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(130,'Installer Sample Data','Tentative','2023-02-09','11:00:00.000Z','2023-02-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(131,'Installer Sample Data','Tentative','2023-02-16','11:00:00.000Z','2023-02-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(132,'Installer Sample Data','Tentative','2023-06-01','12:00:00.000Z','2023-06-01T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-01','11:00:00.000Z','2023-06-01T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(133,'Installer Sample Data','Tentative','2023-06-08','12:00:00.000Z','2023-06-08T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-08','11:00:00.000Z','2023-06-08T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(134,'Installer Sample Data','Tentative','2023-06-15','12:00:00.000Z','2023-06-15T02:00:00.000+0000','a1b5j000000TZG3AAO','2023-06-15','11:00:00.000Z','2023-06-15T01:00:00.000+0000','Good','Allocated','True','12','4');
INSERT INTO "rio_ed__Allocation__c" VALUES(135,'Installer Sample Data','Tentative','2023-02-09','10:00:00.000Z','2023-02-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-09','09:00:00.000Z','2023-02-08T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(136,'Installer Sample Data','Tentative','2023-02-16','10:00:00.000Z','2023-02-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-16','09:00:00.000Z','2023-02-15T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(137,'Installer Sample Data','Tentative','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-23','09:00:00.000Z','2023-02-22T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(138,'Installer Sample Data','Tentative','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-02','09:00:00.000Z','2023-03-01T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(139,'Installer Sample Data','Tentative','2023-03-09','10:00:00.000Z','2023-03-08T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-09','09:00:00.000Z','2023-03-08T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(140,'Installer Sample Data','Tentative','2023-01-26','10:00:00.000Z','2023-01-25T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-01-26','09:00:00.000Z','2023-01-25T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(141,'Installer Sample Data','Tentative','2023-02-02','10:00:00.000Z','2023-02-01T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-02-02','09:00:00.000Z','2023-02-01T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(142,'Installer Sample Data','Tentative','2023-03-16','10:00:00.000Z','2023-03-15T23:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-16','09:00:00.000Z','2023-03-15T22:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(143,'Installer Sample Data','Tentative','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-23','09:00:00.000Z','2023-03-22T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(144,'Installer Sample Data','Tentative','2023-03-30','10:00:00.000Z','2023-03-30T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-03-30','09:00:00.000Z','2023-03-29T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(145,'Installer Sample Data','Tentative','2023-04-06','10:00:00.000Z','2023-04-06T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-06','09:00:00.000Z','2023-04-05T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(146,'Installer Sample Data','Tentative','2023-04-13','10:00:00.000Z','2023-04-13T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-13','09:00:00.000Z','2023-04-12T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(147,'Installer Sample Data','Tentative','2023-04-20','10:00:00.000Z','2023-04-20T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-20','09:00:00.000Z','2023-04-19T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(148,'Installer Sample Data','Tentative','2023-04-27','10:00:00.000Z','2023-04-27T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-04-27','09:00:00.000Z','2023-04-26T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(149,'Installer Sample Data','Tentative','2023-05-04','10:00:00.000Z','2023-05-04T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-04','09:00:00.000Z','2023-05-03T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(150,'Installer Sample Data','Tentative','2023-05-11','10:00:00.000Z','2023-05-11T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-11','09:00:00.000Z','2023-05-10T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(151,'Installer Sample Data','Tentative','2023-05-18','10:00:00.000Z','2023-05-18T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-18','09:00:00.000Z','2023-05-17T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(152,'Installer Sample Data','Tentative','2023-02-23','11:00:00.000Z','2023-02-23T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-02-23','10:00:00.000Z','2023-02-22T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(153,'Installer Sample Data','Tentative','2023-03-02','11:00:00.000Z','2023-03-02T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-02','10:00:00.000Z','2023-03-01T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(154,'Installer Sample Data','Tentative','2023-03-09','11:00:00.000Z','2023-03-09T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-09','10:00:00.000Z','2023-03-08T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(155,'Installer Sample Data','Tentative','2023-03-16','11:00:00.000Z','2023-03-16T00:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-16','10:00:00.000Z','2023-03-15T23:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(156,'Installer Sample Data','Tentative','2023-03-23','11:00:00.000Z','2023-03-23T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-03-23','10:00:00.000Z','2023-03-23T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(157,'Installer Sample Data','Tentative','2023-06-08','11:00:00.000Z','2023-06-08T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-08','10:00:00.000Z','2023-06-08T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(158,'Installer Sample Data','Tentative','2023-06-15','11:00:00.000Z','2023-06-15T01:00:00.000+0000','a1b5j000000TZFQAA4','2023-06-15','10:00:00.000Z','2023-06-15T00:00:00.000+0000','Good','Allocated','True','12','10');
INSERT INTO "rio_ed__Allocation__c" VALUES(159,'Installer Sample Data','Tentative','2023-02-08','17:00:00.000Z','2023-02-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-08','16:00:00.000Z','2023-02-08T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(160,'Installer Sample Data','Tentative','2023-02-15','17:00:00.000Z','2023-02-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-15','16:00:00.000Z','2023-02-15T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(161,'Installer Sample Data','Tentative','2023-02-22','17:00:00.000Z','2023-02-22T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-22','16:00:00.000Z','2023-02-22T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(162,'Installer Sample Data','Tentative','2023-03-01','17:00:00.000Z','2023-03-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-01','16:00:00.000Z','2023-03-01T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(163,'Installer Sample Data','Tentative','2023-03-08','17:00:00.000Z','2023-03-08T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-08','16:00:00.000Z','2023-03-08T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(164,'Installer Sample Data','Tentative','2023-03-15','17:00:00.000Z','2023-03-15T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-15','16:00:00.000Z','2023-03-15T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(165,'Installer Sample Data','Tentative','2023-03-22','17:00:00.000Z','2023-03-22T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-22','16:00:00.000Z','2023-03-22T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(166,'Installer Sample Data','Tentative','2023-04-05','17:00:00.000Z','2023-04-05T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-05','16:00:00.000Z','2023-04-05T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(167,'Installer Sample Data','Tentative','2023-04-12','17:00:00.000Z','2023-04-12T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-12','16:00:00.000Z','2023-04-12T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(168,'Installer Sample Data','Tentative','2023-04-19','17:00:00.000Z','2023-04-19T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-19','16:00:00.000Z','2023-04-19T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(169,'Installer Sample Data','Tentative','2023-04-26','17:00:00.000Z','2023-04-26T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-04-26','16:00:00.000Z','2023-04-26T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(170,'Installer Sample Data','Tentative','2023-05-03','17:00:00.000Z','2023-05-03T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-03','16:00:00.000Z','2023-05-03T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(171,'Installer Sample Data','Tentative','2023-03-29','17:00:00.000Z','2023-03-29T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-03-29','16:00:00.000Z','2023-03-29T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(172,'Installer Sample Data','Tentative','2023-06-01','10:00:00.000Z','2023-06-01T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-01','09:00:00.000Z','2023-05-31T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(173,'Installer Sample Data','Tentative','2023-06-08','10:00:00.000Z','2023-06-08T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-08','09:00:00.000Z','2023-06-07T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(174,'Installer Sample Data','Tentative','2023-06-15','10:00:00.000Z','2023-06-15T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-06-15','09:00:00.000Z','2023-06-14T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(175,'Installer Sample Data','Tentative','2023-05-25','10:00:00.000Z','2023-05-25T00:00:00.000+0000','a1b5j000000TZFyAAO','2023-05-25','09:00:00.000Z','2023-05-24T23:00:00.000+0000','Good','Allocated','True','12','5');
INSERT INTO "rio_ed__Allocation__c" VALUES(176,'Installer Sample Data','Tentative','2022-07-08','17:00:00.000Z','2022-07-08T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-08','16:00:00.000Z','2022-07-08T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(177,'Installer Sample Data','Tentative','2022-07-15','17:00:00.000Z','2022-07-15T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-15','16:00:00.000Z','2022-07-15T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(178,'Installer Sample Data','Tentative','2022-07-22','17:00:00.000Z','2022-07-22T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-22','16:00:00.000Z','2022-07-22T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(179,'Installer Sample Data','Tentative','2022-07-29','17:00:00.000Z','2022-07-29T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-07-29','16:00:00.000Z','2022-07-29T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(180,'Installer Sample Data','Tentative','2022-08-05','17:00:00.000Z','2022-08-05T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-05','16:00:00.000Z','2022-08-05T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(181,'Installer Sample Data','Tentative','2022-08-12','17:00:00.000Z','2022-08-12T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-12','16:00:00.000Z','2022-08-12T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(182,'Installer Sample Data','Tentative','2022-08-19','17:00:00.000Z','2022-08-19T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-19','16:00:00.000Z','2022-08-19T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(183,'Installer Sample Data','Tentative','2022-08-26','17:00:00.000Z','2022-08-26T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-08-26','16:00:00.000Z','2022-08-26T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(184,'Installer Sample Data','Tentative','2022-09-02','17:00:00.000Z','2022-09-02T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-02','16:00:00.000Z','2022-09-02T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(185,'Installer Sample Data','Tentative','2022-10-21','17:00:00.000Z','2022-10-21T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-21','16:00:00.000Z','2022-10-21T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(186,'Installer Sample Data','Tentative','2022-09-09','17:00:00.000Z','2022-09-09T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-09','16:00:00.000Z','2022-09-09T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(187,'Installer Sample Data','Tentative','2022-10-28','17:00:00.000Z','2022-10-28T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-28','16:00:00.000Z','2022-10-28T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(188,'Installer Sample Data','Tentative','2022-09-16','17:00:00.000Z','2022-09-16T07:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-16','16:00:00.000Z','2022-09-16T06:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(189,'Installer Sample Data','Tentative','2022-09-23','17:00:00.000Z','2022-09-23T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-23','16:00:00.000Z','2022-09-23T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(190,'Installer Sample Data','Tentative','2022-09-30','17:00:00.000Z','2022-09-30T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-09-30','16:00:00.000Z','2022-09-30T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(191,'Installer Sample Data','Tentative','2022-10-07','17:00:00.000Z','2022-10-07T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-07','16:00:00.000Z','2022-10-07T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(192,'Installer Sample Data','Tentative','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(193,'Installer Sample Data','Tentative','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(194,'Installer Sample Data','Tentative','2022-11-18','12:00:00.000Z','2022-11-18T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-18','11:00:00.000Z','2022-11-18T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(195,'Installer Sample Data','Tentative','2022-11-11','12:00:00.000Z','2022-11-11T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-11-11','11:00:00.000Z','2022-11-11T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(196,'Installer Sample Data','Tentative','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-17','13:00:00.000Z','2022-08-17T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(197,'Installer Sample Data','Tentative','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-24','13:00:00.000Z','2022-08-24T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(198,'Installer Sample Data','Tentative','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-31','13:00:00.000Z','2022-08-31T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(199,'Installer Sample Data','Tentative','2022-09-07','14:00:00.000Z','2022-09-07T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-07','13:00:00.000Z','2022-09-07T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(200,'Installer Sample Data','Tentative','2022-09-14','14:00:00.000Z','2022-09-14T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-14','13:00:00.000Z','2022-09-14T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(201,'Installer Sample Data','Tentative','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-21','13:00:00.000Z','2022-09-21T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(202,'Installer Sample Data','Tentative','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-06','13:00:00.000Z','2022-07-06T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(203,'Installer Sample Data','Tentative','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-13','13:00:00.000Z','2022-07-13T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(204,'Installer Sample Data','Tentative','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-20','13:00:00.000Z','2022-07-20T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(205,'Installer Sample Data','Tentative','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-07-27','13:00:00.000Z','2022-07-27T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(206,'Installer Sample Data','Tentative','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-03','13:00:00.000Z','2022-08-03T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(207,'Installer Sample Data','Tentative','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','a1b5j000000TZFCAA4','2022-08-10','13:00:00.000Z','2022-08-10T03:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(208,'Installer Sample Data','Tentative','2023-05-10','17:00:00.000Z','2023-05-10T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-10','16:00:00.000Z','2023-05-10T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(209,'Installer Sample Data','Tentative','2023-05-17','17:00:00.000Z','2023-05-17T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-17','16:00:00.000Z','2023-05-17T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(210,'Installer Sample Data','Tentative','2023-05-24','17:00:00.000Z','2023-05-24T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-24','16:00:00.000Z','2023-05-24T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(211,'Installer Sample Data','Tentative','2023-05-31','17:00:00.000Z','2023-05-31T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-05-31','16:00:00.000Z','2023-05-31T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(212,'Installer Sample Data','Tentative','2023-06-07','17:00:00.000Z','2023-06-07T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-06-07','16:00:00.000Z','2023-06-07T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(213,'Installer Sample Data','Tentative','2023-06-14','17:00:00.000Z','2023-06-14T07:00:00.000+0000','a1b5j000000TZFtAAO','2023-06-14','16:00:00.000Z','2023-06-14T06:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(214,'Installer Sample Data','Tentative','2023-01-25','17:00:00.000Z','2023-01-25T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-01-25','16:00:00.000Z','2023-01-25T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(215,'Installer Sample Data','Tentative','2023-02-01','17:00:00.000Z','2023-02-01T06:00:00.000+0000','a1b5j000000TZFtAAO','2023-02-01','16:00:00.000Z','2023-02-01T05:00:00.000+0000','Good','Allocated','True','12','11');
INSERT INTO "rio_ed__Allocation__c" VALUES(216,'Installer Sample Data','Tentative','2022-01-26','11:00:00.000Z','2022-01-26T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(217,'Installer Sample Data','Tentative','2022-02-02','11:00:00.000Z','2022-02-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(218,'Installer Sample Data','Tentative','2022-02-09','11:00:00.000Z','2022-02-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(219,'Installer Sample Data','Tentative','2022-02-16','11:00:00.000Z','2022-02-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(220,'Installer Sample Data','Tentative','2022-02-23','11:00:00.000Z','2022-02-23T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(221,'Installer Sample Data','Tentative','2022-03-02','11:00:00.000Z','2022-03-02T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-02','10:00:00.000Z','2022-03-01T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(222,'Installer Sample Data','Tentative','2022-03-09','11:00:00.000Z','2022-03-09T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-09','10:00:00.000Z','2022-03-08T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(223,'Installer Sample Data','Tentative','2022-03-16','11:00:00.000Z','2022-03-16T00:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-16','10:00:00.000Z','2022-03-15T23:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(224,'Installer Sample Data','Tentative','2022-03-23','11:00:00.000Z','2022-03-23T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(225,'Installer Sample Data','Tentative','2022-03-30','11:00:00.000Z','2022-03-30T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(226,'Installer Sample Data','Tentative','2022-04-06','11:00:00.000Z','2022-04-06T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(227,'Installer Sample Data','Tentative','2022-04-13','11:00:00.000Z','2022-04-13T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(228,'Installer Sample Data','Tentative','2022-10-14','17:00:00.000Z','2022-10-14T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-10-14','16:00:00.000Z','2022-10-14T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(229,'Installer Sample Data','Tentative','2022-11-04','17:00:00.000Z','2022-11-04T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-04','16:00:00.000Z','2022-11-04T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(230,'Installer Sample Data','Tentative','2022-11-11','17:00:00.000Z','2022-11-11T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-11','16:00:00.000Z','2022-11-11T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(231,'Installer Sample Data','Tentative','2022-11-18','17:00:00.000Z','2022-11-18T06:00:00.000+0000','a1b5j000000TZFeAAO','2022-11-18','16:00:00.000Z','2022-11-18T05:00:00.000+0000','Good','Allocated','True','12','6');
INSERT INTO "rio_ed__Allocation__c" VALUES(232,'Installer Sample Data','Tentative','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-31','14:00:00.000Z','2022-08-31T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(233,'Installer Sample Data','Tentative','2022-09-07','15:00:00.000Z','2022-09-07T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-07','14:00:00.000Z','2022-09-07T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(234,'Installer Sample Data','Tentative','2022-09-14','15:00:00.000Z','2022-09-14T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-14','14:00:00.000Z','2022-09-14T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(235,'Installer Sample Data','Tentative','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-21','14:00:00.000Z','2022-09-21T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(236,'Installer Sample Data','Tentative','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(237,'Installer Sample Data','Tentative','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(238,'Installer Sample Data','Tentative','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(239,'Installer Sample Data','Tentative','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(240,'Installer Sample Data','Tentative','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(241,'Installer Sample Data','Tentative','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(242,'Installer Sample Data','Tentative','2022-11-09','15:00:00.000Z','2022-11-09T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-09','14:00:00.000Z','2022-11-09T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(243,'Installer Sample Data','Tentative','2022-11-16','15:00:00.000Z','2022-11-16T04:00:00.000+0000','a1b5j000000TZFjAAO','2022-11-16','14:00:00.000Z','2022-11-16T03:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(244,'Installer Sample Data','Tentative','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-06','14:00:00.000Z','2022-07-06T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(245,'Installer Sample Data','Tentative','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-13','14:00:00.000Z','2022-07-13T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(246,'Installer Sample Data','Tentative','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-27','14:00:00.000Z','2022-07-27T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(247,'Installer Sample Data','Tentative','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-03','14:00:00.000Z','2022-08-03T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(248,'Installer Sample Data','Tentative','2022-09-28','14:00:00.000Z','2022-09-28T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-09-28','13:00:00.000Z','2022-09-28T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(249,'Installer Sample Data','Tentative','2022-10-05','14:00:00.000Z','2022-10-05T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-05','13:00:00.000Z','2022-10-05T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(250,'Installer Sample Data','Tentative','2022-10-12','14:00:00.000Z','2022-10-12T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-12','13:00:00.000Z','2022-10-12T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(251,'Installer Sample Data','Tentative','2022-10-19','14:00:00.000Z','2022-10-19T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-19','13:00:00.000Z','2022-10-19T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(252,'Installer Sample Data','Tentative','2022-10-26','14:00:00.000Z','2022-10-26T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-10-26','13:00:00.000Z','2022-10-26T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(253,'Installer Sample Data','Tentative','2022-11-02','14:00:00.000Z','2022-11-02T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-02','13:00:00.000Z','2022-11-02T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(254,'Installer Sample Data','Tentative','2022-11-09','14:00:00.000Z','2022-11-09T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-09','13:00:00.000Z','2022-11-09T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(255,'Installer Sample Data','Tentative','2022-11-16','14:00:00.000Z','2022-11-16T03:00:00.000+0000','a1b5j000000TZFCAA4','2022-11-16','13:00:00.000Z','2022-11-16T02:00:00.000+0000','Good','Allocated','True','12','9');
INSERT INTO "rio_ed__Allocation__c" VALUES(256,'Installer Sample Data','Tentative','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(257,'Installer Sample Data','Tentative','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(258,'Installer Sample Data','Tentative','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(259,'Installer Sample Data','Tentative','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(260,'Installer Sample Data','Tentative','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(261,'Installer Sample Data','Tentative','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(262,'Installer Sample Data','Tentative','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(263,'Installer Sample Data','Tentative','2022-03-10','16:00:00.000Z','2022-03-10T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-10','15:00:00.000Z','2022-03-10T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(264,'Installer Sample Data','Tentative','2022-03-17','16:00:00.000Z','2022-03-17T05:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-17','15:00:00.000Z','2022-03-17T04:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(265,'Installer Sample Data','Tentative','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(266,'Installer Sample Data','Tentative','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(267,'Installer Sample Data','Tentative','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(268,'Installer Sample Data','Tentative','2022-04-20','11:00:00.000Z','2022-04-20T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-20','10:00:00.000Z','2022-04-20T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(269,'Installer Sample Data','Tentative','2022-04-27','11:00:00.000Z','2022-04-27T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-04-27','10:00:00.000Z','2022-04-27T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(270,'Installer Sample Data','Tentative','2022-05-04','11:00:00.000Z','2022-05-04T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-04','10:00:00.000Z','2022-05-04T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(271,'Installer Sample Data','Tentative','2022-05-11','11:00:00.000Z','2022-05-11T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-11','10:00:00.000Z','2022-05-11T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(272,'Installer Sample Data','Tentative','2022-05-18','11:00:00.000Z','2022-05-18T01:00:00.000+0000','a1b5j000000TZFMAA4','2022-05-18','10:00:00.000Z','2022-05-18T00:00:00.000+0000','Good','Allocated','True','12','12');
INSERT INTO "rio_ed__Allocation__c" VALUES(273,'Installer Sample Data','Tentative','2022-07-20','16:00:00.000Z','2022-07-20T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(274,'Installer Sample Data','Tentative','2022-07-27','16:00:00.000Z','2022-07-27T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-27','15:00:00.000Z','2022-07-27T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(275,'Installer Sample Data','Tentative','2022-08-03','16:00:00.000Z','2022-08-03T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-03','15:00:00.000Z','2022-08-03T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(276,'Installer Sample Data','Tentative','2022-07-06','16:00:00.000Z','2022-07-06T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-06','15:00:00.000Z','2022-07-06T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(277,'Installer Sample Data','Tentative','2022-07-13','16:00:00.000Z','2022-07-13T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-07-13','15:00:00.000Z','2022-07-13T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(278,'Installer Sample Data','Tentative','2022-08-10','16:00:00.000Z','2022-08-10T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(279,'Installer Sample Data','Tentative','2022-08-17','16:00:00.000Z','2022-08-17T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(280,'Installer Sample Data','Tentative','2022-08-24','16:00:00.000Z','2022-08-24T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(281,'Installer Sample Data','Tentative','2022-08-31','16:00:00.000Z','2022-08-31T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-08-31','15:00:00.000Z','2022-08-31T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(282,'Installer Sample Data','Tentative','2022-09-07','16:00:00.000Z','2022-09-07T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-07','15:00:00.000Z','2022-09-07T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(283,'Installer Sample Data','Tentative','2022-09-14','16:00:00.000Z','2022-09-14T06:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-14','15:00:00.000Z','2022-09-14T05:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(284,'Installer Sample Data','Tentative','2022-09-21','16:00:00.000Z','2022-09-21T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-21','15:00:00.000Z','2022-09-21T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(285,'Installer Sample Data','Tentative','2022-10-05','16:00:00.000Z','2022-10-05T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-05','15:00:00.000Z','2022-10-05T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(286,'Installer Sample Data','Tentative','2022-09-28','16:00:00.000Z','2022-09-28T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-09-28','15:00:00.000Z','2022-09-28T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(287,'Installer Sample Data','Tentative','2022-10-12','16:00:00.000Z','2022-10-12T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-12','15:00:00.000Z','2022-10-12T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(288,'Installer Sample Data','Tentative','2022-08-10','15:00:00.000Z','2022-08-10T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-10','14:00:00.000Z','2022-08-10T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(289,'Installer Sample Data','Tentative','2022-07-20','15:00:00.000Z','2022-07-20T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-07-20','14:00:00.000Z','2022-07-20T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(290,'Installer Sample Data','Tentative','2022-08-17','15:00:00.000Z','2022-08-17T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-17','14:00:00.000Z','2022-08-17T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(291,'Installer Sample Data','Tentative','2022-08-24','15:00:00.000Z','2022-08-24T05:00:00.000+0000','a1b5j000000TZFjAAO','2022-08-24','14:00:00.000Z','2022-08-24T04:00:00.000+0000','Good','Allocated','True','12','7');
INSERT INTO "rio_ed__Allocation__c" VALUES(292,'Installer Sample Data','Tentative','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(293,'Installer Sample Data','Tentative','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(294,'Installer Sample Data','Tentative','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(295,'Installer Sample Data','Tentative','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(296,'Installer Sample Data','Tentative','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(297,'Installer Sample Data','Tentative','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(298,'Installer Sample Data','Tentative','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(299,'Installer Sample Data','Tentative','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(300,'Installer Sample Data','Tentative','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(301,'Installer Sample Data','Tentative','2022-09-09','12:00:00.000Z','2022-09-09T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-09','11:00:00.000Z','2022-09-09T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(302,'Installer Sample Data','Tentative','2022-09-16','12:00:00.000Z','2022-09-16T02:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-16','11:00:00.000Z','2022-09-16T01:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(303,'Installer Sample Data','Tentative','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(304,'Installer Sample Data','Tentative','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(305,'Installer Sample Data','Tentative','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(306,'Installer Sample Data','Tentative','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(307,'Installer Sample Data','Tentative','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','a1b5j000000TZGXAA4','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','Good','Allocated','True','12','8');
INSERT INTO "rio_ed__Allocation__c" VALUES(308,'Installer Sample Data','Tentative','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(309,'Installer Sample Data','Tentative','2022-05-12','16:00:00.000Z','2022-05-12T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-12','15:00:00.000Z','2022-05-12T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(310,'Installer Sample Data','Tentative','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(311,'Installer Sample Data','Tentative','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(312,'Installer Sample Data','Tentative','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(313,'Installer Sample Data','Tentative','2022-05-19','16:00:00.000Z','2022-05-19T06:00:00.000+0000','a1b5j000000TZGDAA4','2022-05-19','15:00:00.000Z','2022-05-19T05:00:00.000+0000','Good','Allocated','True','2','24');
INSERT INTO "rio_ed__Allocation__c" VALUES(314,'Installer Sample Data','Tentative','2022-03-10','15:00:00.000Z','2022-03-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-10','14:00:00.000Z','2022-03-10T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(315,'Installer Sample Data','Tentative','2022-03-17','15:00:00.000Z','2022-03-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-17','14:00:00.000Z','2022-03-17T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(316,'Installer Sample Data','Tentative','2022-03-24','15:00:00.000Z','2022-03-24T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-24','14:00:00.000Z','2022-03-24T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(317,'Installer Sample Data','Tentative','2022-03-31','15:00:00.000Z','2022-03-31T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-31','14:00:00.000Z','2022-03-31T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(318,'Installer Sample Data','Tentative','2022-04-07','15:00:00.000Z','2022-04-07T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-07','14:00:00.000Z','2022-04-07T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(319,'Installer Sample Data','Tentative','2022-04-14','15:00:00.000Z','2022-04-14T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-14','14:00:00.000Z','2022-04-14T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(320,'Installer Sample Data','Tentative','2022-04-21','15:00:00.000Z','2022-04-21T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-21','14:00:00.000Z','2022-04-21T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(321,'Installer Sample Data','Tentative','2022-04-28','15:00:00.000Z','2022-04-28T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-04-28','14:00:00.000Z','2022-04-28T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(322,'Installer Sample Data','Tentative','2022-05-05','15:00:00.000Z','2022-05-05T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-05','14:00:00.000Z','2022-05-05T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(323,'Installer Sample Data','Tentative','2022-05-19','15:00:00.000Z','2022-05-19T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-19','14:00:00.000Z','2022-05-19T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(324,'Installer Sample Data','Tentative','2022-05-12','15:00:00.000Z','2022-05-12T05:00:00.000+0000','a1b5j000000TZG8AAO','2022-05-12','14:00:00.000Z','2022-05-12T04:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(325,'Installer Sample Data','Tentative','2022-01-13','15:00:00.000Z','2022-01-13T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-13','14:00:00.000Z','2022-01-13T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(326,'Installer Sample Data','Tentative','2022-01-20','15:00:00.000Z','2022-01-20T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-20','14:00:00.000Z','2022-01-20T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(327,'Installer Sample Data','Tentative','2022-01-27','15:00:00.000Z','2022-01-27T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-01-27','14:00:00.000Z','2022-01-27T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(328,'Installer Sample Data','Tentative','2022-10-19','16:00:00.000Z','2022-10-19T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-19','15:00:00.000Z','2022-10-19T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(329,'Installer Sample Data','Tentative','2022-10-26','16:00:00.000Z','2022-10-26T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-10-26','15:00:00.000Z','2022-10-26T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(330,'Installer Sample Data','Tentative','2022-11-02','16:00:00.000Z','2022-11-02T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-02','15:00:00.000Z','2022-11-02T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(331,'Installer Sample Data','Tentative','2022-11-09','16:00:00.000Z','2022-11-09T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-09','15:00:00.000Z','2022-11-09T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(332,'Installer Sample Data','Tentative','2022-11-16','16:00:00.000Z','2022-11-16T05:00:00.000+0000','a1b5j000000TZFoAAO','2022-11-16','15:00:00.000Z','2022-11-16T04:00:00.000+0000','Good','Allocated','True','12','13');
INSERT INTO "rio_ed__Allocation__c" VALUES(333,'Installer Sample Data','Tentative','2022-04-22','10:00:00.000Z','2022-04-22T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-22','09:00:00.000Z','2022-04-21T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(334,'Installer Sample Data','Tentative','2022-04-29','10:00:00.000Z','2022-04-29T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-29','09:00:00.000Z','2022-04-28T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(335,'Installer Sample Data','Tentative','2022-05-06','10:00:00.000Z','2022-05-06T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-05-06','09:00:00.000Z','2022-05-05T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(336,'Installer Sample Data','Tentative','2022-05-13','10:00:00.000Z','2022-05-13T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-05-13','09:00:00.000Z','2022-05-12T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(337,'Installer Sample Data','Tentative','2022-01-21','10:00:00.000Z','2022-01-20T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-21','09:00:00.000Z','2022-01-20T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(338,'Installer Sample Data','Tentative','2022-01-28','10:00:00.000Z','2022-01-27T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-01-28','09:00:00.000Z','2022-01-27T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(339,'Installer Sample Data','Tentative','2022-02-04','10:00:00.000Z','2022-02-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-04','09:00:00.000Z','2022-02-03T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(340,'Installer Sample Data','Tentative','2022-02-11','10:00:00.000Z','2022-02-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-11','09:00:00.000Z','2022-02-10T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(341,'Installer Sample Data','Tentative','2022-02-18','10:00:00.000Z','2022-02-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-18','09:00:00.000Z','2022-02-17T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(342,'Installer Sample Data','Tentative','2022-02-25','10:00:00.000Z','2022-02-24T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-02-25','09:00:00.000Z','2022-02-24T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(343,'Installer Sample Data','Tentative','2022-03-04','10:00:00.000Z','2022-03-03T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-04','09:00:00.000Z','2022-03-03T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(344,'Installer Sample Data','Tentative','2022-03-11','10:00:00.000Z','2022-03-10T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-11','09:00:00.000Z','2022-03-10T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(345,'Installer Sample Data','Tentative','2022-03-18','10:00:00.000Z','2022-03-17T23:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-18','09:00:00.000Z','2022-03-17T22:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(346,'Installer Sample Data','Tentative','2022-03-25','10:00:00.000Z','2022-03-25T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-03-25','09:00:00.000Z','2022-03-24T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(347,'Installer Sample Data','Tentative','2022-04-01','10:00:00.000Z','2022-04-01T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-01','09:00:00.000Z','2022-03-31T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(348,'Installer Sample Data','Tentative','2022-02-03','15:00:00.000Z','2022-02-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-03','14:00:00.000Z','2022-02-03T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(349,'Installer Sample Data','Tentative','2022-02-10','15:00:00.000Z','2022-02-10T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-10','14:00:00.000Z','2022-02-10T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(350,'Installer Sample Data','Tentative','2022-02-17','15:00:00.000Z','2022-02-17T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-17','14:00:00.000Z','2022-02-17T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(351,'Installer Sample Data','Tentative','2022-02-24','15:00:00.000Z','2022-02-24T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-02-24','14:00:00.000Z','2022-02-24T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(352,'Installer Sample Data','Tentative','2022-03-03','15:00:00.000Z','2022-03-03T04:00:00.000+0000','a1b5j000000TZG8AAO','2022-03-03','14:00:00.000Z','2022-03-03T03:00:00.000+0000','Good','Allocated','True','2','25');
INSERT INTO "rio_ed__Allocation__c" VALUES(353,'Installer Sample Data','Tentative','2022-04-08','10:00:00.000Z','2022-04-08T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-08','09:00:00.000Z','2022-04-07T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(354,'Installer Sample Data','Tentative','2022-04-15','10:00:00.000Z','2022-04-15T00:00:00.000+0000','a1b5j000000TZGSAA4','2022-04-15','09:00:00.000Z','2022-04-14T23:00:00.000+0000','Good','Allocated','True','12','14');
INSERT INTO "rio_ed__Allocation__c" VALUES(355,'Installer Sample Data','Tentative','2022-02-24','17:00:00.000Z','2022-02-24T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-24','16:00:00.000Z','2022-02-24T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(356,'Installer Sample Data','Tentative','2022-03-03','17:00:00.000Z','2022-03-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-03','16:00:00.000Z','2022-03-03T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(357,'Installer Sample Data','Tentative','2022-03-10','17:00:00.000Z','2022-03-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-10','16:00:00.000Z','2022-03-10T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(358,'Installer Sample Data','Tentative','2022-03-17','17:00:00.000Z','2022-03-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-17','16:00:00.000Z','2022-03-17T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(359,'Installer Sample Data','Tentative','2022-03-24','17:00:00.000Z','2022-03-24T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-24','16:00:00.000Z','2022-03-24T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(360,'Installer Sample Data','Tentative','2022-03-31','17:00:00.000Z','2022-03-31T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-03-31','16:00:00.000Z','2022-03-31T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(361,'Installer Sample Data','Tentative','2022-04-07','17:00:00.000Z','2022-04-07T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-07','16:00:00.000Z','2022-04-07T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(362,'Installer Sample Data','Tentative','2022-04-14','17:00:00.000Z','2022-04-14T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-14','16:00:00.000Z','2022-04-14T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(363,'Installer Sample Data','Tentative','2022-04-21','17:00:00.000Z','2022-04-21T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-21','16:00:00.000Z','2022-04-21T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(364,'Installer Sample Data','Tentative','2022-04-28','17:00:00.000Z','2022-04-28T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-04-28','16:00:00.000Z','2022-04-28T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(365,'Installer Sample Data','Tentative','2022-05-05','17:00:00.000Z','2022-05-05T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-05','16:00:00.000Z','2022-05-05T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(366,'Installer Sample Data','Tentative','2022-05-12','17:00:00.000Z','2022-05-12T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-12','16:00:00.000Z','2022-05-12T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(367,'Installer Sample Data','Tentative','2022-05-19','17:00:00.000Z','2022-05-19T07:00:00.000+0000','a1b5j000000TZFzAAO','2022-05-19','16:00:00.000Z','2022-05-19T06:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(368,'Installer Sample Data','Tentative','2022-01-20','17:00:00.000Z','2022-01-20T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-20','16:00:00.000Z','2022-01-20T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(369,'Installer Sample Data','Tentative','2022-01-27','17:00:00.000Z','2022-01-27T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-01-27','16:00:00.000Z','2022-01-27T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(370,'Installer Sample Data','Tentative','2022-02-03','17:00:00.000Z','2022-02-03T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-03','16:00:00.000Z','2022-02-03T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(371,'Installer Sample Data','Tentative','2022-02-10','17:00:00.000Z','2022-02-10T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-10','16:00:00.000Z','2022-02-10T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(372,'Installer Sample Data','Tentative','2022-02-17','17:00:00.000Z','2022-02-17T06:00:00.000+0000','a1b5j000000TZFzAAO','2022-02-17','16:00:00.000Z','2022-02-17T05:00:00.000+0000','Good','Allocated','True','12','15');
INSERT INTO "rio_ed__Allocation__c" VALUES(373,'Installer Sample Data','Tentative','2022-07-08','14:00:00.000Z','2022-07-08T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(374,'Installer Sample Data','Tentative','2022-07-15','14:00:00.000Z','2022-07-15T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(375,'Installer Sample Data','Tentative','2022-07-22','14:00:00.000Z','2022-07-22T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(376,'Installer Sample Data','Tentative','2022-07-29','14:00:00.000Z','2022-07-29T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(377,'Installer Sample Data','Tentative','2022-08-05','14:00:00.000Z','2022-08-05T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(378,'Installer Sample Data','Tentative','2022-08-19','14:00:00.000Z','2022-08-19T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(379,'Installer Sample Data','Tentative','2022-08-26','14:00:00.000Z','2022-08-26T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(380,'Installer Sample Data','Tentative','2022-09-02','14:00:00.000Z','2022-09-02T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(381,'Installer Sample Data','Tentative','2022-09-09','14:00:00.000Z','2022-09-09T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-09','13:00:00.000Z','2022-09-09T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(382,'Installer Sample Data','Tentative','2022-09-16','14:00:00.000Z','2022-09-16T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-16','13:00:00.000Z','2022-09-16T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(383,'Installer Sample Data','Tentative','2022-09-23','14:00:00.000Z','2022-09-23T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(384,'Installer Sample Data','Tentative','2022-08-12','14:00:00.000Z','2022-08-12T04:00:00.000+0000','a1b5j000000TZFuAAO','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(385,'Installer Sample Data','Tentative','2022-09-30','14:00:00.000Z','2022-09-30T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(386,'Installer Sample Data','Tentative','2022-10-07','14:00:00.000Z','2022-10-07T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(387,'Installer Sample Data','Tentative','2022-10-14','14:00:00.000Z','2022-10-14T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(388,'Installer Sample Data','Tentative','2022-10-21','14:00:00.000Z','2022-10-21T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(389,'Installer Sample Data','Tentative','2022-10-28','14:00:00.000Z','2022-10-28T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(390,'Installer Sample Data','Tentative','2022-11-04','14:00:00.000Z','2022-11-04T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(391,'Installer Sample Data','Tentative','2022-11-11','14:00:00.000Z','2022-11-11T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-11','13:00:00.000Z','2022-11-11T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(392,'Installer Sample Data','Tentative','2022-11-18','14:00:00.000Z','2022-11-18T03:00:00.000+0000','a1b5j000000TZFuAAO','2022-11-18','13:00:00.000Z','2022-11-18T02:00:00.000+0000','Good','Allocated','True','12','16');
INSERT INTO "rio_ed__Allocation__c" VALUES(393,'Installer Sample Data','Tentative','2022-09-02','11:00:00.000Z','2022-09-02T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-02','10:00:00.000Z','2022-09-02T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(394,'Installer Sample Data','Tentative','2022-09-09','11:00:00.000Z','2022-09-09T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-09','10:00:00.000Z','2022-09-09T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(395,'Installer Sample Data','Tentative','2022-09-16','11:00:00.000Z','2022-09-16T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-16','10:00:00.000Z','2022-09-16T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(396,'Installer Sample Data','Tentative','2022-09-23','11:00:00.000Z','2022-09-23T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-23','10:00:00.000Z','2022-09-22T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(397,'Installer Sample Data','Tentative','2022-09-30','11:00:00.000Z','2022-09-30T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-09-30','10:00:00.000Z','2022-09-29T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(398,'Installer Sample Data','Tentative','2022-10-07','11:00:00.000Z','2022-10-07T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-07','10:00:00.000Z','2022-10-06T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(399,'Installer Sample Data','Tentative','2022-11-11','11:00:00.000Z','2022-11-11T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-11','10:00:00.000Z','2022-11-10T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(400,'Installer Sample Data','Tentative','2022-11-04','11:00:00.000Z','2022-11-04T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-04','10:00:00.000Z','2022-11-03T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(401,'Installer Sample Data','Tentative','2022-11-18','11:00:00.000Z','2022-11-18T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-11-18','10:00:00.000Z','2022-11-17T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(402,'Installer Sample Data','Tentative','2022-08-05','11:00:00.000Z','2022-08-05T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-05','10:00:00.000Z','2022-08-05T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(403,'Installer Sample Data','Tentative','2022-08-12','11:00:00.000Z','2022-08-12T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-12','10:00:00.000Z','2022-08-12T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(404,'Installer Sample Data','Tentative','2022-08-19','11:00:00.000Z','2022-08-19T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-19','10:00:00.000Z','2022-08-19T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(405,'Installer Sample Data','Tentative','2022-08-26','11:00:00.000Z','2022-08-26T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-08-26','10:00:00.000Z','2022-08-26T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(406,'Installer Sample Data','Tentative','2022-07-08','11:00:00.000Z','2022-07-08T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-08','10:00:00.000Z','2022-07-08T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(407,'Installer Sample Data','Tentative','2022-07-15','11:00:00.000Z','2022-07-15T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-15','10:00:00.000Z','2022-07-15T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(408,'Installer Sample Data','Tentative','2022-07-22','11:00:00.000Z','2022-07-22T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-22','10:00:00.000Z','2022-07-22T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(409,'Installer Sample Data','Tentative','2022-07-29','11:00:00.000Z','2022-07-29T01:00:00.000+0000','a1b5j000000TZGOAA4','2022-07-29','10:00:00.000Z','2022-07-29T00:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(410,'Installer Sample Data','Tentative','2022-10-14','11:00:00.000Z','2022-10-14T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-14','10:00:00.000Z','2022-10-13T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(411,'Installer Sample Data','Tentative','2022-10-21','11:00:00.000Z','2022-10-21T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-21','10:00:00.000Z','2022-10-20T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(412,'Installer Sample Data','Tentative','2022-10-28','11:00:00.000Z','2022-10-28T00:00:00.000+0000','a1b5j000000TZGOAA4','2022-10-28','10:00:00.000Z','2022-10-27T23:00:00.000+0000','Good','Allocated','True','12','17');
INSERT INTO "rio_ed__Allocation__c" VALUES(413,'Installer Sample Data','Tentative','2022-08-05','13:00:00.000Z','2022-08-05T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-05','12:00:00.000Z','2022-08-05T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(414,'Installer Sample Data','Tentative','2022-08-12','13:00:00.000Z','2022-08-12T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-12','12:00:00.000Z','2022-08-12T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(415,'Installer Sample Data','Tentative','2022-08-19','13:00:00.000Z','2022-08-19T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-19','12:00:00.000Z','2022-08-19T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(416,'Installer Sample Data','Tentative','2022-09-09','13:00:00.000Z','2022-09-09T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-09','12:00:00.000Z','2022-09-09T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(417,'Installer Sample Data','Tentative','2022-09-16','13:00:00.000Z','2022-09-16T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-16','12:00:00.000Z','2022-09-16T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(418,'Installer Sample Data','Tentative','2022-09-23','13:00:00.000Z','2022-09-23T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-23','12:00:00.000Z','2022-09-23T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(419,'Installer Sample Data','Tentative','2022-09-30','13:00:00.000Z','2022-09-30T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-30','12:00:00.000Z','2022-09-30T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(420,'Installer Sample Data','Tentative','2022-08-26','13:00:00.000Z','2022-08-26T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-08-26','12:00:00.000Z','2022-08-26T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(421,'Installer Sample Data','Tentative','2022-09-02','13:00:00.000Z','2022-09-02T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-09-02','12:00:00.000Z','2022-09-02T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(422,'Installer Sample Data','Tentative','2022-10-07','13:00:00.000Z','2022-10-07T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-07','12:00:00.000Z','2022-10-07T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(423,'Installer Sample Data','Tentative','2022-10-14','13:00:00.000Z','2022-10-14T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-14','12:00:00.000Z','2022-10-14T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(424,'Installer Sample Data','Tentative','2022-10-21','13:00:00.000Z','2022-10-21T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-21','12:00:00.000Z','2022-10-21T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(425,'Installer Sample Data','Tentative','2022-10-28','13:00:00.000Z','2022-10-28T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-10-28','12:00:00.000Z','2022-10-28T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(426,'Installer Sample Data','Tentative','2022-11-04','13:00:00.000Z','2022-11-04T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-04','12:00:00.000Z','2022-11-04T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(427,'Installer Sample Data','Tentative','2022-11-11','13:00:00.000Z','2022-11-11T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-11','12:00:00.000Z','2022-11-11T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(428,'Installer Sample Data','Tentative','2022-11-18','13:00:00.000Z','2022-11-18T02:00:00.000+0000','a1b5j000000TZGcAAO','2022-11-18','12:00:00.000Z','2022-11-18T01:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(429,'Installer Sample Data','Tentative','2022-07-08','13:00:00.000Z','2022-07-08T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-08','12:00:00.000Z','2022-07-08T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(430,'Installer Sample Data','Tentative','2022-07-15','13:00:00.000Z','2022-07-15T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-15','12:00:00.000Z','2022-07-15T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(431,'Installer Sample Data','Tentative','2022-07-22','13:00:00.000Z','2022-07-22T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-22','12:00:00.000Z','2022-07-22T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(432,'Installer Sample Data','Tentative','2022-07-29','13:00:00.000Z','2022-07-29T03:00:00.000+0000','a1b5j000000TZGcAAO','2022-07-29','12:00:00.000Z','2022-07-29T02:00:00.000+0000','Good','Allocated','True','12','18');
INSERT INTO "rio_ed__Allocation__c" VALUES(433,'Installer Sample Data','Tentative','2023-11-03','15:00:00.000Z','2023-11-03T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-03','14:00:00.000Z','2023-11-03T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(434,'Installer Sample Data','Tentative','2023-11-10','15:00:00.000Z','2023-11-10T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-10','14:00:00.000Z','2023-11-10T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(435,'Installer Sample Data','Tentative','2023-11-17','15:00:00.000Z','2023-11-17T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-11-17','14:00:00.000Z','2023-11-17T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(436,'Installer Sample Data','Tentative','2023-08-11','15:00:00.000Z','2023-08-11T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-11','14:00:00.000Z','2023-08-11T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(437,'Installer Sample Data','Tentative','2023-08-18','15:00:00.000Z','2023-08-18T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-18','14:00:00.000Z','2023-08-18T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(438,'Installer Sample Data','Tentative','2023-08-25','15:00:00.000Z','2023-08-25T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-25','14:00:00.000Z','2023-08-25T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(439,'Installer Sample Data','Tentative','2023-09-01','15:00:00.000Z','2023-09-01T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-01','14:00:00.000Z','2023-09-01T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(440,'Installer Sample Data','Tentative','2023-09-08','15:00:00.000Z','2023-09-08T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-08','14:00:00.000Z','2023-09-08T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(441,'Installer Sample Data','Tentative','2023-09-15','15:00:00.000Z','2023-09-15T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-15','14:00:00.000Z','2023-09-15T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(442,'Installer Sample Data','Tentative','2023-09-22','15:00:00.000Z','2023-09-22T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-22','14:00:00.000Z','2023-09-22T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(443,'Installer Sample Data','Tentative','2023-09-29','15:00:00.000Z','2023-09-29T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-09-29','14:00:00.000Z','2023-09-29T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(444,'Installer Sample Data','Tentative','2023-07-07','15:00:00.000Z','2023-07-07T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-07','14:00:00.000Z','2023-07-07T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(445,'Installer Sample Data','Tentative','2023-07-14','15:00:00.000Z','2023-07-14T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-14','14:00:00.000Z','2023-07-14T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(446,'Installer Sample Data','Tentative','2023-10-06','15:00:00.000Z','2023-10-06T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-06','14:00:00.000Z','2023-10-06T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(447,'Installer Sample Data','Tentative','2023-10-13','15:00:00.000Z','2023-10-13T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-13','14:00:00.000Z','2023-10-13T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(448,'Installer Sample Data','Tentative','2023-10-20','15:00:00.000Z','2023-10-20T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-20','14:00:00.000Z','2023-10-20T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(449,'Installer Sample Data','Tentative','2023-10-27','15:00:00.000Z','2023-10-27T04:00:00.000+0000','a1b5j000000TZRCAA4','2023-10-27','14:00:00.000Z','2023-10-27T03:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(450,'Installer Sample Data','Tentative','2023-07-21','15:00:00.000Z','2023-07-21T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-21','14:00:00.000Z','2023-07-21T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(451,'Installer Sample Data','Tentative','2023-07-28','15:00:00.000Z','2023-07-28T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-07-28','14:00:00.000Z','2023-07-28T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(452,'Installer Sample Data','Tentative','2023-08-04','15:00:00.000Z','2023-08-04T05:00:00.000+0000','a1b5j000000TZRCAA4','2023-08-04','14:00:00.000Z','2023-08-04T04:00:00.000+0000','Good','Allocated','False','12','19');
INSERT INTO "rio_ed__Allocation__c" VALUES(453,'Installer Sample Data','Tentative','2022-01-26','10:00:00.000Z','2022-01-25T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-01-26','09:00:00.000Z','2022-01-25T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(454,'Installer Sample Data','Tentative','2022-02-02','10:00:00.000Z','2022-02-01T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-02','09:00:00.000Z','2022-02-01T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(455,'Installer Sample Data','Tentative','2022-02-09','10:00:00.000Z','2022-02-08T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-09','09:00:00.000Z','2022-02-08T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(456,'Installer Sample Data','Tentative','2022-02-16','10:00:00.000Z','2022-02-15T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-16','09:00:00.000Z','2022-02-15T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(457,'Installer Sample Data','Tentative','2022-02-23','10:00:00.000Z','2022-02-22T23:00:00.000+0000','a1b5j000000TZFPAA4','2022-02-23','09:00:00.000Z','2022-02-22T22:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(458,'Installer Sample Data','Tentative','2022-03-23','10:00:00.000Z','2022-03-23T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-23','09:00:00.000Z','2022-03-22T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(459,'Installer Sample Data','Tentative','2022-03-30','10:00:00.000Z','2022-03-30T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-03-30','09:00:00.000Z','2022-03-29T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(460,'Installer Sample Data','Tentative','2022-04-06','10:00:00.000Z','2022-04-06T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-06','09:00:00.000Z','2022-04-05T23:00:00.000+0000','Good','Allocated','True','12','2');
INSERT INTO "rio_ed__Allocation__c" VALUES(461,'Installer Sample Data','Tentative','2022-04-13','10:00:00.000Z','2022-04-13T00:00:00.000+0000','a1b5j000000TZFPAA4','2022-04-13','09:00:00.000Z','2022-04-12T23:00:00.000+0000','Good','Allocated','True','12','2');
CREATE TABLE "rio_ed__Appointment_Availability__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Appointment_Type__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	"rio_ed__Facility__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(1,'Installer Sample Data','1','','12');
INSERT INTO "rio_ed__Appointment_Availability__c" VALUES(2,'Installer Sample Data','1','26','');
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
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(1,'Installer Sample Data','Available Time','True','60.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','17');
INSERT INTO "rio_ed__Appointment_Time__c" VALUES(2,'Installer Sample Data','Available Time','True','60.0','Monday;Tuesday;Wednesday;Thursday;Friday','15:00:00.000Z','14:00:00.000Z','1','19');
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
INSERT INTO "rio_ed__Assigned_Location__c" VALUES(1,'Installer Sample Data','19','26');
CREATE TABLE "rio_ed__Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Session_Date__c" VARCHAR(255), 
	"rio_ed__Booking__c" VARCHAR(255), 
	"rio_ed__Session_Connection__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Attendance__c" VALUES(1,'Installer Sample Data','2022-10-14','306','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(2,'Installer Sample Data','2022-10-21','307','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(3,'Installer Sample Data','2022-10-28','192','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(4,'Installer Sample Data','2022-11-04','193','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(5,'Installer Sample Data','2022-11-18','194','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(6,'Installer Sample Data','2022-11-11','195','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(7,'Installer Sample Data','2022-08-17','196','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(8,'Installer Sample Data','2022-08-24','197','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(9,'Installer Sample Data','2022-08-31','198','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(10,'Installer Sample Data','2022-09-07','199','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(11,'Installer Sample Data','2022-05-05','322','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(12,'Installer Sample Data','2022-09-14','200','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(13,'Installer Sample Data','2022-09-21','201','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(14,'Installer Sample Data','2022-07-06','202','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(15,'Installer Sample Data','2022-07-13','203','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(16,'Installer Sample Data','2022-07-20','204','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(17,'Installer Sample Data','2022-07-27','205','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(18,'Installer Sample Data','2022-09-09','394','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(19,'Installer Sample Data','2022-09-16','395','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(20,'Installer Sample Data','2022-09-23','396','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(21,'Installer Sample Data','2022-09-30','397','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(22,'Installer Sample Data','2023-04-06','104','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(23,'Installer Sample Data','2023-04-13','105','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(24,'Installer Sample Data','2023-04-20','106','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(25,'Installer Sample Data','2023-04-27','107','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(26,'Installer Sample Data','2023-05-04','108','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(27,'Installer Sample Data','2023-05-11','109','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(28,'Installer Sample Data','2022-04-20','113','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(29,'Installer Sample Data','2023-05-18','110','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(30,'Installer Sample Data','2023-05-25','111','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(31,'Installer Sample Data','2023-06-01','132','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(32,'Installer Sample Data','2023-06-08','133','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(33,'Installer Sample Data','2023-06-15','134','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(34,'Installer Sample Data','2023-02-09','135','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(35,'Installer Sample Data','2023-02-16','136','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(36,'Installer Sample Data','2023-02-23','137','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(37,'Installer Sample Data','2023-03-02','138','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(38,'Installer Sample Data','2023-03-09','139','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(39,'Installer Sample Data','2022-03-31','317','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(40,'Installer Sample Data','2022-04-27','114','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(41,'Installer Sample Data','2023-01-26','140','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(42,'Installer Sample Data','2023-02-02','141','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(43,'Installer Sample Data','2023-03-16','142','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(44,'Installer Sample Data','2023-03-23','143','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(45,'Installer Sample Data','2023-03-30','144','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(46,'Installer Sample Data','2023-04-06','145','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(47,'Installer Sample Data','2023-04-13','146','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(48,'Installer Sample Data','2023-04-20','147','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(49,'Installer Sample Data','2023-04-27','148','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(50,'Installer Sample Data','2023-05-04','149','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(51,'Installer Sample Data','2022-05-04','115','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(52,'Installer Sample Data','2022-07-08','296','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(53,'Installer Sample Data','2022-08-12','297','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(54,'Installer Sample Data','2022-04-07','318','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(55,'Installer Sample Data','2022-08-19','298','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(56,'Installer Sample Data','2022-08-26','299','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(57,'Installer Sample Data','2022-04-14','362','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(58,'Installer Sample Data','2022-07-08','373','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(59,'Installer Sample Data','2022-07-15','374','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(60,'Installer Sample Data','2022-07-22','375','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(61,'Installer Sample Data','2022-07-29','376','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(62,'Installer Sample Data','2022-08-05','377','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(63,'Installer Sample Data','2022-08-19','378','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(64,'Installer Sample Data','2022-08-26','379','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(65,'Installer Sample Data','2022-04-14','319','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(66,'Installer Sample Data','2022-09-02','380','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(67,'Installer Sample Data','2022-09-09','381','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(68,'Installer Sample Data','2022-09-16','382','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(69,'Installer Sample Data','2022-09-23','383','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(70,'Installer Sample Data','2022-08-12','384','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(71,'Installer Sample Data','2022-09-30','385','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(72,'Installer Sample Data','2022-10-07','386','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(73,'Installer Sample Data','2022-10-14','387','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(74,'Installer Sample Data','2022-10-21','388','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(75,'Installer Sample Data','2022-10-28','389','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(76,'Installer Sample Data','2022-04-21','320','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(77,'Installer Sample Data','2022-11-04','390','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(78,'Installer Sample Data','2022-11-11','391','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(79,'Installer Sample Data','2022-11-18','392','9');
INSERT INTO "rio_ed__Attendance__c" VALUES(80,'Installer Sample Data','2022-09-02','393','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(81,'Installer Sample Data','2022-09-02','300','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(82,'Installer Sample Data','2022-09-09','301','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(83,'Installer Sample Data','2022-09-16','302','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(84,'Installer Sample Data','2022-09-23','303','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(85,'Installer Sample Data','2022-09-30','304','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(86,'Installer Sample Data','2022-10-07','305','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(87,'Installer Sample Data','2022-04-28','321','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(88,'Installer Sample Data','2022-03-10','314','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(89,'Installer Sample Data','2022-05-19','323','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(90,'Installer Sample Data','2022-10-07','398','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(91,'Installer Sample Data','2022-11-11','399','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(92,'Installer Sample Data','2022-11-04','400','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(93,'Installer Sample Data','2022-11-18','401','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(94,'Installer Sample Data','2022-08-05','402','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(95,'Installer Sample Data','2022-08-12','403','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(96,'Installer Sample Data','2022-08-19','404','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(97,'Installer Sample Data','2022-08-26','405','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(98,'Installer Sample Data','2022-07-08','406','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(99,'Installer Sample Data','2022-07-15','407','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(100,'Installer Sample Data','2022-05-12','324','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(101,'Installer Sample Data','2022-07-22','408','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(102,'Installer Sample Data','2022-07-29','409','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(103,'Installer Sample Data','2022-10-14','410','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(104,'Installer Sample Data','2022-10-21','411','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(105,'Installer Sample Data','2022-10-28','412','4');
INSERT INTO "rio_ed__Attendance__c" VALUES(106,'Installer Sample Data','2022-01-26','453','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(107,'Installer Sample Data','2022-02-02','454','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(108,'Installer Sample Data','2022-02-09','455','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(109,'Installer Sample Data','2022-08-03','206','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(110,'Installer Sample Data','2022-08-10','207','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(111,'Installer Sample Data','2022-01-13','325','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(112,'Installer Sample Data','2022-09-28','248','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(113,'Installer Sample Data','2022-10-05','249','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(114,'Installer Sample Data','2022-10-12','250','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(115,'Installer Sample Data','2022-10-19','251','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(116,'Installer Sample Data','2022-10-26','252','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(117,'Installer Sample Data','2022-11-02','253','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(118,'Installer Sample Data','2022-11-09','254','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(119,'Installer Sample Data','2022-11-16','255','3');
INSERT INTO "rio_ed__Attendance__c" VALUES(120,'Installer Sample Data','2023-03-30','118','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(121,'Installer Sample Data','2023-04-06','119','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(122,'Installer Sample Data','2022-01-20','326','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(123,'Installer Sample Data','2023-04-13','120','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(124,'Installer Sample Data','2023-04-20','121','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(125,'Installer Sample Data','2023-04-27','122','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(126,'Installer Sample Data','2023-05-04','123','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(127,'Installer Sample Data','2023-05-11','124','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(128,'Installer Sample Data','2023-05-18','125','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(129,'Installer Sample Data','2023-05-25','126','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(130,'Installer Sample Data','2023-06-01','127','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(131,'Installer Sample Data','2023-01-26','128','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(132,'Installer Sample Data','2023-02-02','129','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(133,'Installer Sample Data','2022-01-27','327','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(134,'Installer Sample Data','2022-02-16','456','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(135,'Installer Sample Data','2022-02-23','457','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(136,'Installer Sample Data','2022-03-23','458','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(137,'Installer Sample Data','2022-03-30','459','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(138,'Installer Sample Data','2022-04-06','460','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(139,'Installer Sample Data','2022-04-13','461','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(140,'Installer Sample Data','2022-04-20','1','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(141,'Installer Sample Data','2022-04-27','2','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(142,'Installer Sample Data','2022-05-04','3','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(143,'Installer Sample Data','2022-05-11','4','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(144,'Installer Sample Data','2022-02-03','348','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(145,'Installer Sample Data','2022-03-02','5','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(146,'Installer Sample Data','2022-03-09','6','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(147,'Installer Sample Data','2022-03-16','7','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(148,'Installer Sample Data','2022-05-18','8','39');
INSERT INTO "rio_ed__Attendance__c" VALUES(149,'Installer Sample Data','2022-08-05','413','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(150,'Installer Sample Data','2022-08-12','414','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(151,'Installer Sample Data','2022-08-19','415','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(152,'Installer Sample Data','2022-09-09','416','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(153,'Installer Sample Data','2022-09-16','417','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(154,'Installer Sample Data','2022-09-23','418','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(155,'Installer Sample Data','2022-02-10','349','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(156,'Installer Sample Data','2022-09-30','419','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(157,'Installer Sample Data','2022-08-26','420','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(158,'Installer Sample Data','2023-02-09','130','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(159,'Installer Sample Data','2023-02-16','131','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(160,'Installer Sample Data','2023-02-23','152','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(161,'Installer Sample Data','2023-03-02','153','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(162,'Installer Sample Data','2023-03-09','154','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(163,'Installer Sample Data','2023-03-16','155','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(164,'Installer Sample Data','2023-03-23','156','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(165,'Installer Sample Data','2023-06-08','157','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(166,'Installer Sample Data','2022-02-17','350','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(167,'Installer Sample Data','2023-06-15','158','24');
INSERT INTO "rio_ed__Attendance__c" VALUES(168,'Installer Sample Data','2023-02-08','159','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(169,'Installer Sample Data','2023-02-15','160','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(170,'Installer Sample Data','2023-02-22','161','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(171,'Installer Sample Data','2023-03-01','162','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(172,'Installer Sample Data','2023-03-08','163','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(173,'Installer Sample Data','2023-03-15','164','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(174,'Installer Sample Data','2023-03-22','165','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(175,'Installer Sample Data','2023-04-05','166','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(176,'Installer Sample Data','2023-04-12','167','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(177,'Installer Sample Data','2022-02-24','351','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(178,'Installer Sample Data','2023-04-19','168','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(179,'Installer Sample Data','2023-04-26','169','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(180,'Installer Sample Data','2023-05-03','170','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(181,'Installer Sample Data','2023-03-29','171','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(182,'Installer Sample Data','2022-09-02','421','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(183,'Installer Sample Data','2022-10-07','422','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(184,'Installer Sample Data','2022-10-14','423','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(185,'Installer Sample Data','2022-10-21','424','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(186,'Installer Sample Data','2022-10-28','425','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(187,'Installer Sample Data','2022-11-04','426','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(188,'Installer Sample Data','2022-03-03','352','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(189,'Installer Sample Data','2022-11-11','427','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(190,'Installer Sample Data','2022-11-18','428','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(191,'Installer Sample Data','2022-07-08','429','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(192,'Installer Sample Data','2022-07-15','430','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(193,'Installer Sample Data','2022-07-22','431','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(194,'Installer Sample Data','2022-07-29','432','11');
INSERT INTO "rio_ed__Attendance__c" VALUES(195,'Installer Sample Data','2022-03-17','315','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(196,'Installer Sample Data','2022-01-26','81','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(197,'Installer Sample Data','2023-05-10','208','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(198,'Installer Sample Data','2023-05-17','209','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(199,'Installer Sample Data','2023-05-24','210','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(200,'Installer Sample Data','2023-05-31','211','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(201,'Installer Sample Data','2022-02-02','82','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(202,'Installer Sample Data','2023-06-07','212','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(203,'Installer Sample Data','2023-06-14','213','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(204,'Installer Sample Data','2023-01-25','214','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(205,'Installer Sample Data','2023-02-01','215','38');
INSERT INTO "rio_ed__Attendance__c" VALUES(206,'Installer Sample Data','2022-01-26','216','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(207,'Installer Sample Data','2022-02-02','217','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(208,'Installer Sample Data','2022-02-09','218','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(209,'Installer Sample Data','2022-02-16','219','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(210,'Installer Sample Data','2022-02-23','220','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(211,'Installer Sample Data','2022-03-02','221','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(212,'Installer Sample Data','2022-02-09','83','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(213,'Installer Sample Data','2022-03-09','222','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(214,'Installer Sample Data','2022-03-16','223','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(215,'Installer Sample Data','2022-03-23','224','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(216,'Installer Sample Data','2022-03-30','225','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(217,'Installer Sample Data','2022-04-06','226','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(218,'Installer Sample Data','2022-04-13','227','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(219,'Installer Sample Data','2022-04-20','268','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(220,'Installer Sample Data','2022-04-27','269','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(221,'Installer Sample Data','2022-02-24','355','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(222,'Installer Sample Data','2023-11-02','9','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(223,'Installer Sample Data','2023-11-09','10','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(224,'Installer Sample Data','2022-03-03','356','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(225,'Installer Sample Data','2023-11-16','11','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(226,'Installer Sample Data','2023-08-31','12','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(227,'Installer Sample Data','2023-09-07','13','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(228,'Installer Sample Data','2023-09-14','14','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(229,'Installer Sample Data','2023-09-21','15','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(230,'Installer Sample Data','2023-07-06','16','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(231,'Installer Sample Data','2023-07-13','17','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(232,'Installer Sample Data','2023-07-20','18','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(233,'Installer Sample Data','2023-07-27','19','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(234,'Installer Sample Data','2023-08-03','20','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(235,'Installer Sample Data','2022-03-10','357','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(236,'Installer Sample Data','2022-05-04','270','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(237,'Installer Sample Data','2022-05-11','271','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(238,'Installer Sample Data','2022-05-18','272','34');
INSERT INTO "rio_ed__Attendance__c" VALUES(239,'Installer Sample Data','2022-07-20','273','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(240,'Installer Sample Data','2022-07-27','274','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(241,'Installer Sample Data','2022-08-03','275','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(242,'Installer Sample Data','2022-07-06','276','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(243,'Installer Sample Data','2022-07-13','277','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(244,'Installer Sample Data','2022-08-10','278','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(245,'Installer Sample Data','2022-08-17','279','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(246,'Installer Sample Data','2022-03-17','358','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(247,'Installer Sample Data','2022-08-24','280','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(248,'Installer Sample Data','2022-08-31','281','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(249,'Installer Sample Data','2022-09-07','282','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(250,'Installer Sample Data','2022-09-14','283','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(251,'Installer Sample Data','2022-09-21','284','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(252,'Installer Sample Data','2022-10-05','285','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(253,'Installer Sample Data','2022-09-28','286','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(254,'Installer Sample Data','2022-10-12','287','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(255,'Installer Sample Data','2022-10-19','328','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(256,'Installer Sample Data','2022-10-26','329','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(257,'Installer Sample Data','2022-03-24','359','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(258,'Installer Sample Data','2022-11-02','330','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(259,'Installer Sample Data','2022-11-09','331','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(260,'Installer Sample Data','2023-08-10','21','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(261,'Installer Sample Data','2023-08-17','22','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(262,'Installer Sample Data','2023-08-24','23','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(263,'Installer Sample Data','2023-10-12','24','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(264,'Installer Sample Data','2023-09-28','25','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(265,'Installer Sample Data','2023-10-05','26','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(266,'Installer Sample Data','2023-10-19','27','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(267,'Installer Sample Data','2023-10-26','28','26');
INSERT INTO "rio_ed__Attendance__c" VALUES(268,'Installer Sample Data','2022-03-31','360','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(269,'Installer Sample Data','2022-04-07','361','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(270,'Installer Sample Data','2022-11-16','332','41');
INSERT INTO "rio_ed__Attendance__c" VALUES(271,'Installer Sample Data','2022-04-22','333','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(272,'Installer Sample Data','2022-04-29','334','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(273,'Installer Sample Data','2022-05-06','335','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(274,'Installer Sample Data','2022-05-13','336','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(275,'Installer Sample Data','2022-01-21','337','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(276,'Installer Sample Data','2022-03-24','316','6');
INSERT INTO "rio_ed__Attendance__c" VALUES(277,'Installer Sample Data','2022-02-16','84','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(278,'Installer Sample Data','2022-01-28','338','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(279,'Installer Sample Data','2022-02-04','339','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(280,'Installer Sample Data','2022-02-11','340','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(281,'Installer Sample Data','2022-02-18','341','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(282,'Installer Sample Data','2022-02-25','342','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(283,'Installer Sample Data','2022-03-04','343','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(284,'Installer Sample Data','2022-03-11','344','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(285,'Installer Sample Data','2022-03-18','345','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(286,'Installer Sample Data','2022-03-25','346','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(287,'Installer Sample Data','2022-04-01','347','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(288,'Installer Sample Data','2022-02-23','85','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(289,'Installer Sample Data','2022-04-08','353','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(290,'Installer Sample Data','2022-04-15','354','10');
INSERT INTO "rio_ed__Attendance__c" VALUES(291,'Installer Sample Data','2022-04-21','363','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(292,'Installer Sample Data','2022-04-28','364','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(293,'Installer Sample Data','2022-05-05','365','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(294,'Installer Sample Data','2022-05-12','366','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(295,'Installer Sample Data','2022-03-02','86','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(296,'Installer Sample Data','2022-01-23','49','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(297,'Installer Sample Data','2022-01-30','50','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(298,'Installer Sample Data','2022-02-06','51','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(299,'Installer Sample Data','2022-02-13','52','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(300,'Installer Sample Data','2022-02-20','53','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(301,'Installer Sample Data','2022-02-27','54','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(302,'Installer Sample Data','2022-03-06','55','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(303,'Installer Sample Data','2022-03-13','56','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(304,'Installer Sample Data','2022-03-09','87','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(305,'Installer Sample Data','2022-03-20','57','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(306,'Installer Sample Data','2022-03-27','58','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(307,'Installer Sample Data','2022-04-03','59','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(308,'Installer Sample Data','2022-04-10','60','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(309,'Installer Sample Data','2022-04-17','61','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(310,'Installer Sample Data','2022-04-24','62','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(311,'Installer Sample Data','2022-05-01','63','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(312,'Installer Sample Data','2022-05-08','64','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(313,'Installer Sample Data','2023-02-23','94','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(314,'Installer Sample Data','2023-03-02','95','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(315,'Installer Sample Data','2022-03-16','88','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(316,'Installer Sample Data','2023-05-11','150','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(317,'Installer Sample Data','2023-05-18','151','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(318,'Installer Sample Data','2023-06-01','172','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(319,'Installer Sample Data','2023-06-08','173','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(320,'Installer Sample Data','2023-06-15','174','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(321,'Installer Sample Data','2023-05-25','175','42');
INSERT INTO "rio_ed__Attendance__c" VALUES(322,'Installer Sample Data','2022-07-08','176','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(323,'Installer Sample Data','2022-07-15','177','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(324,'Installer Sample Data','2022-07-22','178','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(325,'Installer Sample Data','2022-07-29','179','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(326,'Installer Sample Data','2022-05-11','116','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(327,'Installer Sample Data','2022-08-05','180','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(328,'Installer Sample Data','2022-08-12','181','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(329,'Installer Sample Data','2022-08-19','182','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(330,'Installer Sample Data','2022-08-26','183','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(331,'Installer Sample Data','2022-09-02','184','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(332,'Installer Sample Data','2022-10-21','185','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(333,'Installer Sample Data','2022-09-09','186','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(334,'Installer Sample Data','2022-10-28','187','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(335,'Installer Sample Data','2022-09-16','188','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(336,'Installer Sample Data','2022-09-23','189','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(337,'Installer Sample Data','2022-05-18','117','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(338,'Installer Sample Data','2022-09-30','190','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(339,'Installer Sample Data','2022-10-07','191','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(340,'Installer Sample Data','2022-10-14','228','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(341,'Installer Sample Data','2022-11-04','229','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(342,'Installer Sample Data','2022-11-11','230','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(343,'Installer Sample Data','2022-11-18','231','43');
INSERT INTO "rio_ed__Attendance__c" VALUES(344,'Installer Sample Data','2023-03-09','96','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(345,'Installer Sample Data','2023-03-16','97','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(346,'Installer Sample Data','2023-03-23','98','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(347,'Installer Sample Data','2023-03-30','99','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(348,'Installer Sample Data','2022-05-19','367','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(349,'Installer Sample Data','2022-01-20','368','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(350,'Installer Sample Data','2022-01-27','369','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(351,'Installer Sample Data','2022-02-03','370','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(352,'Installer Sample Data','2022-02-10','371','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(353,'Installer Sample Data','2022-02-17','372','7');
INSERT INTO "rio_ed__Attendance__c" VALUES(354,'Installer Sample Data','2022-03-23','89','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(355,'Installer Sample Data','2022-08-31','232','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(356,'Installer Sample Data','2022-09-07','233','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(357,'Installer Sample Data','2022-09-14','234','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(358,'Installer Sample Data','2022-09-21','235','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(359,'Installer Sample Data','2022-09-28','236','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(360,'Installer Sample Data','2022-10-05','237','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(361,'Installer Sample Data','2022-10-12','238','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(362,'Installer Sample Data','2022-07-06','244','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(363,'Installer Sample Data','2022-07-13','245','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(364,'Installer Sample Data','2022-07-27','246','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(365,'Installer Sample Data','2022-08-03','247','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(366,'Installer Sample Data','2022-07-15','292','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(367,'Installer Sample Data','2022-08-10','288','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(368,'Installer Sample Data','2022-07-20','289','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(369,'Installer Sample Data','2022-08-17','290','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(370,'Installer Sample Data','2022-08-24','291','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(371,'Installer Sample Data','2022-01-20','256','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(372,'Installer Sample Data','2022-01-27','257','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(373,'Installer Sample Data','2022-02-03','258','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(374,'Installer Sample Data','2022-02-10','259','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(375,'Installer Sample Data','2022-02-17','260','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(376,'Installer Sample Data','2022-02-24','261','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(377,'Installer Sample Data','2022-07-22','293','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(378,'Installer Sample Data','2022-03-03','262','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(379,'Installer Sample Data','2022-03-10','263','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(380,'Installer Sample Data','2022-03-17','264','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(381,'Installer Sample Data','2022-04-28','265','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(382,'Installer Sample Data','2022-04-14','266','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(383,'Installer Sample Data','2022-04-21','267','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(384,'Installer Sample Data','2022-05-05','308','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(385,'Installer Sample Data','2022-05-12','309','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(386,'Installer Sample Data','2022-03-24','310','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(387,'Installer Sample Data','2022-03-31','311','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(388,'Installer Sample Data','2022-07-29','294','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(389,'Installer Sample Data','2022-04-07','312','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(390,'Installer Sample Data','2022-05-19','313','5');
INSERT INTO "rio_ed__Attendance__c" VALUES(391,'Installer Sample Data','2022-08-05','295','8');
INSERT INTO "rio_ed__Attendance__c" VALUES(392,'Installer Sample Data','2022-10-19','239','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(393,'Installer Sample Data','2022-10-26','240','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(394,'Installer Sample Data','2022-11-02','241','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(395,'Installer Sample Data','2022-03-30','90','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(396,'Installer Sample Data','2022-11-09','242','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(397,'Installer Sample Data','2022-11-16','243','36');
INSERT INTO "rio_ed__Attendance__c" VALUES(398,'Installer Sample Data','2022-05-15','65','40');
INSERT INTO "rio_ed__Attendance__c" VALUES(399,'Installer Sample Data','2022-01-26','66','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(400,'Installer Sample Data','2022-02-02','67','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(401,'Installer Sample Data','2022-02-09','68','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(402,'Installer Sample Data','2022-02-16','69','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(403,'Installer Sample Data','2022-02-23','70','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(404,'Installer Sample Data','2022-03-02','71','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(405,'Installer Sample Data','2022-03-09','72','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(406,'Installer Sample Data','2022-04-06','91','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(407,'Installer Sample Data','2022-03-16','73','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(408,'Installer Sample Data','2022-03-23','74','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(409,'Installer Sample Data','2022-03-30','75','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(410,'Installer Sample Data','2022-04-06','76','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(411,'Installer Sample Data','2022-04-13','77','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(412,'Installer Sample Data','2022-04-20','78','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(413,'Installer Sample Data','2022-04-27','79','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(414,'Installer Sample Data','2022-05-04','80','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(415,'Installer Sample Data','2022-05-11','92','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(416,'Installer Sample Data','2022-05-18','93','1');
INSERT INTO "rio_ed__Attendance__c" VALUES(417,'Installer Sample Data','2022-04-13','112','2');
INSERT INTO "rio_ed__Attendance__c" VALUES(418,'Installer Sample Data','2023-01-26','100','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(419,'Installer Sample Data','2023-02-02','101','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(420,'Installer Sample Data','2023-02-09','102','32');
INSERT INTO "rio_ed__Attendance__c" VALUES(421,'Installer Sample Data','2023-02-16','103','32');
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
INSERT INTO "rio_ed__Availability_Time__c" VALUES(1,'Installer Sample Data','All Time','True','Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;Sunday','23:45:00.000Z','','00:00:00.000Z','','26');
CREATE TABLE "rio_ed__Contact_Attendance__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Primary_Contact__c" VARCHAR(255), 
	"rio_ed__Status__c" VARCHAR(255), 
	"rio_ed__Contact__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(1,'Installer Sample Data','True','Tentative','26');
INSERT INTO "rio_ed__Contact_Attendance__c" VALUES(2,'Installer Sample Data','True','Tentative','29');
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
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(1,'Installer Sample Data','ICT112 Pre-Requisite','A','True','Pre-Requisite','46','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(2,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','73','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(3,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','23','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(4,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','117','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(5,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','105','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(6,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','177','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(7,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','129','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(8,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','149','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(9,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','85','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(10,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','161','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(11,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','181','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(12,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','137','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(13,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','270','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(14,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','61','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(15,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','193','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(16,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','205','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(17,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','280','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(18,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','12','10');
INSERT INTO "rio_ed__Course_Connection_Requirement__c" VALUES(19,'Installer Sample Data','ICT112 Pre-Requisite','A','False','Pre-Requisite','34','10');
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
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(3,'Installer Sample Data','ICT112','0125j000000IJkAAAW','','Mandatory','2','41','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(4,'Installer Sample Data','ICT115','0125j000000IJkAAAW','','Optional','2','43','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(5,'Installer Sample Data','BUS101','0125j000000IJkAAAW','','Mandatory','1','1','1');
INSERT INTO "rio_ed__Discipline_Requirement__c" VALUES(6,'Installer Sample Data','BUS102','0125j000000IJkAAAW','','Optional','1','39','1');
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
INSERT INTO "rio_ed__Fee_Line__c" VALUES(1,'Installer Sample Data','2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','50','7','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(2,'Installer Sample Data','2021-12-20','2022-01-09','1000.0','Self Paid','','Self Paid','54','7','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(3,'Installer Sample Data','2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','53','7','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(4,'Installer Sample Data','2022-01-20','2022-01-09','1000.0','Self Paid','','Self Paid','52','7','8');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(5,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','98','7','16');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(6,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','27','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(7,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','30','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(8,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','29','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(9,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','28','7','10');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(10,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','110','7','3');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(11,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','78','7','19');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(12,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','122','7','15');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(13,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','134','7','14');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(14,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','210','7','4');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(15,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','154','7','13');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(16,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','90','7','17');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(17,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','166','7','2');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(18,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','186','7','18');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(19,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','142','7','1');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(20,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','275','7','12');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(21,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','66','7','5');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(22,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','198','7','6');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(23,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','284','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(24,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','5','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(25,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','3','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(26,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','287','7','7');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(27,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','39','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(28,'Installer Sample Data','2021-12-20','','1000.0','Self Paid','','Self Paid','42','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(29,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','41','7','9');
INSERT INTO "rio_ed__Fee_Line__c" VALUES(30,'Installer Sample Data','2022-01-20','','1000.0','Self Paid','','Self Paid','40','7','9');
CREATE TABLE "rio_ed__Fee_Schedule_Term__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Fee_Schedule__c" VARCHAR(255), 
	"rio_ed__Term__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(1,'Installer Sample Data','1','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(2,'Installer Sample Data','1','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(3,'Installer Sample Data','1','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(4,'Installer Sample Data','1','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(5,'Installer Sample Data','2','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(6,'Installer Sample Data','2','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(7,'Installer Sample Data','2','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(8,'Installer Sample Data','2','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(9,'Installer Sample Data','3','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(10,'Installer Sample Data','3','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(11,'Installer Sample Data','3','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(12,'Installer Sample Data','3','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(13,'Installer Sample Data','4','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(14,'Installer Sample Data','4','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(15,'Installer Sample Data','4','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(16,'Installer Sample Data','4','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(17,'Installer Sample Data','5','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(18,'Installer Sample Data','5','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(19,'Installer Sample Data','5','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(20,'Installer Sample Data','5','6');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(21,'Installer Sample Data','6','3');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(22,'Installer Sample Data','6','4');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(23,'Installer Sample Data','6','5');
INSERT INTO "rio_ed__Fee_Schedule_Term__c" VALUES(24,'Installer Sample Data','6','6');
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
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(1,'Installer Sample Data','RIOSOB-HD','False','7.0','91-100','Pass','University Department','0015j00000EQs5IAAT-HD - High Distinction','Higher Range','HD - High Distinction','14');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(2,'Installer Sample Data','RIOSOB-D','False','6.0','81-90','Pass','University Department','0015j00000EQs5IAAT-D - Distinction','Higher Range','D - Distinction','14');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(3,'Installer Sample Data','RIOSOB-FA','True','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FA - Fail Absent','Higher Range','FA - Fail Absent','14');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(4,'Installer Sample Data','RIOSOB-FL','False','0.0','0-49','Fail','University Department','0015j00000EQs5IAAT-FL - Fail','Higher Range','FL - Fail','14');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(5,'Installer Sample Data','RIOSOB-CR','False','5.0','61-80','Pass','University Department','0015j00000EQs5IAAT-CR - Credit','Higher Range','CR - Credit','14');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(6,'Installer Sample Data','RIOSOB-PS','False','4.0','50-60','Pass','University Department','0015j00000EQs5IAAT-PS - Pass','Higher Range','PS - Pass','14');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(7,'Installer Sample Data','RIOUNI-FL','False','0.0','0 - 49','Fail','Educational Institution','0015j00000EQs58AAD-FL - Fail','Higher Range','FL - Fail','18');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(8,'Installer Sample Data','RIOUNI-D','False','6.0','75 - 84','Pass','Educational Institution','0015j00000EQs58AAD-D - Distinction','Higher Range','D - Distinction','18');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(9,'Installer Sample Data','RIOUNI-CR','False','5.0','65 - 74','Pass','Educational Institution','0015j00000EQs58AAD-CR - Credit','Higher Range','CR - Credit','18');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(10,'Installer Sample Data','RIOUNI-PS','False','4.0','50 - 64','Pass','Educational Institution','0015j00000EQs58AAD-PS - Pass','Higher Range','PS - Pass','18');
INSERT INTO "rio_ed__Grade_Setting__c" VALUES(11,'Installer Sample Data','RIOUNI-HD','False','7.0','85 - 100','Pass','Educational Institution','0015j00000EQs58AAD-HD - High Distinction','Higher Range','HD - High Distinction','18');
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
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(1,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(2,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(3,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(4,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(5,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(6,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(7,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(8,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(9,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(10,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(11,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(12,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(13,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(14,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(15,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(16,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(17,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(18,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(19,'Installer Sample Data','RIOUNI02-Elective','Required','0.0','','','','40.0','','','False','35','18');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(20,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','1');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(21,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','9');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(22,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','17');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(23,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','13');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(24,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','11');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(25,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','12');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(26,'Installer Sample Data','RIOUNI02-Mandatory','Required','33.333333333333336','0.0','40.0','40.0','120.0','25.0','In Progress','False','36','2');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(27,'Installer Sample Data','RIOUNI02-Mandatory','Required','33.333333333333336','4.0','40.0','40.0','120.0','24.0','In Progress','False','36','5');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(28,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','4');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(29,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','6');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(30,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','Not Started','False','36','3');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(31,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','15');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(32,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','14');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(33,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','8');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(34,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','7');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(35,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','16');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(36,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','19');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(37,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','10');
INSERT INTO "rio_ed__PE_Group_Status__c" VALUES(38,'Installer Sample Data','RIOUNI02-Mandatory','Required','0.0','0.0','0.0','0.0','120.0','0.0','In Progress','False','36','18');
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
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(1,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(2,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','8.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(3,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(4,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','5.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(5,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(6,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','6.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(7,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','7.0','8.0','Half-time','1','3','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(8,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','8.0','Half-time','1','3','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(9,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','9','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(10,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','9','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(11,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','9','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(12,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','9','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(13,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','17','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(14,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','17','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(15,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','17','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(16,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','17','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(17,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','13','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(18,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','13','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(19,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','13','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(20,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','13','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(21,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','11','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(22,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','11','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(23,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','11','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(24,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','11','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(25,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','12','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(26,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','12','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(27,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','12','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(28,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','12','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(29,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','2','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(30,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','2','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(31,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','2','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(32,'Installer Sample Data','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','2','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(33,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','5','2','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(34,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','4.0','4.0','Full-time','5','2','4');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(35,'Installer Sample Data','False','False','False','40.0','40.0','False','5.0','Not generated','6.0','24.0','1.0','4.0','Full-time','5','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(36,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','5','2','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(37,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','4','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(38,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','3.0','4.0','Full-time','4','2','3');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(39,'Installer Sample Data','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','4','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(40,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','2.0','4.0','Full-time','4','2','6');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(41,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','6','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(42,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','6','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(43,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','6','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(44,'Installer Sample Data','False','False','False','0.0','0.0','False','4.0','Not generated','','0.0','1.0','4.0','Full-time','6','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(45,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','3','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(46,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','3','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(47,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','3','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(48,'Installer Sample Data','False','False','False','0.0','0.0','False','0.0','Not generated','','0.0','1.0','4.0','Full-time','3','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(49,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','15','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(50,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','15','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(51,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','15','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(52,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','15','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(53,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','14','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(54,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','14','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(55,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','14','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(56,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','14','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(57,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','8','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(58,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','8','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(59,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','8','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(60,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','8','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(61,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','7','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(62,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','7','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(63,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','7','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(64,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','7','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(65,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','16','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(66,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','16','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(67,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','16','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(68,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','16','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(69,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','19','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(70,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','19','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(71,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','19','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(72,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','19','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(73,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','10','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(74,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','10','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(75,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','10','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(76,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','10','2','5');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(77,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','2.0','4.0','Full-time','18','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(78,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','3.0','4.0','Full-time','18','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(79,'Installer Sample Data','False','False','False','','','False','0.0','Not generated','','','4.0','4.0','Full-time','18','2','');
INSERT INTO "rio_ed__PE_Pathway_Status__c" VALUES(80,'Installer Sample Data','False','False','False','0.0','0.0','False','1.0','Not generated','','0.0','1.0','4.0','Full-time','18','2','5');
CREATE TABLE "rio_ed__Pathway_Unit__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Term_Number__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Course__c" VARCHAR(255), 
	"rio_ed__Plan_Requirement_Group__c" VARCHAR(255), 
	"rio_ed__Program_Pathway__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(1,'Installer Sample Data','4.0','','35','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(2,'Installer Sample Data','8.0','','35','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(3,'Installer Sample Data','7.0','','35','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(4,'Installer Sample Data','4.0','','33','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(5,'Installer Sample Data','4.0','','37','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(6,'Installer Sample Data','2.0','','38','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(7,'Installer Sample Data','3.0','','38','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(8,'Installer Sample Data','1.0','','38','4');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(9,'Installer Sample Data','1.0','44','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(10,'Installer Sample Data','1.0','44','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(11,'Installer Sample Data','3.0','45','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(12,'Installer Sample Data','2.0','50','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(13,'Installer Sample Data','3.0','50','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(14,'Installer Sample Data','3.0','2','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(15,'Installer Sample Data','5.0','2','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(16,'Installer Sample Data','1.0','1','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(17,'Installer Sample Data','2.0','3','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(18,'Installer Sample Data','3.0','6','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(19,'Installer Sample Data','6.0','6','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(20,'Installer Sample Data','1.0','5','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(21,'Installer Sample Data','3.0','8','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(22,'Installer Sample Data','6.0','8','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(23,'Installer Sample Data','1.0','7','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(24,'Installer Sample Data','1.0','12','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(25,'Installer Sample Data','2.0','12','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(26,'Installer Sample Data','2.0','14','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(27,'Installer Sample Data','3.0','14','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(28,'Installer Sample Data','3.0','15','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(29,'Installer Sample Data','3.0','17','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(30,'Installer Sample Data','2.0','19','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(31,'Installer Sample Data','1.0','22','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(32,'Installer Sample Data','2.0','22','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(33,'Installer Sample Data','2.0','24','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(34,'Installer Sample Data','4.0','24','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(35,'Installer Sample Data','3.0','25','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(36,'Installer Sample Data','2.0','27','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(37,'Installer Sample Data','2.0','30','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(38,'Installer Sample Data','4.0','30','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(39,'Installer Sample Data','2.0','31','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(40,'Installer Sample Data','3.0','40','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(41,'Installer Sample Data','5.0','40','','3');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(42,'Installer Sample Data','1.0','39','','1');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(43,'Installer Sample Data','1.0','42','','2');
INSERT INTO "rio_ed__Pathway_Unit__c" VALUES(44,'Installer Sample Data','1.0','42','','3');
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
INSERT INTO "rio_ed__Program_Application__c" VALUES(1,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:45:14.000+0000','Approved','Full-time','21','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(2,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2020','2021-12-23T07:16:53.000+0000','Approved','Full-time','22','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(3,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:38:16.000+0000','Approved','Full-time','24','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(4,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:34:24.000+0000','Approved','Full-time','25','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(5,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:39:12.000+0000','Draft','Full-time','28','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(6,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-12T05:17:49.000+0000','Approved','Full-time','45','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(7,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-09T05:52:53.000+0000','Approved','Full-time','30','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(8,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:06:48.000+0000','Approved','Full-time','31','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(9,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:52:05.000+0000','Approved','Full-time','32','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(10,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:53:44.000+0000','Approved','Full-time','33','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(11,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:43:21.000+0000','Approved','Half-time','34','3','2','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(12,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:49:27.000+0000','Approved','Full-time','35','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(13,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:57:54.000+0000','Approved','Full-time','36','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(14,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:59:07.000+0000','Approved','Full-time','37','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(15,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T07:47:51.000+0000','Approved','Full-time','38','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(16,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:03:30.000+0000','Approved','Full-time','39','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(17,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:04:25.000+0000','Approved','Full-time','40','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(18,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-15T08:08:59.000+0000','Approved','Full-time','41','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(19,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:08:16.000+0000','Approved','Full-time','42','','','21');
INSERT INTO "rio_ed__Program_Application__c" VALUES(20,'Installer Sample Data','Course','Self Paid','Self Paid','Yes','False','January','2022','2022-01-16T00:03:57.000+0000','Approved','Full-time','43','','','21');
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
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(1,'Installer Sample Data','ICT112 Pre-Requisite','A','Pre-Requisite','10','14');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(2,'Installer Sample Data','ICT112 pre-requisite','A','Pre-Requisite','10','13');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(3,'Installer Sample Data','BUS101 pre-requisite','A','Pre-Requisite','17','26');
INSERT INTO "rio_ed__Program_Course_Requirement__c" VALUES(4,'Installer Sample Data','BUS101 pre-requisite','A','Pre-Requisite','17','25');
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
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(1,'Installer Sample Data','Manual','Full Time','4.0','Full-time','Default','1');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(2,'Installer Sample Data','Manual','Full Time','4.0','Full-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(3,'Installer Sample Data','Manual','Half Time','8.0','Half-time','Default','2');
INSERT INTO "rio_ed__Program_Pathway__c" VALUES(4,'Installer Sample Data','Manual','Full Time','4.0','Full-time','Default','3');
CREATE TABLE "rio_ed__Qualified_Faculty__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"rio_ed__Roles__c" VARCHAR(255), 
	"rio_ed__Course__c" VARCHAR(255), 
	"rio_ed__Faculty__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(1,'Installer Sample Data','Lecturer','1','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(2,'Installer Sample Data','Lecturer','10','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(3,'Installer Sample Data','Lecturer','10','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(4,'Installer Sample Data','Lecturer','11','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(5,'Installer Sample Data','Lecturer','11','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(6,'Installer Sample Data','Lecturer','12','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(7,'Installer Sample Data','Lecturer','13','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(8,'Installer Sample Data','Lecturer','14','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(9,'Installer Sample Data','Lecturer','14','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(10,'Installer Sample Data','Lecturer','15','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(11,'Installer Sample Data','Lecturer','16','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(12,'Installer Sample Data','Lecturer','17','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(13,'Installer Sample Data','Lecturer','18','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(14,'Installer Sample Data','Lecturer','19','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(15,'Installer Sample Data','Lecturer','2','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(16,'Installer Sample Data','Lecturer','20','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(17,'Installer Sample Data','Lecturer','21','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(18,'Installer Sample Data','Lecturer','21','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(19,'Installer Sample Data','Lecturer','22','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(20,'Installer Sample Data','Lecturer','22','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(21,'Installer Sample Data','Lecturer','23','23');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(22,'Installer Sample Data','Lecturer','24','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(23,'Installer Sample Data','Lecturer','3','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(24,'Installer Sample Data','Lecturer','4','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(25,'Installer Sample Data','Lecturer','4','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(26,'Installer Sample Data','Lecturer','5','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(27,'Installer Sample Data','Lecturer','5','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(28,'Installer Sample Data','Lecturer','6','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(29,'Installer Sample Data','Lecturer','7','27');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(30,'Installer Sample Data','Lecturer','8','26');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(31,'Installer Sample Data','Lecturer','8','44');
INSERT INTO "rio_ed__Qualified_Faculty__c" VALUES(32,'Installer Sample Data','Lecturer','9','27');
CREATE TABLE "rio_ed__Resource_Type__c" (
	id INTEGER NOT NULL, 
	"rio_ed__RIO_P1__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "rio_ed__Resource_Type__c" VALUES(1,'','Location');
INSERT INTO "rio_ed__Resource_Type__c" VALUES(2,'Installer Sample Data','Location');
INSERT INTO "rio_ed__Resource_Type__c" VALUES(3,'Installer Sample Data','Location');
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
INSERT INTO "rio_ed__Resource__c" VALUES(1,'Installer Sample Data','Beta 101','True','False','1','3');
INSERT INTO "rio_ed__Resource__c" VALUES(2,'Installer Sample Data','Alpha 104','True','False','10','3');
INSERT INTO "rio_ed__Resource__c" VALUES(3,'Installer Sample Data','Alpha 101','True','False','11','3');
INSERT INTO "rio_ed__Resource__c" VALUES(4,'Installer Sample Data','Alpha 102','True','False','12','3');
INSERT INTO "rio_ed__Resource__c" VALUES(5,'Installer Sample Data','Beta 102','True','False','2','3');
INSERT INTO "rio_ed__Resource__c" VALUES(6,'Installer Sample Data','Beta 103','True','False','3','3');
INSERT INTO "rio_ed__Resource__c" VALUES(7,'Installer Sample Data','Beta 104','True','False','4','3');
INSERT INTO "rio_ed__Resource__c" VALUES(8,'Installer Sample Data','Alpha Building','True','False','5','3');
INSERT INTO "rio_ed__Resource__c" VALUES(9,'Installer Sample Data','Beta Building','True','False','6','3');
INSERT INTO "rio_ed__Resource__c" VALUES(10,'Installer Sample Data','Alpha 103','True','False','7','3');
INSERT INTO "rio_ed__Resource__c" VALUES(11,'Installer Sample Data','Beta 100','True','False','8','3');
INSERT INTO "rio_ed__Resource__c" VALUES(12,'Installer Sample Data','Alpha 100','True','False','9','3');
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
INSERT INTO "rio_ed__Role__c" VALUES(1,'Installer Sample Data','BUS105 Lecture #1','False','0.0','True','a1c5j000000UtGlAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(2,'Installer Sample Data','BUS101 Lecture #1','False','0.0','True','a1c5j000000UtGWAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(3,'Installer Sample Data','BUS104 Lecture #1','False','0.0','True','a1c5j000000UtGgAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(4,'Installer Sample Data','HRM311 Lecture #1','False','0.0','True','a1c5j000000UtHFAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(5,'Installer Sample Data','BUS320 Lecture #1','False','0.0','True','a1c5j000000UtHAAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(6,'Installer Sample Data','BUS106 Lecture #1','False','0.0','True','a1c5j000000UtGqAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(7,'Installer Sample Data','BUS203 Lecture #1','False','0.0','True','a1c5j000000UtGvAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(8,'Installer Sample Data','ICT310 Lecture #1','False','0.0','True','a1c5j000000UtHeAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(9,'Installer Sample Data','BUS108 Lecture #1','False','0.0','True','a1c5j000000UtGhAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(10,'Installer Sample Data','COR109 Lecture #1','False','0.0','True','a1c5j000000UtGXAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(11,'Installer Sample Data','BUS301 Lecture #1','False','0.0','True','a1c5j000000UtH5AAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(12,'Installer Sample Data','BUS102 Lecture #1','False','0.0','True','a1c5j000000UtGbAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(13,'Installer Sample Data','BUS211 Lecture #1','False','0.0','True','a1c5j000000UtH0AAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(14,'Installer Sample Data','ICT211 Lecture #1','False','0.0','True','a1c5j000000UtHUAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(15,'Installer Sample Data','ICT120 Lecture #1','False','0.0','True','a1c5j000000UtHBAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(16,'Installer Sample Data','ICT352 Lecture #1','False','0.0','True','a1c5j000000UtH6AAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(17,'Installer Sample Data','ICT221 Lecture #1','False','0.0','True','a1c5j000000UtHZAA0','','3');
INSERT INTO "rio_ed__Role__c" VALUES(18,'Installer Sample Data','ICT320 Lecture #1','False','0.0','True','a1c5j000000UtHjAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(19,'Installer Sample Data','MGT210 Lecture #1','False','0.0','True','a1c5j000000UuKpAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(20,'Installer Sample Data','HRM321 Lecture #1','False','0.0','True','a1c5j000000UuKkAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(21,'Installer Sample Data','MGT310 Lecture #1','False','0.0','True','a1c5j000000UuKuAAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(22,'Installer Sample Data','BUS101 Lecture #2 (Session Group)','False','0.0','True','a1c5j000000UunKAAS','','3');
INSERT INTO "rio_ed__Role__c" VALUES(23,'Installer Sample Data','ICT115 Tutorial Series #1','False','0.0','False','a1c5j000000UfN7AAK','','3');
INSERT INTO "rio_ed__Role__c" VALUES(24,'Installer Sample Data','ICT115 Lecture #1','False','0.0','True','a1c5j000000UtHKAA0','1','3');
INSERT INTO "rio_ed__Role__c" VALUES(25,'Installer Sample Data','ICT112 Lecture #1','False','0.0','True','a1c5j000000UtGSAA0','2','3');
INSERT INTO "rio_ed__Role__c" VALUES(26,'Installer Sample Data','Appointments','False','0.0','False','','3','3');
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
INSERT INTO "rio_ed__Session_Connection__c" VALUES(1,'Installer Sample Data','CC-0007 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','219','45','9');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(2,'Installer Sample Data','CC-0008 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','216','46','8');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(3,'Installer Sample Data','CC-0014 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','228','50','20');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(4,'Installer Sample Data','CC-0091 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','235','30','13');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(5,'Installer Sample Data','CC-0088 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','232','8','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(6,'Installer Sample Data','CC-0087 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-12','Current','239','9','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(7,'Installer Sample Data','CC-0089 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','236','37','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(8,'Installer Sample Data','CC-0092 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','238','40','21');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(9,'Installer Sample Data','CC-0094 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','237','41','18');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(10,'Installer Sample Data','CC-0090 - Edward Educator','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','234','42','11');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(11,'Installer Sample Data','CC-0093 - Edward Educator','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','233','47','3');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(12,'Installer Sample Data','CC-0104 - Test Student 2','False','','','False','False','','Current','39','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(13,'Installer Sample Data','CC-0102 - Test Student 2','False','','','False','False','','Current','42','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(14,'Installer Sample Data','CC-0095 - Test Student 2','False','','','False','False','','Current','41','','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(15,'Installer Sample Data','CC-0106 - Test Student 2','False','','','False','False','','Current','40','','11');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(16,'Installer Sample Data','CC-0084 - Test Student 1','False','','','False','False','','Current','50','','50');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(17,'Installer Sample Data','CC-0082 - Test Student 1','False','','','False','False','','Current','54','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(18,'Installer Sample Data','CC-0075 - Test Student 1','False','','','False','False','','Current','53','','17');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(19,'Installer Sample Data','CC-0086 - Test Student 1','False','','','False','False','','Current','52','','11');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(20,'Installer Sample Data','CC-0224 - Test Student 11','False','','','False','False','','Current','98','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(21,'Installer Sample Data','CC-0236 - Test Student 12','False','','','False','False','','Current','110','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(22,'Installer Sample Data','CC-0248 - Test Student 13','False','','','False','False','','Current','78','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(23,'Installer Sample Data','CC-0200 - Test Student 9','False','','','False','False','','Current','122','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(24,'Installer Sample Data','CC-0023 - Fiona Forton','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','256','31','1');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(25,'Installer Sample Data','CC-0272 - Test Student 15','False','','','False','False','','Current','134','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(26,'Installer Sample Data','CC-0034 - Fiona Forton','True','2023-11-18','Confirmed','True','False','2023-07-02','Current','259','33','4');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(27,'Installer Sample Data','CC-0308 - Test Student 20','False','','','False','False','','Current','210','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(28,'Installer Sample Data','CC-0212 - Test Student 10','False','','','False','False','','Current','154','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(29,'Installer Sample Data','CC-0260 - Test Student 14','False','','','False','False','','Current','90','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(30,'Installer Sample Data','CC-0284 - Test Student 16','False','','','False','False','','Current','166','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(31,'Installer Sample Data','CC-0296 - Test Student 17','False','','','False','False','','Current','186','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(32,'Installer Sample Data','CC-0024 - Fiona Forton','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','262','48','14');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(33,'Installer Sample Data','CC-0176 - Test Student 7','False','','','False','False','','Current','142','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(34,'Installer Sample Data','CC-0006 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','220','28','12');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(35,'Installer Sample Data','CC-0188 - Test Student 8','False','','','False','False','','Current','275','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(36,'Installer Sample Data','CC-0016 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','224','29','16');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(37,'Installer Sample Data','CC-0320 - Test Student 18','False','','','False','False','','Current','66','','23');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(38,'Installer Sample Data','CC-0022 - Fran Fisher','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','225','32','19');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(39,'Installer Sample Data','CC-0000 - Fran Fisher','True','2022-06-18','Confirmed','True','False','2022-01-20','Current','212','34','5');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(40,'Installer Sample Data','CC-0000 - Fran Fisher','False','2022-05-15','Confirmed','True','False','2022-01-23','Current','212','35','6');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(41,'Installer Sample Data','CC-0013 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','230','36','22');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(42,'Installer Sample Data','CC-0021 - Fran Fisher','True','2023-06-18','Confirmed','True','False','2023-01-20','Current','221','38','15');
INSERT INTO "rio_ed__Session_Connection__c" VALUES(43,'Installer Sample Data','CC-0015 - Fran Fisher','True','2022-11-18','Confirmed','True','False','2022-07-02','Current','214','39','7');
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
INSERT INTO "rio_ed__Session_Time__c" VALUES(1,'Installer Sample Data','','','Wednesday','','15:00','','False','Wednesday','Weekly','','14:00','Active','Create/Update after today','9','29');
INSERT INTO "rio_ed__Session_Time__c" VALUES(2,'Installer Sample Data','','','Wednesday','','13:00','','False','Wednesday','Weekly','','12:00','Active','Create/Update after today','9','30');
INSERT INTO "rio_ed__Session_Time__c" VALUES(3,'Installer Sample Data','','','Tuesday','','13:00','','False','Tuesday','Weekly','','12:00','Active','Create/Update after today','9','31');
INSERT INTO "rio_ed__Session_Time__c" VALUES(4,'Installer Sample Data','','','Tuesday','','14:00','','False','Tuesday','Weekly','','13:00','Active','Create/Update after today','9','32');
INSERT INTO "rio_ed__Session_Time__c" VALUES(5,'Installer Sample Data','','','Thursday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(6,'Installer Sample Data','','','Friday','','17:00','','False','4:00 - 5:00','Weekly','','16:00','Active','Create/Update after today','','33');
INSERT INTO "rio_ed__Session_Time__c" VALUES(7,'Installer Sample Data','','','Tuesday','','15:00','','False','Tuesday','Weekly','','14:00','Active','Create/Update after today','10','25');
INSERT INTO "rio_ed__Session_Time__c" VALUES(8,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:53 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','16:00','Weekly','False','Tuesday','Weekly','2022-01-20','15:00','Active','Create/Update after today','10','50');
INSERT INTO "rio_ed__Session_Time__c" VALUES(9,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:49 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','15:00','Weekly','False','Tuesday','Weekly','2021-12-20','14:00','Active','Create/Update after today','10','23');
INSERT INTO "rio_ed__Session_Time__c" VALUES(10,'Installer Sample Data','','','Tuesday','','16:00','','False','Tuesday','Weekly','','15:00','Active','Create/Update after today','10','27');
INSERT INTO "rio_ed__Session_Time__c" VALUES(11,'Installer Sample Data','','','Monday','','11:00','','False','Monday','Weekly','','10:00','Active','Create/Update after today','9','24');
INSERT INTO "rio_ed__Session_Time__c" VALUES(12,'Installer Sample Data','','','Monday','','10:00','','False','Monday','Weekly','','09:00','Active','Create/Update after today','9','34');
INSERT INTO "rio_ed__Session_Time__c" VALUES(13,'Installer Sample Data','','','Wednesday','','17:00','','False','Wednesday','Weekly','','16:00','Active','Create/Update after today','9','35');
INSERT INTO "rio_ed__Session_Time__c" VALUES(14,'Installer Sample Data','','','Monday','','13:00','','False','Monday','Weekly','','12:00','Active','Create/Update after today','9','36');
INSERT INTO "rio_ed__Session_Time__c" VALUES(15,'Installer Sample Data','','','Monday','','12:00','','False','Monday','Weekly','','11:00','Active','Create/Update after today','9','37');
INSERT INTO "rio_ed__Session_Time__c" VALUES(16,'Installer Sample Data','','','Wednesday','','16:00','','False','Wednesday','Weekly','','15:00','Active','Create/Update after today','9','38');
INSERT INTO "rio_ed__Session_Time__c" VALUES(17,'Installer Sample Data','','','Wednesday','','10:00','','False','Wednesday','Weekly','','09:00','Active','Create/Update after today','9','39');
INSERT INTO "rio_ed__Session_Time__c" VALUES(18,'Installer Sample Data','','','Wednesday','','11:00','','False','Wednesday','Weekly','','10:00','Active','Create/Update after today','9','40');
INSERT INTO "rio_ed__Session_Time__c" VALUES(19,'Installer Sample Data','','','Tuesday','','12:00','','False','Tuesday','Weekly','','11:00','Active','Create/Update after today','9','41');
INSERT INTO "rio_ed__Session_Time__c" VALUES(20,'Installer Sample Data','','','Tuesday','','10:00','','False','Tuesday','Weekly','','09:00','Active','Create/Update after today','9','42');
INSERT INTO "rio_ed__Session_Time__c" VALUES(21,'Installer Sample Data','','','Monday','','15:00','','False','Monday','Weekly','','14:00','Active','Create/Update after today','9','43');
INSERT INTO "rio_ed__Session_Time__c" VALUES(22,'Installer Sample Data','','','Tuesday','','17:00','','False','Tuesday','Weekly','','16:00','Active','Create/Update after today','9','44');
INSERT INTO "rio_ed__Session_Time__c" VALUES(23,'Installer Sample Data','','','Wednesday','','14:00','','False','Wednesday','Weekly','','13:00','Active','Create/Update after today','9','45');
INSERT INTO "rio_ed__Session_Time__c" VALUES(24,'Installer Sample Data','','','Monday','','17:00','','False','Monday','Weekly','','16:00','Active','Create/Update after today','9','46');
INSERT INTO "rio_ed__Session_Time__c" VALUES(25,'Installer Sample Data','','','Monday','','14:00','','False','Monday','Weekly','','13:00','Active','Create/Update after today','9','47');
INSERT INTO "rio_ed__Session_Time__c" VALUES(26,'Installer Sample Data','','','Wednesday','','12:00','','False','Wednesday','Weekly','','11:00','Active','Create/Update after today','9','48');
INSERT INTO "rio_ed__Session_Time__c" VALUES(27,'Installer Sample Data','','','Monday','','16:00','','False','Monday','Weekly','','15:00','Active','Create/Update after today','9','49');
INSERT INTO "rio_ed__Session_Time__c" VALUES(28,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','11:00','Weekly','False','Monday','Weekly','2022-01-20','10:00','Active','Create/Update after today','9','12');
INSERT INTO "rio_ed__Session_Time__c" VALUES(29,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','15:00','Weekly','False','Monday','Weekly','2022-07-02','14:00','Active','Create/Update after today','9','16');
INSERT INTO "rio_ed__Session_Time__c" VALUES(30,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','11:00','Weekly','False','Wednesday','Weekly','2022-07-02','10:00','Active','Create/Update after today','9','13');
INSERT INTO "rio_ed__Session_Time__c" VALUES(31,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','11:00','Weekly','False','Tuesday','Weekly','2023-01-20','10:00','Active','Create/Update after today','9','1');
INSERT INTO "rio_ed__Session_Time__c" VALUES(32,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2023-06-18','17:00','Weekly','False','Monday','Weekly','2023-01-20','16:00','Active','Create/Update after today','9','19');
INSERT INTO "rio_ed__Session_Time__c" VALUES(33,'Installer Sample Data','Recreate','Session booking generation log 24/1/2022, 3:58 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-11-18','13:00','Weekly','False','Tuesday','Weekly','2023-07-02','12:00','Active','Create/Update after today','9','4');
INSERT INTO "rio_ed__Session_Time__c" VALUES(34,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:40 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','10:00','Weekly','False','Monday','Weekly','2022-01-20','09:00','Active','Create/Update after today','9','5');
INSERT INTO "rio_ed__Session_Time__c" VALUES(35,'Installer Sample Data','Upsert','Session booking generation log 25/1/2022, 4:29 pm:
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
[Custom Booking Updated]: a0a5j000002WUmuAAG from Friday 27 May 2022, 09:00-10:00 to Friday 27 May 2022, 09:00-10:00 (Australia/Sydney), Resource: Alpha 100','Friday','2022-06-18','10:00','Weekly','False','Friday','Weekly','2022-01-20','09:00','Active','Create/Update all','9','6');
INSERT INTO "rio_ed__Session_Time__c" VALUES(36,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:46 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','16:00','Weekly','False','Monday','Weekly','2022-07-02','15:00','Active','Create/Update after today','9','22');
INSERT INTO "rio_ed__Session_Time__c" VALUES(37,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:03 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2022-06-18','17:00','Weekly','False','Tuesday','Weekly','2022-01-20','16:00','Active','Create/Update after today','9','17');
INSERT INTO "rio_ed__Session_Time__c" VALUES(38,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:47 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','10:00','Weekly','False','Tuesday','Weekly','2023-01-20','09:00','Active','Create/Update after today','9','15');
INSERT INTO "rio_ed__Session_Time__c" VALUES(39,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:43 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','17:00','Weekly','False','Wednesday','Weekly','2022-07-02','16:00','Active','Create/Update after today','9','7');
INSERT INTO "rio_ed__Session_Time__c" VALUES(40,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:06 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','12:00','Weekly','False','Wednesday','Weekly','2022-07-02','11:00','Active','Create/Update after today','9','21');
INSERT INTO "rio_ed__Session_Time__c" VALUES(41,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:09 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','14:00','Weekly','False','Wednesday','Weekly','2022-07-02','13:00','Active','Create/Update after today','9','18');
INSERT INTO "rio_ed__Session_Time__c" VALUES(42,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:05 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-06-18','10:00','Weekly','False','Wednesday','Weekly','2022-01-20','09:00','Active','Create/Update after today','9','11');
INSERT INTO "rio_ed__Session_Time__c" VALUES(43,'Installer Sample Data','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-18','16:00','Weekly','False','Wednesday','Weekly','2023-07-02','15:00','Active','Create/Update after today','9','10');
INSERT INTO "rio_ed__Session_Time__c" VALUES(44,'Installer Sample Data','Recreate','Session booking generation log 24/1/2022, 3:59 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2023-11-18','15:00','Weekly','False','Wednesday','Weekly','2023-07-02','14:00','Active','Create/Update after today','9','2');
INSERT INTO "rio_ed__Session_Time__c" VALUES(45,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:41 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','12:00','Weekly','False','Monday','Weekly','2022-01-20','11:00','Active','Create/Update after today','9','9');
INSERT INTO "rio_ed__Session_Time__c" VALUES(46,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:42 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-06-18','13:00','Weekly','False','Monday','Weekly','2022-01-20','12:00','Active','Create/Update after today','9','8');
INSERT INTO "rio_ed__Session_Time__c" VALUES(47,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 6:07 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Wednesday','2022-11-18','13:00','Weekly','False','Wednesday','Weekly','2022-07-02','12:00','Active','Create/Update after today','9','3');
INSERT INTO "rio_ed__Session_Time__c" VALUES(48,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:48 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Tuesday','2023-06-18','12:00','Weekly','False','Tuesday','Weekly','2023-01-20','11:00','Active','Create/Update after today','9','14');
INSERT INTO "rio_ed__Session_Time__c" VALUES(49,'Installer Sample Data','','','Tuesday','','11:00','','False','Tuesday','Weekly','','10:00','Active','Create/Update after today','9','28');
INSERT INTO "rio_ed__Session_Time__c" VALUES(50,'Installer Sample Data','Recreate','Session booking generation log 21/1/2022, 5:45 pm:
Historical recurrence - null
Updated recurrence - Weekly
Booking action - Recreate','Monday','2022-11-18','14:00','Weekly','False','Monday','Weekly','2022-07-02','13:00','Active','Create/Update after today','9','20');
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
INSERT INTO "rio_ed__Session__c" VALUES(1,'Installer Sample Data','COR109 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:48:11.000+0000','21.0','True','Classroom','Lecture','Booked','','13','','10');
INSERT INTO "rio_ed__Session__c" VALUES(2,'Installer Sample Data','MGT210 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','No Faculty Assigned','2022-01-12T04:59:16.000+0000','20.0','True','Classroom','Lecture','Booked','','15','','19');
INSERT INTO "rio_ed__Session__c" VALUES(3,'Installer Sample Data','ICT320 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:07:37.000+0000','20.0','True','Classroom','Lecture','Booked','','17','','18');
INSERT INTO "rio_ed__Session__c" VALUES(4,'Installer Sample Data','HRM321 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-12T04:58:35.000+0000','20.0','True','Classroom','Lecture','Booked','','18','','20');
INSERT INTO "rio_ed__Session__c" VALUES(5,'Installer Sample Data','BUS101 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:40:46.000+0000','21.0','True','Classroom','Lecture','Booked','','23','','2');
INSERT INTO "rio_ed__Session__c" VALUES(6,'Installer Sample Data','BUS101 Lecture #2 (Session Group)','0125j000000IJkIAAW','Each Session Time','A','0.0','10.0','All Confirmed','2022-01-13T05:29:44.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','23','','22');
INSERT INTO "rio_ed__Session__c" VALUES(7,'Installer Sample Data','BUS106 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:44:00.000+0000','20.0','True','Classroom','Lecture','Booked','','25','','6');
INSERT INTO "rio_ed__Session__c" VALUES(8,'Installer Sample Data','BUS105 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:42:12.000+0000','21.0','True','Classroom','Lecture','Booked','','29','','1');
INSERT INTO "rio_ed__Session__c" VALUES(9,'Installer Sample Data','BUS104 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:41:48.000+0000','21.0','True','Classroom','Lecture','Booked','','33','','3');
INSERT INTO "rio_ed__Session__c" VALUES(10,'Installer Sample Data','MGT310 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','No Faculty Assigned','2022-01-12T04:59:39.000+0000','20.0','True','Classroom','Lecture','Booked','','34','','21');
INSERT INTO "rio_ed__Session__c" VALUES(11,'Installer Sample Data','ICT211 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T07:05:28.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','38','','14');
INSERT INTO "rio_ed__Session__c" VALUES(12,'Installer Sample Data','BUS102 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:41:16.000+0000','21.0','True','Classroom','Lecture','Booked','','4','','12');
INSERT INTO "rio_ed__Session__c" VALUES(13,'Installer Sample Data','ICT221 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:05:59.000+0000','20.0','True','Classroom','Lecture','Booked','','40','','17');
INSERT INTO "rio_ed__Session__c" VALUES(14,'Installer Sample Data','HRM311 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:48:54.000+0000','21.0','True','Classroom','Lecture','Booked','','41','','4');
INSERT INTO "rio_ed__Session__c" VALUES(15,'Installer Sample Data','BUS320 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:47:35.000+0000','21.0','True','Classroom','Lecture','Booked','','43','','5');
INSERT INTO "rio_ed__Session__c" VALUES(16,'Installer Sample Data','BUS203 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:46:06.000+0000','20.0','True','Classroom','Lecture','Booked','','46','','7');
INSERT INTO "rio_ed__Session__c" VALUES(17,'Installer Sample Data','ICT120 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T07:03:19.000+0000','22.0','True','Classroom','Lecture','Booked','0.0','50','','15');
INSERT INTO "rio_ed__Session__c" VALUES(18,'Installer Sample Data','ICT352 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:09:21.000+0000','20.0','True','Classroom','Lecture','Booked','','52','','16');
INSERT INTO "rio_ed__Session__c" VALUES(19,'Installer Sample Data','BUS301 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:47:04.000+0000','21.0','True','Classroom','Lecture','Booked','','53','','11');
INSERT INTO "rio_ed__Session__c" VALUES(20,'Installer Sample Data','BUS108 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:45:44.000+0000','20.0','True','Classroom','Lecture','Booked','','56','','9');
INSERT INTO "rio_ed__Session__c" VALUES(21,'Installer Sample Data','ICT310 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T07:06:55.000+0000','20.0','True','Classroom','Lecture','Booked','','58','','8');
INSERT INTO "rio_ed__Session__c" VALUES(22,'Installer Sample Data','BUS211 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','','15.0','All Confirmed','2022-01-09T06:46:39.000+0000','20.0','True','Classroom','Lecture','Booked','','60','','13');
INSERT INTO "rio_ed__Session__c" VALUES(23,'Installer Sample Data','ICT112 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','15.0','15.0','All Confirmed','2022-01-09T06:49:56.000+0000','23.0','True','Computer Lab','Lecture','Booked','0.0','8','','25');
INSERT INTO "rio_ed__Session__c" VALUES(24,'Installer Sample Data','BUS102 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','1','');
INSERT INTO "rio_ed__Session__c" VALUES(25,'Installer Sample Data','ICT112 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(26,'Installer Sample Data','ICT112 Practical Series #2','0125j000000IJkJAAW','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Computer Lab','','','','','10','');
INSERT INTO "rio_ed__Session__c" VALUES(27,'Installer Sample Data','ICT115 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Computer Lab','','Draft','','','11','23');
INSERT INTO "rio_ed__Session__c" VALUES(28,'Installer Sample Data','COR109 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','12','');
INSERT INTO "rio_ed__Session__c" VALUES(29,'Installer Sample Data','MGT210 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','13','');
INSERT INTO "rio_ed__Session__c" VALUES(30,'Installer Sample Data','ICT320 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','14','');
INSERT INTO "rio_ed__Session__c" VALUES(31,'Installer Sample Data','HRM321 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','15','');
INSERT INTO "rio_ed__Session__c" VALUES(32,'Installer Sample Data','IBS220 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','16','');
INSERT INTO "rio_ed__Session__c" VALUES(33,'Installer Sample Data','BUS101 Tutorial Series #2','0125j000000IJkJAAW','Each Session Time','B','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(34,'Installer Sample Data','BUS101 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','','','','17','');
INSERT INTO "rio_ed__Session__c" VALUES(35,'Installer Sample Data','BUS106 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','18','');
INSERT INTO "rio_ed__Session__c" VALUES(36,'Installer Sample Data','BUS105 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','19','');
INSERT INTO "rio_ed__Session__c" VALUES(37,'Installer Sample Data','BUS104 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','2','');
INSERT INTO "rio_ed__Session__c" VALUES(38,'Installer Sample Data','MGT310 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','20','');
INSERT INTO "rio_ed__Session__c" VALUES(39,'Installer Sample Data','ICT211 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','21','');
INSERT INTO "rio_ed__Session__c" VALUES(40,'Installer Sample Data','ICT221 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','22','');
INSERT INTO "rio_ed__Session__c" VALUES(41,'Installer Sample Data','HRM311 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','23','');
INSERT INTO "rio_ed__Session__c" VALUES(42,'Installer Sample Data','BUS320 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','24','');
INSERT INTO "rio_ed__Session__c" VALUES(43,'Installer Sample Data','BUS203 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','3','');
INSERT INTO "rio_ed__Session__c" VALUES(44,'Installer Sample Data','ICT120 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','4','');
INSERT INTO "rio_ed__Session__c" VALUES(45,'Installer Sample Data','ICT352 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','5','');
INSERT INTO "rio_ed__Session__c" VALUES(46,'Installer Sample Data','BUS301 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','6','');
INSERT INTO "rio_ed__Session__c" VALUES(47,'Installer Sample Data','BUS108 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','7','');
INSERT INTO "rio_ed__Session__c" VALUES(48,'Installer Sample Data','ICT310 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','0.0','','No Faculty Assigned','','','False','Classroom','','Draft','','','8','');
INSERT INTO "rio_ed__Session__c" VALUES(49,'Installer Sample Data','BUS211 Lecture #1','0125j000000IJkJAAW','Each Session Time','A','','','No Faculty Assigned','','','False','Classroom','','Draft','','','9','');
INSERT INTO "rio_ed__Session__c" VALUES(50,'Installer Sample Data','ICT115 Lecture #1','0125j000000IJkIAAW','Each Session Time','A','2.0','15.0','All Confirmed','2022-01-09T06:53:46.000+0000','22.0','True','Computer Lab','Lecture','Booked','0.0','12','','24');
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
INSERT INTO "rio_ed__Student_Fee__c" VALUES(1,'Installer Sample Data','2022-01-15','F-000000015','Bachelor of Business Information System','Tuition','1');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(2,'Installer Sample Data','2022-01-15','F-000000024','Bachelor of Business Information System','Tuition','9');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(3,'Installer Sample Data','2022-01-15','F-000000020','Bachelor of Business Information System','Tuition','17');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(4,'Installer Sample Data','2022-01-16','F-000000026','Bachelor of Business Information System','Tuition','13');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(5,'Installer Sample Data','2022-01-16','F-000000027','Bachelor of Business Information System','Tuition','11');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(6,'Installer Sample Data','2022-01-16','F-000000028','Bachelor of Business Information System','Tuition','12');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(7,'Installer Sample Data','2021-12-23','F-000000010','Bachelor of Business Information System','Tuition','2');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(8,'Installer Sample Data','2022-01-09','F-000000011','Bachelor of Business Information System','Tuition','5');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(9,'Installer Sample Data','2022-01-12','F-000000012','Bachelor of Business Information System','Tuition','4');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(10,'Installer Sample Data','2022-01-12','F-000000013','Bachelor of Business Information System','Tuition','6');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(11,'Installer Sample Data','2022-01-13','F-000000014','Bachelor of Business Information System','Tuition','3');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(12,'Installer Sample Data','2022-01-15','F-000000016','Bachelor of Business Information System','Tuition','15');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(13,'Installer Sample Data','2022-01-15','F-000000018','Bachelor of Business Information System','Tuition','14');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(14,'Installer Sample Data','2022-01-15','F-000000023','Bachelor of Business Information System','Tuition','8');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(15,'Installer Sample Data','2022-01-15','F-000000017','Bachelor of Business Information System','Tuition','7');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(16,'Installer Sample Data','2022-01-15','F-000000019','Bachelor of Business Information System','Tuition','16');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(17,'Installer Sample Data','2022-01-15','F-000000022','Bachelor of Business Information System','Tuition','19');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(18,'Installer Sample Data','2022-01-15','F-000000025','Bachelor of Business Information System','Tuition','10');
INSERT INTO "rio_ed__Student_Fee__c" VALUES(19,'Installer Sample Data','2022-01-15','F-000000021','Bachelor of Business Information System','Tuition','18');
COMMIT;
