<?php

if ( 
	isset($_GET['name']) and 
	isset($_GET['location']) and 
	isset($_GET['email']) and 
	isset($_GET['password']) 
) {
	include "open_connection.php";
	$name = utf8_decode($_POST['name']); // funcion para dar soporte a acentos
	$location = utf8_decode($_POST['location']);
	$email = utf8_decode($_POST['email']);
	$password = utf8_decode($_POST['password']);

	$sql = "select * from votante where email like '%$email%';";
	$result = $conn->query($sql);
	$response =  array();

	if ($result->num_rows > 0) {
		array_push($response, array("success" => 'false'));
	} else {
		$sql = "INSERT INTO votante(email, nombre, localidad, passwd) values ('$email', '$name', '$location', '$password');";
		$result = $conn->query($sql);
		array_push($response, array("success" => 'true'));
	}
	echo json_encode($response);	
} else die("no estan llenos todos los campos");

$conn->close();

?>