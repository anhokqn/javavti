create database Departmanentmanagment ;
use Departmanentmanagment ;
create table Department (
DepartmentID bigint ,
DepartmentName nvarchar(50) 
);

create table Position (
PositionID bigint ,
PositionName nvarchar(50)
);

create table Account (
AccountID bigint ,
Email nvarchar(50),
Username nvarchar(50),
FullName nvarchar(50),
DepartmentID bigint,
PositionID bigint,
createDate date
);
