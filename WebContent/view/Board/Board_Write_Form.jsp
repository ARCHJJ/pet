<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
 <script>  // 자바 스크립트 시작

function writeCheck()
  {
  var form = document.write_form;

   if( !form.title.value )   // form 에 있는 title 값이 없을 때
   {
    alert( "제목을 적어주세요" ); // 경고창 띄움
    form.title.focus();   // form 에 있는 title 위치로 이동
    return;
   }
 
  if( !form.content.value )
   {
    alert( "내용을 적어주세요" );
    form.content.focus();
    return;
   }
 
  form.submit();
  }
 
<%
	String email = (String) session.getAttribute("email");
%>
</script>
<title>커뮤니티</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/board/board.js"></script>
 </head>
 <body>
	<div class="ui modal first" id="write_form">
		<i class="close icon"></i>
		<div class="header">글쓰기</div>
		<div class="image content">
			<div class="description">
				<div class="ui header">글쓰기</div>
				<div class="ui input focus">
					<form name="writeform" method="post" action="board_write.do">
						게시물 종류<input type="hidden" name="board_type" value="${board_type }" maxlength="20" />
						제목<input type="text" name="title" id="title" />
						<br>
						이메일<input type="text" name="email" id="email" value="${email }" maxlength="20" readonly="readonly" />
						<br>
						파일명<input type="file" name="name" id="name" maxlength="20" />
						<br>
						내용 <textarea name="content" id="content"></textarea>
						<br>
					</form>
				</div>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button" OnClick="javascript:history.back(-1)">취소</div>
			<div class="ui positive right labeled icon button" OnClick="javascript:writeCheck();">
				등록 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body> 
</html>