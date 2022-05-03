use mysql;
create table employee
(employeeID numeric(9), firstname varchar(10), lastname varchar(20), deptcode char(5), salary numeric(9,2));
describe employee;
create table department
(deptcode char(5), deptname varchar(30), managerid numeric(9), subdeptof char(5));
describe department;
create table project
(projectid char(8), deptcode char(5), projdescription varchar(200), startdate date, stopdate date, 
revenue numeric(12,2));
describe project;
create table workson
(employeeID numeric(9), projectid char(8), assignedtime numeric(3,2));
describe workson;
alter table project
add primary key (projectid);
alter table department
add primary key(deptcode);
alter table employee 
add foreign key (deptcode) references department(deptcode);
alter table employee
add primary key (employeeID);
alter table workson
add foreign key (employeeID) references employee(employeeID);
alter table project
add foreign key (deptcode) references department(deptcode);
insert into department values('abcde','CSE', 000000001, 'abcde');
insert into department values('CS210', 'CSE', 000000002, 'Jkhlp');
insert into department values('EC590','ECE', 000000003, 'EC100');
insert into department values('ME569', 'ME', 000000004, 'MechE');
insert into department values('ME356','ME', 000000005, 'MechE');
insert into department values('CV124', 'CV', 000000006, 'Civil');
insert into department values('EE444','Electical', 000000007, 'ElecE');
insert into department values('AE222', 'Aeronautical', 000000008, 'AeroE');
select * from department;
insert into employee values(000000001, 'Alex', 'pop', 'CS210', 0060000.00); 
insert into employee values(000000002, 'Bon', 'Thory', 'EC590', 0050000.00); 
insert into employee values(000000003, 'Miler', 'Dec', 'ME569', 0070000.00); 
insert into employee values(000000004, 'Zender', 'Mile', 'ME356', 0080000.00); 
insert into employee values(000000005, 'Bel', 'ford', 'CV124', 0065000.00); 
insert into employee values(000000006, 'Mac', 'Donald', 'EE444', 0068000.00); 
insert into employee values(000000007, 'yerx', 'Deam', 'AE222', 0076000.00); 
insert into employee values(000000008, 'John', 'Berman', 'abcde', 00780000.00); 
select * from employee;
insert into workson values(000000001, 'wfm20134', 9.45);
insert into workson values(000000002, 'abfgs534', 7.25);
insert into workson values(000000003, 'csebda24', 1.20);
insert into workson values(000000004, 'ybs34000', 2.50);
insert into workson values(000000005, 'absdesig', 4.40);
insert into workson values(000000006, 'electoni', 6.26);
insert into workson values(000000007, 'aurdinob', 8.30);
insert into workson values(000000008, 'amnsteel', 3.45);
select * from workson;
insert into project values('wfm20134', 'abcde', 'This Project is to develop Waste food management application
to feed the hungry', '2022-02-03', '2022-05-03', 2100000000.00);
insert into project values('abfgs534', 'CS210', 'It is developed for maximum utilization of CPU'
'2020-01-23', '2022-04-20' , 3000000000.00);
insert into project values('csebda24', 'EC590', 'This project is based on multicore processor',
'2021-01-23', '2022-06-2' , 1050000000.00);
insert into project values('ybs34000', 'ME569', 'it is to optimize OS',
'2019-05-1', '2021-06-2' , 3460000000.00);
insert into project values('absdesig', 'ME356', 'To  update in electric car',
'2019-05-1', '2023-03-20' , 4000000000.00);
insert into project values('electoni', 'CV124', 'Project on a bridge',
'2019-05-1', '2025-03-20' , 3800000000.00);
insert into project values('aurdinob', 'EE444', 'Project on a specific electrical task',
'2019-05-1', '2025-03-20' , 2900000000.00);
select * from project;
select firstname, lastname
from employee;
select * from project
where revenue> 2800000;
select * from project 
where revenue>2000000000 and revenue<3500000000;
select projectid from project
where startdate<'2004-07-01';
select distinct deptcode
from project;

/* SQL Code for assignment-03*/

insert into department values('aa301', 'software', 000000009, 'autoA');
select * from department;
insert into project values('autoattn', 'aa301', 'Project on a automatic attendence system',
'2023-10-10' , '2024-11-06' , 2900000000.00); 
select * from project
where startdate > '2022-06-10';

select projectid, startdate, stopdate,
DATEDIFF(startdate, stopdate) as Date_difference from project;
select distinct startdate from project;

select projectid, startdate from project
order by startdate;
select avg(salary) as Avg_salary from employee;
select min(salary) as Minimum_salary from employee;
select max(salary) as Miximum_salary from employee;

select * from employee
where firstname like 'a%';
select * from employee 
where length(firstname)=6;
insert into department values('BB444', 'SFkmt', 000000010, 'BcutB');
insert into employee values(000000009, 'Mac', 'Donald', 'BB444', 0068000.00);
 
/* 1st way to retriev the rows of employee who works in two department*/

/*select employeeID  from employee as T1, employee as T2
where T1.employeeID=T2.employeeID and T1.deptcode <> T1.deptcode; */

/* 2nd way to retriev the rows of employee who works in two department*/
select employeeID from employee
where deptcode in 
(select deptcode from department group by deptcode
having count(*)>1);

select min(salary) as Minimum_salary, max(salary) as Maximum_salary
from employee;




