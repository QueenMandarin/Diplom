<?php
if(!defined('INCLUDE_CHECK')) die('У вас нет прав запускать файл на выполнение');

if($_POST['submit']=='Отправить') {
	// Проверяем, что предоставила форма Зарегистрироваться
	$err = array();
	
	if(strlen($_POST['theme'])<3) {
		$err[]='Тема должна содержать от 3х символов!';
	}
		if(strlen($_POST['description'])<6) {
		$err[]='Описание должно содержать от 6 символов!';
	}
	
	if(!count($err)) {
		// Если нет ошибок
		$_POST['theme'] = mysql_real_escape_string($_POST['theme']);
		$_POST['category'] = mysql_real_escape_string($_POST['category']);
		$_POST['description'] = mysql_real_escape_string($_POST['description']);
		// Получаем введеные данные
		mysql_query("INSERT INTO bugs(name, description, category, date)
						VALUES(
							'".$_POST['theme']."',
							'".$_POST['description']."',
							".$_POST['category'].",
							NOW()
						)");		
		if(mysql_affected_rows($link)==1) {					
			$_SESSION['msg']['reg-success']='Поздравляем! Заявка отправлена!';
		}
		else
			$err[]='Unregistered error!';				
	}
	if(count($err)) {
		$_SESSION['msg']['reg-err'] = implode('<br />',$err);
	}
    header("Location: ".$_SERVER["REQUEST_URI"]);
    exit;
}
?>