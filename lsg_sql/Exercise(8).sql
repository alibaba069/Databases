
#exercise 8

-- 1. You have received some new requisitions from your Marketing Manager. He decided
-- to add some company informations. So please add the following attributes


desc person;
select * from person;

alter table person
add company_name varchar(30),
add str_company varchar(60),
add zip_company_id int ,
add tel_copmany varchar(40),
add url varchar(45);

 -- 1f. Add a constraint with the name fk_person2zip_company and
-- set the zip_company_id as a FOREIGN KEY from the table person which
-- REFERENCES to the id from zip. Please use RESTRICT for UPDATE & DELETE!

alter table person 
add constraint fk_person22zip_company 
foreign key person(zip_company)
references zip(id)
on update restrict 
on delete restrict;

-- 2. Your Marketing Manages is saying that all your datasets in your table person are so
-- called SOHOs (Small Office / Home Office)


set sql_safe_updates =0;

update perso2
set str_company= str;

update person2 
set zip_company = zi_id ;

update person2
set tel_company = tel ;

set sql_safe_updates =0;


#b 
alter table person2
drop ur1 ;

#c

update person2
set company_name = 'hello'
where id= 1;

update person2
set company_name= 'abmelden'
where id =2;

-- und so weiter 5 stück 


select * from person;

-- 3 While you are filling the company information, you recognized that the field
-- “company_name” is not big enough. That’s why you have to change the datatype in
-- VARCHAR (60)!

alter table person
modify column company_name varchar(60);

desc person;


##### hier hab ich zwischen person 2 und person verwechselet und hab weiter mit person gearbeitet


