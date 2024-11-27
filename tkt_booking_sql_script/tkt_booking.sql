create database tkt_booking;
use tkt_booking;

create table user_info(
user_id int auto_increment primary key,
username varchar(100) not null,
password varchar(100) not null,
fullname varchar(100),
phn_no varchar(50),
email varchar(100),
address varchar(100),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from user_info;

create table screens_info(
screen_id int auto_increment primary key,
screen_name varchar(100) not null,
location varchar(100) not null,
city varchar(100) not null,
state varchar(100) not null, 
country varchar(100) not null,
seating_capacity int not null,
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from screens_info;

create table movies_info(
movie_id int auto_increment primary key,
movie_title varchar(100) not null,
duration int not null,
rating varchar(100),
release_date date,
audio_language varchar(100),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from movies_info;

create table showtimes_info(
showtime_id int auto_increment primary key,
screen_id int not null,
show_time time,
is_active varchar(100),
current_movie_id int not null,
foreign key(screen_id) references screens_info(screen_id),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from showtimes_info;

create table booking_status_info(
booking_status_id int auto_increment primary key,
booking_status_code varchar(100) not null,
description varchar(100),
display_name varchar(100) not null,
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from booking_status_info;

create table seats_info(
seat_id int auto_increment primary key,
screen_id int,
seat_number varchar(50),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from seats_info;

create table booking_info(
booking_id int,
booking_number varchar(100) primary key,
user_id int,
movie_id int,
showtime_id int,
screen_id int,
seat_id int,
booking_status_id int,
foreign key(user_id) references user_info(user_id),
foreign key(movie_id) references movies_info(movie_id),
foreign key(showtime_id) references showtimes_info(showtime_id),
foreign key(screen_id) references screens_info(screen_id),
foreign key(seat_id) references seats_info(seat_id),
foreign key(booking_status_id) references booking_status_info(booking_status_id),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from booking_info;

create table payment_method_info(
payment_method_id int auto_increment primary key,
payment_method_name varchar(100),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from payment_method_info;

create table transaction_info(
txn_id int primary key,
txn_date date,
booking_number varchar(100),
txn_amount decimal(10,2),
txn_status varchar(100),
payment_method_id int,
foreign key(booking_number) references booking_info(booking_number),
foreign key(payment_method_id) references payment_method_info(payment_method_id),
created_by varchar(100),
created_date date,
modified_by varchar(100),
modified_date date
);

select * from transaction_info;




-- select * from user_info;
-- select * from screens_info;
-- select * from movies_info;
-- select * from showtimes_info;
-- select * from booking_status_info;
-- select * from seats_info;
-- select * from booking_info;
-- select * from payment_method_info;
-- select * from transaction_info;




-- select * from user_info;

-- insert into user_info(user_id,username,password,fullname,phn_no,email,address,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'ajay123','password123','Ajay Kumar',9876543210,'ajay.kumar@email.com','Dwaraka Nagar-Vizag','admin','2024-11-01T00:00:00.000','admin','2024-11-01T00:00:00.000'),
-- (2,'neha456','password456','Neha Reddy',9887654321,'neha.reddy@email.com','Beach Road-Vizag','admin','2024-11-02T00:00:00.000','admin','2024-11-02T00:00:00.000'),
-- (3,'rajesh789','password789','Rajesh Gupta',9001234567,'rajesh.gupta@email.com','Madhurawada-Vizag','admin','2024-11-03T00:00:00.000','admin','2024-11-03T00:00:00.000'),
-- (4,'priya112','password112','Priya Patel',9556789012,'priya.patel@email.com','Jagadamba Centre-Vizag','admin','2024-11-04T00:00:00.000','admin','2024-11-04T00:00:00.000'),
-- (5,'vikram223','password223','Vikram Singh',9002345678,'vikram.singh@email.com','Gajuwaka-Vizag','admin','2024-11-05T00:00:00.000','admin','2024-11-05T00:00:00.000'),
-- (6,'divya334','password334','Divya Sharma',9873216540,'divya.sharma@email.com','Siripuram-Vizag','admin','2024-11-06T00:00:00.000','admin','2024-11-06T00:00:00.000'),
-- (7,'arun445','password445','Arun Babu',9898765432,'arun.babu@email.com','Kurmannapalem-Vizag','admin','2024-11-07T00:00:00.000','admin','2024-11-07T00:00:00.000'),
-- (8,'sona556','password556','Sona Mishra',9798765432,'sona.mishra@email.com','Rushikonda-Vizag','admin','2024-11-08T00:00:00.000','admin','2024-11-08T00:00:00.000'),
-- (9,'karan667','password667','Karan Yadav',9865432100,'karan.yadav@email.com','Peddagantyada-Vizag','admin','2024-11-09T00:00:00.000','admin','2024-11-09T00:00:00.000'),
-- (10,'ravi778','password778','Ravi Kumar',9345678901,'ravi.kumar@email.com','MVP Colony-Vizag','admin','2024-11-10T00:00:00.000','admin','2024-11-10T00:00:00.000'),
-- (11,'sandeep889','password889','Sandeep Kaur',9988776655,'sandeep.kaur@email.com','Asilmetta-Vizag','admin','2024-11-11T00:00:00.000','admin','2024-11-11T00:00:00.000'),
-- (12,'shruti990','password990','Shruti Devi',9777665544,'shruti.devi@email.com','Madhurawada-Vizag','admin','2024-11-12T00:00:00.000','admin','2024-11-12T00:00:00.000'),
-- (13,'manoj101','password101','Manoj Kumar',9654321098,'manoj.kumar@email.com','Gajuwaka-Vizag','admin','2024-11-13T00:00:00.000','admin','2024-11-13T00:00:00.000'),
-- (14,'sailaja112','password112','Sailaja Arora',9456782345,'sailaja.arora@email.com','MVP Colony-Vizag','admin','2024-11-14T00:00:00.000','admin','2024-11-14T00:00:00.000'),
-- (15,'ramesh223','password223','Ramesh Kumar',9876543212,'ramesh.kumar@email.com','Kurmannapalem-Vizag','admin','2024-11-15T00:00:00.000','admin','2024-11-15T00:00:00.000'),
-- (16,'vinitha334','password334','Vinitha Gupta',9998876543,'vinitha.gupta@email.com','Jagadamba Centre-Vizag','admin','2024-11-16T00:00:00.000','admin','2024-11-16T00:00:00.000'),
-- (17,'rajesh445','password445','Rajesh Reddy',9876543213,'rajesh.reddy@email.com','Siripuram-Vizag','admin','2024-11-17T00:00:00.000','admin','2024-11-17T00:00:00.000'),
-- (18,'rekha556','password556','Rekha Yadav',9345678902,'rekha.yadav@email.com','Beach Road-Vizag','admin','2024-11-18T00:00:00.000','admin','2024-11-18T00:00:00.000'),
-- (19,'suraj667','password667','Suraj Patil',9123456789,'suraj.patil@email.com','Rushikonda-Vizag','admin','2024-11-19T00:00:00.000','admin','2024-11-19T00:00:00.000'),
-- (20,'suman778','password778','Suman Sharma',9008765432,'suman.sharma@email.com','Peddagantyada-Vizag','admin','2024-11-20T00:00:00.000','admin','2024-11-20T00:00:00.000'),
-- (21,'deepak123','password123','Meghana Divya',7563214878,'meghanadivya@gmail.com','NAD-Vizag','admin','2024-11-21T00:00:00.000','admin','2024-11-23T00:00:00.000'),
-- (22,'bhanush456','password456','Bhanush Dyvapu',9584758612,'bhanushdyvapu@gmail.com','Dwaraka Nagar-Vizag','admin','2024-11-11T00:00:00.000','admin','2024-11-13T00:00:00.000'),
-- (23,'datta789','password789','Datta Sri',9865327412,'dattasri@gmail.com','Beach Road-Vizag','admin','2024-11-12T00:00:00.000','admin','2024-11-15T00:00:00.000'),
-- (24,'harsha012','password012','Harsha Lagudu',6578954516,'harshalagudu@gmail.com','Madhurawada-Vizag','admin','2024-11-13T00:00:00.000','admin','2024-11-17T00:00:00.000'),
-- (25,'dheeraj345','password345','Dheeraj Varaprasad',9865741236,'dheerajvaraprasad@gmail.com','Jagadamba Centre-Vizag','admin','2024-09-01T00:00:00.000','admin','2024-09-03T00:00:00.000'),
-- (26,'rohan678','password678','Rohan Chiguru',9685741230,'rohanchiguru@gmail.com','Gajuwaka-Vizag','admin','2024-09-02T00:00:00.000','admin','2024-09-04T00:00:00.000'),
-- (27,'giri901','password901','Giri Lanka',7894561230,'girilanka@gmail.com','Siripuram-Vizag','admin','2024-09-03T00:00:00.000','admin','2024-09-05T00:00:00.000'),
-- (28,'jayanth234','password234','Jayanth Andukuri',9845671230,'jayanthandhukuri@gmail.com','Kurmannapalem-Vizag','admin','2024-09-04T00:00:00.000','admin','2024-09-06T00:00:00.000'),
-- (29,'manohar567','password567','Manohar Mamidi',4659785612,'manoharmamidi@gmail.com','Rushikonda-Vizag','admin','2024-09-05T00:00:00.000','admin','2024-09-07T00:00:00.000'),
-- (30,'sravan890','password890','Sravan Jana',8956324170,'sravanjana@gmail.com','Peddagantyada-Vizag','admin','2024-09-06T00:00:00.000','admin','2024-09-08T00:00:00.000'),
-- (31,'yogi123','password123','Yogi Krishna',5698741230,'yogiokrishna@gmail.com','MVP Colony-Vizag','admin','2024-09-07T00:00:00.000','admin','2024-09-09T00:00:00.000'),
-- (32,'eswar456','password456','Easwer Thota',9865741230,'eswarthotha@gmail.com','Asilmetta-Vizag','admin','2024-09-08T00:00:00.000','admin','2024-09-10T00:00:00.000'),
-- (33,'vignesh789','password789','Vignesh',8978879885,'vignesh@gmail.com','Madhurawada-Vizag','admin','2024-09-09T00:00:00.000','admin','2024-09-11T00:00:00.000'),
-- (34,'krishna012','password012','Krishna Sai',9874587462,'krishnasai@gmail.com','Gajuwaka-Vizag','admin','2024-09-10T00:00:00.000','admin','2024-09-12T00:00:00.000'),
-- (35,'naveen345','password345','Naveen Karri',9638585296,'naveenkarri@gmail.com','MVP Colony-Vizag','admin','2024-09-11T00:00:00.000','admin','2024-09-13T00:00:00.000'),
-- (36,'kedarnath678','password678','Kedarnath',9638527410,'kedarnath@gmail.com','Kurmannapalem-Vizag','admin','2024-09-12T00:00:00.000','admin','2024-09-14T00:00:00.000'),
-- (37,'vinay901','password901','KBS Vinay',1472583690,'kbsvinay@gmail.com','Jagadamba Centre-Vizag','admin','2024-09-13T00:00:00.000','admin','2024-09-15T00:00:00.000'),
-- (38,'jaswanth234','password234','Jaswanth',9513574862,'jaswanth@gmail.com','Siripuram-Vizag','admin','2024-09-14T00:00:00.000','admin','2024-09-16T00:00:00.000'),
-- (39,'naveen567','password567','Naveen Karri',2589630147,'naveenkarri@gmail.com','Beach Road-Vizag','admin','2024-09-15T00:00:00.000','admin','2024-09-17T00:00:00.000'),
-- (40,'pavan890','password890','Pavan',3698745210,'pavan@gmail.com','Rushikonda-Vizag','admin','2024-09-16T00:00:00.000','admin','2024-09-18T00:00:00.000'),
-- (41,'sriram123','password123','Sriram',1236547890,'sriram@gmail.com','Peddagantyada-Vizag','admin','2024-09-17T00:00:00.000','admin','2024-09-19T00:00:00.000'),
-- (42,'bhavika456','password456','Bhavika',9874563210,'bhavika@gmail.com','NAD-Vizag','admin','2024-09-18T00:00:00.000','admin','2024-09-20T00:00:00.000'),
-- (43,'bhavani789','password789','Bhavani',7485120396,'bhavani@gmail.com','Dwaraka Nagar-Vizag','admin','2024-09-19T00:00:00.000','admin','2024-09-21T00:00:00.000'),
-- (44,'lakshmi012','password012','Lakshmi',9630852014,'lakshmi@gmail.com','Beach Road-Vizag','admin','2024-09-20T00:00:00.000','admin','2024-09-22T00:00:00.000'),
-- (45,'satya345','password345','Satya',4152639878,'satya@gmail.com','Madhurawada-Vizag','admin','2024-09-21T00:00:00.000','admin','2024-09-23T00:00:00.000'),
-- (46,'palak678','password678','Palak',7852369410,'palak@gmail.com','Jagadamba Centre-Vizag','admin','2024-09-22T00:00:00.000','admin','2024-09-24T00:00:00.000'),
-- (47,'hemanth901','password901','Hemanth Koona',9461325870,'hemanthkonna@gmail.com','Gajuwaka-Vizag','admin','2024-09-23T00:00:00.000','admin','2024-09-25T00:00:00.000'),
-- (48,'virat234','password234','Virat Kholi',7896541230,'viratkohli@gmail.com','Siripuram-Vizag','admin','2024-09-24T00:00:00.000','admin','2024-09-26T00:00:00.000'),
-- (49,'rohit567','password567','Rohit Sharma',8520369741,'rohitsharma@gmail.com','Kurmannapalem-Vizag','admin','2024-09-25T00:00:00.000','admin','2024-09-27T00:00:00.000'),
-- (50,'dhoni890','password890','M S Dhoni',7485968574,'msdhoni@gmail.com','Rushikonda-Vizag','admin','2024-09-26T00:00:00.000','admin','2024-09-28T00:00:00.000'),
-- (51,'sachin123','password123','Sachin',7485968596,'sachin@gmail.com','Peddagantyada-Vizag','admin','2024-09-27T00:00:00.000','admin','2024-09-29T00:00:00.000'),
-- (52,'salt456','password456','Phil Salt',9517538264,'philsalt@gmail.com','MVP Colony-Vizag','admin','2024-09-28T00:00:00.000','admin','2024-09-30T00:00:00.000'),
-- (53,'jacks789','password789','Will Jacks',7913648220,'willjacks@gmail.com','Asilmetta-Vizag','admin','2024-09-29T00:00:00.000','admin','2024-10-01T00:00:00.000'),
-- (54,'buttler012','password012','Buttler',7595854565,'buttler@gmail.com','Madhurawada-Vizag','admin','2024-09-30T00:00:00.000','admin','2024-10-02T00:00:00.000'),
-- (55,'livingstone345','password345','Livingstone',8595754565,'livinstone@gmail.cpom','Gajuwaka-Vizag','admin','2024-10-01T00:00:00.000','admin','2024-10-03T00:00:00.000'),
-- (56,'hardik678','password678','Hardik Pandya',8585747496,'hardikpandya@gmail.com','MVP Colony-Vizag','admin','2024-10-02T00:00:00.000','admin','2024-10-04T00:00:00.000'),
-- (57,'manish901','password901','Manish Pandey',8585747485,'manishpandey@gmail.com','Kurmannapalem-Vizag','admin','2024-10-03T00:00:00.000','admin','2024-10-05T00:00:00.000'),
-- (58,'rahul234','password234','KL Rahul',7575848495,'klrahul@gmail.com','Jagadamba Centre-Vizag','admin','2024-10-04T00:00:00.000','admin','2024-10-06T00:00:00.000'),
-- (59,'curran567','password567','Sam Curran',8484757569,'samcurran@gmail.com','Siripuram-Vizag','admin','2024-10-05T00:00:00.000','admin','2024-10-07T00:00:00.000'),
-- (60,'surya890','password890','Surya Kumar',9685749685,'suryakumar@gmail.com','Beach Road-Vizag','admin','2024-10-06T00:00:00.000','admin','2024-10-08T00:00:00.000'),
-- (61,'tilak123','password123','Tilak Varma',6969858574,'tilakvarma@gmail.com','Rushikonda-Vizag','admin','2024-10-07T00:00:00.000','admin','2024-10-09T00:00:00.000'),
-- (62,'samson456','password456','Sanju Samson',5896741263,'sanjusamson@gmail.com','Peddagantyada-Vizag','admin','2024-10-08T00:00:00.000','admin','2024-10-10T00:00:00.000'),
-- (63,'abhishek789','password789','Abhishek',6352417485,'abhishek@gmail.com','NAD-Vizag','admin','2024-10-09T00:00:00.000','admin','2024-10-11T00:00:00.000'),
-- (64,'gill012','password012','Shubman Gill',8596635241,'shubmangill@gmail.com','Dwaraka Nagar-Vizag','admin','2024-10-10T00:00:00.000','admin','2024-10-12T00:00:00.000'),
-- (65,'jaiswal345','password345','Jaswal',4758693214,'jaswal@gmail.com','Beach Road-Vizag','admin','2024-10-11T00:00:00.000','admin','2024-10-13T00:00:00.000'),
-- (66,'pooran678','password678','Pooran',8956237410,'pooran@gmail.com','Madhurawada-Vizag','admin','2024-10-12T00:00:00.000','admin','2024-10-14T00:00:00.000'),
-- (67,'pollard901','password901','Pollard',9510234789,'pollard@gmail.com','Jagadamba Centre-Vizag','admin','2024-10-13T00:00:00.000','admin','2024-10-15T00:00:00.000'),
-- (68,'russell234','password234','Russel',7896352410,'russell@gmail.com','Gajuwaka-Vizag','admin','2024-10-14T00:00:00.000','admin','2024-10-16T00:00:00.000'),
-- (69,'gurbaz567','password567','Gurbaz',7894561230,'gurbaz@gmail.com','Siripuram-Vizag','admin','2024-10-15T00:00:00.000','admin','2024-10-17T00:00:00.000'),
-- (70,'rashid890','password890','Rashid',5465467890,'rashid@gmail.com','Kurmannapalem-Vizag','admin','2024-10-16T00:00:00.000','admin','2024-10-18T00:00:00.000'),
-- (71,'mujeeb123','password123','Mujeeb',7894567890,'mujeeb@gmail.com','Rushikonda-Vizag','admin','2024-10-17T00:00:00.000','admin','2024-10-19T00:00:00.000'),
-- (72,'head456','password456','Travis Head',4567893210,'travishead@gmail.com','Peddagantyada-Vizag','admin','2024-10-18T00:00:00.000','admin','2024-10-20T00:00:00.000'),
-- (73,'short789','password789','Short',7539514862,'short@gmail.com','MVP Colony-Vizag','admin','2024-10-19T00:00:00.000','admin','2024-10-21T00:00:00.000'),
-- (74,'smith012','password012','Smith',2589631470,'smith@gmail.com','Asilmetta-Vizag','admin','2024-10-20T00:00:00.000','admin','2024-10-22T00:00:00.000'),
-- (75,'maxwell345','password345','Maxwell',7539632580,'maxwell@gmail.com','Madhurawada-Vizag','admin','2024-10-21T00:00:00.000','admin','2024-10-23T00:00:00.000'),
-- (76,'david678','password678','TIm David',4569368712,'timdavid@gmail.com','Gajuwaka-Vizag','admin','2024-10-22T00:00:00.000','admin','2024-10-24T00:00:00.000'),
-- (77,'wade901','password901','Wade Koona',7896541230,'wadekonna@gmail.com','MVP Colony-Vizag','admin','2024-10-23T00:00:00.000','admin','2024-10-25T00:00:00.000'),
-- (78,'bumrah234','password234','Bumarah',3685967412,'bumrah@gmail.com','Kurmannapalem-Vizag','admin','2024-10-24T00:00:00.000','admin','2024-10-26T00:00:00.000'),
-- (79,'king567','password567','King Koona',7896325410,'kingkonna@gmail.com','Jagadamba Centre-Vizag','admin','2024-10-25T00:00:00.000','admin','2024-10-27T00:00:00.000'),
-- (80,'charles890','password890','John Charles',7485963210,'johncharles@gmail.com','Siripuram-Vizag','admin','2024-10-26T00:00:00.000','admin','2024-10-28T00:00:00.000'),
-- (81,'miller123','password123','David Miller',7894561230,'davidmiller@gmail.com','Beach Road-Vizag','admin','2024-10-27T00:00:00.000','admin','2024-10-29T00:00:00.000'),
-- (82,'decock456','password456','DeCock',9685741230,'decock@gmail.com','Rushikonda-Vizag','admin','2024-10-28T00:00:00.000','admin','2024-10-30T00:00:00.000'),
-- (83,'klassen789','password789','Klassan',7895412036,'klassen@gmail.com','Peddagantyada-Vizag','admin','2024-10-29T00:00:00.000','admin','2024-10-31T00:00:00.000'),
-- (84,'markram012','password012','Marakram',7485961023,'marakram@gmail.com','NAD-Vizag','admin','2024-10-30T00:00:00.000','admin','2024-11-01T00:00:00.000'),
-- (85,'jansen345','password345','Jansen',9630258741,'jansen@gmail.com','Dwaraka Nagar-Vizag','admin','2024-10-31T00:00:00.000','admin','2024-11-02T00:00:00.000'),
-- (86,'shami678','password678','Shami',7896325410,'shami@gmail.com','Beach Road-Vizag','admin','2024-11-01T00:00:00.000','admin','2024-11-03T00:00:00.000'),
-- (87,'rinku901','password901','Rinku Singh',7595848612,'rinkusingh@gmail.com','Madhurawada-Vizag','admin','2024-11-02T00:00:00.000','admin','2024-11-04T00:00:00.000'),
-- (88,'krunal234','password234','Krunal',8596741230,'krunal@gmail.com','Jagadamba Centre-Vizag','admin','2024-11-03T00:00:00.000','admin','2024-11-05T00:00:00.000'),
-- (89,'raina567','password567','Raina',9512304875,'raina@gmail.com','Gajuwaka-Vizag','admin','2024-11-04T00:00:00.000','admin','2024-11-06T00:00:00.000'),
-- (90,'bhuvi890','password890','Bhubaneswar',7548961230,'bhubaneshwar@gmail.com','Siripuram-Vizag','admin','2024-11-05T00:00:00.000','admin','2024-11-07T00:00:00.000'),
-- (91,'lal420','password420','Mohan Lal',7595426210,'mohanlal420@gmail.com','Kurmannapalem-Vizag','admin','2024-11-06T00:00:00.000','admin','2024-11-08T00:00:00.000'),
-- (92,'JohnD','passwordD','John Doe',7812345678,'john@example.com','Dwaraka Nagar-Vizag','admin','2024-11-07T00:00:00.000','admin','2024-11-09T00:00:00.000'),
-- (93,'bittu240','password240','Bharath',7485823821,'bittu@gmail.com','Beach Road-Vizag','admin','2024-11-08T00:00:00.000','admin','2024-11-10T00:00:00.000'),
-- (94,'JaneD','password2','Jane Doe',9898765432,'jane@example.com','Birla-Vizag','admin','2024-11-09T00:00:00.000','admin','2024-11-11T00:00:00.000'),
-- (95,'vanta143','password143','Vantalakka',8746343921,'vantalakka@gmail.com','Siripuram-Vizag','admin','2024-11-10T00:00:00.000','admin','2024-11-12T00:00:00.000'),
-- (96,'BobS','password3','Bob Smith',9125551111,'bob@example.com','Siripuram-Vizag','admin','2024-11-11T00:00:00.000','admin','2024-11-13T00:00:00.000'),
-- (97,'AliceM','password4','Alice Mark',9722233331,'alice@example.com','Beach Road-Vizag','admin','2024-11-12T00:00:00.000','admin','2024-11-14T00:00:00.000'),
-- (98,'MikeT','password5','Mike Taylor',8777700000,'mike@example.com','Rushikonda-Vizag','admin','2024-11-13T00:00:00.000','admin','2024-11-15T00:00:00.000'),
-- (99,'EmmaW','password6','Emma White',8944455555,'emma@example.com','Peddagantyada-Vizag','admin','2024-11-14T00:00:00.000','admin','2024-11-16T00:00:00.000'),
-- (100,'DavidL','password7','David Lee',8882222212,'david@example.com','NAD-Vizag','admin','2024-11-15T00:00:00.000','admin','2024-11-17T00:00:00.000');


-- select * from screens_info;

-- insert into screens_info(screen_id,screen_name,location,city,state,country,seating_capacity,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'Screen 1','CMR Central','Visakhapatnam','Andhra Pradesh','India',300,'Admin','2023-02-15T00:00:00.000','Admin','2023-11-26T00:00:00.000'),
-- (2,'Screen 2','Mukta A2 Cinemas','Visakhapatnam','Andhra Pradesh','India',250,'Admin','2023-02-16T00:00:00.000','Admin','2023-11-27T00:00:00.000'),
-- (3,'Screen 3','INOX - Varun Beach','Visakhapatnam','Andhra Pradesh','India',400,'Admin','2023-02-17T00:00:00.000','Admin','2023-11-28T00:00:00.000'),
-- (4,'Screen 4','PVR - MVP','Visakhapatnam','Andhra Pradesh','India',350,'Admin','2023-02-18T00:00:00.000','Admin','2023-11-29T00:00:00.000'),
-- (5,'Screen 5','Cinepolis - Jagadamba','Visakhapatnam','Andhra Pradesh','India',450,'Admin','2023-02-19T00:00:00.000','Admin','2023-11-30T00:00:00.000'),
-- (6,'Screen 6','GVK One Mall','Visakhapatnam','Andhra Pradesh','India',200,'Admin','2023-02-20T00:00:00.000','Admin','2023-12-01T00:00:00.000'),
-- (7,'Screen 7','Big Cinemas - Simhachalam','Visakhapatnam','Andhra Pradesh','India',250,'Admin','2023-02-21T00:00:00.000','Admin','2023-12-02T00:00:00.000'),
-- (8,'Screen 8','IMAX - Vizag','Visakhapatnam','Andhra Pradesh','India',500,'Admin','2023-02-22T00:00:00.000','Admin','2023-12-03T00:00:00.000'),
-- (9,'Screen 9','MMR Cinemas','Visakhapatnam','Andhra Pradesh','India',400,'Admin','2023-02-23T00:00:00.000','Admin','2023-12-04T00:00:00.000'),
-- (10,'Screen 10','Ambica Cinema','Visakhapatnam','Andhra Pradesh','India',300,'Admin','2023-02-24T00:00:00.000','Admin','2023-12-05T00:00:00.000'),
-- (11,'Screen 11','Star Cinemas','Visakhapatnam','Andhra Pradesh','India',350,'Admin','2023-02-25T00:00:00.000','Admin','2023-12-06T00:00:00.000'),
-- (12,'Screen 12','Platinum Cinemas','Visakhapatnam','Andhra Pradesh','India',250,'Admin','2023-02-26T00:00:00.000','Admin','2023-12-07T00:00:00.000'),
-- (13,'Screen 13','Silver Screen','Visakhapatnam','Andhra Pradesh','India',200,'Admin','2023-02-27T00:00:00.000','Admin','2023-12-08T00:00:00.000'),
-- (14,'Screen 14','Rama Cinema','Visakhapatnam','Andhra Pradesh','India',150,'Admin','2023-02-28T00:00:00.000','Admin','2023-12-09T00:00:00.000'),
-- (15,'Screen 15','Sun Cinemas','Visakhapatnam','Andhra Pradesh','India',300,'Admin','2023-03-01T00:00:00.000','Admin','2023-12-10T00:00:00.000'),
-- (16,'Screen 16','PVR - Forum Mall','Bangalore','Karnataka','India',350,'Admin','2023-03-02T00:00:00.000','Admin','2023-12-11T00:00:00.000'),
-- (17,'Screen 17','INOX - MG Road','Bangalore','Karnataka','India',400,'Admin','2023-03-03T00:00:00.000','Admin','2023-12-12T00:00:00.000'),
-- (18,'Screen 18','GVK One Mall','Hyderabad','Telangana','India',250,'Admin','2023-03-04T00:00:00.000','Admin','2023-12-13T00:00:00.000'),
-- (19,'Screen 19','Cinepolis - Banjara Hills','Hyderabad','Telangana','India',450,'Admin','2023-03-05T00:00:00.000','Admin','2023-12-14T00:00:00.000'),
-- (20,'Screen 20','INOX - Hitech City','Hyderabad','Telangana','India',400,'Admin','2023-03-06T00:00:00.000','Admin','2023-12-15T00:00:00.000'),
-- (21,'Screen 21','AMPA Skywalk','Chennai','Tamil Nadu','India',350,'Admin','2023-03-07T00:00:00.000','Admin','2023-12-16T00:00:00.000'),
-- (22,'Screen 22','Deluxe Theatre','Chennai','Tamil Nadu','India',300,'Admin','2023-03-08T00:00:00.000','Admin','2023-12-17T00:00:00.000'),
-- (23,'Screen 23','INOX - Phoenix Market City','Chennai','Tamil Nadu','India',500,'Admin','2023-03-09T00:00:00.000','Admin','2023-12-18T00:00:00.000'),
-- (24,'Screen 24','Sathyam Cinemas','Chennai','Tamil Nadu','India',250,'Admin','2023-03-10T00:00:00.000','Admin','2023-12-19T00:00:00.000'),
-- (25,'Screen 25','PVR - Lulu Mall','Kochi','Kerala','India',350,'Admin','2023-03-11T00:00:00.000','Admin','2023-12-20T00:00:00.000'),
-- (26,'Screen 26','Prathibha Cinemas','Trivandrum','Kerala','India',200,'Admin','2023-03-12T00:00:00.000','Admin','2023-12-21T00:00:00.000'),
-- (27,'Screen 27','Karachi Theatre','Coimbatore','Tamil Nadu','India',250,'Admin','2023-03-13T00:00:00.000','Admin','2023-12-22T00:00:00.000'),
-- (28,'Screen 28','Paradise Mall','Visakhapatnam','Andhra Pradesh','India',300,'Admin','2023-03-14T00:00:00.000','Admin','2023-12-23T00:00:00.000'),
-- (29,'Screen 29','Big Cinemas - T Nagar','Chennai','Tamil Nadu','India',400,'Admin','2023-03-15T00:00:00.000','Admin','2023-12-24T00:00:00.000'),
-- (30,'Screen 30','Cinepolis - Kochi','Kochi','Kerala','India',350,'Admin','2023-03-16T00:00:00.000','Admin','2023-12-25T00:00:00.000');


-- select * from movies_info;

-- insert into movies_info(movie_id,movie_title,duration,rating,release_date,audio_language,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'Avengers: Endgame',181,'PG-13','2019-04-26T00:00:00.000','English','Admin','2018-01-01T00:00:00.000','Admin','2019-04-25T00:00:00.000'),
-- (2,'The Lion King',118,'PG','2019-07-19T00:00:00.000','English','Admin','2017-06-01T00:00:00.000','Admin','2019-07-18T00:00:00.000'),
-- (3,'Joker',122,'R','2019-10-04T00:00:00.000','English','Admin','2018-03-01T00:00:00.000','Admin','2019-10-03T00:00:00.000'),
-- (4,'Spider-Man: Far From Home',129,'PG-13','2019-07-02T00:00:00.000','English','Admin','2018-04-01T00:00:00.000','Admin','2019-07-01T00:00:00.000'),
-- (5,'Toy Story 4',104,'PG','2019-06-21T00:00:00.000','English','Admin','2017-09-01T00:00:00.000','Admin','2019-06-20T00:00:00.000'),
-- (6,'The Hunger Games: The Ballad of Songbirds & Snakes',157,'PG-13','2024-11-17T00:00:00.000','English','Admin','2024-11-01T00:00:00.000','Admin','2024-11-17T00:00:00.000'),
-- (7,'Killers of the Flower Moon',206,'R','2024-10-20T00:00:00.000','English','Admin','2024-09-15T00:00:00.000','Admin','2024-10-19T00:00:00.000'),
-- (8,'The Marvels',105,'PG-13','2024-11-10T00:00:00.000','English','Admin','2024-10-01T00:00:00.000','Admin','2024-11-09T00:00:00.000'),
-- (9,'Dangal',161,'U/A','2016-12-23T00:00:00.000','Hindi','Admin','2016-10-01T00:00:00.000','Admin','2016-12-23T00:00:00.000'),
-- (10,'Lagaan',224,'U/A','2001-06-15T00:00:00.000','Hindi','Admin','2001-05-01T00:00:00.000','Admin','2001-06-15T00:00:00.000'),
-- (11,'RRR',187,'UA','2022-03-25T00:00:00.000','Telugu','Admin','2022-03-01T00:00:00.000','Admin','2022-03-25T00:00:00.000'),
-- (12,'Pushpa: The Rise',179,'U/A','2021-12-17T00:00:00.000','Telugu','Admin','2021-11-01T00:00:00.000','Admin','2021-12-17T00:00:00.000'),
-- (13,'Baahubali: The Conclusion',167,'U/A','2017-04-28T00:00:00.000','Telugu','Admin','2017-04-01T00:00:00.000','Admin','2017-04-28T00:00:00.000'),
-- (14,'KGF: Chapter 2',168,'U/A','2022-04-14T00:00:00.000','Kannada','Admin','2022-03-01T00:00:00.000','Admin','2022-04-14T00:00:00.000'),
-- (15,'Jawan',150,'U/A','2023-09-07T00:00:00.000','Hindi','Admin','2023-08-01T00:00:00.000','Admin','2023-09-07T00:00:00.000'),
-- (16,'Brahmastra: Part One – Shiva',168,'U/A','2022-09-09T00:00:00.000','Hindi','Admin','2022-08-01T00:00:00.000','Admin','2022-09-09T00:00:00.000'),
-- (17,'Spider-Man: No Way Home',148,'PG-13','2021-12-17T00:00:00.000','English','Admin','2021-10-01T00:00:00.000','Admin','2021-12-17T00:00:00.000'),
-- (18,'The Kashmir Files',170,'U/A','2022-03-11T00:00:00.000','Hindi','Admin','2022-02-01T00:00:00.000','Admin','2022-03-11T00:00:00.000'),
-- (19,'Laal Singh Chaddha',159,'U/A','2022-08-11T00:00:00.000','Hindi','Admin','2022-07-01T00:00:00.000','Admin','2022-08-11T00:00:00.000'),
-- (20,'Sooryavanshi',145,'U/A','2021-11-05T00:00:00.000','Hindi','Admin','2021-10-01T00:00:00.000','Admin','2021-11-05T00:00:00.000'),
-- (21,'Mr. Bean''s Holiday',90,'PG','2007-03-30T00:00:00.000','English','Admin','2007-01-01T00:00:00.000','Admin','2007-03-30T00:00:00.000'),
-- (22,'Johnny English',88,'PG','2003-04-06T00:00:00.000','English','Admin','2003-01-01T00:00:00.000','Admin','2003-04-06T00:00:00.000'),
-- (23,'Johnny English Reborn',101,'PG','2011-10-28T00:00:00.000','English','Admin','2011-08-01T00:00:00.000','Admin','2011-10-28T00:00:00.000'),
-- (24,'Avengers: Infinity War',149,'PG-13','2018-04-27T00:00:00.000','English','Admin','2017-08-01T00:00:00.000','Admin','2018-04-25T00:00:00.000'),
-- (25,'Iron Man',126,'PG-13','2008-05-02T00:00:00.000','English','Admin','2007-01-01T00:00:00.000','Admin','2008-05-02T00:00:00.000'),
-- (26,'Kung Fu Panda',92,'PG','2008-06-06T00:00:00.000','English','Admin','2008-04-01T00:00:00.000','Admin','2008-06-06T00:00:00.000'),
-- (27,'Kung Fu Panda 2',90,'PG','2011-05-26T00:00:00.000','English','Admin','2011-05-01T00:00:00.000','Admin','2011-05-26T00:00:00.000'),
-- (28,'Kung Fu Panda 3',95,'PG','2016-01-29T00:00:00.000','English','Admin','2015-12-01T00:00:00.000','Admin','2016-01-29T00:00:00.000'),
-- (29,'Cars',117,'G','2006-06-09T00:00:00.000','English','Admin','2006-05-01T00:00:00.000','Admin','2006-06-09T00:00:00.000'),
-- (30,'Cars 2',106,'G','2011-06-24T00:00:00.000','English','Admin','2011-05-01T00:00:00.000','Admin','2011-06-24T00:00:00.000'),
-- (31,'Cars 3',102,'G','2017-06-16T00:00:00.000','English','Admin','2017-05-01T00:00:00.000','Admin','2017-06-16T00:00:00.000'),
-- (32,'Zootopia',108,'PG','2016-03-17T00:00:00.000','English','Admin','2015-12-01T00:00:00.000','Admin','2016-03-17T00:00:00.000'),
-- (33,'Up',96,'G','2009-05-29T00:00:00.000','English','Admin','2009-01-01T00:00:00.000','Admin','2009-05-29T00:00:00.000'),
-- (34,'WALL-E',98,'G','2008-06-27T00:00:00.000','English','Admin','2008-05-01T00:00:00.000','Admin','2008-06-27T00:00:00.000'),
-- (35,'Finding Nemo',100,'G','2003-05-30T00:00:00.000','English','Admin','2003-03-01T00:00:00.000','Admin','2003-05-30T00:00:00.000'),
-- (36,'Arya',144,'U/A','2004-03-14T00:00:00.000','Telugu','Admin','2004-02-01T00:00:00.000','Admin','2004-03-14T00:00:00.000'),
-- (37,'Monsters',92,'G','2001-11-02T00:00:00.000','English','Admin','2001-09-01T00:00:00.000','Admin','2001-11-02T00:00:00.000'),
-- (38,'The Incredibles',115,'PG','2004-11-05T00:00:00.000','English','Admin','2004-10-01T00:00:00.000','Admin','2004-11-05T00:00:00.000'),
-- (39,'Shrek',90,'PG','2001-04-22T00:00:00.000','English','Admin','2001-03-01T00:00:00.000','Admin','2001-04-22T00:00:00.000'),
-- (40,'Shrek 2',93,'PG','2004-05-19T00:00:00.000','English','Admin','2004-04-01T00:00:00.000','Admin','2004-05-19T00:00:00.000'),
-- (41,'Shrek 3',93,'PG','2007-05-18T00:00:00.000','English','Admin','2007-04-01T00:00:00.000','Admin','2007-05-18T00:00:00.000'),
-- (42,'The Croods',98,'PG','2013-03-22T00:00:00.000','English','Admin','2013-01-01T00:00:00.000','Admin','2013-03-22T00:00:00.000'),
-- (43,'The Croods: A New Age',95,'PG','2020-11-25T00:00:00.000','English','Admin','2020-10-01T00:00:00.000','Admin','2020-11-25T00:00:00.000'),
-- (44,'Despicable Me',95,'PG','2010-07-09T00:00:00.000','English','Admin','2010-06-01T00:00:00.000','Admin','2010-07-09T00:00:00.000'),
-- (45,'Despicable Me 2',98,'PG','2013-07-03T00:00:00.000','English','Admin','2013-06-01T00:00:00.000','Admin','2013-07-03T00:00:00.000'),
-- (46,'Despicable Me 3',96,'PG','2017-06-30T00:00:00.000','English','Admin','2017-05-01T00:00:00.000','Admin','2017-06-30T00:00:00.000'),
-- (47,'Minions',91,'PG','2015-07-10T00:00:00.000','English','Admin','2015-06-01T00:00:00.000','Admin','2015-07-10T00:00:00.000'),
-- (48,'Kung Fu Panda: Secrets of the Furious Five',45,'PG','2008-11-25T00:00:00.000','English','Admin','2008-11-01T00:00:00.000','Admin','2008-11-25T00:00:00.000'),
-- (49,'Kung Fu Panda: Legends of Awesomeness',22,'TV-Y','2011-11-07T00:00:00.000','English','Admin','2011-10-01T00:00:00.000','Admin','2011-11-07T00:00:00.000'),
-- (50,'Monsters University',104,'G','2013-06-21T00:00:00.000','English','Admin','2013-05-01T00:00:00.000','Admin','2013-06-21T00:00:00.000'),
-- (51,'Puspha the rule',180,'U/A','2024-12-05T00:00:00.000','Telugu','Admin','2014-10-20T00:00:00.000','Admin','2015-07-22T00:00:00.000'),
-- (52,'Mr.Bachan',135,'U/A','2024-08-15T00:00:00.000','Telugu','Admin','2014-10-21T00:00:00.000','Admin','2016-07-22T00:00:00.000'),
-- (53,'Acharya',169,'UA','2022-04-29T00:00:00.000','Telugu','Admin','2014-10-22T00:00:00.000','Admin','2016-07-23T00:00:00.000'),
-- (54,'Agent',140,'U/A','2023-04-28T00:00:00.000','Telugu','Admin','2014-10-23T00:00:00.000','Admin','2016-07-24T00:00:00.000'),
-- (55,'Bhola Shankar',155,'U/A','2023-08-11T00:00:00.000','Telugu','Admin','2014-10-24T00:00:00.000','Admin','2016-07-25T00:00:00.000'),
-- (56,'Stree 2',137,'U/A','2024-08-15T00:00:00.000','Telugu','Admin','2014-10-25T00:00:00.000','Admin','2016-07-26T00:00:00.000'),
-- (57,'Double Ismart',175,'U/A','2024-08-15T00:00:00.000','Telugu','Admin','2014-10-26T00:00:00.000','Admin','2016-07-27T00:00:00.000'),
-- (58,'Bramothasavam',169,'U/A','2016-06-23T00:00:00.000','Telugu','Admin','2014-10-27T00:00:00.000','Admin','2016-07-28T00:00:00.000'),
-- (59,'Skanda',133,'U/A','2023-10-23T00:00:00.000','Telugu','Admin','2014-10-28T00:00:00.000','Admin','2016-07-29T00:00:00.000'),
-- (60,'Animal',210,'R','2023-12-01T00:00:00.000','Telugu','Admin','2014-10-29T00:00:00.000','Admin','2016-07-30T00:00:00.000');


-- select * from showtimes_info;

-- insert into showtimes_info(showtime_id,screen_id,show_time,is_active,current_movie_id,created_by,created_date,modified_by,modified_date)
-- values 
-- (1,1,'0:0:0.036000',TRUE,1,'Admin','2023-02-20T00:00:00.000','Admin','2023-02-20T00:00:00.000'),
-- (2,1,'0:0:0.046800',TRUE,2,'Admin','2023-02-20T00:00:00.000','Admin','2023-02-20T00:00:00.000'),
-- (3,2,'0:0:0.057600',TRUE,1,'Admin','2023-02-20T00:00:00.000','Admin','2023-02-20T00:00:00.000'),
-- (4,3,'0:0:0.068400',TRUE,3,'Admin','2023-02-20T00:00:00.000','Admin','2023-02-20T00:00:00.000'),
-- (5,1,'0:0:0.075600',TRUE,2,'Admin','2023-02-20T00:00:00.000','Admin','2023-02-20T00:00:00.000');


-- select * from booking_status_info;

-- insert into booking_status_info(booking_status_id,booking_status_code,description,display_name,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-04-30T00:00:00.000','Admin','2024-07-07T00:00:00.000'),
-- (2,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-01T00:00:00.000','Admin','2024-07-08T00:00:00.000'),
-- (3,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-05-02T00:00:00.000','Admin','2024-07-09T00:00:00.000'),
-- (4,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-05-03T00:00:00.000','Admin','2024-07-10T00:00:00.000'),
-- (5,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-05-04T00:00:00.000','Admin','2024-07-11T00:00:00.000'),
-- (6,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-05-05T00:00:00.000','Admin','2024-07-12T00:00:00.000'),
-- (7,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-06T00:00:00.000','Admin','2024-07-13T00:00:00.000'),
-- (8,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-05-07T00:00:00.000','Admin','2024-07-14T00:00:00.000'),
-- (9,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-05-08T00:00:00.000','Admin','2024-07-15T00:00:00.000'),
-- (10,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-05-09T00:00:00.000','Admin','2024-07-16T00:00:00.000'),
-- (11,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-05-10T00:00:00.000','Admin','2024-07-17T00:00:00.000'),
-- (12,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-11T00:00:00.000','Admin','2024-07-18T00:00:00.000'),
-- (13,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-05-12T00:00:00.000','Admin','2024-07-19T00:00:00.000'),
-- (14,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-05-13T00:00:00.000','Admin','2024-07-20T00:00:00.000'),
-- (15,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-05-14T00:00:00.000','Admin','2024-07-21T00:00:00.000'),
-- (16,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-05-15T00:00:00.000','Admin','2024-07-22T00:00:00.000'),
-- (17,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-16T00:00:00.000','Admin','2024-07-23T00:00:00.000'),
-- (18,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-05-17T00:00:00.000','Admin','2024-07-24T00:00:00.000'),
-- (19,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-05-18T00:00:00.000','Admin','2024-07-25T00:00:00.000'),
-- (20,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-05-19T00:00:00.000','Admin','2024-07-26T00:00:00.000'),
-- (21,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-05-20T00:00:00.000','Admin','2024-07-27T00:00:00.000'),
-- (22,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-21T00:00:00.000','Admin','2024-07-28T00:00:00.000'),
-- (23,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-05-22T00:00:00.000','Admin','2024-07-29T00:00:00.000'),
-- (24,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-05-23T00:00:00.000','Admin','2024-07-30T00:00:00.000'),
-- (25,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-05-24T00:00:00.000','Admin','2024-07-31T00:00:00.000'),
-- (26,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-05-25T00:00:00.000','Admin','2024-08-01T00:00:00.000'),
-- (27,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-26T00:00:00.000','Admin','2024-08-02T00:00:00.000'),
-- (28,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-05-27T00:00:00.000','Admin','2024-08-03T00:00:00.000'),
-- (29,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-05-28T00:00:00.000','Admin','2024-08-04T00:00:00.000'),
-- (30,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-05-29T00:00:00.000','Admin','2024-08-05T00:00:00.000'),
-- (31,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-05-30T00:00:00.000','Admin','2024-08-06T00:00:00.000'),
-- (32,'PENDING','Booking is pending','Pending Booking','Admin','2024-05-31T00:00:00.000','Admin','2024-08-07T00:00:00.000'),
-- (33,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-06-01T00:00:00.000','Admin','2024-08-08T00:00:00.000'),
-- (34,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-06-02T00:00:00.000','Admin','2024-08-09T00:00:00.000'),
-- (35,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-06-03T00:00:00.000','Admin','2024-08-10T00:00:00.000'),
-- (36,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-06-04T00:00:00.000','Admin','2024-08-11T00:00:00.000'),
-- (37,'PENDING','Booking is pending','Pending Booking','Admin','2024-06-05T00:00:00.000','Admin','2024-08-12T00:00:00.000'),
-- (38,'CANCELED','Booking is canceled','Canceled Booking','Admin','2024-06-06T00:00:00.000','Admin','2024-08-13T00:00:00.000'),
-- (39,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-06-07T00:00:00.000','Admin','2024-08-14T00:00:00.000'),
-- (40,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-06-08T00:00:00.000','Admin','2024-08-15T00:00:00.000'),
-- (41,'REFUNDED','Booking is refunded','Refunded Booking','Admin','2024-06-09T00:00:00.000','Admin','2024-08-16T00:00:00.000'),
-- (42,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-06-10T00:00:00.000','Admin','2024-08-17T00:00:00.000'),
-- (43,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-06-11T00:00:00.000','Admin','2024-08-18T00:00:00.000'),
-- (44,'PENDING','Booking is pending','Pending Booking','Admin','2024-06-12T00:00:00.000','Admin','2024-08-19T00:00:00.000'),
-- (45,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-06-13T00:00:00.000','Admin','2024-08-20T00:00:00.000'),
-- (46,'EXPIRED','Booking has expired','Expired Booking','Admin','2024-06-14T00:00:00.000','Admin','2024-08-21T00:00:00.000'),
-- (47,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-06-15T00:00:00.000','Admin','2024-08-22T00:00:00.000'),
-- (48,'ACTIVE','Booking is confirmed','Active Booking','Admin','2024-06-16T00:00:00.000','Admin','2024-08-23T00:00:00.000'),
-- (49,'PENDING','Booking is pending','Pending Booking','Admin','2024-06-18T00:00:00.000','Admin','2024-11-22T00:00:00.000');

-- select * from seats_info;

-- insert into seats_info(seat_id,screen_id,seat_number,created_by,created_date,modified_by,modified_date)
-- values
-- (1,1,'A1','Admin','2023-07-07T00:00:00.000','Admin','2023-09-16T00:00:00.000'),
-- (2,1,'A2','Admin','2023-07-08T00:00:00.000','Admin','2023-09-17T00:00:00.000'),
-- (3,1,'A3','Admin','2023-07-09T00:00:00.000','Admin','2023-09-18T00:00:00.000'),
-- (4,1,'A4','Admin','2023-07-10T00:00:00.000','Admin','2023-09-19T00:00:00.000'),
-- (5,1,'A5','Admin','2023-07-11T00:00:00.000','Admin','2023-09-20T00:00:00.000'),
-- (6,1,'A6','Admin','2023-07-12T00:00:00.000','Admin','2023-09-21T00:00:00.000'),
-- (7,1,'A7','Admin','2023-07-13T00:00:00.000','Admin','2023-09-22T00:00:00.000'),
-- (8,1,'A8','Admin','2023-07-14T00:00:00.000','Admin','2023-09-23T00:00:00.000'),
-- (9,1,'A9','Admin','2023-07-15T00:00:00.000','Admin','2023-09-24T00:00:00.000'),
-- (10,1,'A10','Admin','2023-07-16T00:00:00.000','Admin','2023-09-25T00:00:00.000'),
-- (11,2,'B1','Admin','2023-07-17T00:00:00.000','Admin','2023-09-26T00:00:00.000'),
-- (12,2,'B2','Admin','2023-07-18T00:00:00.000','Admin','2023-09-27T00:00:00.000'),
-- (13,2,'B3','Admin','2023-07-19T00:00:00.000','Admin','2023-09-28T00:00:00.000'),
-- (14,2,'B4','Admin','2023-07-20T00:00:00.000','Admin','2023-09-29T00:00:00.000'),
-- (15,2,'B5','Admin','2023-07-21T00:00:00.000','Admin','2023-09-30T00:00:00.000'),
-- (16,2,'B6','Admin','2023-07-22T00:00:00.000','Admin','2023-10-01T00:00:00.000'),
-- (17,2,'B7','Admin','2023-07-23T00:00:00.000','Admin','2023-10-02T00:00:00.000'),
-- (18,2,'B8','Admin','2023-07-24T00:00:00.000','Admin','2023-10-03T00:00:00.000'),
-- (19,2,'B9','Admin','2023-07-25T00:00:00.000','Admin','2023-10-04T00:00:00.000'),
-- (20,2,'B10','Admin','2023-07-26T00:00:00.000','Admin','2023-10-05T00:00:00.000'),
-- (21,3,'C1','Admin','2023-07-27T00:00:00.000','Admin','2023-10-06T00:00:00.000'),
-- (22,3,'C2','Admin','2023-07-28T00:00:00.000','Admin','2023-10-07T00:00:00.000'),
-- (23,3,'C3','Admin','2023-07-29T00:00:00.000','Admin','2023-10-08T00:00:00.000'),
-- (24,3,'C4','Admin','2023-07-30T00:00:00.000','Admin','2023-10-09T00:00:00.000'),
-- (25,3,'C5','Admin','2023-07-31T00:00:00.000','Admin','2023-10-10T00:00:00.000'),
-- (26,3,'C6','Admin','2023-08-01T00:00:00.000','Admin','2023-10-11T00:00:00.000'),
-- (27,3,'C7','Admin','2023-08-02T00:00:00.000','Admin','2023-10-12T00:00:00.000'),
-- (28,3,'C8','Admin','2023-08-03T00:00:00.000','Admin','2023-10-13T00:00:00.000'),
-- (29,3,'C9','Admin','2023-08-04T00:00:00.000','Admin','2023-10-14T00:00:00.000'),
-- (30,3,'C10','Admin','2023-08-05T00:00:00.000','Admin','2023-10-15T00:00:00.000'),
-- (31,4,'D1','Admin','2023-08-06T00:00:00.000','Admin','2023-10-16T00:00:00.000'),
-- (32,4,'D2','Admin','2023-08-07T00:00:00.000','Admin','2023-10-17T00:00:00.000'),
-- (33,4,'D3','Admin','2023-08-08T00:00:00.000','Admin','2023-10-18T00:00:00.000'),
-- (34,4,'D4','Admin','2023-08-09T00:00:00.000','Admin','2023-10-19T00:00:00.000'),
-- (35,4,'D5','Admin','2023-08-10T00:00:00.000','Admin','2023-10-20T00:00:00.000'),
-- (36,4,'D6','Admin','2023-08-11T00:00:00.000','Admin','2023-10-21T00:00:00.000'),
-- (37,4,'D7','Admin','2023-08-12T00:00:00.000','Admin','2023-10-22T00:00:00.000'),
-- (38,4,'D8','Admin','2023-08-13T00:00:00.000','Admin','2023-10-23T00:00:00.000'),
-- (39,4,'D9','Admin','2023-08-14T00:00:00.000','Admin','2023-10-24T00:00:00.000'),
-- (40,4,'D10','Admin','2023-08-15T00:00:00.000','Admin','2023-10-25T00:00:00.000'),
-- (41,5,'E1','Admin','2023-08-16T00:00:00.000','Admin','2023-10-26T00:00:00.000'),
-- (42,5,'E2','Admin','2023-08-17T00:00:00.000','Admin','2023-10-27T00:00:00.000'),
-- (43,5,'E3','Admin','2023-08-18T00:00:00.000','Admin','2023-10-28T00:00:00.000'),
-- (44,5,'E4','Admin','2023-08-19T00:00:00.000','Admin','2023-10-29T00:00:00.000'),
-- (45,5,'E5','Admin','2023-08-20T00:00:00.000','Admin','2023-10-30T00:00:00.000'),
-- (46,5,'E6','Admin','2023-08-21T00:00:00.000','Admin','2023-10-31T00:00:00.000'),
-- (47,5,'E7','Admin','2023-08-22T00:00:00.000','Admin','2023-11-01T00:00:00.000'),
-- (48,5,'E8','Admin','2023-08-23T00:00:00.000','Admin','2023-11-02T00:00:00.000'),
-- (49,5,'E9','Admin','2023-08-24T00:00:00.000','Admin','2023-11-03T00:00:00.000'),
-- (50,5,'E10','Admin','2023-08-25T00:00:00.000','Admin','2023-11-04T00:00:00.000');

-- select * from booking_info;

-- insert into booking_info(booking_id,booking_number,user_id,movie_id,showtime_id,screen_id,seat_id,booking_status_id,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'BN001',1,1,1,1,1,1,'Admin','2023-02-14T00:00:00.000','Admin','2024-07-12T00:00:00.000'),
-- (2,'BN002',2,2,2,1,2,1,'Admin','2023-02-15T00:00:00.000','Admin','2024-07-13T00:00:00.000'),
-- (3,'BN003',1,1,3,2,4,2,'Admin','2023-02-16T00:00:00.000','Admin','2024-07-14T00:00:00.000'),
-- (4,'BN004',3,3,4,2,5,1,'Admin','2023-02-17T00:00:00.000','Admin','2024-07-15T00:00:00.000'),
-- (5,'BN005',2,2,5,1,3,2,'Admin','2023-02-18T00:00:00.000','Admin','2024-07-16T00:00:00.000'),
-- (6,'BN006',5,5,5,1,4,1,'Admin','2023-02-19T00:00:00.000','Admin','2024-07-17T00:00:00.000'),
-- (7,'BN007',7,6,6,1,5,1,'Admin','2023-02-20T00:00:00.000','Admin','2024-07-18T00:00:00.000'),
-- (8,'BN008',20,7,7,1,6,1,'Admin','2023-02-21T00:00:00.000','Admin','2024-07-19T00:00:00.000'),
-- (9,'BN009',8,8,8,1,7,1,'Admin','2023-02-22T00:00:00.000','Admin','2024-07-20T00:00:00.000'),
-- (10,'BN010',9,9,9,1,8,1,'Admin','2023-02-23T00:00:00.000','Admin','2024-07-21T00:00:00.000'),
-- (11,'BN011',10,10,10,1,9,1,'Admin','2023-02-24T00:00:00.000','Admin','2024-07-22T00:00:00.000'),
-- (12,'BN012',11,11,11,1,10,1,'Admin','2023-02-25T00:00:00.000','Admin','2024-07-23T00:00:00.000'),
-- (13,'BN013',12,12,12,1,11,1,'Admin','2023-02-26T00:00:00.000','Admin','2024-07-24T00:00:00.000'),
-- (14,'BN014',13,13,13,1,12,1,'Admin','2023-02-27T00:00:00.000','Admin','2024-07-25T00:00:00.000'),
-- (15,'BN015',14,14,14,1,13,1,'Admin','2023-02-28T00:00:00.000','Admin','2024-07-26T00:00:00.000'),
-- (16,'BN016',15,15,15,1,14,1,'Admin','2023-03-01T00:00:00.000','Admin','2024-07-27T00:00:00.000'),
-- (17,'BN017',16,16,16,1,15,1,'Admin','2023-03-02T00:00:00.000','Admin','2024-07-28T00:00:00.000'),
-- (18,'BN018',17,17,17,1,16,1,'Admin','2023-03-03T00:00:00.000','Admin','2024-07-29T00:00:00.000'),
-- (19,'BN019',18,18,18,1,17,1,'Admin','2023-03-04T00:00:00.000','Admin','2024-07-30T00:00:00.000'),
-- (20,'BN020',19,19,19,1,18,1,'Admin','2023-03-05T00:00:00.000','Admin','2024-07-31T00:00:00.000'),
-- (21,'BN021',20,20,20,1,19,1,'Admin','2023-03-06T00:00:00.000','Admin','2024-08-01T00:00:00.000'),
-- (22,'BN022',21,21,21,1,20,1,'Admin','2023-03-07T00:00:00.000','Admin','2024-08-02T00:00:00.000'),
-- (23,'BN023',22,22,22,1,21,1,'Admin','2023-03-08T00:00:00.000','Admin','2024-08-03T00:00:00.000'),
-- (24,'BN024',23,23,23,1,22,1,'Admin','2023-03-09T00:00:00.000','Admin','2024-08-04T00:00:00.000'),
-- (25,'BN025',24,24,24,1,23,1,'Admin','2023-03-10T00:00:00.000','Admin','2024-08-05T00:00:00.000'),
-- (26,'BN026',25,25,25,1,24,1,'Admin','2023-03-11T00:00:00.000','Admin','2024-08-06T00:00:00.000'),
-- (27,'BN027',26,26,26,1,25,1,'Admin','2023-03-12T00:00:00.000','Admin','2024-08-07T00:00:00.000'),
-- (28,'BN028',27,27,27,1,26,1,'Admin','2023-03-13T00:00:00.000','Admin','2024-08-08T00:00:00.000'),
-- (29,'BN029',28,28,28,1,27,1,'Admin','2023-03-14T00:00:00.000','Admin','2024-08-09T00:00:00.000'),
-- (30,'BN030',29,29,29,1,28,1,'Admin','2023-03-15T00:00:00.000','Admin','2024-08-10T00:00:00.000'),
-- (31,'BN031',30,30,30,1,29,1,'Admin','2023-03-16T00:00:00.000','Admin','2024-08-11T00:00:00.000'),
-- (32,'BN032',31,31,31,1,30,1,'Admin','2023-03-17T00:00:00.000','Admin','2024-08-12T00:00:00.000'),
-- (33,'BN033',32,32,32,1,31,1,'Admin','2023-03-18T00:00:00.000','Admin','2024-08-13T00:00:00.000'),
-- (34,'BN034',33,33,33,1,32,1,'Admin','2023-03-19T00:00:00.000','Admin','2024-08-14T00:00:00.000'),
-- (35,'BN035',34,34,34,1,33,1,'Admin','2023-03-20T00:00:00.000','Admin','2024-08-15T00:00:00.000'),
-- (36,'BN036',35,35,35,1,34,1,'Admin','2023-03-21T00:00:00.000','Admin','2024-08-16T00:00:00.000'),
-- (37,'BN037',36,36,36,1,35,1,'Admin','2023-03-22T00:00:00.000','Admin','2024-08-17T00:00:00.000'),
-- (38,'BN038',37,37,37,1,36,1,'Admin','2023-03-23T00:00:00.000','Admin','2024-08-18T00:00:00.000'),
-- (39,'BN039',38,38,38,1,37,1,'Admin','2023-03-24T00:00:00.000','Admin','2024-08-19T00:00:00.000'),
-- (40,'BN040',39,39,39,1,38,1,'Admin','2023-03-25T00:00:00.000','Admin','2024-08-20T00:00:00.000'),
-- (41,'BN041',40,40,40,1,39,1,'Admin','2023-03-26T00:00:00.000','Admin','2024-08-21T00:00:00.000'),
-- (42,'BN042',41,41,41,1,40,1,'Admin','2023-03-27T00:00:00.000','Admin','2024-08-22T00:00:00.000'),
-- (43,'BN043',42,42,42,1,41,1,'Admin','2023-03-28T00:00:00.000','Admin','2024-08-23T00:00:00.000'),
-- (44,'BN044',43,43,43,1,42,1,'Admin','2023-03-29T00:00:00.000','Admin','2024-08-24T00:00:00.000'),
-- (45,'BN045',44,44,44,1,43,1,'Admin','2023-03-30T00:00:00.000','Admin','2024-08-25T00:00:00.000'),
-- (46,'BN046',45,45,45,1,44,1,'Admin','2023-03-31T00:00:00.000','Admin','2024-08-26T00:00:00.000'),
-- (47,'BN047',46,46,46,1,45,1,'Admin','2023-04-01T00:00:00.000','Admin','2024-08-27T00:00:00.000'),
-- (48,'BN048',47,47,47,1,46,1,'Admin','2023-04-02T00:00:00.000','Admin','2024-08-28T00:00:00.000'),
-- (49,'BN049',48,48,48,1,47,1,'Admin','2023-04-03T00:00:00.000','Admin','2024-08-29T00:00:00.000');

-- select * from payment_method_info;

-- insert into payment_method_info(payment_method_id,payment_method_name,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'Credit Card','Admin','2023-03-23T00:00:00.000','Admin','2024-04-20T00:00:00.000'),
-- (2,'Debit Card','Admin','2023-03-24T00:00:00.000','Admin','2024-04-21T00:00:00.000'),
-- (3,'PayPal','Admin','2023-03-25T00:00:00.000','Admin','2024-04-22T00:00:00.000'),
-- (4,'Bank Transfer','Admin','2023-03-26T00:00:00.000','Admin','2024-04-23T00:00:00.000'),
-- (5,'Cash','Admin','2023-03-27T00:00:00.000','Admin','2024-04-24T00:00:00.000');


-- select * from transaction_info;

-- insert into transaction_info(txn_id,txn_date,booking_number,txn_amount,txn_status,payment_method_id,created_by,created_date,modified_by,modified_date)
-- values
-- (1,'2023-02-20T00:00:00.000','BN001',100,'SUCCESS',1,'Admin','2024-05-05T00:00:00.000','Admin','2024-06-02T00:00:00.000'),
-- (2,'2023-02-21T00:00:00.000','BN002',200,'PENDING',2,'Admin','2024-05-06T00:00:00.000','Admin','2024-06-03T00:00:00.000'),
-- (3,'2023-02-22T00:00:00.000','BN003',300,'FAILED',1,'Admin','2024-05-07T00:00:00.000','Admin','2024-06-04T00:00:00.000'),
-- (4,'2023-02-23T00:00:00.000','BN004',400,'SUCCESS',3,'Admin','2024-05-08T00:00:00.000','Admin','2024-06-05T00:00:00.000'),
-- (5,'2023-02-24T00:00:00.000','BN005',500,'REFUNDED',2,'Admin','2024-05-09T00:00:00.000','Admin','2024-06-06T00:00:00.000'),
-- (6,'2023-02-25T00:00:00.000','BN006',100,'FAILED',1,'Admin','2024-05-10T00:00:00.000','Admin','2024-06-07T00:00:00.000'),
-- (7,'2023-02-26T00:00:00.000','BN007',200,'SUCCESS',2,'Admin','2024-05-11T00:00:00.000','Admin','2024-06-08T00:00:00.000'),
-- (8,'2023-02-27T00:00:00.000','BN008',300,'SUCCESS',3,'Admin','2024-05-12T00:00:00.000','Admin','2024-06-09T00:00:00.000'),
-- (9,'2023-02-28T00:00:00.000','BN009',450,'FAILED',4,'Admin','2024-05-13T00:00:00.000','Admin','2024-06-10T00:00:00.000'),
-- (10,'2023-03-01T00:00:00.000','BN010',349,'SUCCESS',2,'Admin','2024-05-14T00:00:00.000','Admin','2024-06-11T00:00:00.000'),
-- (11,'2023-03-02T00:00:00.000','BN011',900,'PENDING',3,'Admin','2024-05-15T00:00:00.000','Admin','2024-06-12T00:00:00.000'),
-- (12,'2023-03-03T00:00:00.000','BN012',299,'FAILED',1,'Admin','2024-05-16T00:00:00.000','Admin','2024-06-13T00:00:00.000'),
-- (13,'2023-03-04T00:00:00.000','BN013',199,'SUCCESS',4,'Admin','2024-05-17T00:00:00.000','Admin','2024-06-14T00:00:00.000'),
-- (14,'2023-03-05T00:00:00.000','BN014',345,'SUCCESS',2,'Admin','2024-05-18T00:00:00.000','Admin','2024-06-15T00:00:00.000'),
-- (15,'2023-03-06T00:00:00.000','BN015',899,'PENDING',3,'Admin','2024-05-19T00:00:00.000','Admin','2024-06-16T00:00:00.000'),
-- (16,'2023-03-07T00:00:00.000','BN016',900,'FAILED',1,'Admin','2024-05-20T00:00:00.000','Admin','2024-06-17T00:00:00.000'),
-- (17,'2023-03-08T00:00:00.000','BN017',266,'SUCCESS',5,'Admin','2024-05-21T00:00:00.000','Admin','2024-06-18T00:00:00.000'),
-- (18,'2023-03-09T00:00:00.000','BN018',577,'REFUNDED',1,'Admin','2024-05-22T00:00:00.000','Admin','2024-06-19T00:00:00.000'),
-- (19,'2023-03-10T00:00:00.000','BN019',677,'SUCCESS',2,'Admin','2024-05-23T00:00:00.000','Admin','2024-06-20T00:00:00.000'),
-- (20,'2023-03-11T00:00:00.000','BN020',788,'PENDING',3,'Admin','2024-05-24T00:00:00.000','Admin','2024-06-21T00:00:00.000'),
-- (21,'2023-03-12T00:00:00.000','BN021',199,'FAILED',1,'Admin','2024-05-25T00:00:00.000','Admin','2024-06-22T00:00:00.000'),
-- (22,'2023-03-13T00:00:00.000','BN022',219,'FAILED',1,'Admin','2024-05-26T00:00:00.000','Admin','2024-06-23T00:00:00.000'),
-- (23,'2023-03-14T00:00:00.000','BN023',399,'SUCCESS',1,'Admin','2024-05-27T00:00:00.000','Admin','2024-06-24T00:00:00.000'),
-- (24,'2023-03-15T00:00:00.000','BN024',456,'PENDING',2,'Admin','2024-05-28T00:00:00.000','Admin','2024-06-25T00:00:00.000'),
-- (25,'2023-03-16T00:00:00.000','BN025',789,'FAILED',4,'Admin','2024-05-29T00:00:00.000','Admin','2024-06-26T00:00:00.000'),
-- (26,'2023-03-17T00:00:00.000','BN026',125,'SUCCESS',5,'Admin','2024-05-30T00:00:00.000','Admin','2024-06-27T00:00:00.000'),
-- (27,'2023-03-18T00:00:00.000','BN027',288,'SUCCESS',2,'Admin','2024-05-31T00:00:00.000','Admin','2024-06-28T00:00:00.000'),
-- (28,'2023-03-19T00:00:00.000','BN028',299,'SUCCESS',3,'Admin','2024-06-01T00:00:00.000','Admin','2024-06-29T00:00:00.000'),
-- (29,'2023-03-20T00:00:00.000','BN029',260,'PENDING',1,'Admin','2024-06-02T00:00:00.000','Admin','2024-06-30T00:00:00.000'),
-- (30,'2023-03-21T00:00:00.000','BN030',500,'FAILED',2,'Admin','2024-06-03T00:00:00.000','Admin','2024-07-01T00:00:00.000'),
-- (31,'2023-03-22T00:00:00.000','BN031',450,'SUCCESS',3,'Admin','2024-06-04T00:00:00.000','Admin','2024-07-02T00:00:00.000'),
-- (32,'2023-03-23T00:00:00.000','BN032',700,'PENDING',4,'Admin','2024-06-05T00:00:00.000','Admin','2024-07-03T00:00:00.000'),
-- (33,'2023-03-24T00:00:00.000','BN033',400,'FAILED',1,'Admin','2024-06-06T00:00:00.000','Admin','2024-07-04T00:00:00.000'),
-- (34,'2023-03-25T00:00:00.000','BN034',100,'SUCCESS',1,'Admin','2024-06-07T00:00:00.000','Admin','2024-07-05T00:00:00.000'),
-- (35,'2023-03-26T00:00:00.000','BN035',200,'PENDING',1,'Admin','2024-06-08T00:00:00.000','Admin','2024-07-06T00:00:00.000'),
-- (36,'2023-03-27T00:00:00.000','BN036',400,'PENDING',1,'Admin','2024-06-09T00:00:00.000','Admin','2024-07-07T00:00:00.000'),
-- (37,'2023-03-28T00:00:00.000','BN037',500,'FAILED',2,'Admin','2024-06-10T00:00:00.000','Admin','2024-07-08T00:00:00.000'),
-- (38,'2023-03-29T00:00:00.000','BN038',600,'SUCCESS',2,'Admin','2024-06-11T00:00:00.000','Admin','2024-07-09T00:00:00.000'),
-- (39,'2023-03-30T00:00:00.000','BN039',300,'SUCCESS',5,'Admin','2024-06-12T00:00:00.000','Admin','2024-07-10T00:00:00.000'),
-- (40,'2023-03-31T00:00:00.000','BN040',500,'PENDING',4,'Admin','2024-06-13T00:00:00.000','Admin','2024-07-11T00:00:00.000'),
-- (41,'2023-04-01T00:00:00.000','BN041',500,'FAILED',1,'Admin','2024-06-14T00:00:00.000','Admin','2024-07-12T00:00:00.000'),
-- (42,'2023-04-02T00:00:00.000','BN042',600,'SUCCESS',3,'Admin','2024-06-15T00:00:00.000','Admin','2024-07-13T00:00:00.000'),
-- (43,'2023-04-03T00:00:00.000','BN043',500,'REFUNDED',4,'Admin','2024-06-16T00:00:00.000','Admin','2024-07-14T00:00:00.000'),
-- (44,'2023-04-04T00:00:00.000','BN044',499,'SUCCESS',5,'Admin','2024-06-17T00:00:00.000','Admin','2024-07-15T00:00:00.000'),
-- (45,'2023-04-05T00:00:00.000','BN045',788,'PENDING',1,'Admin','2024-06-18T00:00:00.000','Admin','2024-07-16T00:00:00.000'),
-- (46,'2023-04-06T00:00:00.000','BN046',300,'FAILED',1,'Admin','2024-06-19T00:00:00.000','Admin','2024-07-17T00:00:00.000'),
-- (47,'2023-04-07T00:00:00.000','BN047',478,'SUCCESS',2,'Admin','2024-06-20T00:00:00.000','Admin','2024-07-18T00:00:00.000'),
-- (48,'2023-04-08T00:00:00.000','BN048',599,'PENDING',2,'Admin','2024-06-21T00:00:00.000','Admin','2024-07-19T00:00:00.000'),
-- (49,'2023-04-09T00:00:00.000','BN049',500,'FAILED',1,'Admin','2024-06-22T00:00:00.000','Admin','2024-07-20T00:00:00.000');-- 




