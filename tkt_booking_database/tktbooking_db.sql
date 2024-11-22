
create database tktbooking; 
use tktbooking;


create table user_info (
    user_id int auto_increment primary key,
    user_name varchar(100),
    password varchar(100),
    name varchar(100) not null,
    phno varchar(10),
    email varchar(200),
    address text,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);
select* from user_info;


create table movies_information (
    movie_id int auto_increment primary key,
    movie_title varchar(200),
    duration time,
    rating decimal,
    release_date date,
    audio_language varchar(100),
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);
select * from movies_information;


create table screens_info (
    screen_id int auto_increment primary key,
    screen_name varchar(100),
    location varchar(200),
    city varchar(100),
    state varchar(100),
    country varchar(100),
    seating_capacity int,
    created_by varchar(100),
    create_date date,
    modified_by varchar(100),
    modified_date date
);
select * from screens_info;

select * from showtimes_info;

select * from booking_info;

select * from bookingstatus_info;

select * from transaction_info;

select * from payments_info;



