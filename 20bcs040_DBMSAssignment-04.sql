use mysql;
create table partof
( mealid int , itemid int , quantity numeric(3), discount numeric(3),
primary key(mealid, itemid) );
describe partof;
create table meals
( mealid int , name varchar(20), discription varchar (40),
primary key(mealid) );
describe meals;
create table ads
( slogan varchar(60));
describe ads;
create table menuitems
(itemid int, name varchar(20), price numeric(3), dateadded date,
primary key(itemid) );
describe menuitems;
create table madewith
(itemid int, ingredientid int, quantity numeric(3),
primary key(itemid, ingredientid) );
describe madewith;
create table ingredients
( ingredientid int, name varchar(20), unit numeric(2), unitprice numeric(3), 
foodgroup varchar(20), inventory numeric(4), vendorid int,
primary key(ingredientid) );
describe ingredients;
create table vendor
(vendorid int, companyname varchar(30), repfname varchar(30), replname varchar(30),
referredby varchar(40),
primary key(vendorid) );
describe vendor;
alter table partof
add foreign key(mealid) references meals(mealid);
alter table partof
add foreign key(itemid) references menuitems(itemid);
alter table madewith 
add foreign key(itemid) references menuitems(itemid);
alter table madewith 
add foreign key(ingredientid) references ingredients(ingredientid);
alter table ingredients
add foreign key(vendorid) references vendor(vendorid);
alter table ingredients
modify column inventory numeric(4);
insert into meals values(1, 'panir butter masala', "it is made of panir and butter");
insert into meals values(2, 'Chicken chili', "it is a nonveg item");
insert into meals values(3, 'nanroti_mashroom', "mashroom items");
insert into meals values(4, 'dalfry_roti', 'it is a simple low cost meals');
select * from meals;
insert into menuitems values(1, 'mashroom butter', 120, '2012-04-05');
insert into menuitems values(2, 'paneerChili', 70, '2018-11-03');
insert into menuitems values(3, 'champaranmutton', 380, '2020-06-01');
insert into menuitems values(4, 'chickenkabab', 90, '2011-03-09');
select * from menuitems;
insert into partof values(1, 1, 50, 10);
insert into partof values(2, 3, 120, 12);
insert into partof values(3, 4, 150, 15);
insert into partof values(4, 2, 140, 7);
select * from  partof;
insert into vendor values(1, 'zomata', 'Alex', 'mic', 'jon');
insert into vendor values(2, 'messty', 'jekky', 'cod', 'menis');
insert into vendor values(3, 'keny', 'Alder_dussan', 'k', 'getly');
insert into vendor values(4, 'jubby', 'tom', 'joc', 'met_aser');
select * from vendor;
alter table ingredients 
modify column unit numeric(2);
insert into ingredients values(1, 'kastoori', 5, 70, 'cucumber', 80, 1);
insert into ingredients values(2, 'kemar', 3, 100, 'mango', 300, 2);
insert into ingredients values(3, 'dudumby', 5, 120, 'grape', 140, 3);
insert into ingredients values(4, 'oniontomatogajar', 8, 80, 'salad', 150, 4);
select * from ingredients;
insert into madewith values(1, 1, 50);
insert into madewith values(2, 2, 70);
insert into madewith values(3, 3, 100);
insert into madewith values(4, 4, 150);
select * from madewith;
/* id of vendor who suplies grapes*/
select * from ingredients
where foodgroup='grape' ;
select ingredientid, name, inventory from ingredients
where inventory > 100;
select foodgroup from ingredients
where foodgroup != 'grape' ;
select ingredientid, name, unit, unitprice from ingredients
order by unitprice;
select itemid, name, max(dateadded) from menuitems ;
select repfname from vendor
where repfname regexp '[_]';
select * from ingredients 
where foodgroup != 'salad' ;
select ingredientid, name , unit from ingredients
where unit > 1 ;
select avg(price)
from menuitems;
select sum(price)
from menuitems;
select sum(unit)
from ingredients;
select min(unitprice)
from ingredients;
select   max(unitprice)
from ingredients;
select itemid, name, price from menuitems
order by(price) desc;




