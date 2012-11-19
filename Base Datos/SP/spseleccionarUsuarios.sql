

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
ALTER PROCEDURE spseleccionarUsuarios
	@pLogin nvarchar(30)
AS
BEGIN
	select login from Usuario  inner join TipoUsuario
	on Usuario.fk_idTipoUsuario = idTipoUsuario where login not in (@pLogin) and TipoUsuario = 'Viajero'

END
GO
