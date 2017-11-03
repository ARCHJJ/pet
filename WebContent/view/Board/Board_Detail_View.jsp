<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 상세정보</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/board/form.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
</head>
<body>
	<form name="detail_view" method="post">
		<table class="ui orange table">
			<tr>
				<td><input type="hidden" name="board_type" id="board_type" size="5" value="${board_type }"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${bb.title }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${bb.email }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${bb.date }</td>
			</tr>
			<tr>
				<th>조회수</th>
				<td>${bb.hit }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${bb.content }</td>
			</tr>
			<tr>
				<th>파일</th>
				<td>${bb.file }</td>
			</tr>
		</table>
	</form>
	<p align="center">
		<button class="ui blue basic button" OnClick="javascript:history.back(-1)">목록</button>
		<c:if test="${session.email == bb.email }">
			<button class="ui violet basic button" OnClick="updateForm('${idx}', '${board_type }','${bb.title }', '${bb.email }')">수정</button>
			<button class="ui red basic button" OnClick="deleteBoard('${idx}')">삭제</button>
		</c:if>
		<c:if test="${session.power eq 300 }">
			<button class="ui red basic button" OnClick="deleteBoard('${idx}')">삭제</button>
		</c:if>
	</p>
</body>
</html>