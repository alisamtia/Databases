select current_time();
select time("2019-06-30 02:30:20:0240");
select hour("2019-06-30 02:30:20.343");
select minute("2019-06-30 02:30:20.343");
select second("2019-06-30 02:30:20.343");
select microsecond("2019-06-30 02:30:20.343");
select timediff("2019-06-30 06:30:20.24","2019-06-30 02:30:20.32");

select addtime("2019-06-30 06:30:20.43","5:5.0042"); -- add some time to the time
select subtime("2019-06-30 06:30:20.43","5:5.0042"); -- minus some time to the time
select maketime(16,15,20) as Time;
select timestamp("2019-06-30 06:30:20.24") as Time;
select time_format("13:15:20","%h");
select time_to_sec("13:15:20");