create database if not exists select_practicse;

#Writing Basic Select Queries


use select_practicse;

create table Employees(
id int primary key auto_increment,
name varchar(225),
email varchar(225),
salary int
);

insert into Employees (name,email,salary) values
("Sanika","jadhavsanika874@gmail.com",20000),
("Snehal","patil@gmail.com",25000),
("Tanishka","tanu@yahho.com",23000),
("Sonali","sonali@gmail.com",32000),
("Pooja","pooja@yahoo.com",5000),
("Vrushali","vrushali@gmail.com",16000);

#1.select (*) all records from table
select * from Employees;

#2.where-->select specific record from table using where
select * from Employees where id=5;
#OR
select id,email from Employees where id=2;

#3.AND-->it return value if both condition is true
select * from Employees where name="Vrushali" AND salary=16000;
#OR
select * from Employees where name="Vrushali" AND salary=15000;

#4.Like --Its used for a patter matching purpose
select * from Employees where name like "S%";
select * from Employees where name like "%i";

#5.Between-->Return value between specific range
select * from Employees where salary between 10000 and 20000;

#6.Order By-->sort the records in table either ascending or descending order
select * from Employees
order by salary asc;

select * from Employees
order by salary desc;