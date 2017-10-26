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
				<td>번호</td>
				<td>사진</td>
				<td>물품, 서비스명</td>
				<td>설명</td>
				<td>판매처</td>
				<td>가격</td>
			</tr>
			<c:forEach items="${iblist}" var="item">
				<tbody>
					<tr>
						<td>${item.idx }</td>
						<td>${item.photos }</td>
						<td>${item.name }</td>
						<td>${item.description }</td>
						<td>${item.market_id }</td>
						<td>${item.price }</td>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>