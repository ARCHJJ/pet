<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약정보 확인</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
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
				<td>예약번호</td>
				<td>매장</td>
				<td>서비스</td>
				<td>동물</td>
				<td>예약시간</td>
				<td>날짜</td>
				<td>CCTV</td>
				<td>비고</td>
			</tr>
			<c:forEach items="${rblist}" var="item">
				<tbody>
					<tr>
						<td>${item.rev_idx }</td>
						<td>${item.market_id }</td>
						<td>${item.service }</td>
						<td>${item.pets }</td>
						<td>${item.timeofrev }</td>
						<td>${item.date }</td>
						<td><form name="cctv_view">
								<input type="button" name="cctvView" value="CCTV 확인"
									onClick="location.href='User_Menu_Monitor_View.do'">
							</form></td>
						<td><button class="ui violet basic button"
								onClick="location.href='User_Menu_Reserv_Modi.do'">예약수정</button>
							<br>
							<button class="ui red basic button"
								onClick="delReserv(${item.rev_idx });">예약취소</button></td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>