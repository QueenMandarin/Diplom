<? require_once '/engine/addReport.php'; ?>
<form action="" method="post">	
	<table cellpadding="1" cellspacing="1" style="margin: 0px auto;">
		<tbody>
			<tr>
				<td>Тема:</td>
				<td></td>								
				<td><input class="field" type="text" name="theme" id="theme" value="" size="18"/></td>
			</tr>
			<tr>
				<td>Категория:</td>
				<td></td>								
				<td><select name="category" id="category">
					<option disabled>Выберите категорию</option>
					<option value="0">0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</td>
			</tr>
			<tr>
				<td>Описание:</td>
				<td></td>								
				<td><textarea name="description" id="description"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit" value="Отправить" class="newreport"/></td>
			</tr>
				<tr>
					<td>
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