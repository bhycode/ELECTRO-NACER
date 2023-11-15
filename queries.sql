drop database electro_nacer;
create database electro_nacer;
use electro_nacer;


create table User(
    userID varchar(50) PRIMARY KEY,
    username varchar(50) not null,
    password varchar(28) not null
);
describe User;

insert into User(userID, username, password) values('#1', 'Root', '123456789');
select * from User;
