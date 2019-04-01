drop database if exists see;
create database see;
use see;

-- drop database see_test;
-- create database see_test;
-- use see_test;

-- soporte para acentos, también hay que cuidar el archivo php

ALTER DATABASE see DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

create table votante ( -- super entidad
	email varchar(32) primary key not null,
	nombre varchar(64),
	localidad varchar(64),
	sexo enum('m', 'f'), -- masculino, femenino. OJO que si pones algun caracter distino a este no se inserta nada
	fecha_nacimiento date,
	passwd varchar(32),
	perfil varchar(256)  -- url de la foto de perfil 
);

create table sala_votacion (
	numero int not null auto_increment primary key, -- autoincrementable 
	se_puede_votar boolean, -- tiny int 
	email_creador varchar(32) not null
);

alter table sala_votacion add foreign key (email_creador) references votante(email)
	on delete cascade ;

create table postulante (
	post_email varchar(32) not null,
	sala_num int not null,
	primary key (post_email, sala_num),
	foreign key (post_email) references votante(email) on delete cascade,
	foreign key(sala_num) references sala_votacion(numero) on delete cascade
);

-- relacion en la que intervienen las personas con la votacion
create table medio_votacion ( 
	post_email varchar(32) not null,
	email varchar(32) not null, -- del votante
	numero int not null, -- de la votacion
	primary key (post_email, email, numero)
);

alter table medio_votacion 
	add foreign key(post_email) 
	references postulante(post_email) on delete cascade ;

alter table medio_votacion
	add foreign key(email) 
	references votante(email) on delete cascade on update cascade;

alter table medio_votacion 
	add foreign key(numero) 
	references sala_votacion(numero) on delete cascade ;

