<?php
	// cambie las credenciales de ser necesario
	$host = "127.0.0.1"; 
	$user = "root";
	$password = "root";
	$dbname = "see";

	$conn = new mysqli($host, $user, $password, $dbname);
	if ($conn->connect_error) die($conn->connect_error);
?>