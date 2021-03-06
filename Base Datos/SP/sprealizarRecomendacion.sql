USE [MyBnB_BD]
GO
/****** Object:  StoredProcedure [dbo].[sprealizarRecomendacion]    Script Date: 11/24/2012 10:27:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sprealizarRecomendacion] 
	@pidPropiedad int, 
	@pLoginRecomienda nvarchar(30),
	@pLoginRecomendado nvarchar(30) 
AS
BEGIN
	insert into Recomendacion (fk_idUsuarioQueRecomienda,fk_idEstadoRecomendacion,fk_idPropiedad)
				values		((select top 1 idUsuario from Usuario where login = @pLoginRecomienda),
							(select top 1 idEstadoRecomendacion from EstadoRecomendacion where estadoRecomendacion = 'Espera'),
							@pidPropiedad);
	declare @idRecomendacion int;
	set @idRecomendacion = @@IDENTITY;
	
	insert into WishListXUsuario (fk_idUsuario,fk_idRecomendacion) values ((select top 1 idUsuario from Usuario where login = @pLoginRecomendado),
									@idRecomendacion)
									
	select 'Recomendacion Realizada'
END


exec sprealizarRecomendacion 1,'caro','viajero'