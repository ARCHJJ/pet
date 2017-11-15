<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>작성한 글</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/mymenu/write.js"></script>

</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
				<td>번호</td>
				<td>게시판종류</td>
				<td>날짜</td>
				<td>제목</td>
				<td>내용</td>
				<td>비고</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bblist}" var="item">
				<tr>
					<td>${item.idx }</td>
					<td><c:choose>
							<c:when test="${item.board_type == 1}">공지사항</c:when>
							<c:when test="${item.board_type == 2}">고객센터</c:when>
							<c:when test="${item.board_type == 3}">지식인</c:when>
							<c:when test="${item.board_type == 4}">자유게시판</c:when>
						</c:choose></td>
					<td>${item.date }</td>
					<td>${item.title }</td>
					<td>${item.content }</td>
					<td><button class="ui red basic button" onClick="delWrite(${item.idx });">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr><th colspan="7">
				<div class="ui right floated pagination menu">
		        <a class="icon item" onclick="boardSearch('${pageInfo.prevPage}')">
		          <i class="left chevron icon"></i>
		        </a>
		        <c:forEach begin="${pageInfo.firstPage}" end="${pageInfo.endPage}" var="pages">
		        	<a class="item" onclick="boardSearch('${pages}')">${pages}</a>
		        </c:forEach>
		        <a class="icon item" onclick="boardSearch('${pageInfo.nextPage}')">
		          <i class="right chevron icon"></i>
		        </a>
		      </div>
	      </th></tr>
		</tfoot>
	</table>
</body>
</html>