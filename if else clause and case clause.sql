use alitest;
select id,name,percentage, 
IF(percentage>=33,"Pass","Fail") AS Result
from personal;


select id,name,percentage, 
case
	when percentage>=90 and percentage<=100 then "First position"
    when percentage>=85 and percentage<=89 then "Second position"
    when percentage>79 and percentage<=84 then "Third position"
    when percentage>=33 and percentage<=79 then "Pass"
    when percentage>0 and percentage<33 then "Fail"
    when percentage=0 then "Fail and shame on you"
    else "Not correct percentage!!"
end as grade
from personal;
