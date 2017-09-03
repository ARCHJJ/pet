function writeForm(board_type) {
	$('#board_type').val(board_type);
	window.location.href = "board_write_form.do?board_type=" + board_type;
}

function writeCheck(board_type, title, email, file, content)
{
	  var form = document.writeform;

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
	window.location.href = "board_write.do?board_type=" + board_type 
	+ "&title=" + title + "&email=" + email + "&file=" + file + "&content=" + content;
	form.submit();
}

function updateForm(idx) {
	$('#idx').val(idx);
	window.location.href = "board_update_form.do?idx=" + idx;
}

function updateCheck(board_type, idx, title, email, file, content) 
{
	  var form = document.modifyform;

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
	
	window.location.href = "board_update.do?idx=" + idx;
	  form.submit();
}

function deleteBoard(idx) {
	if (confirm("삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "board_delete.do",
			data : { idx : idx },
			success : function(data) {
				alert("게시물이 삭제되었습니다.");
				location.reload();
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
}