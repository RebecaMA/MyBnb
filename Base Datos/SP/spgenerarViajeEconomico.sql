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
-- el presupuesto, la cantidad de noches y el
--umbral del presupuesto.


ALTER PROCEDURE spgenerarViajeEconomico
	@pLogin nvarchar(30),
	@pPresupuesto money, 
	@pCantidadNoches int, 
	@pUmbralPresupuesto int
AS
BEGIN
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
declare @idPropiedad int;
declare @precioPorNoche money;
declare @precioVolumen money;
declare @cantidadMinimanoches int; 
declare @precioTotal money;


insert into #temporalPropiedades (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
								precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 
								exec spmostrarPropiedadesWishlist 'viajero'  
								
update #temporalPropiedades set procesado = 0


 Declare @Propiedad int While (Select Count(*) From #temporalPropiedades Where procesado = 0) > 0
  Begin 
		Select Top 1 @idPropiedad = idPropiedad From #temporalPropiedades Where procesado = 0
		Select Top 1 @precioPorNoche = precioPorNoche From #temporalPropiedades Where procesado = 0
		Select Top 1 @precioVolumen = precioVolumen From #temporalPropiedades Where procesado = 0
		Select Top 1 @cantidadMinimanoches = cantidadMinimanoches From #temporalPropiedades Where procesado = 0
		
		if @pCantidadNoches >= @cantidadMinimanoches 
		begin
			 set @precioTotal = (@pCantidadNoches * @precioVolumen)
		end
		else 
		begin
			set @precioTotal = (@pCantidadNoches * @precioPorNoche)
		end
		
		   if @precioTotal < @pPresupuesto
		begin 
		insert into #TemporalViaje (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
							precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 			
		select top 1 idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
						precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje from #TemporalPropiedades

		end
		
		update #temporalPropiedades set procesado = 1 where idPropiedad =  @idPropiedad
				
  end
  
	set @idPropiedad = (select top 1 idPropiedad from #temporalViaje ) 
	set @idPropiedad = isnull(@idPropiedad, -30)
	if @idPropiedad = -30
	
	begin 
	
	update #temporalPropiedades set procesado = 0


 Declare @dPropiedad int While (Select Count(*) From #temporalPropiedades Where procesado = 0) > 0
  Begin 
		Select Top 1 @idPropiedad = idPropiedad From #temporalPropiedades Where procesado = 0
		Select Top 1 @precioPorNoche = precioPorNoche From #temporalPropiedades Where procesado = 0
		Select Top 1 @precioVolumen = precioVolumen From #temporalPropiedades Where procesado = 0
		Select Top 1 @cantidadMinimanoches = cantidadMinimanoches From #temporalPropiedades Where procesado = 0
		
		if @pCantidadNoches >= @cantidadMinimanoches 
		begin
			 set @precioTotal = (@pCantidadNoches * @precioVolumen)
		end
		else 
		begin
			set @precioTotal = (@pCantidadNoches * @precioPorNoche)
		end
		
		   if @precioTotal < (@pPresupuesto + ((@pPresupuesto * @pUmbralPresupuesto)/100))
		begin 
		insert into #TemporalViaje (idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
							precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje) 			
		select top 1 idPropiedad,titulo,cantidadMaximaPersonas,descripcion,horaEntrada,horaSalida,precioPorNoche,
						precioVolumen,cantidadMinimanoches,Ranking,Localidad,tipoPropiedad,tipoHospedaje from #TemporalPropiedades

		end
		
		update #temporalPropiedades set procesado = 1 where idPropiedad =  @idPropiedad
	
	
	end

select * from #temporalViaje
drop table #temporalPropiedades	
END
GO

--exec spmostrarPropiedadesWishlist 'viajero'
--exec spmostrarWishlist 'viajero'
--select * from #temporalPropiedades	

--exec spgenerarViajeEconomico 'viajero',1,1,null

--select * from #temporalViaje