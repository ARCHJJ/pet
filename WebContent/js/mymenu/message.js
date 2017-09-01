/* 메시지 전송*/
function sendMessage(sender_email){
	$('#sender_email').val(sender_email);
	$('#modal_send').modal('show');
}
function send_Message() {
	document.send_form.submit();
}
