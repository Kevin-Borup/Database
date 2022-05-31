-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Kevin Borup Hansen>
-- Create date: 31-05-2022
-- Description:	Procedure to insert value into User table
-- =============================================
ALTER PROCEDURE InsertUser 
	-- Add the parameters for the stored procedure here
	@FullName varchar(30), 
	@AddressRoad varchar(30),
	@AddressNr varchar(30),
	@AddressPostalCode varchar(30),
	@AddressCity varchar(30),
	@PhoneNr varchar(30),
	@Email varchar(30),
	@Birthdate date,

	-- Output Parameter
	@newUserID int = null OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Users(
	FullName,
	AddressRoad,
	AddressNr,
	AddressPostalCode,
	AddressCity,
	PhoneNr,
	Email,
	Birthdate) 
	VALUES (
	@FullName,
	@AddressRoad,
	@AddressNr,
	@AddressPostalCode,
	@AddressCity,
	@PhoneNr,
	@Email,
	@Birthdate)

	SELECT @newUserID = SCOPE_IDENTITY();

END
GO
