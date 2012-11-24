



insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('SCLU','Chile','Santiago','Santiago');
insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('SCLI','Chile','Santiago','Independencia');

--'1', 'CRC', 'Costa Rica', 'Cartago', 'Los Angeles'
--'2', 'CDB', 'Argentina', 'Cordoba', 'Cordoba'
--'3', 'ALS', 'Argentina', 'Buenos Aires', 'Buenos Aires'
--'4', 'PRG', 'Republica Checa', 'Praga', 'Praga'

insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('CRC','Costa Rica','Cartago','Los Angeles');
insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('CDB','Argentina','Cordoba','Cordoba');
insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('ALS', 'Argentina', 'Buenos Aires', 'Buenos Aires');
insert into Localidad (CodigoLocalidad, Pais,Estado,Ciudad) values ('PRG', 'Republica Checa', 'Praga', 'Praga');


--insert into Propiedad (titulo,cantidadMaximaPersonas,horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimaNoches) values
					--('Propiedad 1',10,'2:00:00','12:00:00',50,50,2);
					
					

--insert into Propiedad (titulo,cantidadMaximaPersonas,horaEntrada,horaSalida,precioPorNoche,precioVolumen,cantidadMinimaNoches,fk_idLocalidad) values
					--('Propiedad 2',10,'2:00:00','12:00:00',50,50,2,1);
					
					select * from propiedad
					
--insert into Reservacion (fechaEntrada,fechaSalida,precioTotal,cantidadNoches,fk_idPropiedad) values ('2012/11/02','2012/11/05',150,3,2);
