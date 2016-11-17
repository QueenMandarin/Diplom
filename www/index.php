<?php
define('INCLUDE_CHECK',true);

require_once 'engine/connect.php';
require_once 'engine/functions.php';

$page = (isset($_GET['page']) ? $_GET['page'] : 'index');

session_name('tzLogin');
session_set_cookie_params(2*7*24*60*60);
session_start();

	if($_SESSION['id'])
		include 'templates/main.tpl';
	else
		include 'templates/index.tpl';
?>