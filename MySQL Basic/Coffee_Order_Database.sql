show databases;
create database coffee_store;
use coffee_store;

create table products (
    id int auto_increment primary key,
    name varchar (20),
    price decimal (4,2)
);

-- show tables;

create table customers (
	id int auto_increment primary key,
    first_name varchar (20),
    last_name varchar (20),
    gender enum ('M','F'),
    phone_num varchar (11)
);

create table orders (
	id int auto_increment primary key,
    product_id int,
    customer_id int,
    order_time datetime,
    foreign key (product_id) references products (id),
    foreign key (customer_id) references customers (id)
);
 
 -- #add table
 -- alter table table_name
 -- add column_name data_type;   -- , for multiple
 
 alter table products
 add type varchar (10),
 add type2 varchar (10);
 
 -- select * from products
 -- displays contents of the table

alter table products
drop type2;

 -- truncate -> drops the table and creates it again but does not add the data.
 -- basically drops the rows.
 -- truncate table table_name;
 
select * from products;
 
 -- #insert data into table
 -- insert into table_name (col1,col2,col3,...,)
 -- values (val1,val2,val3,...,);  -- , for multiple inserts (but 'values' will be written once)
 
insert into products (name,price,type)
values ('espresso', 2.5,'brazil');
insert into products (name,price,type)
values ('macchinato', 2.0,'brazil'),
('cappuccino', 3.0,'costa rica'),
('latte', 3.5,'costa rica'),
('americano', 3.5,'indonesia'),
('flat white', 3.0,'costa rica'),
('filter', 1.5,'india');

-- #update value in column
-- update table_name
-- set col_name = 'val'
-- where col_name = 'new val' 

update products
set type = 'sri lanka'
where id = 6;

-- only id can be used here to set new value
-- to change this -> set sql_safe_updates = 0;
set sql_safe_updates = 0;

update products
set price = 1.75 , type = 'India'
where name = 'filter';
 
select * from products;
select * from customers;
select * from orders;
 
insert into customers (first_name, last_name, gender, phone_num) 
values ('Chris','Martin','M','01123147789'),
('Emma','Law','F','01123439899'),
('Mark','Watkins','M','01174592013'),
('Daniel','Williams','M',null),
('Sarah','Taylor','F','01176348290'),
('Katie','Armstrong','F','01145787353'),
('Michael','Bluth','M','01980289282'),
('Kat','Nash','F','01176987789'),
('Buster','Bluth','M','01173456782'),
('Charlie',null,'F','01139287883'),
('Lindsay','Bluth','F','01176923804'),
('Harry','Johnson','M',null),
('John','Smith','M','01174987221'),
('John','Taylor','M',null),
('Emma','Smith','F','01176984116'),
('Gob','Bluth','M','01176985498'),
('George','Bluth','M','01176984303'),
('Lucille','Bluth','F','01198773214'),
('George','Evans','M','01174502933'),
('Emily','Simmonds','F','01899284352'),
('John','Smith','M','01144473330'),
('Jennifer',null,'F',null),
('Toby','West','M','01176009822'),
('Paul','Edmonds','M','01966947113');
 
