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



