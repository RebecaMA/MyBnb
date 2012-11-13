--opcionales telefono, fecha nacimiento, descripcion 

ALTER PROCEDURE [dbo].[spregistrarViaje]
	@pfechaEntrada date, 
	@pfechaSalida date,
  	@plogin nvarchar(30),
  	@ptitulo nvarchar(30)
  
AS BEGIN
	insert into Viaje (Titulo,FechaInicio,FechaFinal,fk_idUsuario)
					 values(@ptitulo,@pfechaEntrada,@pfechaSalida,
	(select idUsuario from Usuario where login = @plogin))
						
	select @@Identity
				
END

 --select * from Usuario

--exec sprealizarReservacion '2012/10/05','2012/10/30',30000,25,'daniel',2
--exec spmostrarPropiedadesDisponibles '2012/09/20','2012/11/15','SCLU'

--select * from localidad