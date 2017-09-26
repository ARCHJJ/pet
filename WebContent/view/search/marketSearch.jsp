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
				<td>사진</td>
				<td>매장명</td>
				<td>매장설명</td>
				<td>동물</td>
				<td>서비스</td>
				<td>주소</td>
				<td>비교</td>
			</tr>
			<form name="market_compare_form" method="post" action="market_compareAction.do">
				<c:forEach items="${mblist}" var="item">
					<tbody>
						<tr>
							<td>${item.photos }</td>
							<td><a href="#" onclick="view_market(${item.market_id })"
								style="color: 0099CC">${item.market_name }</a></td>
							<td>${item.description }</td>
							<td>${item.pets }</td>
							<td>${item.service }</td>
							<td>${item.address }</td>
							<td><input type="checkbox" name="selectMarket"
								value="${item.market_id }"></td>
						</tr>
				</c:forEach>
			</form>
		</tbody>
	</table>
	<input type="submit" value="비교하기" onclick="compare_market()">
</body>
</html>