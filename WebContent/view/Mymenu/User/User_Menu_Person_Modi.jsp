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
	<form name="User_Modi" action="User_Menu_Person_Modi.do" method="post">
		<table>
			<tr>
				<th>id</th>
				<td>${ub.email }</td>
			</tr>
			<tr>
				<th>���ּ�</th>
				<td><div class="ui input">
						<input type="text" placeholder="�ּ�1" value="${ub.address1 }">
					</div></td>
			</tr>
			<tr>
				<th>���ּ�</th>
				<td><div class="ui input">
						<input type="text" placeholder="�ּ�2" value="${ub.address2 }">
					</div></td>
			</tr>
			<tr>
				<th>��ȭ��ȣ</th>
				<td><div class="ui input">
						<input type="text" placeholder="��ȭ��ȣ" value="${ub.phone }">
					</div></td>
			</tr>
			<tr>
				<th>����</th>
				<td>${ub.gender }</td>
			</tr>
			<tr>
				<th>�̸�</th>
				<td>${ub.name }</td>
			</tr>
		</table>
		<br>
		<button class="ui violet basic button" onClick="upinfo()">�����ϱ�</button>
	</form>
</body>
</html>