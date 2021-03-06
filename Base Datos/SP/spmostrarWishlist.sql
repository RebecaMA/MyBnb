USE [MyBnB_BD]
GO
/****** Object:  StoredProcedure [dbo].[spmostrarWishList]    Script Date: 11/20/2012 15:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spmostrarWishList]
	@pLogin nvarchar(30)
AS
BEGIN
	select Propiedad.Titulo, Prioridad.Prioridad,'--' Recomendo,0 idRecomendacion, 'Wishlist' Tipo, '--'
	from WishlistXUsuario INNER JOIN Propiedad on WishlistXUsuario.fk_idPropiedad = idPropiedad
						   INNER JOIN Prioridad on WishlistXUsuario.fk_idPrioridad = idPrioridad
						   where fk_idUsuario = (select idUsuario from Usuario where login = @pLogin)
						    UNION	
	select Propiedad.Titulo,'--'Prioridad,Usuario.login Recomendo,Recomendacion.idRecomendacion idRecomendacion,'Recomendacion' Tipo, EstadoRecomendacion
	from WishlistXUsuario  INNER JOIN Recomendacion on fk_idRecomendacion = idRecomendacion
							INNER JOIN EstadoRecomendacion on Recomendacion.fk_idEstadoRecomendacion = idEstadoRecomendacion
						   INNER JOIN Usuario on Recomendacion.fk_idUsuarioQueRecomienda = idUsuario						
						   INNER JOIN Propiedad on Recomendacion.fk_idPropiedad = idPropiedad 						   
						   where fk_idUsuario = (select idUsuario from Usuario where login =  @pLogin) and (EstadoRecomendacion = 'Espera' or EstadoRecomendacion = 'Aceptada')
	-- Aqui hacer que tambien aparezcan las propiedades de ensueño					   
						
END


