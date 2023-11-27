use alitest;
/*
INSERT INTO collage(id,name,age,gender,phone,city)
VALUES
(2,"Ali Samtia",21,"M","03032462636","layyah"),
(3,"noman",35,"M","04032462636","Lahor"),
(4,"Ahmed",21,"M","05032462636","Multan"),
(5,"Alia",19,"F","03632462636","Layyah"),
(6,"Aoun",30,"M","03732462636","Layyah"),
(7,"Basit",25,"M","09032462636","Layyah");
*/
/* to sow all */
/*select * from collage; */
/*select id,name,phone from collage;
select id as "ID",name as "Name",phone as "Phone number" from collage;*/

select * from collage where (city!="layyah" and age>=20) or id>4; /*You can use all the operators*/
select * from collage where city in ("layyah","lahor");/*You can also use "Not in"*/
select * from collage where age between 18 and 23;/*You can also use "Not between"*/