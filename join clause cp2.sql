use alitest;
select p.id,p.name,p.percentage,p.age,p.gender,c.cityname
from personal p inner join city c
on c.cid=p.city
where c.cityname="Layyah"
order by p.name;