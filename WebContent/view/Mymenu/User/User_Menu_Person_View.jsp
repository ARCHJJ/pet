<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/mymenu/user.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�������� ����</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
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
		<button class="ui violet basic button" type="button" onclick="location.href='User_Menu_Person_Modi.do'">�������� ����</button>
		<button class="ui red basic button" onClick="outInfo()">ȸ�� Ż��</button>
	</form>
</body>
</html>