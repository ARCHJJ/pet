/* 메시지 전송*/
function sendMessage(sender_email){
	$('#sender_email').val(sender_email);
	$('#modal_send').modal('show');
}
function send_Message() {
	document.send_form.submit();
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