 use `manufacturing_plant`;

insert into `ManufacturingUnit` value ("egypt","cairo","gwa el balad");
insert into `ManufacturingUnit` value ("america","california","new street");
insert into `ManufacturingUnit` value ("UK","edinburgh","castle");

select * from ManufacturingUnit;

insert into `Supplier` value (1,"andrew", "egypt","cairo", "andrew@gmail.com");
insert into `Supplier` value (2,"ebrahem", "america","california", "ebrahem.com@gmail.com");
insert into `Supplier` value (3,"ahmed","UK","edinburgh", "ahmed@gmail.com");

select * from Supplier;

insert into `Item` value (1, "SpareParts");
insert into `Item` value (2, "apples");
insert into `Item` value (3, "pinapple");
insert into `Item` value (4, "orange");

select * from Item;

insert into `ItemType` value ("SpareParts", 10);
insert into `ItemType` value ("apples", 50);
insert into `ItemType` value ("pinapple", 2);
insert into `ItemType` value ("orange", 10);


select * from ItemType;

insert into `Supply` value (1,1, "egypt","cairo", 1000);
insert into `Supply` value (3,1,"UK","edinburgh", 100);
insert into `Supply` value (2,4,"america","california", 100);
insert into `Supply` value (2,2,"america","california", 200);
insert into `Supply` value (3,3,"UK","edinburgh", 700);

select * from Supply;

insert into `Product` value (1, "Cosmetics",1234);
insert into `Product` value (2, "vegatbles",335);
insert into `Product` value (3, "fruits",6767);

select * from Product;

insert into `ManufacturingLine` value ( "egypt","cairo",1,1);
insert into `ManufacturingLine` value ( "UK","edinburgh",2,1);
insert into `ManufacturingLine` value ( "UK","edinburgh",3,2);
insert into `ManufacturingLine` value ( "egypt","cairo",4,1);
insert into `ManufacturingLine` value ( "egypt","cairo",5,1);
insert into `ManufacturingLine` value ( "america","california",6,2);


select * from ManufacturingLine;

insert into `ManufacturingJob` value ( "egypt","cairo",1,12, 2020, 1000);
insert into `ManufacturingJob` value ( "UK","edinburgh",2,11, 2019, 500);
insert into `ManufacturingJob` value ( "UK","edinburgh",3,8,2018, 700);
insert into `ManufacturingJob` value ( "egypt","cairo",4,8,2019,800);
insert into `ManufacturingJob` value ( "egypt","cairo",5,3,2020,90);
insert into `ManufacturingJob` value ( "america","california",6,6,2017,789);

select * from ManufacturingJob;
