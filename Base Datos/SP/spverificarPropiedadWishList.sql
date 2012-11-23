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
CREATE PROCEDURE [dbo].[spverificarPropiedadWishList]
	@pidPropiedad int, 
	@pLogin nvarchar(30)
AS
BEGIN
	declare @idPropiedad int = (select fk_idPropiedad from WishlistXUsuario where 
								fk_idUsuario = (select idUsuario from Usuario where login = @pLogin)
								and fk_idPropiedad = @pidPropiedad)
								
	set @idPropiedad = isnull(@idPropiedad, -30)
	if @idPropiedad = -30 
		select  'Aceptado'
	else select 'Propiedad en el WishList'
	
		
	
	
END
