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
--- falta aumentar los dias y el presupuesto 
--- y pasar los valores a int y a money 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE spgenerarViajeTurista
	
AS
BEGIN

-- Declaracion de variables
declare @CodigoLocalidad nvarchar(10)
declare @idLocalidad int
declare @idLocalidadPropiedad int
declare @presupuesto money
declare @cantidadnoches int
declare @idPropiedad int
declare @precioPorNoche money
declare @precioVolumen money
declare @cantidadMinimanoches int
declare @precioTotal money

-- Creacion de tablas
-- Contiene los codigos de las localidades
CREATE TABLE #localidades 
(
	localidad nvarchar(10),
	procesado int
)

-- Contiene los dias en cada localidad
CREATE TABLE #dias 
(
	dia nvarchar(10),
	procesado int
)


-- Contiene el presupuesto para cada localidad
CREATE TABLE #presupuesto
(
	presupuesto nvarchar(10),
	procesado int
)


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


insert into #localidades (localidad) exec spsepararLocalidades 'viaje1,viaje2'
insert into #dias(dia) exec spsepararLocalidades '10,2'
insert into #presupuesto (presupuesto) exec spsepararLocalidades '1000,2000'
update #localidades set procesado = 0
update #dias set procesado = 0  
update #presupuesto set procesado = 0  

insert into #temporalPropiedades (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
								precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 
								exec spmostrarPropiedadesWishlist 'viajero'  
								
update #temporalPropiedades set procesado = 0

Declare @Localidad int While (Select Count(*) From #localidades Where procesado = 0) > 0

Begin
	Select Top 1 @CodigoLocalidad = localidad From #localidades where procesado = 0
	set @idLocalidad = (select idLocalidad from Localidad where CodigoLocalidad = @CodigoLocalidad)
	Declare @Propiedad int While (Select Count(*) From #temporalPropiedades Where procesado = 0) > 0
	Begin 
		Select Top 1 @idPropiedad = idPropiedad From #temporalPropiedades Where procesado = 0	 
		Select Top 1 @precioPorNoche = precioPorNoche From #temporalPropiedades Where procesado = 0
		Select Top 1 @precioVolumen = precioVolumen From #temporalPropiedades Where procesado = 0
		Select Top 1 @cantidadMinimanoches = cantidadMinimanoches From #temporalPropiedades Where procesado = 0
		set @idLocalidadPropiedad = (select fk_idLocalidad from Propiedad where idPropiedad = @idPropiedad)
		
		
		if @idLocalidad = @idLocalidadPropiedad
		begin
			
			if @cantidadnoches >= @cantidadMinimanoches 
				begin
					set @precioTotal = (@cantidadnoches * @precioVolumen)
				end
			else 
				begin
					set @precioTotal = (@cantidadnoches * @precioPorNoche)
				end
				
			if @precioTotal < @presupuesto
				begin 
					insert into #TemporalViaje (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
							precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 			
					select top 1 idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
						precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje from #TemporalPropiedades

				end			
		end
			
		update #temporalPropiedades set procesado = 1 where idPropiedad  =  @idPropiedad
	end 

update #localidades set procesado = 1 where @CodigoLocalidad  =  localidad
  
 end 






END
GO
