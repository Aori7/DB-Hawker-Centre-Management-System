/* */
/* Hawker Centre Management System Assignment DB*/
/* Setup */
/* Group 4*/
/* Created by Ada */

-- NOTE to teamates: run once!

/* creating new database */

/*
Create Database HCManagementSystem;
GO
*/

-- create tables according to data dictionary

/*Format:
CREATE TABLE table_name
(column_name  format [column_constraint]
 {,column_name  format [column_constraint]}
 [,table_constraint {,table_constraint}]
); */

CREATE TABLE Operator
(
OperatorID		varchar(7) NOT NULL,
OperatorName	char(50)	NOT NULL,
ContactPerson	char(50)	NOT NULL,
	CONSTRAINT PK_Operator PRIMARY KEY (OperatorID)
);
GO


CREATE TABLE NEA_Officer
(
OfficerID			varchar(6)	NOT NULL,
OfficerName			char(50)	NOT NULL,
OfficerContactNo	char(8)	NOT NULL UNIQUE,
	CONSTRAINT PK_NEA_Officer PRIMARY KEY (OfficerID)
);
GO


CREATE TABLE StallOwner
(
OwnerID		varchar(9)		NOT NULL,
OwnerName	char(100)		NOT NULL,
OwnerNRIC	varchar(9)		NOT NULL UNIQUE,
OwnerContactNo	char(8)		NOT NULL UNIQUE,
	CONSTRAINT PK_StallOwner PRIMARY KEY (OwnerID)
);
GO

CREATE TABLE Customer
(
CustomerID		varchar(8)		NOT NULL,
CustNRIC		varchar(9)		NOT NULL UNIQUE,
CustName		char(100)		NOT NULL,
CustContactNo	char(8)			NOT NULL UNIQUE,
CustEmail		varchar(50)		NULL UNIQUE,
	CONSTRAINT PK_Customer PRIMARY KEY (CustomerID)
);
GO


CREATE TABLE HawkerCentre
(
HawkerCentreID		varchar(6)		NOT NULL,
HCName				varchar(50)		NOT NULL,
HCAddress			varchar(100)	NOT NULL,
OperatorID			varchar(7)		NOT NULL,
	CONSTRAINT PK_HawkerCentre PRIMARY KEY (HawkerCentreID),
	CONSTRAINT FK_HawkerCentre_OperatorID
		FOREIGN KEY (OperatorID) REFERENCES Operator(OperatorID)
);
GO

CREATE TABLE FoodStall
(
StallID			varchar(5)		NOT NULL,
StallUnitNo		char(3)			NOT NULL,
StallName		varchar(50)		NOT NULL,
StallDesc		varchar(400)	NULL,
HawkerCentreID	varchar(6)		NOT NULL,
	CONSTRAINT PK_FoodStall PRIMARY KEY (StallID),
	CONSTRAINT FK_FoodStall_HawkerCentreID
		FOREIGN KEY (HawkerCentreID) REFERENCES HawkerCentre(HawkerCentreID)
);
GO

CREATE TABLE Inspection
(
InspectionID	varchar(6)		NOT NULL,
InspectionDate	DATE			NOT NULL DEFAULT(GETDATE()),
HygieneGrade	char(1)			NOT NULL CHECK(HygieneGrade IN ('A','B','C','D')),
GradeExpiry		DATE			NOT NULL DEFAULT(DATEADD(YEAR, 5, GETDATE())),
OfficerID		varchar(6)		NOT NULL,
StallID			varchar(5)		NOT NULL,
	CONSTRAINT PK_Inspection PRIMARY KEY (InspectionID),
	CONSTRAINT FK_Inspection_OfficerID
		FOREIGN KEY (OfficerID) REFERENCES NEA_Officer(OfficerID),
	CONSTRAINT FK_Inspection_StallID
		FOREIGN KEY (StallID) REFERENCES FoodStall(StallID)
);
GO


CREATE TABLE InspectionRemark
(
InspectionID		varchar(6)		NOT NULL,
InspectionRemark	varchar(400)	NOT NULL,
	CONSTRAINT PK_InspectionRemark PRIMARY KEY (InspectionID,InspectionRemark),
	CONSTRAINT FK_InspectionRemark_InspectionID
		FOREIGN KEY (InspectionID) REFERENCES Inspection(InspectionID)
);
GO


CREATE TABLE Promotion
(
PromotionID		varchar(9)		NOT NULL,
PromoDesc		varchar(150)	NULL,
PromoStartDate	DATE			NOT NULL DEFAULT(GETDATE()),
PromoEndDate	DATE			NOT NULL DEFAULT(DATEADD(MONTH,1,GETDATE())),
StallID			varchar(5)		NOT NULL,
	CONSTRAINT PK_Promotion PRIMARY KEY (PromotionID),
	CONSTRAINT FK_Promotion_StallID
		FOREIGN KEY (StallID) REFERENCES FoodStall(StallID)
);
GO


CREATE TABLE RentalAgreement
(
AgreementID			varchar(7)		NOT NULL,
AgrStartDate		DATE			NOT NULL DEFAULT(GETDATE()),
AgrEndDate			DATE			NOT NULL DEFAULT(DATEADD(YEAR,1,GETDATE())),
AgrTermCondition	varchar(255)	NOT NULL,
OwnerID				varchar(9)		NOT NULL,
StallID				varchar(5)		NOT NULL,
	CONSTRAINT PK_RentalAgreement PRIMARY KEY (AgreementID),
	CONSTRAINT FK_RentalAgreement_OwnerID
		FOREIGN KEY (OwnerID) REFERENCES StallOwner(OwnerID),
	CONSTRAINT FK_RentalAgreement_StallID
		FOREIGN KEY (StallID) REFERENCES FoodStall(StallID)
);
GO


CREATE TABLE Cuisine
(
CuisineID		varchar(7)		NOT NULL,
CuisineDesc		varchar(255)	NOT NULL,
	CONSTRAINT PK_Cuisine PRIMARY KEY (CuisineID)
);
GO


CREATE TABLE MenuItem
(
StallID			varchar(5)		NOT NULL,
ItemCode		varchar(9)		NOT NULL,
ItemDesc		varchar(255)	NOT NULL,
ItemPrice		DECIMAL(6,2)	NOT NULL,
ItemCategory	char(50)	NOT NULL,
	CONSTRAINT PK_MenuItem PRIMARY KEY (StallID,ItemCode),
	CONSTRAINT FK_MenuItem_StallID 
		FOREIGN KEY (StallID) REFERENCES FoodStall(StallID)
);
GO


