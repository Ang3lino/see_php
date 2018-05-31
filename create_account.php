<?php

function all_set() { // comprobaciones ambiguas pues en java nos aseguramos que sean no nulas
	return  isset($_POST['name']) and 
			isset($_POST['location']) and 
			isset($_POST['email']) and 
			isset($_POST['password']) and 
			isset($_POST['perfil']);
}

if ( all_set() ) {
	require_once "open_connection.php";
	$name = utf8_decode($_POST['name']); // funcion para dar soporte a acentos
	$location = utf8_decode($_POST['location']);
	$email = ($_POST['email']); // el email entrante no tiene espacios
	$password = ($_POST['password']);
	$bitmap = $_POST['perfil'];
	$gender = $_POST['sexo'];
	$birthday = $_POST['fecha_nacimiento'];

	$sql = "select * from votante where email like '$email';"; 
	$result = $conn->query($sql);
	$response =  array();

	if ($result->num_rows > 0) { // e-mail ya existente
		array_push($response, array("success" => 'false'));
	} else {
		if ($bitmap) { // si se nos paso un bitmap (bm != null)
			$perfil = 'perfil.jpg'; // 
			$sql  = "INSERT INTO votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd, perfil) " .
					"VALUES ('$email', '$name', '$location', '$gender', '$birthday', '$password', '$perfil');";
			$upload_path = "img/$perfil"; // implicitamente $ubicaciondeestescript/img/perfil
			file_put_contents($upload_path, base64_decode($bitmap));
		}
		else {
			$sql  = "INSERT INTO votante(email, nombre, localidad, sexo, fecha_nacimiento, passwd) " .
					"VALUES ('$email', '$name', '$location', '$gender', '$birthday', '$password');";
		} 
		$result = $conn->query($sql);
		if ($result)
			array_push($response, array("success" => 'true'));
		else 
			array_push($response, array('success' => 'false, failed in query' ) );
	}
	echo json_encode($response);	
} else die('existe un parametro vacio'); 

$conn->close();

?>