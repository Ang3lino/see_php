
insert into votante(nombre, localidad, email, passwd) 
	values ('Angel Lopez Manriquez', 'San pedro', 'angel@gmail.com', '1234');

-- como truncar una tabla referenciada por otra de forma rapida pero un tanto peligrosa
SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table votante; 
SET FOREIGN_KEY_CHECKS = 1;
	
