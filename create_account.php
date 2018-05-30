<?php

function all_set() { // comprobaciones ambiguas pues en java nos aseguramos que sean no nulas
	return  isset($_POST['name']) and 
			isset($_POST['location']) and 
			isset($_POST['email']) and 
			isset($_POST['password']);
}

if ( all_set() ) {
	require_once "open_connection.php";
	$name = utf8_decode($_POST['name']); // funcion para dar soporte a acentos
	$location = utf8_decode($_POST['location']);
	$email = ($_POST['email']); // el email entrante no tiene espacios
	$password = ($_POST['password']);
	$bitmap = $_POST['perfil'];

	$sql = "select * from votante where email like '$email';"; 
	$result = $conn->query($sql);
	$response =  array();

	if ($result->num_rows > 0) {
		array_push($response, array("success" => 'false'));
	} else {
		if ($bitmap){
			$perfil = 'perfil.jpg'; // 
			$sql  = "INSERT INTO votante(email, nombre, localidad, passwd, perfil) " .
					"VALUES ('$email', '$name', '$location', '$password', '$perfil');";
			$upload_path = "img/$perfil"; // implicitamente $ubicaciondeestescript/img/perfil
			file_put_contents($upload_path, base64_decode($bitmap));
		}
		else {
			$sql  = "INSERT INTO votante(email, nombre, localidad, passwd) " .
					"VALUES ('$email', '$name', '$location', '$password');";
		} 
		$result = $conn->query($sql);
		array_push($response, array("success" => 'true'));
		if (!$result) die ('we could not');
	}
	echo json_encode($response);	
} else die('no deberia de estar aqui...'); 

$conn->close();

?>