-- retorna 0 si la fecha no interfiere con la reservacion
-- retorna uno si si interfiere
-- TENGO Q TENER CUIDADO CON LOS AÑOS NO ESTAN VALIDADOS



CREATE PROCEDURE [spmostrarPropiedadesWishlist]
	@pLogin nvarchar(30)
AS BEGIN

select 	idPropiedad,titulo,cantidadMaximaPersonas, Propiedad.descripcion, horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimanoches, Ranking,Pais + ' ' + Estado + ' ' + Ciudad as  Localidad, CategoriaHospedaje.tipoPropiedad,TipoHospedaje
		from Propiedad   INNER JOIN CategoriaHospedaje on Propiedad.fk_idCategoriaHospedaje = idTipoPropiedad
						INNER JOIN TipoHospedaje on Propiedad.fk_idTipoHospedaje = idTipoHospedaje
						INNER JOIN Localidad on Propiedad.fk_idLocalidad = idLocalidad 
						INNER JOIN WishlistXUsuario on WishlistXUsuario.fk_idPropiedad = idPropiedad
						--INNER JOIN Recomendacion on WishlistXUsuario.fk_idRecomendacion = idRecomendacion 
						where fk_idUsuario =  (select idUsuario from Usuario where login = @pLogin)
						UNION
select 	idPropiedad,titulo,cantidadMaximaPersonas, Propiedad.descripcion, horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimanoches, Ranking,Pais + ' ' + Estado + ' ' + Ciudad as  Localidad, CategoriaHospedaje.tipoPropiedad,TipoHospedaje
		from Propiedad   INNER JOIN CategoriaHospedaje on Propiedad.fk_idCategoriaHospedaje = idTipoPropiedad
						INNER JOIN TipoHospedaje on Propiedad.fk_idTipoHospedaje = idTipoHospedaje
						INNER JOIN Localidad on Propiedad.fk_idLocalidad = idLocalidad 
						INNER JOIN WishlistXUsuario on WishlistXUsuario. fk_idUsuario =  (select idUsuario from Usuario where login = @pLogin)
						INNER JOIN Recomendacion on WishlistXUsuario.fk_idRecomendacion = idRecomendacion and Recomendacion.fk_idPropiedad = idPropiedad
						INNER JOIN EstadoRecomendacion on Recomendacion.fk_idEstadoRecomendacion = idEstadoRecomendacion 
						where (EstadoRecomendacion = 'Espera' or EstadoRecomendacion = 'Aceptada')

						

	END

