-- Exercise 1
-- Try to DELETE a dataset of your zip table on which you have a reference out of your table person.
SELECT *
FROM person2
;
DELETE
FROM person2
WHERE id = '6'
;
-- .. which you haven’t got a reference out of your table person.

DELETE
FROM person2
WHERE id = 10082
;

DELETE
FROM person2
WHERE id = 14957
;


-- Exercise 2a
-- CREATE a new Table gender with the following settings:

CREATE TABLE gender2
(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
gender VARCHAR(20) NOT NULL
)
;

SELECT * 
FROM gender2
;

SELECT *
FROM person2
;

-- Exercise 2b
-- Add in your table gender the following two attributes:
INSERT INTO gender2 (gender)
VALUES('Mr.'), 
	  ('Mrs.')
;

-- Updated wrong ID incrementation
UPDATE gender2
SET id = 0
WHERE id = 1
;

UPDATE gender2
SET id = 1
WHERE id = 2
;

-- Exercise 2c
-- Add now a constraint with the name fk_person2gender and
-- set the gender as a FOREIGN KEY from the table person which REFERENCES to
-- the id from gender. Please use RESTRICT for UPDATE & DELETE!


ALTER TABLE person2 
ADD CONSTRAINT fk_person22gender
FOREIGN KEY(gender)
REFERENCES gender(id)
ON UPDATE RESTRICT
ON DELETE RESTRICT
;







