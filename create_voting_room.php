<?php

// php no reporta errores si una variable no fue inicializada con algun valor
if (isset($_POST['email']))  {
	require_once "open_connection.php";
	$email = $_POST['email']; 

	$result = $conn->query('lock tables sala_votacion write; ');
	$result = $conn->query('select max(numero) from sala_votacion; ');
	$result->data_seek(0); // movemos el puntero interno a la primera y supuesta unica posicion
	$row = $result->fetch_array(MYSQLI_ASSOC); // el argumento indica que accedemos a las columnas por los nombres de los atributos 
	$result = $conn->query('unlock tables;');

	$number = $row['max(numero)'] + 1; // importante obtener el consecutivo
	$query = "insert into sala_votacion(numero, se_puede_votar, email_creador) " .
			 "values ($number, FALSE, '$email');";
	$result = $conn->query($query);
	$response =  array();
	if ($result)  
		array_push( $response, array( "inserted" => 'true', "number" => $number ));
	else 
		array_push($response, array("inserted" => 'false', "x" => $number));
	echo json_encode($response);	
} else die('exists an empty field'); 

$conn->close();

?>