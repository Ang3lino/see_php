<?php

// delete from medio_votacion where email = 'a@a.com' and numero = 27 ;
function delete_vote($conn, $n, $email) {
	$query = "delete from medio_votacion where email = '$email' and numero = {$n} ;";
	$result = $conn->query($query);
	if (!$result) die('error when dropping a vote');
}

function vote($conn, $n, $email, $post_email) {
	$query = "insert into medio_votacion(email, post_email, numero) values ('$email', '$post_email', " . $n . "); ";
	$result = $conn->query($query);
	if (!$result) die("couldn't insert items");
}

if ( isset($_POST['number']) and isset($_POST['email']) and isset($_POST['post_email']) ){
	require_once "open_connection.php";

	$n = $_POST['number'];
	$email = $_POST['email'];
	$post_email = $_POST['post_email'];

	$query = " select v.*  from votante v, medio_votacion m, sala_votacion s 
				where v.email = m.email and 
					m.numero = s.numero and 
					v.email = '$email' and 
					s.numero = " . $n . " ; ";
	$result = $conn->query($query); 
	if (!$result) die ($conn->error); 

	$len = $result->num_rows;
	$repeated_vote = false;	
	if ($len == 1) {
		$repeated_vote = true;
		delete_vote($conn, $n, $email);
	}

	vote($conn, $n, $email, $post_email);
	$response = array();

	array_push($response, array("changed" => $repeated_vote));
	
	echo json_encode($response);	
	$conn->close();

} else die('exists an empty field'); 


?>