<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/mymenu/user.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약정보 확인</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
				<td>예약번호</td>
				<td>매장</td>
				<td>서비스</td>
				<td>동물</td>
				<td>예약시간</td>
				<td>날짜</td>
				<td>CCTV</td>
				<td>비고</td>
			</tr>
		<tbody>
			<tr>
				<td>${rb.rev_idx }</td>
				<td>${rb.market_id }</td>
				<td>${rb.service }</td>
				<td>${rb.pets }</td>
				<td>${rb.timeofrev }</td>
				<td>${rb.date }</td>
				<td><form name="cctv_view">
						<input type="button" name="cctvView" value="CCTV 확인"
							onClick="location.href='User_Menu_Monitor_View.do'">
					</form></td>
				<td><form name="modi">
				<button class="ui violet basic button" type="button" onClick="location.href='User_Menu_Reserv_Modi.do'">예약수정</button>
	<!-- 					<input type="button" name="modiRev" value="예약수정"
							onClick="location.href='User_Menu_Reserv_Modi.do'">		 -->
					</form> <br>
					<form name="delete_form" method="post"
						action="User_Menu_Reserv_Delete.do">
						<input type="button" name="deleteRev" value="예약취소"
							onClick="deleteConfirm(${rb.rev_idx })">
					</form></td>
			</tr>
		</tbody>
	</table>
</body>
</html>