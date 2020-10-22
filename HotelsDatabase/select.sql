
use `Hotel`;

-- b) Get number, name, and job description of all members of staff who are not working in any shift.
select m.name,m.staffnumber,j.jobdescription
from member_staff m
join job j
on m.jobcode = j.jobcode and m.shiftcod is null;

-- c)Get the name and nationality of all customers who have more than 5 reservations in years 2019 and 2020.

select c.CustFirstName ,c.CustLastName,r.CustLastName,r.CustFirstName,c.Nationality, count( c.CustFirstName ) as count
from CUSTOMER c
  join RESERVATION_CUSTOMER r
on c.CustFirstName=r.CustFirstName  and c.CustLastName=r.CustLastName  
 join RESERVATION re 
  on  r.ReferenceNo = re.ReferenceNo and (re.CheckInYYYY=2020 or re.CheckInYYYY=2019)
GROUP BY c.CustFirstName,c.CustLastName ,r.CustLastName ,r.CustFirstName
 having count >5;

-- d For each shift with less than 10 members of staff, get the shiftCode, supervisor’s name, and total number of members of staff.

select  sh.ShiftCode,sh.SuperStaffNumber,manag.name, count(m.ShiftCod) as count 
from  shift sh
  join MEMBER_STAFF m
on sh.ShiftCode =m.ShiftCod 
join  MEMBER_STAFF manag
on sh.SuperStaffNumber=manag.StaffNumber
group by  sh.ShiftCode,sh.SuperStaffNumber,m.ShiftCod,manag.name
 having count<10;
 
 -- e  Define a statistical view against the given database to retrieve the total number of sold units,
 -- and total income for each section, room type, month, and year.



 CREATE VIEW statistical_view AS 
 Select Count( rs.ReferenceNo) AS NoOfSoldUnits,Sum(rs.ActualPrice) AS TotalIncome,rs.SectCode as section_code,rs.CheckInMM as month,rs.CheckInYYYY as year,rt.RoomTypeName as roomType
 from RESERVATION  rs
 join room r on r.SectCode=rs.SectCode and r.RoomNo=rs.RoomNo
 join room_type rt on rt.RoomTypeCode=r.RoomTypeCode
 group by rs.SectCode,rs.CheckInMM,rs.CheckInYYYY,rt.RoomTypeName;


-- f. Write a query against the defined view to retrieve the total number of sold units and total income of
-- double rooms (room type = ‘D’) in section (SectCode = ‘S01’) during July of 2020.

	SELECT NoOfSoldUnits ,TotalIncome ,section_code,month,year,roomType
    FROM statistical_view
 WHERE section_code = "S01" AND roomType = 'D' AND month = '07' AND year = "2020";