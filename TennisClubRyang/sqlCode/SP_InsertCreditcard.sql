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
-- Author:		Kevin Borup Hansen
-- Create date: 31-05-2022
-- Description:	Procedure to insert creditcard with ID
-- =============================================
CREATE PROCEDURE InsertCreditcard 
	-- Add the parameters for the stored procedure here
	@ID int,
	@CardName varchar(30),
	@CardNumber int,
	@CardExpiration date,
	@CardCode int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Creditcards (
	ID,
	CardName,
	CardNumber,
	CardExpiration,
	CardCode)
	VALUES (
	@ID,
	@CardName,
	@CardNumber,
	@CardExpiration,
	@CardCode)

END
GO
