<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
<title>�������� ����</title>
</head>
<body>
	<form name="modi_rev">
		<table class="ui orange table">
			<thead>
				<tr>
				</tr>
			<tbody>
				<tr>
					<td>�����ȣ</td>
					<td>${rb.rev_idx }</td>
				</tr>
				<tr>
					<td>����</td>
					<td>${rb.market_id }</td>
				</tr>
				<tr>
					<td>����</td>
					<td>${rb.service }</td>
				</tr>
				<tr>
					<td>����</td>
					<td><div class="ui input">
							<input type="text" placeholder="����" value="${rb.pets }">
						</div></td>
				</tr>
				<tr>
					<td>����ð�</td>
					<td><div class="ui input">
							<input type="text" placeholder="�ð�" value="${rb.timeofrev }">
						</div></td>
				</tr>
				<tr>
					<td>��¥</td>
					<td><div class="ui input">
							<input type="text" placeholder="��¥" value="${rb.date }">
						</div></td>
				</tr>
				<tr>
					<td>CCTV</td>
					<td>${rb.cctvid }</td>
				</tr>
				<tr>
					<button class="ui violet basic button" onClick="modirev()">�����ϱ�</button>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>