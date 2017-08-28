<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/mymenu/user.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>개인정보 수정</title>
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
				<th>대주소</th>
				<td><div class="ui input">
						<input type="text" placeholder="주소1" value="${ub.address1 }">
					</div></td>
			</tr>
			<tr>
				<th>소주소</th>
				<td><div class="ui input">
						<input type="text" placeholder="주소2" value="${ub.address2 }">
					</div></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><div class="ui input">
						<input type="text" placeholder="전화번호" value="${ub.phone }">
					</div></td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${ub.gender }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${ub.name }</td>
			</tr>
		</table>
		<br>
		<button class="ui violet basic button" onClick="upinfo()">수정하기</button>
	</form>
</body>
</html>