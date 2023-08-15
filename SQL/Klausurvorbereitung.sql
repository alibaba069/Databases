
-- nr 1
-- a
SELECT * 
From db_ws_22.zip; -- 4 Spalten
DESC db_ws_22.zip; -- description of table
-- b
Select Count(*)
from db_ws_22.zip;
-- nr2
Select zip_code AS ZIP,CITY
From db_ws_22.zip;
-- nr3
-- a
SELECT distinct city 
from db_ws_22.zip;
-- b
SELECT city
FROM db_ws_22.zip
ORDER BY zip_code;
-- c
SELECT city
FROM db_ws_22.zip
ORDER BY zip_code DESC;
-- nr4 
SELECT COUNT(DISTINCT city) AS qty
FROM db_ws_22.zip
WHERE city LIKE 'BE%';
-- nr 5
-- a
SELECT city
From db_ws_22.zip 
Where zip_code between '60000' AND '91234'
ORDER BY zip_code;

-- b
SELECT city
From db_ws_22.zip 
Where zip_code >=  '60000' AND zip_code <= '91234';
-- nr6
SELECT zip_code, city
FROM zip
WHERE city IN ('Berlin', 'Frankfurt', 'Aachen');
-- nr 7
SELECT city
FROM db_ws_22.zip
WHERE city LIKE 'B__n';
-- nr 8
SELECT * 
FROM zip 
WHERE city LIKE 'B__N' AND zip_code < '30000' OR city ='Dietzenbach';

SELECT *
 FROM zip
 WHERE city LIKE 'B__N' AND (zip_code < '30000' OR city ='Dietzenbach');
 -- -----------------------------------------------------------------------------------------------
 
 -- Blatt 5
 -- a
 SELECT left(zip_code, 2) AS ZIP_short, count(*) AS qty
FROM db_ws_22.zip
WHERE 	1=1
   -- with this code we remove the empty zip_code
   -- AND zip_code <> ' '
   -- AND city = 'Dietzenbach' 
GROUP BY ZIP_short
ORDER BY qty DESC;
-- b
SELECT city, COUNT(*) AS qtys
FROM db_ws_22.zip
GROUP BY city
ORDER BY qtys DESC;
-- c
SELECT city, COUNT(*) AS qtys
FROM db_ws_22.zip
GROUP BY city
HAVING qtys <=1
ORDER BY qtys DESC;
-- d
SELECT zip_code, city
FROM db_ws_22.zip
WHERE city IN ('Berlin', 'Aachen')
OR City =  "Frankfurt am main";
-- e
SELECT City, COUNT(*) AS qty
FROM db_ws_22.zip
WHERE  1=1
AND city <> 'Hampuri'
GROUP BY city
ORDER BY qty DESC
LIMIT 3;
-- ----------------------------------------------------------------------------------------
-- blatt 6
-- nr 1
CREATE TABLE person 
(
id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
gender INTEGER NOT NULL,
nnam VARCHAR(60) NOT NULL,
fnam VARCHAR(60) NOT NULL,
bdate TIMESTAMP NOT NULL DEFAULT '2014-01-01 06:30:00',
zip_id INT,
str VARCHAR(60) NOT NULL,
tel VARCHAR(40) NOT NULL,
mobil VARCHAR(40) NOT NULL

);
ALTER TABLE person
ADD CONSTRAINT pk_person
PRIMARY KEY (id) 
;
ALTER TABLE person 
MODIFY COLUMN id INT AUTO_INCREMENT
;
-- nr 2
ALTER TABLE person
ADD CONSTRAINT fk_person2zip
FOREIGN KEY(zip_id)
REFERENCES zip (id)
ON DELETE RESTRICT
ON UPDATE RESTRICT ;
-- nr 3
INSERT INTO db_ws_22.person (nnam, fnam, zip_id, str, tel, mobil, gender)
-- 0 = Mrs. // 1 = Mr.
VALUES 	('Rabb', 'Stefan', 10082, 'Musterstr. 12', '123456', '654321', 1),
		('Ivanov', 'Plamen', 10082, 'Musterstr. 12', '123456', '654321', 1),
		('Lösche', 'Colin', 10082, 'Musterstr. 12', '123456', '654321', 1),
		('Steinmer', 'Peter', 10082, 'Musterstr. 12', '123456', '654321', 1),
		('Angela', 'Merkel', 10082, 'Musterstr. 12', '123456', '654321', 1),        
		('Tina', 'Toni', 10082, 'Musterstr. 12', '123456', '654321', 1),        
		('Hook', 'Peter', 10082, 'Musterstr. 12', '123456', '654321', 1),        
		('Carey', 'Mariah', 10082, 'Musterstr. 12', '123456', '654321', 1),        
		('Caliskan', 'Nihat', 10082, 'Musterstr. 12', '123456', '654321', 1),
		('Jonas', 'Scheffner', 10082, 'Musterstr. 12', '123456', '654321', 1);
-- ---------------------------------------------------------------------------------------------------------------
-- blatt 7
-- Nr 1
-- a
DELETE
FROM db_ws_22.zip
WHERE id = '6';
-- b)
DELETE
FROM db_ws_22.zip
WHERE id = 10082;

DELETE
FROM db_ws_22.zip
WHERE id = 14957;
-- nr 2
-- a
CREATE TABLE gender2
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
gender VARCHAR(20) NOT NULL
);
-- b
Insert into gender2 (gender)
Values  ('Mr.'), 
	  ('Mrs.');

UPDATE gender2
SET id = 0
WHERE id = 1
;

UPDATE gender2
SET id = 1
WHERE id = 2
;
-- c
ALTER TABLE gender2
ADD CONSTRAINT fk_person2gender
FOREIGN KEY(Gender)
REFERENCES db_ws_22.gender(id)
ON UPDATE RESTRICT
ON DELETE RESTRICT;
-- -------------------------------------------------------------------------------------------------
-- blatt 8
ALTER TABLE person 
ADD company_name VARCHAR(30),
ADD str_company VARCHAR(60),
ADD zip_company_id INT,
ADD tel_copmany VARCHAR(40),
ADD url VARCHAR(45);
-- f
ALTER TABLE person 
ADD CONSTRAINT fk_person2zip_company 
FOREIGN KEY (zip_company_id)
REFERENCES zip(id)
on update restrict 
on delete restrict;
-- nr2
UPDATE person
SET str_company = str;

UPDATE person
SET zip_company_id = zip_id, tel_company = tel;
-- b
alter table person2
drop ur1 ;
-- c
update person2
set company_name = 'hello'
where id= 1;

update person2
set company_name= 'abmelden'
where id =2;
-- Nr3
ALTER TABLE person
MODIFY COLUMN company_name VARCHAR(60);
-- -----------------------------------------------------------------------------
-- blatt 9
