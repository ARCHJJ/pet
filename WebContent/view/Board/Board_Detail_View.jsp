<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물 상세정보</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/board/view.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
</head>
<body>
<table class="board_list">
	<tr>
	<th>제목</th>		<td>${bblist.title }</td>
	</tr>
	<tr class="style1"><td class="style2"></td></tr>
	<tr>
	<th>작성자</th>	<td>${bblist.email }</td>
	</tr>
	<tr class="style1"><td class="style2"></td></tr>
	<tr>
	<th>작성일</th>	<td>${bblist.date }</td>
	</tr>
	<tr class="style1"><td class="style2"></td></tr>
	<tr>
	<th>조회수</th>	<td>${bblist.hit }</td>
	</tr>
	<tr class="style1"><td class="style2"></td></tr>
	<tr>
	<th>내용</th>		<td class="content">${bblist.content }</td>
	</tr>
	<tr class="style1"><td class="style2"></td></tr>
	<tr>
	<th>파일</th>		<td>${bblist.file }</td>
	</tr>
	<tr class="style1"><td class="style2"></td></tr>
	<tr class="style3"><td class="style2"></td></tr>
</table>
<p align="center">
<button class="ui blue basic button" OnClick="javascript:history.back(-1)">목록</button> 
<button class="ui violet basic button" OnClick="">수정</button>
<button class="ui red basic button" OnClick="">삭제</button> 
</p>
</body>
</html>