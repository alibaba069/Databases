-- Blatt 4
-- Nr 1
-- a)
SELECT * 
FROM db_ws_22.zip;
-- Fragen warum das nicht funktioniert
SELECT * 
FROM zip;
-- 
-- DESC db_ws_22.zip;
-- b)
 -- Nr 2
SELECT zip_code AS ZIP, CITY
FROM db_ws_22.zip;
-- Nr 3
-- a)
SELECT DISTINCT city
FROM db_ws_22.zip;
-- b)
-- Lösung für APPLE 
WITH tmp_table AS
(
	SELECT city, zip_code
	FROM db_ws_22.zip
	ORDER BY zip_code
)
SELECT DISTINCT city
FROM tmp_table
;
-- c)
SELECT DISTINCT City
FROM db_ws_22.zip
ORDER BY city DESC;
-- Nr 4
SELECT COUNT(DISTINCT CITY ) AS Unique_city
FROM db_ws_22.zip 
WHERE City LIKE "BE%";

-- Warum nicht so?
SELECT City , COUNT(*) AS City
FROM db_ws_22.zip 
WHERE City LIKE "BE%";
-- 
-- Nr 5
-- a)
SELECT DISTINCT CITY 
FROM db_ws_22.zip
WHERE zip_code BETWEEN '60000' AND '91234';
-- b)
SELECT DISTINCT CITY 
FROM db_ws_22.zip
WHERE zip_code >= '60000' AND zip_code <= '90000';
-- Nr 6
SELECT zip_code, city
FROM db_ws_22.zip
WHERE city IN ('Berlin', 'Frankfurt', 'Aachen');
-- Nr 7
SELECT DISTINCT CITY 
FROM db_ws_22.zip
WHERE City LIKE ('B__N');
-- Nr 8
SELECT * 
FROM db_ws_22.zip 
WHERE city LIKE 'B__N' AND zip_code < '30000' OR city =
'Dietzenbach';
-- 
SELECT * 
FROM db_ws_22.zip  
WHERE city LIKE 'B__N' AND (zip_code < '30000' OR city =
'Dietzenbach');

-- working with brackets = different solutions - due to the PRIO of operations (OR/AND/NOT)!
show tables