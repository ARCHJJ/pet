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
		<tbody>
			<tr>
				<td>매장주인 email</td>
				<td>${mb1.email }</td>
				<td>${mb2.email }</td>
				<td>${mb3.email }</td>
			</tr>
			<tr>
				<td>매장 이름</td>
				<td><a href="#" onclick="view_market(${mb1.market_id })" style="color: 0099CC">${mb1.market_name }</a></td>
				<td><a href="#" onclick="view_market(${mb2.market_id })" style="color: 0099CC">${mb2.market_name }</a></td>
				<td><a href="#" onclick="view_market(${mb3.market_id })" style="color: 0099CC">${mb3.market_name }</a></td>
			</tr>
			<tr>
				<td>매장 설명</td>
				<td>${mb1.description }</td>
				<td>${mb2.description }</td>
				<td>${mb3.description }</td>
			</tr>
			<tr>
				<td>매장 사진</td>
				<td>${mb1.photos }</td>
				<td>${mb2.photos }</td>
				<td>${mb3.photos }</td>
			</tr>
			<tr>
				<td>매장에서 지원하는 펫</td>
				<td>${mb1.pets }</td>
				<td>${mb2.pets }</td>
				<td>${mb3.pets }</td>
			</tr>
			<tr>
				<td>매장 주소</td>
				<td>${mb1.address }</td>
				<td>${mb2.address }</td>
				<td>${mb3.address }</td>
			</tr>
			<tr>
				<td>매장 종류</td>
				<td>${mb1.classes }</td>
				<td>${mb2.classes }</td>
				<td>${mb3.classes }</td>
			</tr>
			<tr>
				<td>매장 서비스</td>
				<td>${mb1.service }</td>
				<td>${mb2.service }</td>
				<td>${mb3.service }</td>
			</tr>
		</tbody>
	</table>
</body>
</html>