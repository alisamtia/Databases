use alitest;
select * from personal
where courses in (select crid from course where couse in ("fa","ma"));
-- where courses=(select crid from course where couse="ma")

select * from personal
where exists (select crid from course where couse ="fa");

select * from personal
where not exists (select crid from course where couse ="fa");