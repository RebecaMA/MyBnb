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
ALTER PROCEDURE spViajesUsuario 
	@login nvarchar(30)
AS
BEGIN
	declare @idUsuario int = (select idUsuario from Usuario where login = @login)
	select 	viaje.titulo,viaje.FechaInicio,viaje.FechaFinal,persona.nombre,pais.Pais,usuario.descripcion,persona.FechaNacimiento,genero.Genero,persona.email,Localidad.CodigoLocalidad,
			Localidad.Pais,Localidad.Estado,Localidad.Ciudad 
		from Viaje  INNER JOIN Localidad on Viaje.fk_idLocalidad = idLocalidad 
		INNER JOIN Usuario on Viaje.fk_idUsuario = @idUsuario 
		INNER JOIN Persona on Usuario.fk_idPersona = idPersona
		INNER JOIN Genero on Persona.fk_idGenero = idGenero
		INNER JOIN Pais on Persona.fk_idPais = idPais

END
GO
 exec spViajesUsuario 1