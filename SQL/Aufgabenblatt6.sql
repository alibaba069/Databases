-- Aufgabenblatt 6
SELECT * 
FROM db_ws_22.zip;
-- Nr 1
-- Version 1
-- create table
CREATE TABLE db_ws_22.person
(
id INT PRIMARY KEY AUTO_INCREMENT,
gender INT NOT NULL,
nnam VARCHAR(60) NOT NULL,
fnam VARCHAR(60) NOT NULL,
bdate TIMESTAMP NOT NULL DEFAULT '2014-01-01 06:30:00',
zip_id INT,
str VARCHAR(60) NOT NULL,
tel VARCHAR(40) NOT NULL,
mobil VARCHAR(40) NOT NULL
);
-- show table 
SELECT * 
FROM db_ws_22.person;
-- Variante 2
CREATE TABLE db_ws_22.person
(
id INT NOT NULL,
gender INT NOT NULL,
nnam VARCHAR(60) NOT NULL,
fnam VARCHAR(60) NOT NULL,
bdate TIMESTAMP NOT NULL DEFAULT '2014-01-01 06:30:00',
zip_id INT,
str VARCHAR(60) NOT NULL,
tel VARCHAR(40) NOT NULL,
mobil VARCHAR(40) NOT NULL
);


ALTER TABLE db_ws_22.person
ADD CONSTRAINT pk_person
PRIMARY KEY (id) 
;
ALTER TABLE db_ws_22.person 
MODIFY COLUMN id INT AUTO_INCREMENT
;
-- Nr 2
ALTER TABLE db_ws_22.person
ADD CONSTRAINT fk_person2zip
FOREIGN KEY (zip_id)
REFERENCES db_ws_22.zip (id)
ON DELETE RESTRICT
ON UPDATE RESTRICT 
;
DESC db_ws_22.person;

-- Nr 3
INSERT INTO db_ws_22.person (gender, nnam, fnam, bdate, zip_id, str, tel, mobil)
VALUES (0, 'Mueller', 'Julia', '2000-06-01 00:00:00', 63128, 'Musterstr. 12', '123456', '654321');

INSERT INTO db_ws_22.person (gender, nnam, fnam, bdate, zip_id, str, tel, mobil)
-- 0 = Mrs. // 1 = Mr.
VALUES (0, 'Mueller', 'Julia', '2000-06-01 00:00:00', 10081, 'Musterstr. 12', '123456', '654321')
;

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
-- show table
SELECT * 
FROM db_ws_22.person;
