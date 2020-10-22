DROP DATABASE IF EXISTS `Hotel`;
create DATABASE IF not exists `Hotel`;
use `Hotel`;

CREATE TABLE if not exists Section(
   SectCode varchar(3) not null PRIMARY KEY,
   SectName VARCHAR(20) NOT NULL,
   ViewDescription VARCHAR(1000), 
   ManagerStaffNumber INTEGER
);


CREATE TABLE  if not exists ROOM_TYPE(
  RoomTypeCode INTEGER primary key ,
     RoomTypeName varchar(50) not null
     
);

CREATE TABLE  if not exists ROOM(
   SectCode varchar(3) not null ,
   RoomNo INTEGER,
   RoomTypeCode INTEGER,
   Status varchar(50) not null,
 constraint room_pk primary key (SectCode, RoomNo),
  foreign key (SectCode) references Section (SectCode) ,
foreign key (RoomTypeCode) references ROOM_TYPE (RoomTypeCode) 
);



CREATE TABLE  if not exists SEASON (
 SeasonCode INTEGER primary key ,
     SeasonName varchar(50) not null
      
);
-- require 
CREATE TABLE  if not exists JOB (
 JobCode INTEGER primary key ,
 JobDescription VARCHAR(1000), 
 BasicSalary INTEGER
);


CREATE TABLE  if not exists CUSTOMER_TYPE (
 CustomerTypeCode INTEGER primary key ,
     CustomerTypeName varchar(50) not null
);


-- ----------------------------------------------------require  -------------------------------------
CREATE TABLE  if not exists PRICE (
 RoomTypeCode INTEGER  ,
  SeasonCode INTEGER ,
   CustomerTypeCode INTEGER  ,
      PriceValue float ,
      constraint price_pk primary key (RoomTypeCode, SeasonCode,CustomerTypeCode),
        foreign key (RoomTypeCode) references ROOM_TYPE (RoomTypeCode) ,
   foreign key (SeasonCode) references SEASON (SeasonCode) ,
    foreign key (CustomerTypeCode) references CUSTOMER_TYPE (CustomerTypeCode) 
);

-- - ----------------------------------------------------require  -------------------------------------
CREATE TABLE  if not exists MEMBER_STAFF (
 StaffNumber INTEGER primary key ,
 Name varchar(50) not null,
  Gender varchar(1) not null,
   JobCode INTEGER  ,
      ShiftCod INTEGER ,
      foreign key (JobCode) references JOB (JobCode) 
);


CREATE TABLE  if not exists SHIFT (
 ShiftCode INTEGER primary key ,
 StartTime time,
 EndTime time,
   BonusValue float  ,
      SuperStaffNumber INTEGER ,
          foreign key (SuperStaffNumber) references MEMBER_STAFF (StaffNumber) 
);



CREATE TABLE  if not exists CUSTOMER (
 CustFirstName VARCHAR(50) not null,
  CustLastName VARCHAR(50) not null,
   CustomerTypeCode INTEGER,
   Nationality VARCHAR(50), 
     CreditCardNo INTEGER,
  constraint CUSTOMER_pk primary key (CustFirstName, CustLastName),
   foreign key (CustomerTypeCode) references CUSTOMER_TYPE (CustomerTypeCode) 
);
-- ----------------------------------------------------require  -------------------------------------
CREATE TABLE  if not exists RESERVATION (
 ReferenceNo INTEGER primary key ,
  SectCode varchar(3) not null,
   RoomNo INTEGER,
    CheckInDD INTEGER,
   CheckInMM INTEGER, 
    CheckInYYYY INTEGER,
   NumberOfNights INTEGER,
   ActualPrice float,
 foreign key (SectCode,RoomNo) references ROOM (SectCode,RoomNo)
   
);

-- ----------------------------------------------------require  -------------------------------------
CREATE TABLE  if not exists RESERVATION_CUSTOMER (
 ReferenceNo INTEGER  ,
 CustFirstName VARCHAR(50) not null,
  CustLastName VARCHAR(50) not null,
    Status varchar(50) not null,
    constraint CUSTOMER_pk primary key (ReferenceNo,CustFirstName, CustLastName),
       foreign key (ReferenceNo) references RESERVATION (ReferenceNo),
        foreign key (CustFirstName,CustLastName) references CUSTOMER (CustFirstName,CustLastName)

);


