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

	function add_bug() {
		$err = array();

		if(strlen($_POST['theme'])<3)
			$err[]='Тема должна содержать от 3х символов!';
		
		if(strlen($_POST['description'])<6)
			$err[]='Описание должно содержать от 6 символов!';

		if(!count($err)) {
			// Если нет ошибок
			$_POST['theme'] = mysql_real_escape_string($_POST['theme']);
			$_POST['description'] = mysql_real_escape_string($_POST['description']);
			$_POST['category'] = mysql_real_escape_string($_POST['category']);
			$_POST['priority'] = mysql_real_escape_string($_POST['priority']);
			// Получаем введеные данные
			mysql_query("INSERT INTO bugs(name, description, category, priority, sender, date)
				VALUES('".$_POST['theme']."','".$_POST['description']."',
					".$_POST['category'].",'".$_POST['priority']."',
					'".$_SESSION['name']."', '".date("d.m.Y H:i:s")."')");
					
			if(mysql_affected_rows() > 0)			
				$_SESSION['ticket_msg']['ticket-success']='Поздравляем! Заявка отправлена!';
			else
				$err[]='Database error!';
		}
		if(count($err)) {
			$_SESSION['ticket_msg']['ticket-err'] = implode('<br />',$err);
		}
		header("Location: ".$_SERVER["REQUEST_URI"]);
		exit;
	}

	function select_bugs_for_user() {
		if($_SESSION['id']) {
			/* show admins all tickets */
			if ($_SESSION['access_level'] > 0)
				$sql = mysql_query("SELECT * FROM bugs;");
			/* show user only own tickets */
			else if ($_SESSION['access_level'] == 0)
				$sql = mysql_query("SELECT * FROM bugs WHERE sender = '".$_SESSION['name']."';");

			while($row = mysql_fetch_assoc($sql)) {
				echo
				"<tr>
					<td>".$row["id"]. "</td>
					<td>".$row["name"]. "</td>
					<td>".$row["description"]. "</td>
					<td>".$row["priority"]. "</td>
					<td>".$row["status"]. "</td>
					<td>".$row["date"]. "</td>
				</tr>";
			}
		}
	}
?>