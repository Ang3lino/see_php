<?php

	require_once "open_connection.php";

	// CALL did_vote("PETS750209@hotmail.com", 4);
	// $n = 4;
	// $email = "PETS750209@hotmail.com";

	// "SALR400622@hotmail.com", 3
	$n = 3;
	$email ="SALR400622@hotmail.com";

	$query = "CALL did_vote('{$email}', {$n});";

	$result = $conn->query($query);
	if (!$result) die ($conn->error);

	$response = array();
	// $result->data_seek(0);
	$row = $result->fetch_array(MYSQLI_ASSOC);
	array_push($response,  array("done" => $row['done'] ) );
	$b_done = (boolean) $row['done'];

	if ($b_done) echo 'yes'; 
	else echo 'no';

	echo json_encode($response);

	$conn->close();

?>