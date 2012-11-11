--opcionales telefono, fecha nacimiento, descripcion 

CREATE PROCEDURE [dbo].[sprealizarReservacion]
	@pfechaEntrada date, 
	@pfechaSalida date,
  	@pprecioTotal money,
  	@pcantidadnoches int,
  	@plogin nvarchar(30),
  	@pidPropiedad int
AS BEGIN
	insert into Reservacion(fechaEntrada,fechaSalida,precioTotal,cantidadNoches,fk_idUsuario,fk_idPropiedad)
				values(@pfechaEntrada,@pfechaSalida,@pprecioTotal,@pcantidadnoches,
				(select idUsuario from Usuario where login = @plogin),@pidPropiedad)
						
				
END

 --select * from Usuario

exec sprealizarReservacion '2012/10/05','2012/10/30',30000,25,'daniel',2
exec spmostrarPropiedadesDisponibles '2012/09/20','2012/11/15','SCLU'

select * from localidad