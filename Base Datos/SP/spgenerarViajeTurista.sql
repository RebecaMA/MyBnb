
CREATE PROCEDURE spgenerarViajeTurista
	@pLocalidades varchar(1000)

AS

-- Tabla de localidades temporal
CREATE TABLE #localidades 
(
	localidad varchar(10)
)

-- Tabla de propiedades del wishlist temporal 

Create Table #temporalPropiedades(
	idPropiedad int,
	titulo nvarchar(20),
	cantidadMaximaPersonas int, 
	descripcion nvarchar(200),
	horaEntrada datetime,
	horaSalida datetime, 
	precioPorNoche money,
	precioVolumen money, 
	cantidadMinimanoches int, 
	Ranking int, 
	Localidad nvarchar(30),
	tipoPropiedad nvarchar(30),
	tipoHospedaje nvarchar(30),
procesado int
)

-- Tabla de viaje temporal 

Create Table #temporalViaje(
	idPropiedad int,
	titulo nvarchar(20),
	cantidadMaximaPersonas int, 
	descripcion nvarchar(200),
	horaEntrada datetime,
	horaSalida datetime, 
	precioPorNoche money,
	precioVolumen money, 
	cantidadMinimanoches int, 
	Ranking int, 
	Localidad nvarchar(30),
	tipoPropiedad nvarchar(30),
	tipoHospedaje nvarchar(30)
)



	insert into #localidades exec spsepararLocalidades @pLocalidades
	
	
	
	
SET NOCOUNT OFF
GO
