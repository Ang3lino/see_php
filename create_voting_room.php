<?php

// php no reporta errores si una variable no fue inicializada con algun valor
if (isset($_POST['email']))  {
	require_once "open_connection.php";
	$email = $_POST['email']; 
	$query = "insert into sala_votacion(se_puede_votar, email_creador) values (FALSE, '$email');";
	$result = $conn->query($query);
	$response =  array();
	if ($result)  
		array_push($response, array("inserted" => 'true'));
	else 
		array_push($response, array("inserted" => 'false'));
	echo json_encode($response);	
} else die('exists an empty field'); 

$conn->close();

?>