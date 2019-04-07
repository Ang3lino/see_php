<?php

if (isset($_POST['number'])) {
	require_once "open_connection.php";

	$n = (int) $_POST['number'];
	$query = "CALL get_candidates( {$n} );";

	$result = $conn->query($query);
	if (!$result) die ($conn->error);

	$len = $result->num_rows;
	$response = array();

	for ($i = 0; $i < $len; $i++) {
		$result->data_seek($i);
		$row = $result->fetch_array(MYSQLI_ASSOC);
		array_push($response, array (
			'name' => $row['nombre'],
			'email' => $row['post_email']
		));
	}
	
	echo json_encode($response);	

} else die('exists an empty field'); 

$conn->close();

?>