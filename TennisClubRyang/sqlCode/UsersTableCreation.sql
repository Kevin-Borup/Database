CREATE TABLE Users (
	ID int PRIMARY KEY IDENTITY(1,1),
	FullName varchar(30),
	AddressRoad varchar(30),
	AddressNr varchar(30),
	AddressPostalCode varchar(30),
	AddressCity varchar(30),
	PhoneNr varchar(20),
	Email varchar(30),
	Birthdate Date
);