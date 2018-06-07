<?php

if (isset($_POST['number']) && isset($_POST['email']) and isset($_POST['post_email'])) {
	require_once "open_connection.php";

	$n = $_POST['number'];
	$email = $_POST['email'];
	$post_email = $_POST['post_email'];

	$query = ' INSERT INTO medio_votacion(post_email, email, numero) ' .
			 'VALUES ('$post_email', '$email', ' . $n . '); ' ;
	$result = $conn->query($query); // aqui me dormi v:
	if (!$result) die ($conn->error); 

	$len = $result->num_rows;
	$response = array();

	for ($i = 0; $i < $len; $i++) {
		$result->data_seek($i);
		$row = $result->fetch_array(MYSQLI_ASSOC);
		array_push($response, array (
			'name' => $row['nombre'],
			 'email' => $row['post_email'],
			  'match' => $row['partido'] ));
	}
	
	echo json_encode($response);	

} else die('exists an empty field'); 

$conn->close();

?>