<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������� ����</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/mymenu/user.js"></script>
</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
			</tr>
		<tbody>
			<tr>
				<td>id</td>
				<td>${ub.email }</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td>${ub.name }</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>${ub.address1 }&nbsp${ub.address2}</td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td>${ub.phone }</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${ub.gender }</td>
			</tr>
		</tbody>
	</table>
	<br>
	<form name="User_button">
		<button class="ui violet basic button" type="button" onclick="upInfo();">�������� ����</button>
		<button class="ui violet basic button" type="button" onclick="delInfo();">��й�ȣ ����</button>
		<button class="ui red basic button" onClick="outInfo()">ȸ�� Ż��</button>
	</form>
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">���� ����</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">���� ����</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"  action="User_Menu_Person.Modi.do">
						�̸���<input type="text" name="email" id="email" readonly="readonly"/>
						<br>
						�н����� <input type="text" name="password" id="password" maxlength="20" />
						<br>
						�̸� <input type="text" name="name" id="name" maxlength="20" />
						<br>
						�ּ�1 <input type="text" name="address1" id="address1" maxlength="20" />
						<br>
						�ּ�2 <input type="text" name="address2" id="address2" maxlength="20" />
						<br>
						��ȭ <input type="text" name="phone" id="phone" maxlength="20" />
						<br>
						���� <input type="text" name="gender" id="gender" maxlength="20" />
						<br>
						���� <input type="text" name="power" id="power" maxlength="20" />
					</form>
				</div>
				<p>���� �Ͻðڽ��ϱ�?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">���</div>
			<div class="ui positive right labeled icon button" onclick="update_Info();">
				���� <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>