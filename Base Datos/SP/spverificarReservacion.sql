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
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE spverificarReservacion
	@pidPropiedad int, 
	@pLogin nvarchar(30),
	@pfecha date
AS
BEGIN
	declare @idReservacion int = (select distinct top 1 idReservacion from Reservacion
								INNER JOIN ReservacionesXViaje on fk_idReservacion = idReservacion
								INNER JOIN Usuario on Login = @pLogin
								INNER JOIN Viaje on fk_idUsuario = idUsuario
								where fk_idPropiedad = @pidPropiedad
								and fechaEntrada < @pfecha)
								
	set @idReservacion = isnull(@idReservacion, -30)
	if @idReservacion = -30 
		select  'No aprobado'
	else select 'Aprobado'
	
	
	
	
END
GO

