<div id="new_report">
	<form action="" method="post">	
		<table cellpadding="1" cellspacing="1" style="margin: 0px auto; color: white;">
			<tbody>
				<tr>
					<td>Тема:</td>
					<td><input class="field" type="text" name="theme" id="theme" value="" size="23"/></td>
				</tr>
				<tr>
					<td>Приоритет:</td>
					<td><select name="priority" id="priority">
						<option disabled>Выберите приоритет</option>
						<option value="High">Высокий</option>
						<option value="Middle">Средний</option>
						<option value="Low">Низкий</option>
					</td>
				</tr>
				<tr>
					<td>Категория:</td>
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
					<td><textarea name="description" id="description"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit_report" value="Отправить" class="newreport"/></td>
				</tr>
					<tr>
						<td>
							<?php
							if($_SESSION['ticket_msg']['ticket-err']) {
								echo '<div class="err">'.$_SESSION['ticket_msg']['ticket-err'].'</div>';
								unset($_SESSION['ticket_msg']['ticket-err']);
							}
							if($_SESSION['ticket_msg']['ticket-success']) {
								echo '<div class="success">'.$_SESSION['ticket_msg']['ticket-success'].'</div>';
								unset($_SESSION['ticket_msg']['ticket-success']);
							}
							?>
						</td>
					</tr>
			</tbody>
		</table>
	</form>
</div>