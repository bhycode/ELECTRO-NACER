drop database electro_nacer;
create database electro_nacer;
use electro_nacer;


create table User(
    userID varchar(50) PRIMARY KEY,
    userPassword varchar(28) not null
);
describe User;

insert into User(userID, userPassword) values('master', '123456789');
select * from User;





create table ProductCategory(
    categoryID varchar(50) PRIMARY KEY,
    categoryName varchar(100) not null
);
describe ProductCategory;

insert into ProductCategory(categoryID, categoryName) values('#1', 'Ungrouped');
insert into ProductCategory(categoryID, categoryName) values('#2', 'Motor');
insert into ProductCategory(categoryID, categoryName) values('#3', 'Cable');
insert into ProductCategory(categoryID, categoryName) values('#4', 'Sensor');
insert into ProductCategory(categoryID, categoryName) values('#5', 'Arduino');
select * from ProductCategory;



create table Product (
    productID varchar(50) PRIMARY KEY,
    imagePath varchar(100),
    label varchar(100),
    unitPrice float,
    minQuantity float,
    stockQuantity int,
    category varchar(50),
    categoryID_fk varchar(50),
    foreign key (categoryID_fk) references ProductCategory(categoryID)
);

describe Product;


insert into Product (productID, imagePath, label, unitPrice, minQuantity, stockQuantity, categoryID_fk)
values ('#1', 'arduino-cable.jpg', 'Arduino UNO', 39.99, 1, 100, '#3'),
       ('#2', 'arduino-mega.jpg', 'Arduino Mega', 49.99, 10, 100, '#5'),
       ('#3', 'arduino-uno.jpg', 'Arduino Uno', 29.99, 1, 100, '#5'),
       ('#4', 'arduino-shield.jpg', 'Arduino Shield', 19.99, 1, 100, '#5'),
       ('#5', 'distance-sensor.png', 'Distance Sens  or', 9.99, 1, 100, '#4'),
       ('#6', 'gas-sensor.jpg', 'Gas Sensor', 14.99, 1, 100, '#4'),
       ('#7', 'jumpers.jpg', 'Jumpers', 5.99, 1, 100, '#4'),
       ('#8', 'lcd-screen.jpg', 'LCD Screen', 29.99, 1, 100, '#1'),
       ('#9', 'leds.jpg', 'LEDs', 7.99, 1, 100, '#1'),
       ('#10', 'light-sensor.jpg', 'Light Sensor', 12.99, 1, 100, '#4'),
       ('#11', 'motor-drive-controller.jpg', 'Motor Drive Controller', 34.99, 1, 100, '#2'),
       ('#12', 'movement-sensor.jpg', 'Movement Sensor', 17.99, 1, 100, '#4'),
       ('#13', 'servo-motor.jpg', 'Servo Motor', 22.99, 1, 100, '#2'),
       ('#14', 'smart-car-motor.jpg', 'Smart Car Motor', 39.99, 1, 100, '#2'),
       ('#15', 'sound-sensor.jpg', 'Sound Sensor', 14.99, 1, 100, '#4');


select * from Product;