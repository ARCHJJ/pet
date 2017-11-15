$(function() {
	 $('#datetimepicker1').datetimepicker({
		 format: "YYYY-MM-DD hh:mm",
		 locale: 'ko'
	 });
});

/* 예약 삭제 */
function delReserv(rev_idx) {
	if (confirm("삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "User_Menu_Reserv_Delete.do",
			data : {
				rev_idx : rev_idx
			},
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

function updateReserv(rev_idx, member_email, market_name, reservation_service, reservation_pets, timeofrev, date, cctvid) {
	$('#rev_idx').val(rev_idx);
	$('#member_email').val(member_email);
	$('#market_name').val(market_name);
	$('#reservation_service').val(reservation_service);
	$('#reservation_pets').val(reservation_pets);
	$('#timeofrev').val(timeofrev);
	$('#date').val(date);
	$('#cctvid').val(cctvid);
	$('#modal_update').modal('show');
}
function update_Reserv() {
	document.modify_form.submit();
}
