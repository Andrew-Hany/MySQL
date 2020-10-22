DROP DATABASE IF EXISTS `manufacturing_plant`;
 create database if not exists `manufacturing_plant`;
 use `manufacturing_plant`;
 

CREATE TABLE if not exists ManufacturingUnit(
 CountryName varchar(30) not null,
 CityName varchar(30) not null, 
 Area varchar(30) not null, 
 constraint ManufacturingUnit_pk primary key (CountryName,CityName)
 );
 
 create table if not exists Supplier (
 SNO integer primary key,
SName varchar(30) not null, 
CountryName varchar(30) not null, 
 CityName varchar(30) not null, 
 Email varchar(100) not null,
 foreign key (CountryName,CityName) references ManufacturingUnit (CountryName,CityName) 
 );
 
 create table if not exists Item(
PartNumber integer primary key ,
 ItemType varchar(100) not null 
 );
 
 create table if not exists ItemType (
 ItemType varchar(100) not null  primary key ,
 BasePrice integer

 );
 

  
  create table if not exists Supply (
  SNO integer ,
  PartNumber integer  , 
CountryName varchar(30) not null, 
 CityName varchar(30) not null, 
 Quantity integer, 
   constraint ManufacturingUnit_pk primary key (SNO,PartNumber,CountryName,CityName),
   foreign key (SNO) references Supplier (SNO),
   foreign key (PartNumber) references Item(PartNumber), 
 foreign key (CountryName,CityName) references ManufacturingUnit (CountryName,CityName) 
  );
  
  create table if not exists Product (
  ProductCode integer primary key , 
  ProductType varchar(30) not null,
  ProductBasePrice integer
  );
  
   create table if not exists ManufacturingLine (
   CountryName varchar(30) not null, 
 CityName varchar(30) not null, 
 LineNumber integer ,
 ProductCode integer, 
 constraint ManufacturingLine_pk primary  key (CountryName,CityName,LineNumber),
   foreign key (CountryName,CityName) references ManufacturingUnit (CountryName,CityName) 

   );
   
   CREATE TABLE IF NOT EXISTS ManufacturingJob (
    CountryName VARCHAR(30) NOT NULL,
    CityName VARCHAR(30) NOT NULL,
    LineNumber INTEGER,
    Month INTEGER,
    Year INTEGER,
    Quantity INTEGER,
    CONSTRAINT ManufacturingJob_pk PRIMARY KEY (CountryName , CityName , LineNumber , Month , Year),
    FOREIGN KEY (CountryName , CityName,LineNumber)REFERENCES ManufacturingLine (CountryName , CityName,LineNumber)
  
)
 