create view student_d
as 
select * from
students s inner join city c 
on s.citys = c.cid;

/*
we can also drop and alter view
*/