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

