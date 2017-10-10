<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

	<table class="ui orange table">
		<thead>
			<tr>
				<td>서비스명</td>
				<td>가격</td>
				<td>설명</td>
				<td>예약</td>
			</tr>
			<c:forEach items="${mblist}" var="item">
				<tbody>
					<tr>
						<td>${item.name }</td>
						<td>${item.price }</td>
						<td>${item.description }</td>
						<td><button onclick="reserv_page('${item.market_id}', '${item.name}')" id="reserv_page" name="reserv_page">예약하기</button></td>
					</tr>
			</c:forEach>
			</tbody>
	</table>

</body>
</html>