CREATE TABLE Creditcards(
	ID int FOREIGN KEY REFERENCES Users(ID),
	CardName varchar(30),
	CardNumber int,
	CardExpiration date,
	CardCode int,
	PRIMARY KEY(ID)
	)