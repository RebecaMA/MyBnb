-- retorna 0 si la fecha no interfiere con la reservacion
-- retorna uno si si interfiere
-- TENGO Q TENER CUIDADO CON LOS AÑOS NO ESTAN VALIDADOS



ALTER PROCEDURE [spmostrarPropiedades]
	
AS BEGIN

select 	idPropiedad,titulo,cantidadMaximaPersonas, descripcion, horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimanoches, Ranking,Pais + ' ' + Estado + ' ' + Ciudad as  Localidad 
		from Propiedad  INNER JOIN Localidad on Propiedad.fk_idLocalidad = idLocalidad where ranking >= 3 
		


END

--exec spbuscarReservacionesPrevias 2,'2012/11/02','2012/12/02'

----SELECT * FROM reservacion
--select * from Localidad
--select * from propiedad
--select * from reservacion
--EXEC spmostrarPropiedadesDisponibles '2012/10/03','2012/10/05','SCLU'

exec spmostrarPropiedades
