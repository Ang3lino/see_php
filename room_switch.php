<?php

if (isset($_POST['control']) and isset($_POST['number']))  {
	require_once "open_connection.php";

	$control = $_POST['control']; 
	$n = $_POST['number'];

	// esta sentencia no funciono ?!
	// $query = 'update sala_votacion set se_puede_votar = 0 where numero = $n; '; 
	if ($control == '1')
		$query = 'update sala_votacion set se_puede_votar = 1 where numero = ' . $n . '; ';
	else 
		$query = 'update sala_votacion set se_puede_votar = 0 where numero = ' . $n . '; ';

	$result = $conn->query($query);
	$response = array();

	if ($result) array_push($response, array('success' => true));
	else array_push($response, array('success' => false));
	
	// $response[] = array('query' => $query);
	// $response[] = array('control' => $control);

	echo json_encode($response);	

} else die('exists an empty field'); 

$conn->close();

?>