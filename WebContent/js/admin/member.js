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
/*멤버추가 모달*/
function insert_req(){
	$('#modal_insert').modal('show');
}
/*멤버추가 처리*/
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
					location.href="membermanage.do";
				}
			}, 
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	}); 
}

/*멤버업데이트 모달*/
function update_pro(email, name, address1, address2, phone, gender, power){
	$('#email').val(email);
	$('#name').val(name);
	$('#address1').val(address1);
	$('#address2').val(address2);
	$('#phone').val(phone);
	$('#gender').val(gender);
	$('#power').val(power);
	$('#modal_update').modal('show');
};

function insert_market(email){
	if(confirm("사용자에게 마켓을 할당 하겠습니까?")){
		jQuery.ajax({
			type: "post",
			url: "marketInsert.do",
			data: {email: email},
			success:
				function(data){
					alert("추가되었습니다.");
					location.reload();
				},
			error: 
				function error(xhr,status,error){
					alert(error);
				} 
		});
	}
	
}


/*멤버업데이트 처리*/
function update_pro_register(){
	document.modify_form.submit();
}

/*멤버삭제*/
function delete_pro(email){
	if(confirm("해당 사용자를 삭제 하시겠습니까?")){
		jQuery.ajax({
			type: "post",
			url: "memberDelete.do",
			data: {email: email},
			success:
				function(data){
					alert("삭제 되었습니다.");
					location.reload();
				},
			error: 
				function error(xhr,status,error){
					alert(error);
				} 
		});
	}
};