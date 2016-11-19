<? require_once '/engine/auth.php'; ?>
<div id="regcont">
	<div id="regform">
		<form action="" method="post">	
			<table border="2" cellpadding="1" cellspacing="1" style="margin:auto;">
				<tbody>
					<tr>
						<td>Логин:</td>								
						<td><input class="field" type="text" name="username" id="username" value=""/></td>
					</tr>
					<tr>
						<td>Пароль:</td>							
						<td><input class="field" type="password" name="password" id="password" value=""/></td>
					</tr>
					<tr>
						<td><input type="submit" name="submit_enter" value="Войти" class="bt_register"/></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
					<td colspan="2" align="center">
					<?php
					if($_SESSION['msg']['login-err']) {
						echo '<div class="err">'.$_SESSION['msg']['login-err'].'</div>';
						unset($_SESSION['msg']['login-err']);
					} ?>
					</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</div>