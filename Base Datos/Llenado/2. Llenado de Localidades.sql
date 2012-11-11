
insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('SCLU','Chile','Santiago','Santiago');
insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('SCLI','Chile','Santiago','Independencia');

insert into Propiedad (titulo,cantidadMaximaPersonas,horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimaNoches) values
					('Propiedad 1',10,'2:00:00','12:00:00',50,50,2);
					
					

insert into Propiedad (titulo,cantidadMaximaPersonas,horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimaNoches,fk_idLocalidad) values
					('Propiedad 2',10,'2:00:00','12:00:00',50,50,2,1);
					
					select * from propiedad
					
insert into Reservacion (fechaEntrada,fechaSalida,precioTotal,cantidadNoches,fk_idPropiedad) values ('2012/11/02','2012/11/05',150,3,2);
