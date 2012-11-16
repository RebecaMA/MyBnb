--opcionales telefono, fecha nacimiento, descripcion 

ALTER PROCEDURE [dbo].[sprealizarReservacion]
	@pfechaEntrada date, 
	@pfechaSalida date,
  	@pidPropiedad int,
  	@pidViaje int
AS BEGIN
	declare @diainicio int = (SELECT DATEPART(dy,@pfechaEntrada));
	declare @diafinal int =  (SELECT DATEPART(dy,@pfechaSalida));	
	declare @diasTotales int;
	declare @precio money;
	declare @precioTotal money;
	declare @idReservacion int;
	if Year(@pfechaEntrada) = Year(@pfechaSalida)
	begin 
		set @diasTotales= (@diafinal - @diainicio)
	end
	else set @diasTotales= ((@diafinal+365)- @diainicio)
	
	set @precio = (select precioPorNoche from Propiedad where idPropiedad = @pidPropiedad);
	set @precioTotal  = (@precio * @diasTotales);
	declare @retorno int= (SELECT [MyBnB_BD].[dbo].[verificarReservacionesPrevias] (@pidPropiedad,@pfechaEntrada,@pfechaSalida)GO)
	if @retorno = 0
	begin
	
	insert into Reservacion(fechaEntrada,fechaSalida,precioTotal,cantidadNoches,fk_idPropiedad)values(@pfechaEntrada,@pfechaSalida,@precioTotal,@diasTotales,@pidPropiedad)
				
	set @idReservacion  =  @@IDENTITY
	
	insert into ReservacionesXViaje (fk_idReservacion,fk_idViaje)
				values(@idReservacion,@pidViaje)
						
 select 'Reservacion Realizada'
 end 
 else select 'No se puede realizar reservación'
END

