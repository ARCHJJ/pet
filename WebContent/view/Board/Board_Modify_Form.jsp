<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시물 수정</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/board/form.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
</head>
<body>
	<form name="modify_form" method="post" action="board_update.do">
		<input type="hidden" name="board_type" id="board_type" value="${bb.board_type }">
		<table class="ui celled table" id="form1">
			<tr style="text-align: center;">
				<th colspan="2">글쓰기</th>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" size="100" maxlength="100" value="${bb.title }"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="email" id="email" readonly="readonly" size="100" maxlength="50" value="${email }"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" id="content" cols="60" rows="10">${bb.content }</textarea></td>
			</tr>
		</table>
		<p align="center">
			<button type="button" class="ui violet basic button" OnClick="updateCheck('${bb.idx}', '${bb.board_type }', '${email }')">수정</button>
			<button type="button" class="ui red basic button" OnClick="javascript:history.back(-1)">취소</button>
		</p>
	</form>
	<script>
    	CKEDITOR.replace('content',{
            toolbar: [['Source','-','NewPage','Preview','-','Templates'],
            ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print','SpellChecker', 'Scayt'],
            ['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
            ['Form', 'Checkbox', 'Radio','TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
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