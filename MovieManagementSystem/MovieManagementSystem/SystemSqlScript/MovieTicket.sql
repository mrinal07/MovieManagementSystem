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

--Create Customers details table--

create table Customers(
	Customer_Id      bigint identity(1,1),
	Customer_Name    varchar(250),
	Customer_Mobile  bigint,
	Customer_Email   varchar(50),
	Customer_Address varchar(500)
);

--Add constraints into Customers table--

alter table Customers add 
constraint PK_Customer_Id primary key (Customer_Id),
constraint CK_Customer_Mobile check(Len(Customer_Mobile)=10),
constraint CK_Customer_Email check(Customer_Email like '%_@__%.__%');

--Create Booking table--

create table Booking(
	Booking_Ticket_No               bigint identity(1,1),
	Booking_Date                    date,
	Booking_Time                    time,
	Booking_Seat_No                 int,
	Booking_Movie_Id                int, 
	Booking_Customer_Id             bigint, 
	Booking_No_Of_Tickets_Available int
);

--Add constraints into Booking table--

alter table Booking add
constraint PK_Booking_Ticket_No primary key(Booking_Ticket_No),
constraint FK_Booking_Movie_Id foreign key(Booking_Movie_Id) references Movie(MovieId),
constraint FK_Booking_Customer_Id foreign key(Booking_Customer_Id) references Customers(Customer_Id);

