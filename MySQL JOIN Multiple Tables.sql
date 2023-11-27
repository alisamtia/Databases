create table course(
	crid int not null auto_increment,
    couse varchar(30),
    primary key(crid)
);

insert into course(couse)
values
("B.S.C"),
("M.B.B.S"),
("F.S.C");

UPDATE personal
SET courses = 2
WHERE id = 8;

use alitest;
select p.id,p.name,c.city,co.couse from
personal p inner join city c
on p.city = c.cid
inner join course co
on p.courses = co.crid;