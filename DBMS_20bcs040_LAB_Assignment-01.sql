use mysql;
create table Category_details
( category_id numeric(2), category_name varchar(30));
describe Category_details;

create table Sub_category_details 
( Sub_category_id numeric(2), category_id numeric(2), Sub_category_name varchar(30));
describe Sub_category_details;

create table Product_details 
(product_id numeric(6), category_id numeric(2), Sub_category_id numeric(2), product_name varchar(30));
describe product_details;

alter table category_details
add primary key(category_id);
describe category_details; 

alter table Sub_category_details
add constraint sci_PK primary key(Sub_category_id);

alter table Sub_category_details
add constraint ci_FK foreign key(category_id) references category_details(category_id);

alter table product_details
add primary key(product_id);

alter table product_details
add constraint Pci_FK foreign key(category_id) references category_details(category_id); 
alter table product_details
add constraint Psci_FK foreign key(Sub_category_id) references Sub_category_details(Sub_category_id);

alter table product_details add price numeric(2);

alter table product_details
modify column price numeric(6,2);

insert into Category_details values(10, 'simple');
insert into Category_details values(11, 'Medium');
insert into Category_details values(12, 'Advance');
insert into Category_details values(13, 'poor');
select * from Category_details;

insert into Sub_Category_details values(20, 10, 'simple Handmade');
insert into Sub_Category_details values(21, 11, 'lower');
insert into Sub_Category_details values(22, 12, 'Advance feature');
insert into Sub_Category_details values(23, 13, 'poor class');
select * from Sub_category_details;

insert into Product_details values(123456, 10, 20, 'Shirts', 1000.00);
insert into Product_details values(100006, 11, 21, 'saries', 2000.00);
insert into Product_details values(120006, 12, 22, 'Mobile Phones', 9500.00);
insert into Product_details values(103456, 13, 23, 'battery', 0500.00);
select * from Product_details;

alter table Product_details drop price;
select * from Product_details;