<?php

if (isset($_POST['number'])) {
	require_once "open_connection.php";

	$n = $_POST['number'];

	$query = "SELECT v.nombre, v.email from postulante p, sala_votacion s, votante v
				where p.sala_num = s.numero and 
					p.sala_num = {$n} and 
					v.email = p.post_email ; ";

	$result = $conn->query($query);
	if (!$result) die ($conn->error);

	$len = $result->num_rows;
	$response = array();
	$names = array();
	$emails = array();
	for ($i = 0; $i < $len; $i++) {
		$result->data_seek($i);
		$row = $result->fetch_array(MYSQLI_ASSOC);
		$names[] = $row['nombre'];
		$emails[] = $row['email'];
	}

	$i = 0;
	foreach ($emails as $key => $value) {
		$query = "select count(*) as count
					from medio_votacion m, sala_votacion s
					where m.post_email like '$value' and
						s.numero = {$n} and
						s.numero = m.numero; " ; 
		$result = $conn->query($query);
		$result->data_seek($i);
		$row = $result->fetch_array(MYSQLI_ASSOC);
		array_push($response, array("nombre" => $names[$i], "email" => $value, "count" => $row['count']));
		$i++;
	}

	echo json_encode($response);

	$conn->close();
} else die('exists an empty field'); 

?>