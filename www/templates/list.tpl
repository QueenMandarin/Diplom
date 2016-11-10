<?php
if($_SESSION['id'])
	{
		$conn = new mysqli($db_host, $db_user, $db_pass, $db_database);
		
		if ($conn->connect_error)
			die("Connection failed: " .$conn->connect_error);
			
		$sql = "SELECT * FROM bugs";
		
		$result = $conn->query($sql);
	
		echo "<table style=\"color: white\";>
			<tr>
				<td style=\"width: 30px;\">ID</td>
				<td style=\"width: 120px\">Название</td>
				<td style=\"width: 350px\">Описание</td>
				<td style=\"width: 70px\">Приоритет</td>
				<td style=\"width: 50px\">Статус</td>
				<td  style=\"width: 80px\">Отправитель</td>
			</tr>";
		
		if ($result->num_rows > 0)
		{
			while($row = $result->fetch_assoc())
			{
				echo
				"<tr>
					<td>" .$row["id"]. "</td>
					<td>"  .$row["name"]. "</td>
					<td>"  .$row["description"]. "</td>
					<td>"  .$row["priority"]. "</td>
					<td>"  .$row["status"]. "</td>
					<td>"  .$row["sender"]. "</td>
				</tr>";
			}
			echo "</table>";
		}
	}
?>