insert into orders (product_id,customer_id,order_time)
values (1,1,'2017-01-01 08-02-11'),
(1,2,'2017-01-01 08-05-16'),(5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),
(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),
(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),
(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),
(5,22,'2017-01-03 11-05-33'),(4,3,'2017-01-03 11-08-55'),(3,11,'2017-01-03 12-02-14'),
(2,23,'2017-01-03 13-41-22'),(1,1,'2017-01-04 08-08-56'),(3,10,'2017-01-04 11-23-43'),
(4,12,'2017-01-05 08-30-09'),(7,1,'2017-01-06 09-02-47'),(3,18,'2017-01-06 13-23-34'),
(2,16,'2017-01-07 09-12-39'),(2,14,'2017-01-07 11-24-15'),(4,5,'2017-01-08 08-54-11'),
(1,1,'2017-01-09 08-03-11'),(6,20,'2017-01-10 10-34-12'),(3,3,'2017-01-10 11-02-11'),
(4,24,'2017-01-11 08-39-11'),(4,8,'2017-01-12 13-20-13'),(1,1,'2017-01-14 08-27-10'),
(4,15,'2017-01-15 08-30-56'),(1,7,'2017-01-16 10-02-11'),(2,10,'2017-01-17 09-50-05'),
(1,1,'2017-01-18 08-22-55'),(3,9,'2017-01-19 09-00-19'),(7,11,'2017-01-19 11-33-00'),
(6,12,'2017-01-20 08-02-21'),(3,14,'2017-01-21 09-45-50'),(5,2,'2017-01-22 10-10-34'),
(6,24,'2017-01-23 08-32-19'),(6,22,'2017-01-23 08-45-12'),(6,17,'2017-01-23 12-45-30'),
(2,11,'2017-01-24 08-01-27'),(1,1,'2017-01-25 08-05-13'),(6,11,'2017-01-26 10-49-10'),
(7,3,'2017-01-27 09-23-57'),(7,1,'2017-01-27 10-08-16'),(3,18,'2017-01-27 10-13-09'),
(4,19,'2017-01-27 11-02-40'),(3,10,'2017-01-28 08-03-21'),(1,2,'2017-01-28 08-33-28'),
(1,12,'2017-01-28 11-55-33'),(1,13,'2017-01-29 09-10-17'),(6,6,'2017-01-30 10-07-13'),
(1,1,'2017-02-01 08-10-14'),(2,14,'2017-02-02 10-02-11'),(7,10,'2017-02-02 09-43-17'),
(7,20,'2017-02-03 08-33-49'),(4,21,'2017-02-04 09-31-01'),(5,22,'2017-02-05 09-07-10'),
(3,23,'2017-02-06 08-15-10'),(2,24,'2017-02-07 08-27-26'),(1,1,'2017-02-07 08-45-10'),
(6,11,'2017-02-08 10-37-10'),(3,13,'2017-02-09 08-58-18'),(3,14,'2017-02-10 09-12-40'),
(5,4,'2017-02-10 11-05-34'),(1,2,'2017-02-11 08-00-38'),(3,8,'2017-02-12 08-08-08'),
(7,20,'2017-02-12 09-22-10'),(1,1,'2017-02-13 08-37-45'),(5,2,'2017-02-13 12-34-56'),
(4,3,'2017-02-14 08-22-43'),(5,4,'2017-02-14 09-12-56'),(3,5,'2017-02-15 08-09-10'),
(6,7,'2017-02-15 09-05-12'),(1,8,'2017-02-15 09-27-50'),(2,9,'2017-02-16 08-51-12'),
(3,10,'2017-02-16 13-07-46'),(4,11,'2017-02-17 08-03-55'),(4,12,'2017-02-17 09-12-11'),
(5,10,'2017-02-17 11-41-17'),(6,18,'2017-02-17 13-05-56'),(7,19,'2017-02-18 08-33-27'),
(1,17,'2017-02-19 08-12-31'),(1,1,'2017-02-20 09-50-17'),(3,5,'2017-02-20 09-51-29'),
(4,6,'2017-02-20 10-43-39'),(3,1,'2017-02-21 08-32-17'),(1,1,'2017-02-21 10-30-11'),
(3,2,'2017-02-21 11-08-45'),(4,3,'2017-02-22 11-46-32'),(2,15,'2017-02-22 13-35-16'),
(6,13,'2017-02-23 08-34-48'),(4,24,'2017-02-24 08-32-03'),(2,13,'2017-02-25 08-03-12'),
(7,17,'2017-02-25 09-34-23'),(7,23,'2017-02-25 11-32-54'),(5,12,'2017-02-26 11-47-34'),
(6,4,'2017-02-27 12-12-34'),(1,1,'2017-02-28 08-59-22');

 
 select last_name from customers;
 select first_name , phone_num from customers;
 
 select * from products
 where type = 'costa rica' 
 or price = 2;
 
 select * from products
 where price >= 2.5;
 
 select * from customers
 where phone_num is not null;
 
 -- Exercise 1
 -- From the customers table , select the first name and phone number of all 
 -- females who have a last name of bluth
 select first_name , phone_num from customers
 where gender = 'F'
 and last_name = 'Bluth';
 
 -- From the product table, select the name for all products that have a 
 -- price greater then 3.00 or a coffee origin of sri lanka
 select name from products
 where type = 'sri lanka' 
 or price >= 3;
 
 -- How many male customers dont have a phone number entered into the customers table
 select * from customers
 where phone_num is null
 and gender = 'M';
 
 
 select * from customers
 where last_name in ('taylor','bluth','armstrong');
 
 select * from customers
 where first_name not in ('katie','john','george');
 
 select * from orders
 where order_time between '2017-01-03' and '2017-01-07';
 
 select * from orders
 where customer_id between 6 and 9; 
 
 select * from customers
 where last_name not between 'b' and 'l'; -- ( and ] for range
 
 -- #like
 
 select * from customers
 where last_name like 'w%';
 
 select * from customers
 where last_name like '%o%';
 
 select * from customers
 where first_name like '_o_';
 
 select * from products
 where price like '3%'; 
 
 -- #order by
 
 select * from products
 order by price asc;
 
 select * from products
 order by name desc;
 
 select * from orders 
 where customer_id = 1
 order by order_time asc;
 
 -- Exercise 2
 -- From the products table, select the name and price of all products with a coffee
 -- origin equal to Costa Rica and India. Ordered by name from A-Z 
 select name , price from products
 where type in ('costa rica' ,'india')
 order by name asc;
 
 -- From the orders table , select all the orders from februabry 2017 for 
 -- customers with id's of 2,4,6,8
 select * from orders
 where customer_id in (2,4,6,8)
 and order_time between '2017-02-01' and '2017-02-28' ;

 -- From the customer table, select the first name and phone number of all 
 -- customers who's last name contains the pattern 'ar'
 select first_name, last_name , phone_num from customers
 where last_name like '%ar%';
 
 -- #distinct elements
 
 select distinct customer_id from orders -- both columns wont have same value
 where order_time between '2017-02-01' and '2017-02-28' ;
 
 -- #limit
 
 select * from customers
 limit 5 offset 10;  -- offset will begin the id after the offset value 
 
 -- #column name as alias
 
 select name as coffee , price , type from products;
 
 -- Exercise 3
 -- From the customer table , select distinct last names and order aplhabetically from A-Z
 select distinct last_name from customers
 order by last_name asc;
 
 -- From the orders table, select the first 3 orders placed by customer with id 1, in feb 2017
 select * from orders
 where customer_id = 1
 and order_time between '2017-02-01' and '2017-02-28'
 order by order_time asc
 limit 3;
 
 -- From the products table, select name , price and coffee origin but rename the price
 -- to retail_price in the result sets.
 select name , price as retail_price , type from products;
 
 
 -- inner join retrieves matching values from 2 tables
 -- left join retrieves all data from table 1 and matching rows from table 2
 -- right join is same as left join for table 2
 -- outer join or full join retrieves data from both table (not in sql)
 
 -- #inner join
 
 select * from products;
 select * from orders;
 select * from customers;
 
 select products.name , orders.order_time from orders
 inner join products on orders.product_id = products.id;
 
 select p.name , p.price ,  o.order_time from orders o 
 join products p on o.product_id = p.id
 where o.product_id in (2,4,5)
 order by o.order_time;
 
 -- #left join
 
 update orders
 set customer_id = null
 where id = 1;
 
 select o.id , c.phone_num , c.last_name , o.order_time from orders o
 left join customers c on o.customer_id = c.id
 order by o.order_time
 limit 10; 
    
 select o.id , c.phone_num , c.last_name , o.order_time from customers c
 left join orders o on c.id = o.customer_id
 order by o.order_time
 limit 10; 
    
 -- #right join -- basically switching the tables
 
 select o.id , c.phone_num , c.last_name , o.order_time from customers c
 right join orders o on c.id = o.customer_id
 order by o.order_time
 limit 10; 
 
 -- #joining multiple tables together
 
 select p.name , p.price , c.first_name , c.last_name , o.order_time from products p
 join orders o on p.id = o.product_id
 join customers c on c.id = o.customer_id;
 
 
 select * from products;
 select * from orders;
 select * from customers; 
 
  -- Exercise 1
  -- Select the order id and customers phone number for all orders of product id 4
 select o.id , c.phone_num from orders o
 join customers c on o.customer_id = c.id
 where o.product_id = 4;
 
 -- Select product name and order time for filter coffees sold between Jan 15th 2017
 -- and Fev 14th 2017
 select p.name , o.order_time from products p 
 join orders o on p.id = o.product_id
 where p.name = 'filter'
 and o.order_time between '2017-01-15' and '2017-02-14';
 
 -- Select the product name and price and order time for all orders from females 
 -- in Jan 2017
 select p.name , p.price , o.order_time from products p
 join orders o on p.id = o.product_id
 -- join customers c on c.id = o.customer_id 
 join customers c on o.customer_id = c.id 
 where c.gender = 'F'
 and o.order_time between '2017-01-01' and '2017-01-31';
 
 
 
 
 
 
 
 
 
 
 
 
 