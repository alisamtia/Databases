select adddate("2019-6-15",interval 1 month) as date; -- add some more time to a date
select subdate("2019-6-15",interval 1 month) as date; -- remove some date from a date
select datediff("2019-06-30","2019-06-15") as date; -- check the difference between some dates
select date_format("2019-06-30 02:30:50:20","%d/%Y/%M %i:%s:%f") as Date;
select current_date();
SELECT MAKEDATE(2017, 200);