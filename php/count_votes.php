<?php

if (isset($_POST['number'])) {
	require_once "open_connection.php";

	$n = $_POST['number'];
	$query = "CALL get_votes_count({$n}); ";
	$result = $conn->query($query);

	if (!$result) die ($conn->error);

	$len = $result->num_rows;
	$response = array();

	for ($i = 0; $i < $len; $i++) {
		$result->data_seek($i);
		$row = $result->fetch_array(MYSQLI_ASSOC);
		array_push($response,  array(
			"nombre" => $row['nombre'], 
			"email" => $row['email'], 
			"count" => $row['votes_count']
		) );
	}

	echo json_encode($response);

	$conn->close();
} else die('exists an empty field'); 

?>