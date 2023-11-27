use alitest;
SELECT * from collage;
commit;

update collage set age=20 where id=3;
rollback;