
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