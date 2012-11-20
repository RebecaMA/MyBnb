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
ALTER PROCEDURE sprealizarRecomendacion 
	@pidPropiedad int, 
	@pLoginRecomienda nvarchar(30),
	@pLoginRecomendado nvarchar(30) 
AS
BEGIN
	insert into Recomendacion (fk_idUsuarioQueRecomienda,fk_idEstadoRecomendacion,fk_idPropiedad)
				values		((select idUsuario from Usuario where login = @pLoginRecomienda),
							(select idEstadoRecomendacion from EstadoRecomendacion where estadoRecomendacion = 'Espera'),
							@pidPropiedad);
	declare @idRecomendacion int;
	set @idRecomendacion = @@IDENTITY;
	
	insert into WishListXUsuario (fk_idUsuario,fk_idRecomendacion) values ((select idUsuario from Usuario where login = @pLoginRecomendado),
									@idRecomendacion)
									
	select 'Recomendacion Realizada'
END
GO

--exec sprealizarRecomendacion 1,'viajero','Rebeca'
--exec sprealizarRecomendacion 2,'Rebeca', 'viajero'

--select * from WishlistXUsuario
--select * from Recomendacion

--select * from Propiedad