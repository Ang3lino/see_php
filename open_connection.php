<?php
	$host = "localhost";
	$dbname = "see";
	$user = "root";
	$password = "";

	$connection = new mysqli($host, $user, $password, $dbname);
	if ($connection->connect_errno) {
		echo "no se pudo realizar la conexion";
		exit();
	}

?>