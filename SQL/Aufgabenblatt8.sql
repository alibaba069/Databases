-- Aufgabenblatt 8
SELECT *
FROM db_ws_22.person;

desc person;
select * from db_ws_22.person;
-- Nr 1
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
-- Nr2
-- a 
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
MODIFY COLUMN company_name VARCHAR(60)

