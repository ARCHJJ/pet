<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 상세정보</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/board/form.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
</head>
<body>
	<form name="detail_view" method="post">
		<table class="ui celled table" id="form1">
			<tr style="text-align: center;">
				<td>게시물 정보</td>
			</tr>
		</table>
		<input type="hidden" name="board_type" id="board_type" value="${board_type }">
		<table class="ui celled table" id="form2">
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
		</table>
	</form>
	<form name="comment_form" method="post">
		<table class="ui orange table" id="form3">
			<thead>
				<tr>
					<td>댓글작성</td>
					<td><textarea name="content" id="content"></textarea></td>
					<td><button class="ui secondary basic button" onclick="insert_comment();" id="insert_btn">댓글 작성</button></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>후기 내용</td>
					<td>작성일</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bblist}" var="item">
					<tr>
						<td>${item.email }</td>
						<td>${item.content }</td>
						<td>${item.date }</td>
						<td><a id="update_btn" onclick="modal1(${item.idx }, '${item.email }', ${idx })">수정</a></td>
						<td><a id="delete_btn" onclick="modal2(${item.idx }, '${item.email }', ${idx })">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="hidden" name="board_id" value="${idx }">
		<input type="hidden" name="board_type" value="${board_type }">
	</form>

	<div class="ui modal" id="comment_update">
		<i class="close icon"></i>
		<div class="header">코멘트 수정</div>
		<div class="content">
			<div class="description">
				<textarea name="content_update" id="content_update"></textarea>
			</div>
		</div>
		<div class="actions">
			<div class="ui deny button">Cancel</div>
			<div class="ui button" onclick="update_comment();">OK</div>
		</div>
	</div>

	<div class="ui tiny modal" id="comment_delete">
		<i class="close icon"></i>
		<div class="header">코멘트 삭제</div>
		<div class="content">
			<p>삭제하시겠습니까?</p>
		</div>
		<div class="actions">
			<div class="ui negative button">No</div>
			<div class="ui positive right labeled icon button" onclick="delete_comment();">
				Yes <i class="checkmark icon" ></i>
			</div>
		</div>
	</div>
	
	<p align="center">
		<button class="ui blue basic button" OnClick="javascript:history.back(-1)">목록</button>
		<c:if test="${session.email == bb.email }">
			<button class="ui violet basic button" OnClick="updateForm('${idx}', '${board_type }', '${bb.title }', '${bb.email }')">수정</button>
			<button class="ui red basic button" OnClick="deleteBoard('${idx}', '${board_type }')">삭제</button>
		</c:if>
	</p>
</body>
</html>