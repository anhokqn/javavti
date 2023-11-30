create database Departmanentmanagment ;
use Departmanentmanagment ;

create table Department (
Department_id bigint ,
Department_name nvarchar(50) 
);

create table Position (
Position_id bigint ,
Position_name nvarchar(50)
);

create table Account (
Account_id bigint ,
Email nvarchar(50),
User_name nvarchar(50),
Full_name nvarchar(50),
Department_id bigint,
Position_id bigint,
create_date date
);
