/**
 * 
 */

function changeBorder(type){
	var userid = document.register_form.pro_name;
	var password = document.register_form.pro_email;
	
	if(type == 'pro_name' ){
		pro_name.style.border = "1px solid green";
		pro_email.style.border = "1px solid #dddddd";
	}else{
		pro_name.style.border = "1px solid #dddddd";
		pro_email.style.border = "1px solid green";
	}
}

/*
//멤버추가 모달
function insert_req(){
	$('#modal_insert').modal('show');
}
//멤버추가 처리
function insert_pro_register(){
	var pro_name = $('#pro_name2').val();
	var pro_email = $('#pro_email2').val();
	
	jQuery.ajax({
		type: "post",
		url: "insertpro.do",
		data : {pro_name: pro_name, pro_email: pro_email},
		dataType: "json",
		success:
			function(data){
				if(data.result == "false1"){
					alert("시스템 오류 발생하였습니다. ");
				}else{
					alert("추가 되었습니다. ");
					location.href="reservemanage.do";
				}
			}, 
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	}); 
}
*/

/*멤버업데이트 모달*/
function update_pro(rev_idx, member_email, market_id, market_name, service, pets, timeofrev, date, cctvid){
	$('#rev_idx').val(rev_idx);
	$('#member_email').val(member_email);
	$('#market_id').val(market_id);
	$('#market_name').val(market_name);
	$('#service').val(service);
	$('#pets').val(pets);
	$('#timeofrev').val(timeofrev);
	$('#date').val(date);
	$('#cctvid').val(cctvid);
	$('#modal_update').modal('show');
}

/*멤버업데이트 처리*/
function update_pro_register(){
	document.modify_form.submit();
}

/*멤버삭제*/
function delete_pro(rev_idx){
	if(confirm("해당 예약정보를 삭제 하시겠습니까?")){
		jQuery.ajax({
			type: "post",
			url: "reserveDelete.do",
			data: {rev_idx: rev_idx},
			success:
				function(data){
					alert("삭제 되었습니다.");
					//history.back();
					location.reload();
				},
			error: 
				function error(xhr,status,error){
					alert(error);
				} 
		});
	}
};