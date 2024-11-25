
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


create table showtimes_info (
    show_time_id int auto_increment primary key,
    screen_id int,
    show_time time,
    is_active int,
    current_movie_id int,
    created_by varchar(100) default 'system',
    create_date timestamp default current_timestamp,
    modified_by varchar(100) default 'system',
    modified_date timestamp default current_timestamp on update current_timestamp,
    foreign key (screen_id) references screens(screen_id),
    foreign key (current_movie_id) references movies(movie_id)
);
select * from showtimes_info;

create table booking_info (
    booking_id int auto_increment primary key,
    booking_number int,
    user_id int,
    movie_id int,
    show_time_id int,
    screen_id int,
    seat_id int,
    booking_status_id int,
    created_by varchar(100) default 'system',
    create_date timestamp default current_timestamp,
    modified_by varchar(100) default 'system',
    modified_date timestamp default current_timestamp on update current_timestamp,
    
    foreign key (user_id) references users(user_id),
    foreign key (movie_id) references movies(movie_id),
    foreign key (show_time_id) references showtimes(show_time_id),
    foreign key (screen_id) references screens(screen_id),
    foreign key (seat_id) references seats(seat_id),
    foreign key (booking_status_id) references booking_statuses(booking_status_id)
);
select * from booking_info;

create table bookingstatus_info (
    booking_status_id int auto_increment primary key,
    booking_status_code varchar(10),
    description text,
    display_name varchar(50),
    created_by varchar(100) default 'system',
    create_date timestamp default current_timestamp,
    modified_by varchar(100) default 'system',
    modified_date timestamp default current_timestamp on update current_timestamp
);
select * from bookingstatus_info;

create table transaction_info (
    txn_id int auto_increment primary key,
    txn_date timestamp default current_timestamp,
    booking_number int,
    txn_amt decimal(10, 2),
    txn_status varchar(50),
    payment_method_id int,
    created_by varchar(100) default 'system',
    create_date timestamp default current_timestamp,
    modified_by varchar(100) default 'system',
    modified_date timestamp default current_timestamp on update current_timestamp,
    foreign key (payment_method_id) references payment_methods(payment_method_id)
);
select * from transaction_info;


create table payments_info (
    payment_method_id int auto_increment primary key,
    payment_method_name varchar(100)
);
select * from payments_info;



