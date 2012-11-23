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
ALTER PROCEDURE spverificarWishList
	@pidPropiedad int,
	@pLogin nvarchar(30),
	@pPrioridad nvarchar(30)
AS
BEGIN
	declare @idUsuario int = (select idUsuario from Usuario where login = @pLogin)
	declare @comprobacion int = (select fk_idUsuario from WishlistXUsuario where fk_idPropiedad = @pidPropiedad
								and fk_idUsuario = @idUsuario)
								
	set @comprobacion = isnull(@comprobacion,-30)
	if @comprobacion = -30
	begin
		insert into WishlistXUsuario (fk_idUsuario, fk_idPropiedad,fk_idPrioridad) values(@idUsuario,@pidPropiedad,
		(select idPrioridad from Prioridad where Prioridad = @pPrioridad))
		select 'Ingresada al Wishlist' 
	end
	else select 'Propiedad Ingresada anteriormente'
END
GO

--exec spingresarWishlist 1,'viajero'