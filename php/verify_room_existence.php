<?php 

if (isset($_POST['number']))  {
	require_once "open_connection.php";

	$n = $_POST['number'];
	$sql = "select * from sala_votacion where numero = " . $n . " ; "; 
	$result = $conn->query($sql);
	
	if (!$result) die($conn->error);

	$response = array();

	if ($result->num_rows == 1)  array_push($response, array('exists' => true));
	else  array_push($response, array("exists" => false));

	echo json_encode($response);	
	$conn->close();
} else die('exists an empty field'); 

?>