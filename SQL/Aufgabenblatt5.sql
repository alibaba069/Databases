-- Aufgabenblatt 5
-- Nr 1
SELECT * 
FROM db_ws_22.zip;
-- a)
SELECT left(zip_code, 2) AS ZIP_short, count(*) AS qty
FROM db_ws_22.zip
WHERE 	1=1
   -- with this code we remove the empty zip_code
   -- AND zip_code <> ' '
   -- AND city = 'Dietzenbach' 
GROUP BY ZIP_short
ORDER BY qty DESC;

-- with this code we can do a check
SELECT count(*) AS qty_check
FROM db_ws_22.zip
WHERE zip_code LIKE '06%'
;
-- b)
SELECT city, COUNT(*) AS qtys
FROM db_ws_22.zip
GROUP BY city
ORDER BY qtys DESC;
-- c)
SELECT city, COUNT(*) AS qtys
FROM db_ws_22.zip
GROUP BY city
HAVING qtys <=1
ORDER BY qtys DESC;
-- d)
-- für Frankfurt am Main und Frankfurt (Oder)
SELECT City 
FROM db_ws_22.zip
WHERE City LIKE 'Frankf%';
-- Nur Frankfurt am Main und Berlin und AAchen       <- billige Hose 
SELECT City 
FROM db_ws_22.zip
WHERE City = "Frankfurt am main";

SELECT zip_code, city
FROM db_ws_22.zip
WHERE city IN ('Berlin', 'Frankfurt', 'Aachen');
-- Nur Frankfurt am Main und Berlin und Aachen Variante 2
SELECT zip_code, city
FROM db_ws_22.zip
WHERE city IN ('Berlin', 'Aachen')
OR City =  "Frankfurt am main";
-- e)
SELECT City, COUNT(*) AS qty
FROM db_ws_22.zip
WHERE  1=1
AND city <> 'Hampuri'
GROUP BY city
ORDER BY qty DESC
LIMIT 3;
