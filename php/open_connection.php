<?php
	// cambie las credenciales de ser necesario
	$host = "127.0.0.1"; 
	$user = "root";
	$password = "";
	$dbname = "see";

	$conn = new mysqli($host, $user, $password, $dbname);
	if ($conn->connect_error) die($conn->connect_error);
	mysqli_set_charset($conn,"utf8"); // Para los acentos, (recuperacion de datos UTF8)
?>