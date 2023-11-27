use alitest;
select p.id,p.name,p.percentage,p.age,p.gender,c.cityname
from personal p left join city c
on c.cid=p.city;

select p.id,p.name,p.percentage,p.age,p.gender,c.cityname
from personal p right join city c
on c.cid=p.city;