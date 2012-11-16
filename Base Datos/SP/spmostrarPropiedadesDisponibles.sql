-- retorna 0 si la fecha no interfiere con la reservacion
-- retorna uno si si interfiere
-- TENGO Q TENER CUIDADO CON LOS AÑOS NO ESTAN VALIDADOS



ALTER PROCEDURE [spmostrarPropiedadesDisponibles]
	@pfechainicio date,
	@pfechafinal date,
	@pCodigoLocalidad nvarchar(10)
	
AS BEGIN

 create table #PropiedadesTemporal(
	idPropiedad int,
	titulo nvarchar(20),
	cantidadMaximaPersonas int,
	descripcion nvarchar(200),
	horaEntrada time(7),
	horaSalida time(7),
	precioPorNoche money,
	precioVolumen money,
	cantidadMinimanoches int,
	ranking int,
	Localidad nvarchar(100)
 );
 
declare @titulo nvarchar(20);
declare	@cantidadMaximaPersonas int;
declare	@descripcion nvarchar(200);
declare @horaEntrada time(7);
declare @horaSalida time(7);
declare @precioPorNoche money;
declare @precioVolumen money;
declare @cantidadMinimanoches int;
declare @idPropiedad int;
declare @fk_idLocalidad int = (select idLocalidad from Localidad where CodigoLocalidad = @pCodigoLocalidad);
declare @ranking int;
declare @Localidad nvarchar(100) =  (select Pais + ' ' + Estado + ' ' + Ciudad  from Localidad where idLocalidad = @fk_idLocalidad )

DECLARE cursorobtenerPropiedades CURSOR LOCAL FOR
select 	idPropiedad,titulo,cantidadMaximaPersonas, descripcion, horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimanoches, Ranking
		from Propiedad where fk_idLocalidad = @fk_idLocalidad and ranking >= 3

OPEN cursorobtenerPropiedades
FETCH NEXT FROM cursorobtenerPropiedades
INTO @idPropiedad,@titulo,@cantidadMaximaPersonas, @descripcion, @horaEntrada,@horaSalida,@precioPorNoche,@precioVolumen,@cantidadMinimanoches,@ranking

WHILE @@fetch_status = 0
BEGIN
	declare @retorno int= (SELECT [MyBnB_BD].[dbo].[verificarReservacionesPrevias] (@idPropiedad,@pfechainicio,@pfechafinal)GO)
	
	if (@retorno = 0)
	begin 
		insert into #PropiedadesTemporal(idPropiedad,titulo,cantidadMaximaPersonas, descripcion, horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimanoches,ranking,Localidad)
					values(@idPropiedad,@titulo,@cantidadMaximaPersonas, @descripcion, @horaEntrada,@horaSalida,@precioPorNoche,@precioVolumen,@cantidadMinimanoches,@ranking,@Localidad)
	end
	

FETCH NEXT FROM cursorobtenerPropiedades
INTO @idPropiedad,@titulo,@cantidadMaximaPersonas, @descripcion, @horaEntrada,@horaSalida,@precioPorNoche,@precioVolumen,@cantidadMinimanoches,@ranking 
END

select idPropiedad,titulo,cantidadMaximaPersonas, descripcion, horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimanoches, Ranking ranking,Localidad Localidad
from #PropiedadesTemporal ORDER BY ranking

END

--exec spbuscarReservacionesPrevias 2,'2012/11/02','2012/12/02'

--SELECT * FROM reservacion
select * from Localidad
select * from propiedad
select * from reservacion
EXEC spmostrarPropiedadesDisponibles '2012/10/03','2012/10/05','SCLU'
