<?php
if(!defined('INCLUDE_CHECK')) die('У вас нет прав запускать файл на выполнение');

if($_POST['submit']=='Зарегистрироваться') {
	// Проверяем, что предоставила форма Зарегистрироваться
	$err = array();
	
	if(strlen($_POST['username'])<4 || strlen($_POST['username'])>32) {
		$err[]='Логин должен содержать от 3 до 32 символов!';
	}
	
	if(preg_match('/[^a-z0-9\-\_\.]+/i',$_POST['username'])) {
		$err[]='Ваш логин содержит недопустимые символы!';
	}
	
	if(!checkEmail($_POST['email'])) {
		$err[]='Email неправильный!';
	}
	
	if (strlen($_POST['password']) < 6 || strlen($_POST['password'])>32) {
		$err[]='Пароль должен содержать от 6 до 32 символов!';
	}
	
	if(preg_match('/[^a-z0-9\-\_\.]+/i',$_POST['password'])) {
		$err[]='Ваш пароль содержит недопустимые символы!';
	}
	
	if($_POST['repassword'] != $_POST['password']) {
		$err[]='Пароли не совпадают!';
	}
	
	if(!count($err)) {
		// Если нет ошибок
		$_POST['username'] = mysql_real_escape_string($_POST['username']);
		$_POST['password'] = mysql_real_escape_string($_POST['password']);
		$_POST['repassword'] = mysql_real_escape_string($_POST['repassword']);
		$_POST['email'] = mysql_real_escape_string($_POST['email']);
		// Получаем введеные данные
		mysql_query("INSERT INTO users(login, password,e_mail,access_level,regIP,date_time)
						VALUES(
							'".$_POST['username']."',
							'".md5($_POST['password'])."',
							'".$_POST['email']."',
							'0',
							'".$_SERVER['REMOTE_ADDR']."',
							NOW()
						)");
						
		if(mysql_affected_rows($link)==1) {					

			$_SESSION['msg']['reg-success']='Поздравляем! Регистрация прошла успешно.';
		}
		else
			$err[]='Логин уже используется другим пользователем!';				
	}

	if(count($err)) {
		$_SESSION['msg']['reg-err'] = implode('<br />',$err);
	}
    header("Location: ".$_SERVER["REQUEST_URI"]);
    exit;
}
?>