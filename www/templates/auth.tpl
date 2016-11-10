<? require_once '/engine/auth.php'; ?>
<div id="regcont">
	<div id="regform">
		<form action="" method="post">	
			<table border="1" cellpadding="1" cellspacing="1" style="margin: 0px auto;">
				<tbody>
					<tr>
						<td>Логин:</td>
						<td></td>								
						<td><input class="field" type="text" name="username" id="username" value="" size="23"/></td>
					</tr>
					<tr>
						<td>Пароль:</td>
						<td></td>								
						<td><input class="field" type="password" name="password" id="password" value="" size="23" /></td>
					</tr>
					<tr>
						<td><input type="submit" name="submit" value="Enter" class="bt_register"/></td>
						<td></td>
					</tr>
					<tr>
					<td>
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