

-- como truncar una tabla referenciada por otra de forma rapida pero un tanto peligrosa

SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table votante; 
SET FOREIGN_KEY_CHECKS = 1;
	
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("angel@outlook.com", "Angel", "San Pedro", "m", '1998-8-24', '1234');

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("luisangel@outlook.com", "Luis Angel", "San Peter", "m", '1998-8-24', '1234', 'perfil.jpg');


insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("miguelangel@outlook.com", "Miguel Angel", "Santa clara", "m", '35-8-24', '1234', 'perfil.jpg');