/* 예약 삭제 */
function delReserv(rev_idx){
	if(confirm("삭제 하시겠습니까?")){
		jQuery.ajax({
			type: "post",
			url: "User_Menu_Reserv_Delete.do",
			data : {rev_idx: rev_idx},
		//	dataType: "json",
			success:
				function(data){
					alert("예약이 취소 되었습니다.");
					location.reload();
				}, 
			error: 
				function error(xhr,status,error){
					alert(error);
				} 
		}); 	
	}
};
/* 개인정보 수정 */
function upInfo(){				
	if(confirm("정말 변경 하시겠습니까?")){
		updateInfo(userid, address1, address2, phone);
		alert("변경 되었습니다.");
	}
}

/* 예약 수정 */
function modirev(){
	
}

/* 회원 탈퇴 */
function outInfo(){
	if(confirm("정말 탈퇴 하시겠습니까?")){
		/**/
		delInfo();
		alert("탈퇴 되었습니다.");
	}
}

/* 비밀번호 변경 */
function modipass(userid, rev_idx){		//비밀번호 변경
	var userid;
	var rev_idx;
}

