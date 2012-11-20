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
ALTER PROCEDURE spagregarWishListUsuario
	@pLoginUsuario nvarchar(30), 
	@pidPropiedad int,
	@pPrioridad nvarchar(30)
	
AS
BEGIN
	insert into WishlistXUsuario (fk_idUsuario,fk_idPropiedad,fk_idPrioridad) values 
								((select idUsuario from Usuario where login = @pLoginUsuario),
								@pidPropiedad, 
								(select idPrioridad from Prioridad where Prioridad = @pPrioridad))
	select 'Ingreso realizado correctamente'
	
END
GO



select * from WishListXUsuario