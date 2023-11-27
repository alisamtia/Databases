use alitest;
alter table personal
add email varchar(255); /*Add a new field*/

alter table personal
modify email varchar(255) /*modify a field*/
after name;

alter table personal
add unique (email); /*make a table unique*/

alter table personal
change email email_id varchar(255); /*change a column name*/

alter table personal
drop email; /*delete a column*/

alter table personal
rename students; /*change a table name*/