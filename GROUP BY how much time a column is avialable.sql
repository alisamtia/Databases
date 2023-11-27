use alitest;
select city.city, count(personal.city) from personal
inner join city on personal.city = city.cid
group by city
having count(personal.city)>3;