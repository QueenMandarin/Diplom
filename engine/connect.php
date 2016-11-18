<?php

if(!defined('INCLUDE_CHECK')) die('У вас нет прав на выполнение данного файла!');


/* Конфигурация базы данных */

$db_host		= 'akseleon.com';
$db_user		= 'site';
$db_pass		= '05168080';
$db_database	= 'bugreporter'; 

/* Конец секции */

$link = mysql_connect($db_host,$db_user,$db_pass) or die('Невозможно установить соединение с базой данных');

mysql_select_db($db_database,$link);
mysql_query("SET names UTF8");

?>