<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
	<script language="JavaScript" src="/css/js/windowsEvent.js"></script>
</head>		
<body>
	<div id="content">
			<div id="new_report_form" style="display: none;" onclick="changeFocus('new_report_form');">
			<div class="controlBar">Новая заявка<div class="close" onclick="closeFrame('new_report_form'); return false"></div></div>
				<? include_once 'new_ticket.tpl'; ?>
			</div>
			
			<div id="bugs_list_form" style="display: none;" onclick="changeFocus('bugs_list_form');">
			<div class="controlBar">Список заявок<div class="close" onclick="closeFrame('bugs_list_form'); return false"></div></div>
				<? include_once 'bugs_list.tpl'; ?>
			</div>
		<div id="desktop"></div>
			
			
			<div id="start_menu" style="display: none;">
			
			<div id="under_userpic">
				<div id="glass">
					<div id="circle">
						<div id="vlad"></div>
					</div>
				</div>
			</div>
				<div id="user_field">
					<div id="user_id"><? echo $_SESSION['name'] ?></div>
				</div>
			<p>
			<button class="newreport" onclick="openFrame('new_report_form'); return false">Оставить заявку</button>
			<p>
			<button class="newreport" onclick="openFrame('bugs_list_form'); return false">Список заявок</button>
				
			</div>
			
			<div id="taskpanel">
				<div id="start" onclick="openStart('start_menu'); return false" title="Пуск"></div>
			</div>
	</div>
</body>
</html>