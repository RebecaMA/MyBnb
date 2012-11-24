
ALTER PROCEDURE spgenerarViajeTurista
	@pLocalidades nvarchar(1000),
	@pDias nvarchar(1000),
	@pPresupuesto nvarchar(1000)

AS BEGIN
-- DECLARACIONES DE VARIABLES
declare @CodigoLocalidad nvarchar(10)
declare @idLocalidad int
declare @idLocalidadPropiedad int
declare @presupuesto money
declare @cantidadnoches int
declare @idPropiedad int;
declare @precioPorNoche money;
declare @precioVolumen money;
declare @cantidadMinimanoches int; 
declare @precioTotal money;


-- DECLARACIONES DE TABLAS
-- Tabla de localidades temporal
CREATE TABLE #localidades 
(
	localidad nvarchar(10),
	procesado int
)

CREATE TABLE #dias 
(
	dia nvarchar(10),
	procesado int
)


CREATE TABLE #presupuesto
(
	presupuesto nvarchar(10),
	procesado int
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


-- inserta los datos de las localidades en la tabla
	insert into #localidades (localidad) exec spsepararLocalidades 'viaje1,viaje2'
	--insert into #dias(dia) exec spsepararLocalidades '10,2'
	--insert into #presupuesto (presupuesto) exec spsepararLocalidades '1000,2000'
	--update #localidades set procesado = 0
	--update #dias set procesado = 0  
	--update #presupuesto set procesado = 0  
	
-- inserta los datos de todas las propiedades del wishlist del usuario

--insert into #temporalPropiedades (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
--								precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 
--								exec spmostrarPropiedadesWishlist 'viajero'  
								
--update #temporalPropiedades set procesado = 0
	
--- Comienza ciclo de localidades recorriendolas y buscando propiedades en el wishlist que tengan
-- esta localidad
-- Si la encuentra hace los calculos del presupuesto a ver si es una propiedad accesible

 --Declare @Localidad int While (Select Count(*) From #localidades Where procesado = 0) > 0
 -- Begin 
 --Select Top 1 @CodigoLocalidad = localidad From #localidades where procesado = 0
 
 ---- Recorro la lista de localidades
	--set @idLocalidad = (select idLocalidad from Localidad where CodigoLocalidad = @CodigoLocalidad)
 
	--Declare @Propiedad int While (Select Count(*) From #temporalPropiedades Where procesado = 0) > 0
	--Begin 
	--	Select Top 1 @idPropiedad = idPropiedad From #temporalPropiedades Where procesado = 0
	--	Select Top 1 @precioPorNoche = precioPorNoche From #temporalPropiedades Where procesado = 0
	--	Select Top 1 @precioVolumen = precioVolumen From #temporalPropiedades Where procesado = 0
	--	Select Top 1 @cantidadMinimanoches = cantidadMinimanoches From #temporalPropiedades Where procesado = 0
	--	set @idLocalidadPropiedad = (select fk_idLocalidad from Propiedad where idPropiedad = @idPropiedad)
		
	--	if @idLocalidadPropiedad = @idLocalidad 
	--	begin 
	--		if @cantidadnoches >= @cantidadMinimanoches 
	--			begin
	--				set @precioTotal = (@cantidadnoches * @precioVolumen)
	--			end
	--		else 
	--			begin
	--				set @precioTotal = (@cantidadnoches * @precioPorNoche)
	--			end
		
	--	   if @precioTotal < @presupuesto
	--			begin 
	--				insert into #TemporalViaje (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
	--						precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 			
	--				select top 1 idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
	--					precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje from #TemporalPropiedades

	--			end
	--	end
		
	--	update #temporalPropiedades set procesado = 1 where idPropiedad =  @idPropiedad
				
	--end
  
  
  
 -- update #localidades set procesado = 1 where @CodigoLocalidad  =  localidad
  
 -- end


	drop table #localidades
	
	CREATE TABLE #localidades 
(
	localidad nvarchar(10),
	procesado int
)
	
		insert into #localidades (localidad)
		
		
		exec spsepararLocalidades 'viaje1,viaje2'
	
	
	
	
	
	
	
	select * from #localidades
	
END
GO

--exec spgenerarViajeTurista 'viaje1,viaje2','1,2','1000,2000'

