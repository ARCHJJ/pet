<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/mymenu/user.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>개인정보 보기</title>
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
				<td>이름</td>
				<td>${ub.name }</td>
			</tr>
			<tr>
				<td>주소</td>
				<td>${ub.address1 }&nbsp${ub.address2}</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>${ub.phone }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${ub.gender }</td>
			</tr>
		</tbody>
	</table>
	<br>
	<form name="User_button">
		<button class="ui violet basic button" type="button" onclick="location.href='User_Menu_Person_Modi.do'">개인정보 수정</button>
		<button class="ui red basic button" onClick="outInfo()">회원 탈퇴</button>
	</form>
</body>
</html>