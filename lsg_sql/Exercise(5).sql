SELECT * FROM db_ws_21.zip;

#Blatt 5


-- a.

select left( zip_code,2) as zip_short, count(*)  as qty 
from zip
group by zip_short;

-- b Create an overview with all unique city names with the qtys, how often you
-- will find the ort in the table zip – ordered by the quantity descending!

select distinct city , count(*) as qty 
from zip
group by city 
order by qty desc;

-- c. Create another overview (similar to b) where you get to see all city which are
 -- only once in your table!
 
 select city, count(*) as qty  from zip
 group by city 
 having qty like '1';

-- d) Your colleague saw in the last selection you gave him (Exercise 4.6) that there
 -- haven’t been any zip_codes from Frankfurt am Main. Can you give him a
#feedback why and create a new selection where you will see all zip_codes
#from
#Berlin
#Frankfurt
#Aachen
#Now it’s your decision which SQL command you are going to use!

select city , zip_code from zip
where city in ( 'Berlin','Aachen') or city like 'Frankfurt%';

-- e. Show your colleague the TOP three cities (highest).
-- TOP means – with the most quantity of zip_codes!
-- o let you show just the first three results of your SQL statement you have to
-- use the following command at the end of your statement …
 -- … LIMIT n
 
select city , count(zip_code) as qty 
from zip
group by  city
order by qty desc
limit 3;








