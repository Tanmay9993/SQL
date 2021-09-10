create database example;
use example;

create table people (
id int auto_increment primary key,
	name varchar (20),
    age int,
    gender enum ('M','F')
);

select * from people;

insert into people (name,age,gender)
values ('Emma',21,'F'),
('John',30,'M'),
('Thomas',27,'M'),
('Chris',44,'M'),
('Sally',23,'F'),
('Frank',38,'M');

-- #delete data
-- delete from table_name -> only this command deletes all rows
-- where column_name = val;

delete from people
where gender = 'F';








