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
ALTER PROCEDURE spmostrarWishList
	@pLogin nvarchar(30)
AS
BEGIN
declare @pLogin nvarchar(30) = 'viajero'
	select Propiedad.Titulo, Prioridad.Prioridad,'--' Recomendo,'--' EstadoRecomendacion,0 idRecomendacion, 'Wishlist' Tipo
	from WishlistXUsuario INNER JOIN Propiedad on WishlistXUsuario.fk_idPropiedad = idPropiedad
						   INNER JOIN Prioridad on WishlistXUsuario.fk_idPrioridad = idPrioridad
						   where fk_idUsuario = (select idUsuario from Usuario where login = @pLogin)
						    UNION	
	select Propiedad.Titulo,'--' Prioridad,Usuario.login Recomendo,EstadoRecomendacion EstadoRecomendacion,Recomendacion.idRecomendacion idRecomendacion,'Recomendacion' Tipo
	from WishlistXUsuario  INNER JOIN Recomendacion on fk_idRecomendacion = idRecomendacion
						   INNER JOIN Usuario on Recomendacion.fk_idUsuarioQueRecomienda = idUsuario
						   INNER JOIN EstadoRecomendacion on Recomendacion.fk_idEstadoRecomendacion = idEstadoRecomendacion			
						   INNER JOIN Propiedad on Recomendacion.fk_idPropiedad = idPropiedad 						   
						   where fk_idUsuario = (select idUsuario from Usuario where login =  @pLogin) and (EstadoRecomendacion = 'Aceptada' OR EstadoRecomendacion = 'Espera') 
	-- Aqui hacer que tambien aparezcan las propiedades de ensueño					   
						
END
GO


