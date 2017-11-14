function writeForm(board_type) {
	$('#board_type').val(board_type);
	window.location.href = "board_write_form.do?board_type=" + board_type;
}

function writeCheck(board_type, title, email, file, content) {
	var form = document.writeform;

	if (!form.title.value) // form 에 있는 title 값이 없을 때
	{
		alert("제목을 적어주세요"); // 경고창 띄움
		form.title.focus(); // form 에 있는 title 위치로 이동
		return;
	}

	if (!form.content.value) {
		alert("내용을 적어주세요");
		form.content.focus();
		return;
	}
	window.location.href = "board_write.do?board_type=" + board_type
			+ "&title=" + title + "&email=" + email + "&file=" + file
			+ "&content=" + content;
	form.submit();
}

function getView(idx, board_type) {
	var form = document.writeform;

	$('#idx').val(idx);
	$('#board_type').val(board_type);
	window.location.href = "board_view.do?idx=" + idx + "&board_type="
			+ board_type;
	form.submit();
}

function updateForm(idx, board_type, email) {
	$('#idx').val(idx);
	$('#board_type').val(board_type);
	$('#email').val(email);

	window.location.href = "board_update_form.do?idx=" + idx + "&board_type="
			+ board_type + "&email=" + email;
}

function updateCheck(idx, board_type, title, email, file, content) {
	var form = document.modifyform;
	if (!form.title.value) // form 에 있는 title 값이 없을 때
	{
		alert("제목을 적어주세요"); // 경고창 띄움
		form.title.focus(); // form 에 있는 title 위치로 이동
		return;
	}

	if (!form.content.value) {
		alert("내용을 적어주세요");
		form.content.focus();
		return;
	}
	window.location.href = "board_update.do?idx=" + idx + "&board_type="
			+ board_type + "&title=" + title + "&email=" + email + "&file="
			+ file + "&content=" + content;
	form.submit();
}

function view_board(board_type) {
	var str;
	switch (board_type) {
	case "1":
		str = "board_notice.do";
		break;
	case "2":
		str = "board_customer_service.do";
		break;
	case "3":
		str = "board_kin.do";
		break;
	case "4":
		str = "board_freeboard.do";
		break;
	}

	location.href = str;
}

function deleteBoard(idx, board_type) {
	var str;
	switch (board_type) {
	case 1:
		str = "board_notice.do";
		break;
	case 2:
		str = "board_customer_service.do";
		break;
	case 3:
		str = "board_kin.do";
		break;
	case 4:
		str = "board_freeboard.do";
		break;
	}
	if (confirm("삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "board_delete.do",
			data : {
				idx : idx
			},
			success : function(data) {
				alert("게시물이 삭제되었습니다.");
				location.href = str;
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
}

function boardSearch(board_type, page){
	
	var str;
	switch (board_type) {
	case "1":
		str = "board_notice.do";
		break;
	case "2":
		str = "board_customer_service.do";
		break;
	case "3":
		str = "board_kin.do";
		break;
	case "4":
		str = "board_freeboard.do";
		break;
	}
	
	jQuery.ajax({
		type : "post",
		url : str,
		data : {
			page : page
		},
		success : function(data) {
			location.href = str + "?page=" + page;
		},
		error : function error(xhr, status, error) {
			alert(error);
		}
	});
}

//댓글작성
function insert_comment() {
	comment_form.action="insertReply.do";
	comment_form.submit();
}

var t_idx;
var t_email;
var t_board_id;
//수정하기
function modal1(idx, email, board_id) {
	t_idx = idx;
	t_email = email;
	t_board_id = board_id;
	$('#comment_update').modal('show');
}

// 삭제하기
function modal2(idx, email, board_id) {
	t_idx = idx;
	t_email = email;
	t_board_id = board_id;
	$('#comment_delete').modal('show');
}

//댓글수정
function update_comment() {
	var content = $('#content_update').val();
	var board_type = $('#board_type').val();

	jQuery.ajax({
		type : "post",
		url : "updateReply.do",
		data : {
			idx : t_idx,
			email : t_email,
			content : content
		},
		dataType : "json",
		success : function(data) {
			if (data.result == "false1") {
				alert("자신이 작성한 글만 수정가능합니다.");
			} else {
				alert("수정 되었습니다. ");
				location.href = "board_view.do?idx="+ t_board_id +"&board_type="+ board_type;
			}
		},
		error : function error(xhr, status, error) {
			alert(error);
		}
	});
}

// 댓글삭제
function delete_comment() {
	var board_type = $('#board_type').val();
	
	jQuery.ajax({
		type : "post",
		url : "deleteReply.do",
		data : {
			idx : t_idx,
			email : t_email
		},
		dataType : "json",
		success : function(data) {
			if (data.result == "false1") {
				alert("자신이 작성한 글만 삭제 가능합니다.");
			} else {
				alert("삭제 되었습니다. ");
				location.href = "board_view.do?idx="+ t_board_id +"&board_type="+ board_type;
			}
		},
		error : function error(xhr, status, error) {
			alert(error);
		}
	});
}

