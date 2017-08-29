/* 메시지 전송*/
function sendMessage(sender_email){
	$('#sender_email').val(sender_email);
	$('#modal_send').modal('show');
}
function send_Message() {
	document.send_form.submit();
}

/* 예약 삭제 */
function delReserv(rev_idx) {
	if (confirm("삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "User_Menu_Reserv_Delete.do",
			data : { rev_idx : rev_idx },
			success : function(data) {
				alert("예약이 취소 되었습니다.");
				location.reload();
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
};

/* 예약 변경 */
function updateReserv(rev_idx, member_email, market_id, service, pets,
		timeofrev, date, cctvid) {
	$('#rev_idx').val(rev_idx);
	$('#member_email').val(member_email);
	$('#market_id').val(market_id);
	$('#service').val(service);
	$('#pets').val(pets);
	$('#timeofrev').val(timeofrev);
	$('#date').val(date);
	$('#cctvid').val(cctvid);
	$('#modal_update').modal('show');
}
function update_Reserv() {
	document.modify_form.submit();
}

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

/* 작성한 글 삭제 */
function delWrite(idx) {
	if (confirm("정말 삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "User_Menu_Write_Delete.do",
			data : { idx : idx },
			success : function(data) {
				alert("삭제 되었습니다.");
				location.reload();
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
}