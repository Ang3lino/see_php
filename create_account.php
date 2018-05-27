<?php

	if ( isset($_GET['name']) ) {
		$name = $_GET['name'];
		echo "hola $name ";
	} else  {
		echo "nombre no puesto";
	}

	if ( isset($_GET['name']) and isset($_GET['location']) 
		and isset($_GET['email']) and isset($_GET['password']) ) {

		include("open_connection.php");
		$name = utf8_decode($_GET['name']); // funcion para dar soporte a acentos
		$location = utf8_decode($_GET['location']);
		$email = utf8_decode($_GET['email']);
		$password = utf8_decode($_GET['password']);

		$connection->query("INSERT INTO votante(email, nombre, localidad, passwd) values ('$email', '$name', '$location', '$password');");

	} else {
		echo "no estan llenos todos los campos";
	}

?>