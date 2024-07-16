--Project Part 2

-- Mahwish Rana and Yas Noori 

--Creating tables

CREATE TABLE StudentVolunteer (
    StudentVolunteerID INT NOT NULL,
    FirstName          VARCHAR2(30) NOT NULL,
    LastName           VARCHAR2(55) NOT NULL,
    GradeLevel         CHAR(9) NOT NULL,
    PhoneNumber        CHAR(12),
    CONSTRAINT pk_StudentVolunteerID PRIMARY KEY ( StudentVolunteerID )
);
   
CREATE TABLE StudentNetworking (
            StudentNetworkingID INT                 NOT NULL,
            ProgramID           INT                 NOT NULL,
            MajorType           VARCHAR2(20)        NOT NULL,
            SchoolName          VARCHAR2(60)        NOT NULL,
            CONSTRAINT PK_StudentNetworkingID PRIMARY KEY(StudentNetworkingID),
            CONSTRAINT FK_StudentNetworking_ProgramID FOREIGN KEY (PROGRAMID) REFERENCES Program (ProgramID)          
);          
   

CREATE TABLE Program (  
                ProgramID       INT                 NOT NULL,
                ProgramType     VARCHAR2(40)        NOT NULL,
                Location        VARCHAR2 (35)       NOT NULL,
                CONSTRAINT PK_ProgramID PRIMARY KEY(ProgramID)
);
CREATE TABLE Donations (
    DonationsInvoiceID  INT             NOT NULL,
    ManagerID           INT             NOT NULL,
    DonorName           VARCHAR2(30)    NOT NULL,
    DonationAmount      INT             NOT NULL,
    CONSTRAINT PK_donationsinvoiceID   PRIMARY KEY(donationsinvoiceID),
    CONSTRAINT FK_donations_managerid  FOREIGN KEY(ManagerID) REFERENCES Manager(ManagerID)
);
   
CREATE TABLE Manager (
            ManagerID INT               NOT NULL,
            FirstName VARCHAR2(30)      NOT NULL,
            LastName VARCHAR2(55)       NOT NULL,
            PhoneNumber CHAR(9)         NOT NULL,
            CONSTRAINT PK_ManagerID PRIMARY KEY(ManagerID)
);

ALTER TABLE Manager
        DROP COLUMN PhoneNumber;

ALTER TABLE Manager
    ADD PhoneNumber CHAR(30);
        
CREATE TABLE    ProgramDatabase (
    ProgramDatabaseID   INT     NOT NULL,
    ManagerID           INT     NOT NULL,
    ProgramID           INT     NOT NULL,
CONSTRAINT pk_programdatabaseid PRIMARY KEY(programdatabaseid),
CONSTRAINT fk_programdatabase_managerid FOREIGN KEY(managerid) REFERENCES Manager(Managerid),
CONSTRAINT fk_programdatabase_programid FOREIGN KEY(programid) REFERENCES program(programid)
);

--Inserting data

INSERT INTO StudentVolunteer
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES 
    (1328494748,'Baird','Etherton','Junior','240-260-9243');

INSERT INTO StudentVolunteer
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (7775288,'Oralee','Redding','Senior','424-964-4347');


INSERT INTO StudentVolunteer
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (4789153339 ,'Adelice','De Biaggi','Sophomore','260-375-6180');
    
    
INSERT INTO StudentVolunteer
  (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
 VALUES
    (4379277585,'Mauricio','Quipp','Freshman','421-201-7881');
    

INSERT INTO StudentVolunteer   
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (9056850814,'Emmet','Goldsbury','Sophomore','768-989-0074');

INSERT INTO StudentVolunteer   
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (1880207168,'Hamish','Hessing','Junior','483-617-0938');
    
INSERT INTO StudentVolunteer   
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (383637864,'Nicolea','Berrington','Junior','318-385-0566');

INSERT INTO StudentVolunteer   
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (5729717229,'Marietta','Thorrington','Senior','326-544-9873');

INSERT INTO StudentVolunteer   
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (3479870813,'Sybilla','Ablewhite','Senior','163-659-3500');

INSERT INTO StudentVolunteer   
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber) 
VALUES
    (2020238667,'Shurwood','Newdick','Senior','281-991-6795');

