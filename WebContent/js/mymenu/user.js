
/* 개인정보 수정 */
function upInfo(email, password, name, address1, address2, phone, gender, power) {
	$('#email').val(email);
	$('#password').val(password);
	$('#name').val(name);
	$('#address1').val(address1);
	$('#address2').val(address2);
	$('#phone').val(phone);
	$('#gender').val(gender);
	$('#power').val(power);
	$('#modal_update').modal('show');
};

function update_Info() {
	document.modify_form.submit();
}

/* 회원 탈퇴 */
function delInfo(email) {
	if (confirm("정말 탈퇴 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "User_Menu_Person_Delete.do",
			data : { email : email },
			success : function(data) {
				alert("탈퇴 되었습니다.");
				location.href="main.do";
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
}
