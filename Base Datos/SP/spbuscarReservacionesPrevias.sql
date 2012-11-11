-- retorna 0 si la fecha no interfiere con la reservacion
-- retorna uno si si interfiere
-- TENGO Q TENER CUIDADO CON LOS AÑOS NO ESTAN VALIDADOS



ALTER PROCEDURE [spbuscarReservacionesPrevias]
	@pidPropiedad int,
	@pfechainicio date,
	@pfechafinal date
AS BEGIN

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

select @retorno

END

--exec spbuscarReservacionesPrevias 2,'2012/11/02','2012/12/02'

--SELECT * FROM reservacion