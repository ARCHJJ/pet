<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메시지 확인</title>
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
				<td>송신자</td>
				<td>내용</td>
				<td>날짜</td>
			</tr>
			<c:forEach items="${mblist}" var="item">
				<tbody>
					<tr>
						<td>${item.sender_email }</td>
						<td>${item.content }</td>
						<td>${item.date }</td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>