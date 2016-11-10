<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
	<script language="JavaScript" src="/css/js/windowsEvent.js"></script>
</head>		
<body>
	<div id="content">
			<div id="new_report" style="display: none;" onclick="changeFocus('new_report');"><h4>Новая заявка</h4>
				<? include_once 'report.tpl'; ?>
			</div>
			<div id="bugs_list" style="display: none;" onclick="changeFocus('bugs_list');"><h4>Список заявок</h4>
				<? include_once 'list.tpl'; ?>
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
					<div id="user_id"><? echo $_SESSION['id'] ?></div>
				</div>
			<p>
			<button class="newreport" onclick="openFrame('new_report'); return false">Оставить заявку</button>
			<p>
			<button class="newreport" onclick="openFrame('bugs_list'); return false">Список заявок</button>
				
			</div>
			
			<div id="taskpanel">
				<div id="start" onclick="openStart('start_menu'); return false" title="Пуск"></div>
			</div>
	</div>
</body>
</html>