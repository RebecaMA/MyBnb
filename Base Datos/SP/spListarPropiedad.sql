USE [MyBnB_BD]
GO
/****** Object:  StoredProcedure [dbo].[spListarPropiedad]    Script Date: 11/11/2012 15:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spListarPropiedad]
	@pTipoPropiedad nvarchar(30),
	@pcantidadMaximaPersonas int,
	@pTitulo nvarchar(20),
	@pdescripcion nvarchar(200),
	@pfoto nvarchar(10),
	@phoraEntrada time(7),
	@phoraSalida time(7),
	@pCodigoLocalidad nvarchar(10),
	@pTipoHospedaje nvarchar(20),
	@pprecioPorNoche money,
	@pprecioVolumen money,
	@pcantidadMinimaNoches int
AS
BEGIN

	declare @idPropiedad int= (select idPropiedad from Propiedad where titulo = @ptitulo);
	declare @idTipoPropiedad int;
	declare @idTipoHospedaje int;
	declare @idLocalidad int;
	
	set @idPropiedad = isnull(@idPropiedad,-30)
	if (@idPropiedad = -30)
	begin 
		set @idTipoPropiedad = (select idtipoPropiedad from CategoriaHospedaje where tipoPropiedad = @pTipoPropiedad)
		set @idTipoHospedaje = (select idTipoHospedaje from TipoHospedaje where tipoHospedaje = @pTipoHospedaje)
		set @idLocalidad = (select idLocalidad from Localidad where CodigoLocalidad = @pCodigoLocalidad)
		
		insert into Propiedad (titulo,cantidadMaximaPersonas,descripcion,foto,horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimaNoches
								,fk_idCategoriaHospedaje,fk_idTipoHospedaje,fk_idLocalidad)
								values (@ptitulo,@pcantidadMaximaPersonas,isnull(@pdescripcion,null),null,@phoraEntrada,
								@phoraSalida,@pprecioPorNoche,@pprecioVolumen,@pcantidadMinimaNoches,@idTipoPropiedad,@idTipoHospedaje,@idLocalidad)
		select 'Ingresada'
	end
	else select 'Propiedad Ingresada Anteriormente'
	
	
END


	
--	exec spListarPropiedad 'Villa',6,'Villa Casa Luna','Linda Villa con vista al mar',null,'2:00','12:00','SCLI','Privada',150,300,2
--	select * from Propiedad
	
	--select * from Localidad