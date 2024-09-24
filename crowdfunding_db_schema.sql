 -- drop (if necessary)

 drop table if exists category;
 drop table if exists subcategory; 
 drop table if exists contacts; 
 drop table if exists campaign; 

 -- create category table 
CREATE TABLE category (
	category_id varchar(100) not null,
	category varchar(100) not null, 
	primary key (category_id)
);

-- create subcategory table
CREATE TABLE subcategory (
	subcategory_id varchar(100) not null,
	subcategory varchar(100) not null, 
	primary key (subcategory_id)
);

-- create contacts table 
create table contacts (
	contact_id int not null,
	first_name varchar(100) not null, 
	last_name varchar(100) not null, 
	email varchar(100) not null,
	primary key(contact_id)
);

-- create campaign table 
create table campaign (
	cf_id int not null,
	contact_id int not null, 
	company_name varchar(200) not null, 
	description varchar(200) not null,
	goal NUMERIC not null,
	pledged NUMERIC not null, 
	outcome varchar(200) not null, 
	backers_count int not null, 
	country varchar(200) not null, 
	currency varchar(5) not null,
	launch_date date not null,
	end_date date not null, 
	category varchar(200) not null,
	subcategory varchar(200) not null,
	category_id varchar(200) not null, 
	subcategory_id varchar (200) not null,
		primary key (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from category
select * from subcategory
select * from contacts
select * from campaign