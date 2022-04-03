-- DDL
create table `employee` (`Id` int , `name` varchar(255) , age int);
alter table `employee` add column `email` varchar(255);
alter table employee drop column email;
alter table employee modify column email varchar(355);
alter table employee rename column `name` to `emp_name`;
drop table employee;

-- DQL
select * from employee;
select * from employee where id=3;
select distinct id from employee order by id   limit 3 offset 1;
select distinct id as `emp_ID` from employee order by id   limit 3 offset 1;
select * from employee where id in (1,3);
select * from employee where id not in (1,3);
select * from employee where id between 1 and 2;
select * from employee where emp_name like '%ay';

-- DML
insert into employee values (2, "Ajay" , 23);
insert into employee values (3, "CCC" , 33);
insert into employee values (4, "DDD" , 44);
insert into employee (ID , emp_name)values (2, "Rahul");
set sql_safe_updates=0;
update employee set age=21 where id=2;

Delete from employee  where id=2;
delete from employee ;
truncate employee;


-- Aggregate Function 
select sum(id) from employee;
select count(emp_name) from employee;