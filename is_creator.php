<?php

if (isset($_POST['number']) and isset($_POST['email'])) {
	require_once "open_connection.php";

	$n = $_POST['number'];
	$email = $_POST['email'];

	$query = "SELECT * FROM sala_votacion WHERE numero = {$n} and email_creador = '$email'; ";

	$result = $conn->query($query);
	if (!$result) die ($conn->error);

	$len = $result->num_rows;
	$response = array();
	if ($len == 1) array_push($response, array('isCreator' => true));
	else array_push($response, array('isCreator' => false));

	array_push($response, array('query', $query));
	array_push($response, array('result', $result));
	echo json_encode($response);
	$conn->close();
} else die('exists an empty field'); 

?>