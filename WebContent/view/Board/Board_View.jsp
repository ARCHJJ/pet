<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>커뮤니티</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/board/board.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>

</head>
<body>
<table id="boardList">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	<c:forEach items="${bblist }" var="board">
		<tr>
		<td>${board.idx }</td>
		<td><a href="board_view.do?idx=${board.idx }" style="color: 0099CC">${board.title }</a></td>
		<td>${board.email }</td>
		<td>${board.date }</td>
		</tr>
	</c:forEach>
</table>

<c:if test="${board_type eq 3 || board_type eq 4 || session.power eq 300}">
<p align="center">
<button class="ui blue basic button" OnClick="writeForm('${board_type}')">글쓰기</button>
</p>
</c:if>
</body>
</html>