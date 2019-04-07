<?php

function repeated_vote($conn, $email, $n) {
	$query = "CALL did_vote('{$email}', {$n});";
	$result = $conn->query($query);
	if (!$result) die ($conn->error);

	// $result->data_seek(0);
	$row = $result->fetch_array(MYSQLI_ASSOC);
	return (boolean) $row['done'];
}

// main
	require_once "open_connection.php";

	// CALL did_vote("PETS750209@hotmail.com", 4);
	$n = 4;
	$email = "PETS750209@hotmail.com";

	$response = array();
		$repeated_vote = false;	
		if (repeated_vote($conn, $email, $n)) {
			$repeated_vote = true;
		}
		array_push($response, array(
				"can_we_vote" => true,
				"changed" => $repeated_vote
		));

	echo json_encode($response);	
	$conn->close();

?>