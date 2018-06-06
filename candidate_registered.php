<?php

if (isset($_POST['email']))  {
	require_once "open_connection.php";
	$email = $_POST['email']; 
	$n = $_POST['number'];
	$sql = "select * from votante where email like '$email';"; 
	$result = $conn->query($sql);
	$response = array();

	if ($result->num_rows == 1) { // la persona existe
		$result->data_seek(0); 
		$row = $result->fetch_array(MYSQLI_ASSOC); 
		$query = "INSERT INTO postulante(post_email, sala_num) VALUES ('$email', $n); ";
		$result = $conn->query($query);
		if ($result)
			array_push($response, array(
				'inserted' => 'true',
				'exists' => 'true',
				'email' => $row['email'],
				'name' => $row['nombre']
			));
		else array_push($response, array('exists' => 'true', 'inserted' => 'false'));
	} else  array_push($response, array("exists" => 'false'));
	echo json_encode($response);	

} else die('exists an empty field'); 

$conn->close();

?>