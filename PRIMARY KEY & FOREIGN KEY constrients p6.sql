create table city(
	cid  int not null auto_increment,
    city varchar(50) not null,
    primary key (cid)
);

use alitest;
insert into city(city)
values
("Lahor"),
("Layyah"),
("Multan");

create table personal(
	id int not null,
    name varchar(30) not null,
    percentage int not null,
    age int not null,
    gender varchar(1) not null,
    city int not null,
    primary key(id),
    foreign key (city) references city(cid)
);

INSERT INTO personal(id,name,percentage,age,gender,city)
VALUES
(1,"Ram Kumar","45","13","M",1),
(2,"Sarita Kumari","56","21","F",2),
(3,"Salman Khan","62","20","M",1),
(4,"Juhi Chawla","47","18","F",3),
(5,"Anil Kapoor","74","22","M",1),
(6,"John Abraham","64","21","M",2),
(7,"Shahid Kapoor","52","20","M",1);


