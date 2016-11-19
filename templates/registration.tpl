<? require_once '/engine/registration.php'; ?>
<div id="regcont">
	<div id="regform">
		<form action="" method="post">			
			<table border="1" cellpadding="1" cellspacing="1" style="margin: 0px auto;">
				<tbody>
					<tr>
						<td>Имя:</td>								
						<td><input class="field" type="text" name="nickname" id="nickname" value=""/></td>
					</tr>
					<tr>
						<td>Логин:</td>							
						<td><input class="field" type="text" name="username" id="username" value="" size="23"/></td>
					</tr>
					<tr>
						<td>Пароль:</td>							
						<td><input class="field" type="password" name="password" id="password" value="" size="23" /></td>
					</tr>
					<tr>
						<td>Повторите пароль:</td>								
						<td><input class="field" type="password" name="repassword" id="repassword" value="" size="23" /></td>
					</tr>
					<tr>
						<td>E-Mail:</td>								
						<td><input class="field" type="text" name="email" id="email" size="23"/></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit" name="submit_registration" value="Зарегистрироваться" class="bt_register"/></td>
					</tr>
					<tr>
					<td colspan="2" align="center">
					<?php
					if($_SESSION['msg']['reg-err']) {
						echo '<div class="err">'.$_SESSION['msg']['reg-err'].'</div>';
						unset($_SESSION['msg']['reg-err']);
					}
					if($_SESSION['msg']['reg-success']) {
						echo '<div class="success">'.$_SESSION['msg']['reg-success'].'</div>';
						unset($_SESSION['msg']['reg-success']);
					}
					?>
					</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>