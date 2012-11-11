-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
alter FUNCTION verificarReservacionesPrevias 
(
	@pidPropiedad int,
	@pfechainicio date,
	@pfechafinal date
)
RETURNS int
AS
BEGIN
	
declare @fechainicioreserv date;
declare @fechafinalreserv date;
declare @diainicioreserv int;
declare @diafinalreserv int;
declare @diainicio int = (SELECT DATEPART(dy,@pfechainicio));
declare @diafinal int = (SELECT DATEPART(dy,@pfechafinal));
declare @retorno int = 0;



DECLARE cursorobtenerReservaciones CURSOR LOCAL FOR
select fechaEntrada,fechaSalida from Reservacion where fk_idPropiedad = @pidPropiedad

OPEN cursorobtenerReservaciones
FETCH NEXT FROM cursorobtenerReservaciones
INTO @fechainicioreserv,@fechafinalreserv

WHILE @@fetch_status = 0
BEGIN
set @diainicioreserv =  (SELECT DATEPART(dy,@fechainicioreserv));
set @diafinalreserv =  (SELECT DATEPART(dy,@fechafinalreserv));
if (@diainicioreserv  <= @diainicio) AND (@diainicio <= @diafinalreserv) OR (@diainicioreserv <= @diafinal) AND (@diafinal <= @diafinalreserv)
set @retorno += 1
else set @retorno += 0
FETCH NEXT FROM cursorobtenerReservaciones
INTO @fechainicioreserv,@fechafinalreserv
END

RETURN @retorno


END
GO


SELECT [MyBnB_BD].[dbo].[verificarReservacionesPrevias] (
2,'2012/10/05','2012/12/05')
GO

select * from reservacion



