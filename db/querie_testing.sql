

-- como truncar una tabla referenciada por otra de forma rapida pero un tanto peligrosa

SET FOREIGN_KEY_CHECKS = 0; 
TRUNCATE table votante; 
TRUNCATE table sala_votacion;
SET FOREIGN_KEY_CHECKS = 1;
	
-- inserciones de prueba

-- votante

-- f 

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("atiziri@outlook.com", "Atziri", "San Pedro Xalostoc", "f", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("gal@outlook.com", "Galilea", "San Pedro Xalostoc", "f", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("iris@outlook.com", "Iris", "San Pedro Xalostoc", "f", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("brenda@outlook.com", "Brenda", "San Pedro Xalostoc", "f", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("karla@outlook.com", "Karla", "San Pedro Xalostoc", "f", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("pamela@outlook.com", "pamela", "San Pedro Xalostoc", "f", '1998-8-24', '123');

-- m
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("elvis@gmail.com", "Elvis", "San Pedro Xalostoc", "m", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("jose@gmail.com", "Jose", "San Pedro Xalostoc", "m", '1998-8-24', '123');
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("angel@gmail.com", "Luis Angel", "San Pedro", "m", '1998-8-24', '123');

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("angel@outlook.com", "Angel", "San Pedro", "m", '1998-8-24', '1234');

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("luisangel@outlook.com", "Luis Angel", "San Peter", "m", '1998-8-24', '1234');

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("miguelangel@outlook.com", "Miguel Angel", "Santa clara", "m", '1998-8-24', '1234');

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) 
	values ("a@a.com", "a", "San Pedro", "m", '1998-8-24', '123');

-- candidatos en potencia

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("anayin@gmail.com", "Ricardo Anaya", "Florida", "m", '1970-7-12', 'pan', null);

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("queso@gmail.com", "Jose Antonio", "Guerrero", "m", '1950-3-19', 'pri', null);

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("mocho@gmail.com", "Bronco", "Monterrey", "m", '1950-3-21', '123', null);

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("mesias@gmail.com", "Andres Manuel", "Mexico", "m", '1950-8-3', 'amlo', null);

-- postulantes 

insert into postulante(post_email, sala_num) 
	values ('queso@gmail.com', 27);

insert into postulante(post_email, sala_num) 
	values ('mocho@gmail.com', 27);

insert into postulante(post_email, sala_num) 
	values ('mesias@gmail.com', 27);

-- seleccion de candidatos ya registrados

select v.nombre, p.post_email, p.partido 
	from votante v, postulante p, sala_votacion s
	where p.post_email = v.email 
		and p.sala_num = s.numero 
		and s.numero = 27
	order by v.nombre;

-- sala votacion

insert into sala_votacion(se_puede_votar, email_creador) values (FALSE, "a@a.com");

lock tables sala_votacion write;

insert into sala_votacion(numero, se_puede_votar, email_creador) 
	values ( 
		(select max(numero) from sala_votacion sala_v) + 1,
		FALSE, 
		"a@a.com" );

insert into sala_votacion(numero, se_puede_votar, email_creador) 
values ( 
	6,
	FALSE, 
	"a@a.com" );

select v.*  from votante v, medio_votacion m, sala_votacion s 
	where v.email = m.email and 
		m.numero = s.numero and 
		v.email = 'a@a.com' and 
		s.numero = 27;

-- insert values in medio_votacion

insert into medio_votacion(email, post_email, numero) values ('atziri@outlook.com', 'mesias@gmail.com', 27);
insert into medio_votacion(email, post_email, numero) values ('gal@outlook.com', 'queso@gmail.com', 27);
insert into medio_votacion(email, post_email, numero) values ('iris@outlook.com', 'anayin@gmail.com', 27);
insert into medio_votacion(email, post_email, numero) values ('brenda@outlook.com', 'anayin@gmail.com', 27);
insert into medio_votacion(email, post_email, numero) values ('karla@outlook.com', 'mocho@gmail.com', 27);

insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("anayin@gmail.com", "Ricardo Anaya", "Florida", "m", '1970-7-12', 'pan', null);
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("queso@gmail.com", "Jose Antonio", "Guerrero", "m", '1950-3-19', 'pri', null);
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("mocho@gmail.com", "Bronco", "Monterrey", "m", '1950-3-21', '123', null);
insert into votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) 
	values ("mesias@gmail.com", "Andres Manuel", "Mexico", "m", '1950-8-3', 'amlo', null);


SELECT v.nombre from postulante p, sala_votacion s, votante v
			where p.sala_num = s.numero and 
				p.sala_num = 27 and 
				v.email = p.post_email ;

select count(*) as count
from medio_votacion m, sala_votacion s
where m.post_email like 'mesias@gmail.com' and
	s.numero = 27 and
	s.numero = m.numero; 