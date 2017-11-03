<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물 수정</title>
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
     <form name="modifyform" method="post" action="board_update.do">
     <table id="form1">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>글쓰기</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table id="form2">
     <tr>
     <td><input type="hidden" name="idx" id="idx" size="5" value="${bb.idx }"></td>
     <td><input type="hidden" name="board_type" id="board_type" size="5" value="${bb.board_type }"></td>
     </tr>
     <tr>
      <td>제목</td>
      <td><input type="text" name="title" id="title" size="50" maxlength="100" value="${bb.title }"></td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>작성자</td>
      <td><input type="text" name="email" id="email" readonly="readonly" size="50" maxlength="50" value="${email }"></td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>파일명</td>
      <td><input type="file" name="file" id="file" size="50" maxlength="50" value="${bb.file }">(최대 5M)</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>내용</td>
      <td><textarea name="content" id="content" cols="50" rows="13">${bb.content }</textarea></td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
</table>
</form>
    <p align="center">
      <button class="ui violet basic button" OnClick="updateCheck('${bb.idx}', '${bb.board_type }', '${bb.title }', '${email }', '${bb.file }', '${bb.content }')">수정</button>
      <button class="ui red basic button" OnClick="javascript:history.back(-1)">취소</button>
	</p>
</body>
</html>