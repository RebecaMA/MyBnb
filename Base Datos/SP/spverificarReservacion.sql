USE [MyBnB_BD]
GO
/****** Object:  StoredProcedure [dbo].[spverificarReservacion]    Script Date: 11/17/2012 12:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spverificarReservacion]
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
