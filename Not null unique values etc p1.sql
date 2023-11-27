use alitest;
CREATE table collage(
	id int not null unique,
    name varchar(30) not null,
    age int not null check(age>=18),
    gender varchar(10) not null,
    phone bigint not null unique,
    city varchar(10) NOT NULL default "layyah"
);