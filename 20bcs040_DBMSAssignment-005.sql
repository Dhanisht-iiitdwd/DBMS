use mysql;
create table customer
(cid int, firstname varchar(30), lastname varchar(30));
alter table customer add primary key(cid);
describe customer;
create table product
(pid int, flavour varchar(30), food varchar(30), price numeric(4));
alter table product add primary key(pid);
describe product;
create table receipt
(receiptno int, receiptdate date, cid int);
alter table receipt add primary key(receiptno);
describe receipt;

create table itemlist
(receiptno int, ordinal int, item varchar(30));
describe itemlist;
alter table itemlist modify column item int;
alter table itemlist modify column item varchar(30);
alter table itemlist add primary key(item);
alter table itemlist drop primary key;

insert into customer values(1, "Rakul", 'sah');
insert into customer values(2, "Mohan", 'jha');
insert into customer values(3, "Rajan", 'jha');
insert into customer values(4, "Ruchi", 'rani');
insert into customer values(5, "saurav", 'kaul');
insert into customer values(6, "shyam", 'sah');
insert into customer values(7, "sunil", 'kor');
insert into customer values(8, "Mukesh", 'garg');

select * from customer;
insert into product values(1, "mango", "manrongm", 20.0);
insert into product values(2, "banana", "lastrobery", 80.0);
insert into product values(3, "appy", "Meringue", 320.0);
insert into product values(4, "appy", "tart", 200.0);
insert into product values(5, "lemon", "limica", 25.0);
insert into product values(6, "zelly", "jusylempa", 20.0);
insert into product values(7, "mango", "mirinda", 20.0);
insert into product values(8, "sumy", "korasu", 20.0);
insert into product values(9, "blueberry", "berystrovas", 175.0);
select * from product;
insert into receipt values(1, '2022-03-02', 1);
insert into receipt values(10, '2022-03-02', 1);
insert into receipt values(2, '2022-03-12', 4);
insert into receipt values(3, '2022-03-04', 1);
insert into receipt values(4, '2022-03-02', 5);
insert into receipt values(5, '2022-03-02', 6);
insert into receipt values(6, '2022-03-14', 7);
insert into receipt values(7, '2022-03-22', 8);
insert into receipt values(8, '2022-02-02', 2);
insert into receipt values(9, '2022-01-05', NULL);
select * from receipt;
insert into itemlist values(1, 1, "manrongm");
insert into itemlist values(2, 3, "manrongm,amruthan,slejoh");
insert into itemlist values(3, 4, "champaran meat, schaval");
insert into itemlist values(4, 2, "korasu");
insert into itemlist values(5, 5, "korasu, soup, asnel, moruth");
insert into itemlist values(6, 6, "moruth mimi");
insert into itemlist values(7, 7, "schaval, bamboo curry");
insert into itemlist values(8, 8, "saharsa mutt, jorreattha");
insert into itemlist values(9, 2, "mornoth");
select * from itemlist;
select item 
from itemlist left join receipt
on  itemlist.receiptno = receipt.receiptno and itemlist.receiptno = 9;
select item from itemlist where receiptno=9;
select cid as customer_id, receiptno from receipt
where receiptdate='2022-03-02' and count(receiptno) > 1;
select avg(price) as average_price from product;
 
select pid as product_id, avg(price)
from product 
group by pid
having avg(price) < price;

select customer.cid, customer.firstname, customer.lastname, receipt.receiptno, receipt.receiptdate 
from customer inner join receipt
on customer.cid = receipt.cid and receiptdate = "2022-03-22";
select product.pid, receipt.receiptno, product.price
from product inner join receipt 
on product.pid=receipt.receiptno and price > 25;
select cid, firstname, lastname, receiptno, item
from customer inner join itemlist 
on customer.cid = itemlist.receiptno and count(receiptno) < 2;
select cid, receiptno, firstname, lastname, item
from customer inner join itemlist 
on customer.cid = itemlist.receiptno and itemlist.receiptno = 2;
select cid from customer
where exists  
(cid from receipt);
select flavour, food from product
union 
select item from itemlist;
create view blue_flavour as 
select food, pid, price from product
where flavour = "blueberry";
create view cheap_food as 
select food, pid, flavour, price from product
where price < 70;
create view hot_food as 
select food, pid, flavour, price from product
where count(receiptno) >1;
create view pie_food as 
select lastname, cid from customer;
create view pei_food as 
select receiptno, item from itemlist;
/* selecting product_id (pid), flavour, food from previous table cheap_food*/
create view cheap_view as 
select pid, flavour, food from cheap_food;





