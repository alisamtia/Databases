select current_date(); -- get date
select sysdate(); -- get date with time
select now(); -- get date with time
-- extract things from a date  just extract
select date('2023-08-18 11:12:54'); -- date
select month('2023-08-18 11:12:54'); -- month
select monthname('2023-08-18 11:12:54'); -- month name
select year('2023-08-18 11:12:54'); -- year
select quarter('2023-08-18 11:12:54'); -- quarter
select day('2023-08-18 11:12:54'); -- day
select dayname('2023-08-18 11:12:54'); -- dayname
select dayofweek('2023-08-18 11:12:54'); -- week day in 1to 
select dayofyear('2023-08-18 11:12:54'); -- day of year 1 to 365
select week('2023-08-18 11:12:54'); -- week in year
select last_day('2023-08-18 11:12:54'); -- last day in this month
select extract(month from '2023-08-18 11:12:54'); -- extract anything all of these at once