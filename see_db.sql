
create database see;
use see;

-- soporte para acentos, también hay que cuidar el archivo php
ALTER DATABASE see DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

/* cambios realizados:
	tabla votante
		nacionalidad y curp, no todas la naciones tienen curp y no es posible validar 
			si este curp ya esta registrado
		agregado sexo y fecha de nacimiento
	entidad regulador borrada
	entidad regulador plantilla
	correcion en los atributos multivalor de la propuesta del candidato
	*/

-- insert into votante(email, nombre, localidad, passwd) 
--	values ("angel@outlook.com", "angel", "san pedro", "123");

create table votante ( -- super entidad
	email varchar(32) primary key not null,
	nombre varchar(64),
	localidad varchar(64),
	sexo varchar(1),
	fecha_nacimiento date,
	passwd varchar(32),
	perfil varchar(256)  -- url de la foto de perfil 
);

create table postulante (
	post_email varchar(32) not null,
	post_logo varchar(256),
	escolaridad varchar(32),
	alma_mater varchar(16)
);

alter table postulante add primary key (post_email);
alter table postulante add 
	foreign key(post_email) 
	references votante(email)
	on delete cascade on update cascade;

create table post_partido (
	email varchar(32) not null,
	partido varchar(32) not null
);

alter table post_partido add primary key (email, partido) ;
alter table post_partido add 
	foreign key (email) 
	references postulante(post_email)
	on update cascade on delete cascade ;

create table post_posgrado (
	email varchar(32) not null,
	posgrado varchar(32) not null
);

alter table post_posgrado add primary key (email, posgrado) ;
alter table post_posgrado add 
	foreign key (email) 
	references postulante(post_email)
	on delete cascade on update cascade;

create table post_sitio_web (
	email varchar(32) not null,
	sitio varchar(64) not null
);

alter table post_sitio_web add primary key (email, sitio) ;
alter table post_sitio_web add foreign key (email) 
	references postulante(post_email)
	on update cascade on delete cascade ;

create table propuesta (
	post_email varchar(32) not null,
	nombre varchar(64),
	presupuesto decimal(10, 2),
	descripcion varchar(64),
	primary key (post_email, nombre)
);
	
alter table propuesta add foreign key(post_email) 
	references postulante(post_email)
	on delete cascade on update cascade;

create table prop_beneficio (
	post_email varchar(32) not null,
	prop_nombre varchar(64) not null,
	descripcion varchar(64) not null,
	primary key (post_email, prop_nombre, descripcion)
);

alter table prop_beneficio add 
	foreign key(post_email, prop_nombre) 
	references propuesta(post_email, nombre)
	on delete cascade on update cascade;

create table prop_lugar (
	post_email varchar(32) not null,
	prop_nombre varchar(64) not null,
	lugar varchar(64) not null,
	primary key (post_email, prop_nombre, lugar)
);

alter table prop_lugar add 
	foreign key(post_email, prop_nombre) 
	references propuesta(post_email, nombre)
	on delete cascade on update cascade;

create table sala_votacion (
	numero int not null auto_increment primary key, -- autoincrementable 
	num_postulantes int,
	duracion_hr real, -- double = real ?
	num_votantes int,
	t_inicio time, 
	t_final time,
	email_creador varchar(32) not null
);

alter table sala_votacion add foreign key (email_creador) references votante(email)
	on delete cascade on update cascade ;

-- relacion en la que intervienen las personas con la votacion
create table medio_votacion ( 
	post_email varchar(32) not null,
	email varchar(32) not null, -- del votante
	numero int not null, -- de la votacion
	primary key (post_email, email, numero)
);

alter table medio_votacion 
	add foreign key(post_email) 
	references postulante(post_email) ;
alter table medio_votacion
	add foreign key(email) 
	references votante(email);

alter table medio_votacion 
	add foreign key(numero) 
	references sala_votacion(numero);
