<?php

if (isset($_POST['number'])) {
	require_once "open_connection.php";

	$n = $_POST['number'];

	$query = 'select v.nombre, p.post_email, p.partido ' .
				'from votante v, postulante p, sala_votacion s ' . 
				'where p.post_email = v.email ' .
				'	and p.sala_num = s.numero ' .
				'	and s.numero = ' . $n . ' ' .
				'order by v.nombre;' ; 

	$result = $conn->query($query);
	if (!$result) die ($conn->error);

	$len = $result->num_rows;
	$response = array();

	for ($i = 0; $i < $len; $i++) {
		$result->data_seek($i);
		$row = $result->fetch_array(MYSQLI_ASSOC);
		array_push($response, array (
			'name' => $row['nombre'],
			 'email' => $row['post_email'],
			  'match' => $row['partido'] ));
	}
	
	echo json_encode($response);	

} else die('exists an empty field'); 

$conn->close();

?>