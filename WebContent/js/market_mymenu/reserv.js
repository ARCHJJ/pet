
/* 예약 삭제 */
function delReserv(rev_idx) {
	if (confirm("삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "mymenu_shop_reserv_delete.do",
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