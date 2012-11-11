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
USE MyBnB_BD
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE spListarPropiedad
	@pTipoPropiedad nvarchar(30),
	@pcantidadMaximaPersonas int,
	@pTitulo nvarchar(20),
	@pdescripcion nvarchar(200),
	@pimagen varbinary(50),
	@phoraEntrada time(7),
	@phoraSalida time(7),
	@pCodigoLocalidad nvarchar(10),
	@pTipoHospedaje nvarchar(20),
	@pprecionoche money,
	@pprecioVolumen money
AS
BEGIN

	declare @idPropiedad int= (select idPropiedad from Propiedad where titulo = @ptitulo);
	
	set @idPropiedad = isnull(@idPropiedad,-30)
	if (@idPropiedad = -30)
	begin 
		select 'Ingresada'
	end
	else select 'Propiedad Ingresada Anteriormente'
	
	
END
GO

	--@pTipoPropiedad nvarchar(30),
	--@pcantidadMaximaPersonas int,
	--@pTitulo nvarchar(20),
	--@pdescripcion nvarchar(200),
	--@pimagen varbinary(50),
	--@phoraEntrada time(7),
	--@phoraSalida time(7),
	--@pCodigoLocalidad nvarchar(10),
	--@pTipoHospedaje nvarchar(20),
	--@pprecionoche money,
	--@pprecioVolumen money

exec spListarPropiedad null,0,'t',null,null,null,null,null,null,null,null
--select * from Propiedad
