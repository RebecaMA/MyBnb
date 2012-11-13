--opcionales telefono, fecha nacimiento, descripcion 

ALTER PROCEDURE [dbo].[sprealizarReservacion]
	@pfechaEntrada date, 
	@pfechaSalida date,
  	@pprecioTotal money,
  	@pcantidadnoches int,
  	@pidPropiedad int,
  	@pidViaje nvarchar(30)
AS BEGIN
	insert into Reservacion(fechaEntrada,fechaSalida,precioTotal,cantidadNoches,fk_idPropiedad)
				values(@pfechaEntrada,@pfechaSalida,@pprecioTotal,@pcantidadnoches,@pidPropiedad)
				
	declare @idReservacion int = @@IDENTITY
	
	insert into ReservacionesXViaje (fk_idReservacion,fk_idViaje)
				values(@pidViaje,@idReservacion)
						
				
END

 --select * from Usuario

exec sprealizarReservacion '2012/10/05','2012/10/30',30000,25,'daniel',2
exec spmostrarPropiedadesDisponibles '2012/09/20','2012/11/15','SCLU'

select * from localidad