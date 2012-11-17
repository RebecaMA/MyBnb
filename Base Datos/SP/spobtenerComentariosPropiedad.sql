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
ALTER PROCEDURE spobtenerComentariosPropiedad
	@pidPropiedad int
AS
BEGIN
	select Comentario.Descripcion, comentario.rating, Comentario.FechaComentario,Usuario.Login
	from Comentario INNER JOIN Usuario on Comentario.fk_idUsuario = idUsuario
	where fk_idPropiedad = @pidPropiedad order by FechaComentario
END
GO
