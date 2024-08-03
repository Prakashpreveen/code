-- CREATING DATABASE:

create database employees;
use employees;

-- CREATING TABLES:

create table employee (
id integer primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(255) null unique,
dob date not null,
blood_group varchar(3) not null,
created_at datetime not null default current_timestamp,
updated_at datetime not null default current_timestamp)
;

create table executives (
id integer primary key auto_increment,
emp_id integer,
designation varchar(255) not null,
created_at datetime not null default current_timestamp,
updated_at datetime not null default current_timestamp,
foreign key (emp_id) references employee (id)
);

create table employee_detail(
id integer primary key auto_increment,
emp_id integer,
designation varchar(255) not null,
joined_at datetime not null,
salary decimal not null,
rating integer null check (rating >= 0 and rating <= 5),
created_at datetime not null default current_timestamp,
updated_at datetime not null default current_timestamp,
foreign key (emp_id) references employee(id)
);

create table blood_bank (
emp_id integer,
last_donated_on date not null,
foreign key(emp_id) references employee(id)
);
