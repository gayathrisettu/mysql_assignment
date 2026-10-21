create database employee;
use employee;

create table departments(
department_id int primary key,
department_name varchar(100) not null
);

create table location(
location_id int primary key,
location varchar(50) unique not null
);
 
 create table employees(
 employee_id int primary key,
 employee_name varchar(50) not null,
 gender enum ('M','F'),
 age int,
 hire_date date,
 designation varchar(100),
 department_id int,
 location_id int,
 salary decimal(10,2)
 );
  
  -- alter commands
 alter table employees add column email varchar(100);
 alter table employees change designation designation varchar(150);
 alter table employees drop column age;
 alter table employees add column age int;
 alter table employees add constraint chk_age check(age>=18);
 alter table employees modify hire_date date default(current_date);
 alter table employees rename column hire_date to date_of_joining;
 alter table employees modify date_of_joining date default(current_date);
 alter table location modify location_id int auto_increment;
 
 -- rename commands
 rename table departments to departments_info;
 rename table location to locations;
 
 alter table employees add constraint fk_department foreign key (department_id) references departments_info(department_id);
 alter table employees add constraint fk_location foreign key (location_id) references locations(location_id);
 
 
 truncate table employees;
 
 drop table employees;
 drop table employee;
 

