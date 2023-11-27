use alitest;
select * from collage
union all -- use just union to get the result with no duplicacy
select * from cola2;