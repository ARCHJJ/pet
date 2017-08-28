<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>

<script type="text/javascript" src="js/admin/market_list.js"></script>
</head>
<body>
	<div>
		<table>
			<tr>
				<td>마켓id</td>
				<td>마켓 이름</td>
				<td>마켓 종류</td>
				<td>애완동물 종류</td>
				<td>수정</td>
				<td>삭제</td>
			</tr>
			<c:forEach items="${prolist}" var="item">
				<tr>
					<td>${item.market_id }</td>
					<td>${item.market_name }</td>
					<td>${item.class }</td>
					<td>${item.pets }</td>
					<td><button class="ui button" onclick="update_pro(${item.idx },'${item.pro_name }','${item.pro_email }');">수정</button></td>
					<td><button class="ui button" onclick="delete_pro(${item.idx });">삭제</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
