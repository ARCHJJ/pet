<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>서비스/물품조회</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css"
	href="css/reservation/reservation.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/reservation/reservation.js"></script>

</head>
<body>
	<!-- 매장에서 가능한 예약들을 보여줌  -->

	<table class="ui orange table" id="reserv_avalible">
		<thead>
			<tr>
				<th class="reservavalible_a">서비스/물품 명</th>
				<th class="reservavalible_b">설명</th>
				<th class="reservavalible_c">가격</th>
				<th class="reservavalible_d">예약</th>
			</tr>
			<c:forEach items="${mblist}" var="item">
				<tbody>
					<tr>
						<td>${item.name }</td>
						<td>${item.description }</td>
						<td>${item.price }</td>
						<td><button class="ui positive basic button" onclick="reserv_page('${item.market_id}', '${item.name}')" id="reserv_page" name="reserv_page">예약하기</button></td>
					</tr>
			</c:forEach>
			</tbody>
	</table>

</body>
</html>