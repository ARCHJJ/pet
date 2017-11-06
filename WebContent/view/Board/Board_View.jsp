<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<table class="ui celled table">
		<thead><tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr></thead>
		<tbody><c:forEach items="${bblist }" var="board">
			<tr>
				<td>${board.idx }</td>
				<td><a href="#" OnClick="getView('${board.idx}','${board.board_type }')" style="color: 0099CC">${board.title }</a></td>
				<td>${board.email }</td>
				<td>​${board.date }</td>
				<td>${board.hit }</td>
			</tr>
		</c:forEach></tbody>
		<tfoot>
			<tr><th colspan="5">
				<div class="ui right floated pagination menu">
		        <a class="icon item" onclick="boardSearch('${board_type }', '${pageInfo.prevPage}')">
		          <i class="left chevron icon"></i>
		        </a>
		        <c:forEach begin="${pageInfo.firstPage}" end="${pageInfo.endPage}" var="pages">
		        	<a class="item" onclick="boardSearch('${board_type }', '${pages}')">${pages}</a>
		        </c:forEach>
		        <a class="icon item" onclick="boardSearch('${board_type }', '${pageInfo.nextPage}')">
		          <i class="right chevron icon"></i>
		        </a>
		      </div>
	      </th></tr>
		</tfoot>
	</table>
	<!-- 
	<div class="navigater">
		<a href="#" onclick="boardSearch('${board_type }', 1)" class="arrow"> << </a>
		<a href="#" onclick="boardSearch('${board_type }', '${pageInfo.prevPage}')" class="arrow"> < </a>
		<span class="pages">
			<c:forEach begin="${pageInfo.firstPage}" end="${pageInfo.endPage}" var="pages">
				<a href="#" onclick="boardSearch('${board_type }', '${pages}')" class="${pages}page">${pages}</a>
			</c:forEach>
		</span>
		<a href="#" onclick="boardSearch('${board_type }', '${pageInfo.nextPage}')"class="arrow"> > </a>
		<a href="#" onclick="boardSearch('${board_type }', '${pageInfo.maxPage}')" class="arrow"> >> </a>
    </div>
     -->
	<c:if test="${board_type eq 3 || board_type eq 4 || session.power eq 300}">
		<p align="center">
			<button class="ui blue basic button"
				OnClick="writeForm('${board_type}')">글쓰기</button>
		</p>
	</c:if>
</body>
</html>