use mysql;
create table country
(code varchar(3), name varchar(44), continent varchar(13), region varchar(25),
surfacearea int , indepyear varchar(5), population int, lifeexpectancy varchar(4),
gnp int, gnpold varchar(9), localname varchar(44), governmentform varchar(44), headofstate varchar(32),
capital varchar(24), code2 varchar(22) );
describe country;
alter table country add primary key(code);
insert into city values(1, 'delhi', 01, 'new delhi', 100000);
insert into city values(2, 'francy', 02, 'fansi', 400000);
insert into city values(3, 'mistran', 03, 'mistree', 150000);
insert into city values(4, 'januh', 04, 'janun', 50000);
insert into city values(5, 'nasis', 05, 'new colombo', 120000);
create table city
(id int primary key, name varchar(27), countrycode varchar(3), district varchar(20), population int );
alter table city add foreign key(countrycode) references country(code);
describe city;
insert into country values
(01, 'India', 'Asia', 'north, south, central', 4, '1947', 1500000000, '70', 9, '5', 
'Bharat', 'democracy', 'Ramnath Kovind', 'Delhi', '100');
insert into country values
(02, 'nepal', 'Asia', 'north, south, central', 5, '1988', 40000000, '66', 3, '1', 
'nepal', 'democracy', 'ramanun', 'kathmandu', '101');
insert into country values
(03, 'srilanka', 'Asia', 'north, south, central',  6, '1976', 30000000, '64', 2, '1', 
'lanka', 'democracy', 'Rajpakshe', ' colombo', '102');
insert into country values
(04, 'briten', 'europe', 'north, south, central', 7, '1888', 140000000, '70', 7, '3', 
'england', 'democracy', 'Rund', 'london', '103');
insert into country values
(05, 'france', 'europe', 'north, south, central', 8, '1940', 340000000, '72', 9, '6', 
'francicy', 'democracy', 'vhjdf', 'dsghfdi', '104');
select * from country;
select * from city;

/* query-1*/
/*select continent, avg(population) from country  ;*/

SELECT Country.Continent, FLOOR(AVG(City.Population))
FROM Country, City 
WHERE Country.Code = City.CountryCode 
GROUP BY Country.Continent ;


/*query-2*/
select city.name, country.continent 
from city inner join country on 
city.countrycode = country.code where country.continent = 'asia';

/* query-3*/
  select continent, max(population) from country  group by continent having max(population) ;

select continent, population from country 
where  population in (select  max(population) from country group by continent);

/* query-4*/
select min(lifeexpectancy), continent from country group by continent;
select * from country;
/*query-5*/
select sum(population) from country;

/*query-6*/
select  capital from country where continent = 'europe';

/*Query-7*/
select count( distinct city.district) as count, country.name /*, country.name as country_name*/
from city inner join country on city.countrycode = country.code 
where country.population > 100000000;
