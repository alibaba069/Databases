-- Aufgabenblatt 9
-- nr 1
-- a
SELECT DISTINCT z.zip_code, z.city
FROM person AS p
INNER JOIN zip AS z ON p.zip_id = z.id
ORDER BY z.zip_code, z.city;
-- b 
SELECT DISTINCT z.zip_code, z.city
FROM zip AS z 
LEFT JOIN person AS p ON p.zip_id = z.id
WHERE p.zip_id IS NULL
ORDER BY z.zip_code, z.city;
-- c
SELECT p.*, z.zip_code, z.city
FROM person AS p
INNER JOIN zip AS z ON p.zip_id = z.id
ORDER BY z.zip_code, z.city;