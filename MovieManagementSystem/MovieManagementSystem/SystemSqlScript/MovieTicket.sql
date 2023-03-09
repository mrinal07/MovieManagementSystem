-- movie ticket booking system--
create database MovieTicketBookingSystem;
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

select * from Movie;


