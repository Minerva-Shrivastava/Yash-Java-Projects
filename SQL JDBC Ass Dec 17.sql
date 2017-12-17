create database online_training_system;
use online_training_system;
create table userDetails(
	id int(11) auto_increment,
    firstName char(20),
    lastName char(20),
    email varchar(50), 
    contact varchar (10),
    status char(10),
    role char(10),
    userName varchar(20) not null,
    password varchar(20),
    createdDate date, 
    modifiedDate date,
    primary key (id, userName)
);
create table courses(
	id int(10) primary key auto_increment,
    user_id int(11),
    user_name varchar(20) not null,
    FOREIGN KEY (user_id,user_name) REFERENCES userDetails(id,userName),
    course_name char(20)
    );

select * from userDetails;
select * from courses;
drop table userDetails;
drop table courses;