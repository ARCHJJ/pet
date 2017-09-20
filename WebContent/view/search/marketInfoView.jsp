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
<link rel="stylesheet" type="text/css" href="css/search/search.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/search/search.js"></script>

</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
			</tr>
		<tbody>
			<tr>
				<td>매장 사진</td>
				<td>${mb.photos }</td>
			</tr>
			<tr>
				<td>매장주인 email</td>
				<td>${mb.email }</td>
			</tr>
			<tr>
				<td>매장 이름</td>
				<td>${mb.market_name }</td>
			</tr>
			<tr>
				<td>매장 설명</td>
				<td>${mb.description }</td>
			</tr>
			<tr>
				<td>매장에서 지원하는 펫</td>
				<td>${mb.pets }</td>
			</tr>
			<tr>
				<td>매장 주소</td>
				<td>${mb.address }</td>
			</tr>
			<tr>
				<td>매장 종류</td>
				<td>${mb.classes }</td>
			</tr>
			<tr>
				<td>매장 서비스</td>
				<td>${mb.service }</td>
			</tr>
		</tbody>
	</table>
	<table class="ui orange table">
		<thead>
			<tr>
				<td>order</td>
				<td>날짜</td>
				<td>작성자</td>
				<td>글(후기)</td>
			</tr>
			<c:forEach items="${mflist}" var="item">
				<tbody>
					<tr>
						<td>${item.order }</td>
						<td>${item.date }</td>
						<td>${item.email }</td>
						<td>${item.content }</td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>