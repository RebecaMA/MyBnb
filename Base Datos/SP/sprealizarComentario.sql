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
ALTER PROCEDURE sprealizarComentario
	@pComentario nvarchar(200),
	@pLogin nvarchar(30),
	@pidPropiedad int,
	@pRanking int,
	@pFecha date
	
AS
BEGIN
	declare @Ranking int = @pRanking;
	insert into Comentario(descripcion,rating,fk_idUsuario,fk_idPropiedad,FechaComentario)
				values(@pComentario,@pRanking,(select idUsuario from usuario where Login = @pLogin),@pidPropiedad,@pFecha)
				
	select 'Comentario Realizado'
	
END
GO

