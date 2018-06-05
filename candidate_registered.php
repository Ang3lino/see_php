<?php

if (isset($_POST['email'])  {
	require_once "open_connection.php";
	$email = $_POST['email']; 
	$sql = "select * from votante where email like '$email' and passwd like '$password';"; 
	$result = $conn->query($sql);
	$response =  array();

	if ($result->num_rows == 0)  
		array_push($response, array("exists" => 'false'));
	else 
		array_push($response, array("exists" => 'true'));
	echo json_encode($response);	
} else die('exists an empty field'); 

$conn->close();

?>