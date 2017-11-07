<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>마켓 예약 현황</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/market.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/market_mymenu/reserv.js"></script>
</head>
<body>
	<table class="ui compact celled definition table">
		<thead class="full-width">
			<tr>
				<td>예약번호</td>
				<td>예약한 이메일</td>
				<td>서비스</td>
				<td>동물</td>
				<td>예약시간</td>
				<td>날짜</td>
				<td>CCTV</td>
				<td>비고</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${rblist}" var="rblist">
				<tr>
					<td>${rblist.rev_idx }</td>
					<td>${rblist.member_email }</td>
					<td>${rblist.service }</td>
					<td>${rblist.pets }</td>
					<td>${rblist.timeofrev }</td>
					<td>${rblist.date }</td>
					<td>${rblist.cctvid }</td>
					<td><button class="ui small button" onclick="delReserv('${rblist.rev_idx}');">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>