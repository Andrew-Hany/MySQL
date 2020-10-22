use `manufacturing_plant`;



-- Retrieve the total production (total produced quantity) of 
-- all the “Cosmetics” products in the years 2019 and 2020.
select sum(total_produced_quantity_row) as total_produced_quantity from (
select sum(Quantity) as total_produced_quantity_row,year
from ManufacturingJob mj
join ManufacturingLine ml
on ml.CountryName=mj.CountryName and ml.CityName=mj.CityName and  ml.LineNumber=mj.LineNumber and (Year =2020 or Year =2019)
join Product p
on p.ProductCode =ml.ProductCode and p.ProductType="Cosmetics"
group by year)as sum;


-- Retrieve the Product Code and Type of all products that are not manufactured by any manufacturing
-- line.

select distinct p.ProductCode ,p.ProductType
from Product p 
join ManufacturingLine ml
on p.ProductCode not in (select ProductCode from ManufacturingLine);




-- For each manufacturing line in Cairo, Egypt and for each year, display the manufacturing line number and the total production
 -- (total produced quantity) only for manufacturing lines that produce more than 20,000 units in total.
select mj.LineNumber,mj.year, sum(Quantity)as  total_production_Quantity
from ManufacturingJob mj 
join ManufacturingLine ml
on ml.CountryName=mj.CountryName and ml.CityName=mj.CityName and ml.LineNumber=mj.LineNumber and ml.CountryName="Egypt" and ml.CityName="Cairo"
group by mj.LineNumber,mj.year
 having total_production_Quantity>20000;
 
 -- Retrieve the total number of products that are manufactured by more than three manufacturing lines
 select count(*) as count from (
 select count( distinct p.ProductCode) as "total product" , count(distinct LineNumber) as "manufacturing lines"
from Product p 
join ManufacturingLine ml
on ml.ProductCode=p.ProductCode 
 group by p.ProductCode
having count(distinct LineNumber) >3
)
As produ;


 -- Retrieve the suppliers information (name, city, country and email) along with the total cost of the items
 -- they supplied of the “SpareParts” types.
 -- List only the suppliers who supplied more than 10 spare parts.
 
 select sr.SName, sr.CountryName, sr.CityName , sr.email, it.BasePrice*sy.Quantity as " total cost of the items"
 from Supplier  sr
 join supply  sy
 on sy.SNO =sr.sno  and sy.Quantity >10
 join Item  i
 on i.PartNumber=sy.PartNumber and i.ItemType="SpareParts"
 join ItemType it
 on it.ItemType=i.ItemType 
