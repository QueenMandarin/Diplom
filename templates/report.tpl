<form action="" method="post">	
	<table cellpadding="1" cellspacing="1" style="margin: 0px auto;">
		<tbody>
			<tr>
				<td>Тема:</td>
				<td></td>
				<td><input class="field" type="text" name="theme" id="theme" value="" size="23"/></td>
			</tr>
			<tr>
				<td>Приоритет:</td>
				<td></td>
				<td><select name="priority" id="priority">
					<option disabled>Выберите приоритет</option>
					<option value="High">Высокий</option>
					<option value="Middle">Средний</option>
					<option value="Low">Низкий</option>
				</td>
			</tr>
			<tr>
				<td>Категория:</td>
				<td></td>
				<td><select name="category" id="category">
					<option disabled>Выберите категорию</option>
					<option value="0">Системная ошибка</option>
					<option value="1">Интерфейс</option>
					<option value="2">Сеть</option>
					<option value="3">Уязвимость</option>
					<option value="4">Навыки</option>
					<option value="5">Квест</option>
					<option value="6">Геодата</option>
					<option value="7">NPC</option>
					<option value="8">Спавнлист</option>
				</td>
			</tr>
			<tr>
				<td>Описание:</td>
				<td></td>								
				<td><textarea name="description" id="description"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="submit_report" value="Отправить" class="newreport"/></td>
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