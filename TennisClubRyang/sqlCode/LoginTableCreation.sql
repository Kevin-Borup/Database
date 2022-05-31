CREATE TABLE Logins(
	ID int FOREIGN KEY REFERENCES Users(ID),
	Username varchar(30),
	Password varchar(30),
	PRIMARY KEY(ID)
	)