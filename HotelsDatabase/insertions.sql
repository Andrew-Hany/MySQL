use `Hotel`;
-- inserting section table
insert into `Section` value ("S01", "front area", "", 3);
insert into `SECTION` value ("S02", "back area", "", 2);
insert into `SECTION` value ("S03", "sports area", "", 4);
insert into `SECTION` value ("S04", "pools area", "", 7);

Select * from Section;
-- inserting room_type table
insert into `room_type` value (1000,  "D");
insert into `room_type` value (999,  "single");
insert into `room_type` value (988,  "flat ");
insert into `room_type` value (888,  "sweet");


Select * from room_type;


-- inserting room table
insert into `room` value ("S01", 1, 1000, "available,");
insert into `room` value ("S02", 2, 999, "available,");
insert into `room` value ("S03", 3, 988, "available,");
insert into `room` value ("S04", 4, 888, "out of service");
insert into `room` value ("S01", 5, 1000, "out of service");
Select * from room;

-- inserting season table
insert into `season` value (1,  "high");
insert into `season` value (2,  "low");
insert into `season` value (3,  "medium ");


Select * from season;

-- inserting JOB table
insert into `JOB` value (1,  "", 3);
insert into `JOB` value (2,  "", 2);
insert into `JOB` value (3,  "", 4);
insert into `JOB` value (4,  "", 7);

Select * from JOB;
-- inserting CUSTOMER_TYPE table
insert into `CUSTOMER_TYPE` value (1,  "local");
insert into `CUSTOMER_TYPE` value (2,  "foreign");
insert into `CUSTOMER_TYPE` value (3,  "group ");


Select * from CUSTOMER_TYPE;

-- inserting PRICE table
insert into `PRICE` value (1000,1,1,  234);
insert into `PRICE` value (999,2,2,  9000);
insert into `PRICE` value (988,3,3,  110000);
insert into `PRICE` value (888,3,3,  10900);

Select * from PRICE;

-- inserting MEMBER_STAFF table
insert into `MEMBER_STAFF` value (1,"ahmed","m",1, 1);
insert into `MEMBER_STAFF` value (2,"ebrahem","m",2, 1);
insert into `MEMBER_STAFF` value (3,"Andrew","m",4, 1);
insert into `MEMBER_STAFF` value (4,"Mahmoud","m",3, 1);
insert into `MEMBER_STAFF` value (5,"mina","m",1, null);
insert into `MEMBER_STAFF` value (6,"samy","m",2, 2);
insert into `MEMBER_STAFF` value (7,"salma","F",4, null);
insert into `MEMBER_STAFF` value (8,"akram","m",3, 2);
insert into `MEMBER_STAFF` value (9,"Mariam","F",3, 3);
insert into `MEMBER_STAFF` value (10,"Alaa","F",2, null);

Select * from MEMBER_STAFF;




-- inserting SHIFT table
insert into `SHIFT` value (1,"07:00:00","15:00:00",  100,2);
insert into `SHIFT` value (2,"15:00:00","19:00:00",  100,3);
insert into `SHIFT` value (3,"19:00:00","22:00:00", 300,5);



Select * from SHIFT;


-- inserting CUSTOMER table
insert into `CUSTOMER` value ("alex", "zaky ",1,"Egyptian" ,1234567);
insert into `CUSTOMER` value ("amr","alaa",2, "japanease",87654321 );
insert into `CUSTOMER` value ("youssef","mohsen",2,  "japanease",3453552);
insert into `CUSTOMER` value ("kerolos","naashat",2, "American",122346576);


Select * from CUSTOMER;

-- inserting RESERVATION table
insert into `RESERVATION` value (1, "S01",1,20,7,2020,10,10000 );
insert into `RESERVATION` value (2,"S02",2, 19,09,2020,2,2000);
insert into `RESERVATION` value (3,"S03",3,02,11,2020,3,3000);
insert into `RESERVATION` value (4,"S04",4,24,7,2020,9,90000);
insert into `RESERVATION` value (5,"S01",5,24,7,2020,9,90000);
Select * from RESERVATION;


-- inserting RESERVATION_CUSTOMER table
insert into `RESERVATION_CUSTOMER` value (1, "alex", "zaky ","R");
insert into `RESERVATION_CUSTOMER` value (2,"amr","alaa","A");
insert into `RESERVATION_CUSTOMER` value (3,"youssef","mohsen","R");
insert into `RESERVATION_CUSTOMER` value (4,"kerolos","naashat","A");



Select * from RESERVATION_CUSTOMER;

