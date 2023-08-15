-- Aufgabenlatt 7
-- person tabelle
SELECT *
FROM db_ws_22.person;

-- zip tabelle
SELECT *
FROM db_ws_22.zip;

-- Nr 1
-- a)
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
-- Nr 2
-- a)
CREATE TABLE db_ws_22.gender(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
gender VARCHAR(20)NOT NULL
);
-- b)
INSERT INTO db_ws_22.gender (Gender)
VALUES ('Mr.'), 
	  ('Mrs.');
      
UPDATE db_ws_22.gender
SET id = 0
WHERE id = 1
;

UPDATE db_ws_22.gender
SET id = 1
WHERE id = 2
;
-- c)
ALTER TABLE db_ws_22.gender
ADD CONSTRAINT fk_person2gender
FOREIGN KEY(Gender)
REFERENCES db_ws_22.gender(id)
ON UPDATE RESTRICT
ON DELETE RESTRICT;