<?php

if ( // comprobaciones ambiguas pues en java nos aseguramos que sean no nulas
	isset($_POST['name']) and 
	isset($_POST['location']) and 
	isset($_POST['email']) and 
	isset($_POST['password']) 
) {
	require_once "open_connection.php";
	$name = utf8_decode($_POST['name']); // funcion para dar soporte a acentos
	$location = utf8_decode($_POST['location']);
	$email = ($_POST['email']);
	$password = ($_POST['password']);
	// $bitmap = $_POST['bitmap'];
	// $perfil = 'perfil';
	// se asume que el email entrante no tiene espacios
	$sql = "select * from votante where email like '$email';"; 
	$result = $conn->query($sql);
	$response =  array();

	if ($result->num_rows > 0) {
		array_push($response, array("success" => 'false'));
	} else {
		$sql  = "INSERT INTO votante(email, nombre, localidad, passwd) " .
				"VALUES ('$email', '$name', '$location', '$password');";
		$result = $conn->query($sql);
		array_push($response, array("success" => 'true'));
		if (!$result) die('no se pudo');
	}
	echo json_encode($response);	
} else die('no deberia de estar aqui...'); 

$conn->close();

?>