INSERT INTO StudentNetworking
        (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (617003025,53-870-2193,'Chemistry','University of Chicago');
    
INSERT INTO StudentNetworking
        (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (1500617865,58-565-7077,'Biology','California Institute of Technology');
    
INSERT INTO StudentNetworking
        (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
  (1394368232,97-769-1120,'Chemistry','University of Chicago');
  
INSERT INTO StudentNetworking
     (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
 (3311132351,73-219-0167,'Physics','Massachusetts Institute of Technology');
 
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (8327706624,08-974-1025,'Physics','University of Chicago');
    
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (6268658868,49-575-6329,'Chemistry','Princeton University');
    
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (3255849330,3255849330,'Chemistry','Stanford University');
 
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES   
    (5489517921,34-240-9374,'Mathematics','Stanford University');

INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES   
    (2693924537,98-147-9504,'Computer Science','University of Chicago');

INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES   
    (5824161151,51-422-1908,'Chemistry','University of Oxford');


INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (538702193,'Tutor','Russia');
    
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (585657077,'Translator','Indonesia');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (977691120,'Translator','Russia');    
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (732190167,'Fundraiser','Nepal');
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (089741025,'Tutor','Indonesia');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (495756329,'Administrative Assistant','Netherlands');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (267927325,'Community Outreach Coordinator','Russia');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (342409374,'Photographer','China');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (981479504,'Tutor','Argentina');
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (514221908,'Mentor','Czech Republic');

--Trouble shooting
/*
DROP TABLE donations;
DROP TABLE manager;
DROP TABLE program;
DROP TABLE programdatabase;
DROP TABLE studentnetworking;
DROP TABLE studentvolunteer;
*/
CREATE TABLE StudentVolunteer (
    Studentvolunteerid INT          NOT NULL,
    Firstname          VARCHAR2(30) NOT NULL,
    Lastname           VARCHAR2(55)NOT NULL,
    Gradelevel         CHAR(9)      NOT NULL,
    phonenumber        CHAR(30),
    CONSTRAINT pk_studentvolunteerid PRIMARY KEY ( studentvolunteerid )
);
CREATE TABLE StudentNetworking (
    StudentNetworkingID INT                 NOT NULL,
    ProgramID           INT                 NOT NULL,
    MajorType           VARCHAR2(20)        NOT NULL,
    SchoolName          VARCHAR2(60)        NOT NULL,
    CONSTRAINT PK_StudentNetworkingID         PRIMARY KEY(StudentNetworkingID),
    CONSTRAINT FK_StudentNetworking_ProgramID FOREIGN KEY (PROGRAMID) REFERENCES Program (ProgramID)          
);          
   

CREATE TABLE Program (  
    ProgramID       INT                 NOT NULL,
    ProgramType     VARCHAR2(40)        NOT NULL,
    Location        VARCHAR2 (35)       NOT NULL,
    CONSTRAINT PK_ProgramID             PRIMARY KEY(ProgramID)
);
CREATE TABLE Donations (
    DonationsInvoiceID  INT             NOT NULL,
    ManagerID           INT             NOT NULL,
    DonorName           VARCHAR2(30)    NOT NULL,
    DonationAmount      INT             NOT NULL,
    CONSTRAINT PK_donationsinvoiceid   PRIMARY KEY(donationsinvoiceid),
    CONSTRAINT FK_donations_managerid  FOREIGN KEY(ManagerID) REFERENCES Manager(ManagerID)
);
   
CREATE TABLE Manager (
    ManagerID   INT               NOT NULL,
    FirstName   VARCHAR2(30)      NOT NULL,
    LastName    VARCHAR2(55)      NOT NULL,
    PhoneNumber CHAR(9)           NOT NULL,
    CONSTRAINT PK_ManagerID       PRIMARY KEY(ManagerID)
);
ALTER TABLE Manager
    ADD PhoneNumber CHAR(15) NOT NULL;
   
CREATE TABLE    ProgramDatabase (
    ProgramDatabaseID   INT     NOT NULL,
    ManagerID           INT     NOT NULL,
    ProgramID           INT     NOT NULL,
CONSTRAINT pk_programdatabaseid PRIMARY KEY(programdatabaseid),
CONSTRAINT fk_programdatabase_managerid FOREIGN KEY(managerid) REFERENCES Manager(Managerid),
CONSTRAINT fk_programdatabase_programid FOREIGN KEY(programid) REFERENCES program(programid)
);

INSERT INTO StudentVolunteer
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (1328494748,'Baird','Etherton','Junior','240-260-9243');

INSERT INTO StudentVolunteer
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (7775288,'Oralee','Redding','Senior','424-964-4347');

INSERT INTO StudentVolunteer
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (4789153339 ,'Adelice','De Biaggi','Sophomore','260-375-6180');
     
INSERT INTO StudentVolunteer
  (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
 VALUES
    (4379277585,'Mauricio','Quipp','Freshman','421-201-7881');
   
INSERT INTO StudentVolunteer  
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (9056850814,'Emmet','Goldsbury','Sophomore','768-989-0074');

INSERT INTO StudentVolunteer  
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (1880207168,'Hamish','Hessing','Junior','483-617-0938');
   
INSERT INTO StudentVolunteer  
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (383637864,'Nicolea','Berrington','Junior','318-385-0566');

INSERT INTO StudentVolunteer  
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (5729717229,'Marietta','Thorrington','Senior','326-544-9873');

INSERT INTO StudentVolunteer  
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (3479870813,'Sybilla','Ablewhite','Senior','163-659-3500');

INSERT INTO StudentVolunteer  
    (StudentVolunteerID, FirstName , LastName , GradeLevel , PhoneNumber)
VALUES
    (2020238667,'Shurwood','Newdick','Senior','281-991-6795');

INSERT INTO StudentNetworking
        (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (617003025,538702193,'Chemistry','University of Chicago');
   
INSERT INTO StudentNetworking
        (StudentNetworkingID, ProgramID, MajorType, SchoolName) 
VALUES
    (1500617865,585657077,'Biology','California Institute of Technology');
   
INSERT INTO StudentNetworking
        (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
  (1394368232,977691120,'Chemistry','University of Chicago');
 
INSERT INTO StudentNetworking
     (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
 (3311132351,732190167,'Physics','Massachusetts Institute of Technology');
 
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (8327706624,089741025,'Physics','University of Chicago');
   
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (6268658868,495756329,'Chemistry','Princeton University');
   
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES
    (3255849330,267927325,'Chemistry','Stanford University');
 
INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES  
    (5489517921,342409374,'Mathematics','Stanford University');

INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES  
    (2693924537,981479504,'Computer Science','University of Chicago');

INSERT INTO StudentNetworking
    (StudentNetworkingID, ProgramID, MajorType, SchoolName)
VALUES  
    (5824161151,514221908,'Chemistry','University of Oxford');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (538702193,'Tutor','Russia');
   
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (585657077,'Translator','Indonesia');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (977691120,'Translator','Russia');    
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (732190167,'Fundraiser','Nepal');
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (089741025,'Tutor','Indonesia');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (495756329,'Administrative Assistant','Netherlands');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (267927325,'Community Outreach Coordinator','Russia');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (342409374,'Photographer','China');

INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (981479504,'Tutor','Argentina');
INSERT INTO Program
    (ProgramID,ProgramType,Location)
VALUES
    (514221908,'Mentor','Czech Republic');

INSERT INTO Manager
        (ManagerID,FirstName,LastName,PhoneNumber)
VALUES
        (315341968,'Miran','Calken',9042960756);

INSERT INTO Manager
        (ManagerID,FirstName,LastName,PhoneNumber)
VALUES  (283899379,'Immanuel','Lapslie',8813087191);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (581595095,'Banky','Torrie',9251723882);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES
        (577710967,'Spencer','Gilding',7691475610);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (824611328,'Jarrod','Hein',9241992311);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (933622622,'Victor','Babar',2476455267);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (091197952,'Archy','Novotne',9196684707);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (823808703,'Davis','Emmer',2267914988);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (535362246,'Cesare','Espinay',3745314388);

INSERT INTO Manager
        (ManagerID,FirstName,Lastname,PhoneNumber)
VALUES  (467348213,'Josefina','Andrzejowski',6163138683);

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES
        (8119064984,315341968,'Miran Calken','5359.41');
INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES  (317493108,283899379,'Immanuel Lapslie','3609.67');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES  (179550454,581595095,'Banky Torrie','9785.92');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES
        (5024288483,577710967,'Spencer Gilding','9895.04');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES  (7309467175,824611328,'Jarrod Hein','1593.67');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES  (4047353930,933622622,'Victor Babar','5316.34');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES
        (6829703816,091197952,'Archy Novotne','5827.21');

INSERT INTO Donations
        (donationsinvoiceid,ManagerID,DonorName,DonationAmount)
VALUES  (988107864,823808703,'Davis Emmer','4564.61');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES  (5480587552,535362246,'Cesare Espinay','8465.23');

INSERT INTO Donations
        (DonationsInvoiceID,ManagerID,DonorName,DonationAmount)
VALUES  (7412679767,467348213,'Josefina Andrzejowski','1767.45');

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (8422109468);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (5880180239);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (6388386148);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (8814740313);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (4965830822);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (2152811577);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (6359518627);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (6015903074);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (3963908599);

INSERT INTO ProgramDatabase
        (programdatabaseid)
VALUES  (1356751113);

--trouble shooting

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (8422109468,315341968,538702193);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (5880180239,283899379,585657077);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (6388386148,581595095,977691120);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (8814740313,577710967,732190167);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (4965830822,824611328,089741025);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (2152811577,933622622,495756329);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (6359518627,091197952,267927325);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (6015903074,823808703,342409374);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (3963908599,535362246,981479504);

INSERT INTO ProgramDatabase
        (ProgramDatabaseID,ManagerID,ProgramID)
VALUES  (1356751113,467348213,514221908);


/*Yas Noori and Mahwish Rana Project Part 3*/


/*Stored Procedure 1:*/
CREATE OR REPLACE PROCEDURE GetProgramList_sp  
        
AS GPL SYS_REFCURSOR;

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Created: November 11, 2023
Author: Yas Noori and Mahwish Rana
Decription: Used by managers to pull up program list

Example: EXEC GetProgramList_sp

CHANGE HISTORY
Date           Modified By       Notes
11/11/2023    Yas and Mahwish     Procedure Created

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN
OPEN GPL FOR    

    SELECT ProgramID, ProgramType, Location
    FROM   Program;

DBMS_SQL.RETURN_RESULT(GPL);

END;
/

/*
DROP PROCEDURE GetProgramList_sp;
*/



/*PROCEDURE UNION 2:*/

CREATE OR REPLACE PROCEDURE StudentVolunteerLocation_sp

AS SVL SYS_REFCURSOR;


/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATED: November 11, 2023 
AUTHORS: Yas Noori and Mahwish Rana 
DESCRIPTION: Used to see which studentvolunteer is located where 

Example: EXEC StudentVolunteerLocation_sp;

CHANGE HISTORY
Date                Modifed by          Notes
11/11/2023         Yas and Mahwish       Procedure Created
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN

OPEN SVL FOR

        SELECT SN.StudentNetworkingID, P.Location
        FROM StudentNetworking SN
        INNER JOIN Program P 
        ON SN.ProgramID = P.ProgramID

        UNION

        SELECT PD.ProgramDatabaseID, M.LastName AS Location
        FROM ProgramDatabase PD
        INNER JOIN Manager M 
        ON PD.ManagerID = M.ManagerID;
        
END;
/
/*
DROP PROCEDURE StudentVolunteerLocation_sp;
*/

/*PROCEDURE Transactional 3:*/
CREATE OR REPLACE PROCEDURE AddNewProgram_sp
(
    pProgramID       IN INT,
    pProgramType     IN VARCHAR,
    pLocation        IN VARCHAR
)
AS
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    CREATED: November 11, 2023
    AUTHORS: Yas Noori and Mahwish Rana
    DESCRIPTION: Used to add a new program to the database

    Example: EXEC AddNewProgram_sp;

    CHANGE HISTORY
    Date                Modified by          Notes
    11/11/2023         Yas and Mahwish       Procedure Created
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN

    INSERT INTO Program (ProgramID, ProgramType, Location)
    VALUES (pProgramID, pProgramType, pLocation);

END;
/

/*
DROP PROCEDURE AddNewProgram_sp;
*/

/*PROCEDURE Sub Query 4:*/

CREATE OR REPLACE PROCEDURE TotalDonationperManager_sp

AS TDPM SYS_REFCURSOR;

/*-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATED: Novemeber 11, 2023
AUTHOR: Mahwish Rana and Yas Noori
DESCRIPTION: Used to determine average donation managed per manager

Example: EXEC TotalDonationperManager_sp;

CHANGE HISTORY
Date                Modified By:                    Notes
11/11/2023         Yas Noori and Mahwish Rana     Procedure Created

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN

OPEN TDPM FOR

        SELECT      M.LastName,    (SELECT     NVL(SUM (D.DonationAmount),0)
                                     FROM       DONATIONS D
                                     WHERE      D.managerid = M.managerid) AS TotalDonated
        FROM        Manager M
        ORDER BY    M.LastName;
       
DBMS_SQL.RETURN_RESULT(TDPM);

END;
/

/*
DROP PROCEDURE TotalDonationperManager_sp;
*/

--Project Part 4--
--Stored Procedure 5--

CREATE OR REPLACE PROCEDURE GetStudentVolunteerList_sp

AS GSVL SYS_REFCURSOR;

/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATED: December 8, 2023
AUTHOR: Mahwish Rana and Yas Noori
DESCRIPTION: Used by managers to pull up Student volunteer data.

Example: EXEC GetStudentVolunteerList_sp

CHANGE HISTORY
Date            Modified By        Notes
12/08/2023      MRanaYNoori       Procedure Created

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN

OPEN GSVL FOR

        SELECT StudentVolunteerId, FirstName, LastName
        FROM   StudentVolunteer;
        
DBMS_SQL.RETURN_RESULT(GSVL);

END;
/

/*
DROP PROCEDURE GetStudentVolunteerList_sp;
*/

--Stored Procedure 6-----

CREATE OR REPLACE PROCEDURE GetHighDonors_sp

AS
    GHD SYS_REFCURSOR;
    
/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    CREATED: December 8, 2023
    AUTHORS: Mahwish Rana and Yas Noori
    DESCRIPTION: Used to retrieve donors that have donated more than $500.

    Example: EXEC GetHighDonors_sp

    CHANGE HISTORY
    Date            Modified By        Notes
    12/08/2023      MRanaYNoori        Procedure Created
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN
    OPEN GHD FOR
        SELECT DonationsInvoiceID, SUM(DonationAmount) AS Total_Donation
        FROM Donations
        GROUP BY DonationsInvoiceID
        HAVING SUM(DonationAmount) > 500;

END;
/


/*
DROP PROCEDURE GetHighDonors_sp;
*/


----Procedure 7----
--Case Statement

CREATE OR REPLACE PROCEDURE GetManagerOversightStatus

AS 
/*------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 CREATED: December 8, 2023
    AUTHORS: Mahwish Rana and Yas Noori
    DESCRIPTION: Used to retrieve manager oversight status.

    EXEC GetManagerOversightStatus;

    CHANGE HISTORY
    Date            Modified By        Notes
    12/11/2023      MRanaYNoori        Procedure Created
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
BEGIN

   SELECT M.FirstName, M.LastName,
        CASE
            WHEN COUNT(DISTINCT D.DonationsInvoiceID) > 1 THEN 'Oversees Multiple Donations'
            WHEN COUNT(DISTINCT D.DonationsInvoiceID) = 1 THEN 'Oversees One Donation'
            ELSE 'Does Not Manage Any'
            END AS OversightStatus
    FROM Manager M
    LEFT OUTER JOIN Donations D 
    ON              D.ManagerID = M.ManagerID
    GROUP BY        M.FirstName, M.LastName;
 
END;
/


/*
DROP PROCEDURE GetManagerOversightStatus;
/*

/*-------View 1-------*/


CREATE OR REPLACE VIEW SimpleVolunteerView_vw 
AS
/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Created: December 11. 2023
Authors: Yas Noori and Mahwish Rana
Decription: Used by Managers to see what schools students are enrolled in and what program they are in.

Example:    SELECT SchoolName, MajorType, ProgramType, Location         
            FROM StudentVolunteerProgramDatabaseReport_VW
CHANGE HISTORY
Date          Modified By       Notes
12/11/2023   Yas and Mahwish    View Created
*/------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------   
    SELECT      SN.SchoolName AS VolunteerSchoolName,SN.MajorType,P.ProgramType,P.Location
    FROM        StudentNetworking SN
    LEFT JOIN   Program P 
    ON          SN.ProgramID = P.ProgramID
    LEFT JOIN   ProgramDatabase PD
    ON          PD.ProgramID = P.ProgramID;
        
        
--To see the view-----
/*
DROP VIEW SimpleVolunteerView_vw
*/

-----View 2----

CREATE OR REPLACE VIEW ManagerProgramReport_vw


AS

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Created: December 11. 2023
Authors: Yas Noori and Mahwish Rana
Decription: Used by Managers to see which program they will be managing


Example: SELECT ManagerID, LastName, FirstName, ProgramID, ProgramType
         FROM ManagerProgramReport_vw
CHANGE HISTORY
Date          Modified By       Notes
12/11/2023   Yas and Mahwish    View Created
*/-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    SELECT      M.ManagerID, M.LastName,M.FirstName,PD.ProgramDatabaseID AS ProgramDatabase
    FROM        Manager M
    INNER JOIN  ProgramDatabase PD 
    ON          PD.ManagerID = M.ManagerID
    INNER JOIN  Program P 
    ON          PD.ProgramID = P.ProgramID;


--To see the view--

/*
DROP VIEW ManagerProgramReport_vw
*/


/*
DROP TABLE donations;
DROP TABLE manager;
DROP TABLE program;
DROP TABLE programdatabase;
DROP TABLE studentnetworking;
DROP TABLE studentvolunteer;
*/