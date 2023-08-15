SELECT* FROM db_ws_22.zip;
#Aufgabe 1
#a
DESC zip;
SELECT count(*);
#b 
SELECT COUNT(*) AS 'all datasets'
FROM zip;
#Aufgabe 2
SELECT  zip_code AS ZIP, CITY
FROM zip;