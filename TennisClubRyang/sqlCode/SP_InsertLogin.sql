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
-- Description:	Procedure to insert logins with ID
-- =============================================
CREATE PROCEDURE InsertLogin 
	-- Add the parameters for the stored procedure here
	@ID int,
	@Username varchar(30),
	@Password varchar(30)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Logins(
	ID,
	Username,
	Password)
	VALUES (
	@ID,
	@Username,
	@Password)

END
GO
