
ALTER PROCEDURE spsepararLocalidades
	@Localidades varchar(1000)

AS

CREATE TABLE #localidades 
(
	parametro varchar(10)
)
	SET NOCOUNT ON

	DECLARE @Posicion int
	DECLARE @localidad varchar(10)

	SET @Localidades = @Localidades + ','

	WHILE patindex('%,%' , @Localidades) <> 0
	BEGIN
		 SELECT @Posicion =  patindex('%,%' , @Localidades)
		SELECT @Localidad = left(@Localidades, @Posicion - 1)
		INSERT INTO #localidades values (@Localidad)
		SELECT @Localidades = stuff(@Localidades, 1, @Posicion, '')
	END

SELECT * FROM #localidades
drop table #localidades
SET NOCOUNT OFF
GO
