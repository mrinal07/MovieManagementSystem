-- Create DB
create database MovieTicketBookingSystem;

-- use DB
use MovieTicketBookingSystem;

--CREATE MOVIE TABLE--
create table Movie(
MovieId int PRIMARY KEY,
Title varchar(80),
Language varchar(25),
Genre varchar(40),
ReleaseDate date,
Description text);

--Insert some data--
insert into Movie values(101,'Pathaan','Hindi','Action,Thriller','2023-01-25','The high octane spy thriller PATHAAN starring Shahrukh Khan,Deepika Padukone and John Abraham.');
insert into Movie values(102,'Selfiee','Hindi','Action,Thriller,Mystery','2023-01-30','Bollywood entertainer movie directed by Raj Mehta & produced by Karan Johar.');
insert into Movie values(103,'Tu Jhoothi mai Makkaar','Hindi','Comedy,Romance','2023-02-08','It is a Romantic- comedy film directed by Luv Ranjan.');
insert into Movie values(104,'Ant-Man and the Wasp: Quantumania','English','Sci-fi,Action','2023-02-17','Ant-Man and the Wasp: Quantumania is a 2023 American superhero film based on Marvel Comics.');

insert into Movie values(105,'Spider-Man: No Way Home
','English','Sci-fi,Action','2021-12-17','Spider-Man: No Way Home is a 2021 American superhero film based on the Marvel Comics character Spider-Man.');
insert into Movie values(106,'Attack on Titan
','Japanese','Anime,Adventure','2009-09-09','Attack on Titan is a Japanese manga series.');



select * from Movie;

---------------------

create table student(sno int primary key,sname varchar(50),course varchar(50),fee money,photo image)
select * from student;
drop table student

Create Table [UserTable2](UserID int, [Photo] image)
select * from [UserTable2];

drop table UserTable