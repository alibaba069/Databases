#1a

#how many attributes we have
SELECT * from zip;

#Hoew many data sets do we have 
SELECT count(ID) as datasets 
from zip;

#2
select zip_code as ZIP, city as CITY
from zip;

#3
#a
select distinct city from zip;
#3b
select distinct city from zip
order by zip_code asc;
#3c
-- c. Select all unique city from zip sorting by city descending
select distinct city from zip
order by city desc;

-- 4. How many unique cities do we have, which start with “BE…”

select count(distinct city) from zip
where city like 'BE%';

-- 5. Select all cities where the zip is between 60000 AND 91234

-- a. Use once the operator BETWEEN

select city, zip_code from zip 
where zip_code between '6000' and '91234';

-- b. and create a new query by using another operator

select city, zip_code from zip
where zip_code >= '60000' and zip_code <= '91234' ;


-- . 6Select all zip (by using the IN operator) from the following cities:
#Berlin
#Frankfurt
#Aachen
# Do not wonder about the result … you will understand it in exercise 5

select city, zip_code from zip
where city in ('Berlin','Frankfurt','Aachen');


-- 7. Select all 4 digits unique cities from zip where are in this format
# B**N

select distinct city from zip
where city like 'B__N';


-- . Execute the following queries:
-- a. 
SELECT * FROM zip WHERE city LIKE 'B__N' AND zip_code < '30000' OR city =
'Dietzenbach';

SELECT * FROM zip WHERE city LIKE 'B__N' AND (zip_code < '30000' OR city =
'Dietzenbach');













