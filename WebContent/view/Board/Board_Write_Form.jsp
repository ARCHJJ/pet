<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>커뮤니티</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="css/board/form.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
</head>
<body>
	<form name="write_form" method=post action="board_write.do">
		<input type="hidden" name="board_type" id="board_type" value="${board_type }">
		<table class="ui celled table" id="form1">
			<tr style="text-align: center;">
				<td colspan="2">글쓰기</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" id="title" size="100" maxlength="100"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="email" id="email" readonly="readonly" size="100" maxlength="50" value="${email }"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" id="content" cols="60" rows="10"></textarea></td>
			</tr>
		</table>
		<p align="center">
			<button type="button" class="ui blue basic button" OnClick="writeCheck('${board_type}', '${email }')">등록</button>
			<button class="ui red basic button" OnClick="javascript:history.back(-1)">취소</button>
		</p>
	</form>
	<script>
    	CKEDITOR.replace('content',{
            toolbar: [['Source','-','NewPage','Preview','-','Templates'],
            ['Cut','Copy','-','Print','SpellChecker', 'Scayt'],
            ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
            '/',
            ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
            ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
            ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
            ['Link','Unlink','Anchor'],
            ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
            '/',
            ['Styles','Format','Font','FontSize'],
            ['TextColor','BGColor'],
            ['Maximize', 'ShowBlocks','-','About']]
        }
    );
	</script>
</body>
</html>