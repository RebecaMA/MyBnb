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
CREATE PROCEDURE spcambiarEstadoRecomendacion
	@pidRecomendacion int,
	@pEstadoRecomendacion nvarchar(30)
AS
BEGIN
	update dbo.Recomendacion set fk_idEstadoRecomendacion = (select idEstadoRecomendacion from EstadoRecomendacion where EstadoRecomendacion= @pEstadoRecomendacion) where idRecomendacion = @pidRecomendacion;				   
						
END
GO


