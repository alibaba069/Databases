

-- For the following exercises, you have to use your SCHEMA db_ws_21!
 -- 1. Please use the JOIN Operator for the following requests:
-- a. Select the attributes plz and ort of the table plz, which are used in your table
-- person!

select z.zip_code, z.City 
from zip as z 
inner join person2 as p on p.zip_id = z.zip_code;



-- b. Select the attributes plz and ort of the table plz, which are not used in your
 -- table person!
 
 select z.zip_code , z.City from zip as z
 left join person as p on p.zip= z.id 
 where p.zip_id  is null;
 
 
-- c. Select all attributes of the table person with the attribute ort of the table plz!

