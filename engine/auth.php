<?php
	if($_SESSION['id']) {
		$_SESSION = array();
		session_destroy();
	}

	if(isset($_GET['logoff'])) {
		$_SESSION = array();
		session_destroy();
		header("Location: index.php");
		exit;
	}
	
	if($_POST['submit_enter']=='Войти') {
		$err = array(); // Запоминаем ошибки
	
		if(!$_POST['username'] || !$_POST['password'])
			$err[] = 'Все поля должны быть заполнены!';
		
		if(!count($err)) {
			$_POST['username'] = mysql_real_escape_string($_POST['username']);
			$_POST['password'] = mysql_real_escape_string($_POST['password']);	

			$row = mysql_fetch_assoc(mysql_query("SELECT id, name, access_level FROM users WHERE login='{$_POST['username']}' AND password='".md5($_POST['password'])."'"));

			if($row['id']) {
				$_SESSION['id'] = $row['id'];
				$_SESSION['name'] = $row['name'];
				$_SESSION['access_level'] = $row['access_level'];
				header("Location: index.php");
			}
			else
				$err[]='Неверный логин или пароль!';
		}
		if($err) {
			$_SESSION['msg']['login-err'] = implode('<br />',$err);
			header("Location: index.php?page=auth");
			exit;
		}
	}
?>