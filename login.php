<?php

if ( // comprobaciones ambiguas pues en java nos aseguramos que sean no nulas
	isset($_POST['email']) and 
	isset($_POST['password']) 
) {
	require_once "open_connection.php";
	$email = utf8_decode($_POST['email']); // soporte para acentos... es necesario ?
	$password = utf8_decode($_POST['password']);
	// se asume que el email entrante no tiene espacios
	$sql = "select * from votante where email like '$email' and passwd like '$password';"; 
	$result = $conn->query($sql);
	$response =  array();

	if ($result->num_rows == 0) { // la persona no existe 
		array_push($response, array("success" => 'false'));
	} else {
		$result->data_seek(0); // movemos el puntero interno a la primera y supuesta unica posicion
		$row = $result->fetch_array(MYSQLI_ASSOC); // el argumento indica que accedemos a las columnas por los nombres de los atributos 
		array_push($response, array(
			"success" => 'true',
			'email' => $row['email'],
			'nombre' => $row['nombre'],
			'localidad' => $row['localidad'],
			'sexo' => $row['sexo'],
			'passwd' => $row['passwd'],
			'perfil' => $row['perfil'],
			'fecha_nacimiento' => $row['fecha_nacimiento']
		));
	}
	echo json_encode($response);	
} else die('no estan llenos todos los campos'); 

$conn->close();

?>