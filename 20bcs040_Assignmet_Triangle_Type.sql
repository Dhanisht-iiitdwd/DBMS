use mysql;
create table triangle 
( A int, B int, C int);

insert into triangle values (20,20,23);
insert into triangle values (20,20,20), (20,21,22), (13,14,30);
select * from triangle;

select case
when A+B <= C or A+C <= B or B+C <= A then 'Not a triangle'
when A = B and B = C then 'Equileteral'
when A = B or B=C or C=A then 'Isosceles'
when A != B and B != C then 'Scelen'
end tuple
from triangle;
/*BImary tree*/
/*either this*/
create table bst
( N int, P int);
insert into bst values(1,2),(3,2),(6,8),(9,8),(2,5),(8,5),(5,NUll);
select * from bst;
select n.n,
  case 
    when max(p.n) is null then 'root'
    when max(c.n) is null then 'leaf'
    else 'inner'
  end as type
from bst n
left join bst p on p.n = n.p
left join bst c on c.p = n.n
group by n.n ;

/* or this*/
SELECT  N,
CASE 
WHEN P IS NULL THEN 'Root' 
WHEN(SELECT COUNT(*) FROM BST WHERE P = T.N) > 0 THEN 'Inner'
ELSE 'Leaf'
END Nodes
FROM BST T
ORDER BY N;

select N, 
case
if P is null then 'root' 
elseif (select count(*) from BST where p=T.N) > 0 then 'inner'
else 'leaf'
end if
from bst order by N;


 