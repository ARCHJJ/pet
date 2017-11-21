/* 메시지 전송*/
function sendMessage(sender_email){
	$('#sender_email').val(sender_email);
	$('#modal_send').modal('show');
}

function send_message(){
	var sender_email = $('#sender_email').val();
	var receiver_email = $('#receiver_email').val();
	var content = $('#content').val();
	
	if (confirm("해당 메시지를 전송 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "User_Menu_Message_Send.do",
			data : { receiver_email : receiver_email, sender_email : sender_email, content : content},
			success : function(data) {
				alert("메시지가 전송 되었습니다.");
				location.reload();
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
}

function returnMessage(receiver_email, sender_email){
	$('#receiver_email').val(receiver_email);
	$('#sender_email').val(sender_email);
	$('#modal_send').modal('show');
}

/* 메시지 삭제 */
function delMessage(receiver, sender, date){
	if (confirm("해당 메시지를 삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "User_Menu_Message_Delete.do",
			data : { receiver_email : receiver, sender_email : sender, date : date},
			success : function(data) {
				alert("메시지가 삭제 되었습니다.");
				location.reload();
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
};


function boardSearch(page){
	
	var str = "User_Menu_Message.do";
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