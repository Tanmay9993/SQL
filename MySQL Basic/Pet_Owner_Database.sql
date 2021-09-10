create	database test;
use test;

create table addresses (
	id int ,
    house_number int,
    city varchar (20),
    postcode varchar (7)
);

create table people (
	id int,
    first_name varchar (20),
    last_name varchar (20),
    address_id int
);

create table pets (
	id int,
    name varchar (20),
    species varchar (20),
    owner_id int
);

-- describe table_name; -> gives details about the table

-- #add primary key
-- alter table table_name
-- add primary key (column_name);

-- #drop primary key
-- alter table table_name
-- drop primary key;

-- #add foreign key
-- alter table table_name
-- add constraint const_name       -- not necessary to add
-- foreign key (column_name) references table_name (column_name);

-- #drop foreign key
-- alter table table_name
-- drop foreign key const_name;

alter table addresses
add primary key (id);

alter table people
add constraint peop_add
foreign key (address_id) references addresses (id);

-- unique constraint -> all elements must be unique for the column
-- #add unique constraint to a column
-- alter table table_name
-- add constraint const_name unique (column_name);

-- #drop unique constraint to a column
-- alter table table_name
-- drop index const_name;

-- #change column/column name
-- alter table table_name change `old_name` `new_name` data_type;

select * from pets;
alter table pets change `species` `animal` varchar (20);

-- #change column data type
-- alter table table_name modify column_name data_type

describe addresses;
alter table addresses modify city varchar (15);


-- challenges
-- Add a primart key to the id fields in the pets anf people tables
alter table people
add primary key (id);
alter table pets
add primary key (id);

-- Add a foreign key to the owner_id field in the pets table referencing
-- the id field in the people table
alter table pets
add constraint pet_peop
foreign key (owner_id) references people (id);

-- Add a column named email to the people table
alter table people
add email varchar (40);

-- Add a unique constraint to the email column in the people table
alter table people
add constraint email_uni unique (email);

-- Rename the name column in the pets table to 'first_name'
alter table pets change `name` `first_name` varchar (20);
select * from pets;

-- Change the postcode data type to CHAR(7) in the address table
alter table addresses modify postcode char (7);

describe addresses;









