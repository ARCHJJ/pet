<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>작성한 글</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
				<td>index</td>
				<td>게시판종류</td>
				<td>날짜</td>
				<td>제목</td>
				<td>file</td>
				<td>내용</td>
			</tr>
		</thead>
		<c:forEach items="${bblist}" var="item">
			<tbody>
				<tr>
					<td>${item.index }</td>
					<td>${item.board_type }</td>
					<td>${item.date }</td>
					<td>${item.title }</td>
					<td>${item.file }</td>
					<td>${item.content }</td>
				</tr>
		</c:forEach>

		</tbody>
	</table>
</body>
</html>