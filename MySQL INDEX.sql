use alitest;
select * from students
where percentage>30;

create index per_s on students(percentage);
drop index per_s on students;