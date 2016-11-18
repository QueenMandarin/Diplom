<?php

if(!defined('INCLUDE_CHECK')) die('У вас не прав запускать файл на выполнение');

function checkEmail($str) {
	return preg_match("/^[\.A-z0-9_\-\+]+[@][A-z0-9_\-]+([.][A-z0-9_\-]+)+[A-z]{1,4}$/", $str);
}


function send_mail($from,$to,$subject,$body) {
	$charset = 'utf-8';
	mb_language("ru");
	$headers  = "MIME-Version: 1.0 \n" ;
	$headers .= "From: <".$from."> \n";
	$headers .= "Reply-To: <".$from."> \n";
	$headers .= "Content-Type: text/html; charset=$charset \n";
	
	$body = mb_convert_encoding($body, $charset,"auto");
		
	$subject = mb_convert_encoding($subject, $charset, "auto");
	$subject = '=?'.$charset.'?B?'.base64_encode($subject).'?=';

	mail($to,$subject,$body,$headers);
}

function select_bugs() {
	if($_SESSION['id'])
	{
		$conn = new mysqli($db_host, $db_user, $db_pass, $db_database);
		
		if ($conn->connect_error)
			die("Connection failed: " .$conn->connect_error);
			
		$sql = "SELECT * FROM bugs";
		
		$result = $conn->query($sql);
	
		echo "<table style=\"color: #17ADFF\";>
			<tr>
				<td style=\"width: 30px;\">ID</td>
				<td style=\"width: 120px\">Название</td>
				<td style=\"width: 350px\">Описание</td>
				<td style=\"width: 70px\">Приоритет</td>
				<td style=\"width: 50px\">Статус</td>
				<td  style=\"width: 80px\">Отправитель</td>
			</tr>";
		
		if ($result->num_rows > 0)
		{
			while($row = $result->fetch_assoc())
			{
				echo
				"<tr>
					<td>" .$row["id"]. "</td>
					<td>"  .$row["name"]. "</td>
					<td>"  .$row["description"]. "</td>
					<td>"  .$row["priority"]. "</td>
					<td>"  .$row["status"]. "</td>
					<td>"  .$row["sender"]. "</td>
				</tr>";
			}
			echo "</table>";
		}
	}
}
?>