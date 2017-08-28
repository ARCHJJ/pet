/**
 * 
 */
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

function insert_req(){
	$('.ui.modal.first').modal('show');
}
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
					location.href="getprolist.do";
				}
			}, 
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	}); 
}
function update_pro(idx, pro_name, pro_email){
	$('#pro_name').val(pro_name);
	$('#pro_email').val(pro_email);
	$('#idx').val(idx);
	$('.ui.modal.second').modal('show');
};

function update_pro_register(){
	alert('d');
	var pro_name = $('#pro_name').val();
	var pro_email = $('#pro_email').val();
	var idx = $('#idx').val();
	jQuery.ajax({
		type: "post",
		url: "updatepro.do",
		data : {pro_name: pro_name, pro_email: pro_email, idx: idx},
		dataType: "json",
		success:
			function(data){
				if(data.result == "false1"){
					alert("시스템 오류 발생하였습니다. ");
				}else{
					alert("수정되었습니다. ");
					location.href="getprolist.do";
				}
			}, 
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	}); 
}

function delete_pro(idx){
	var result=confirm("삭제 하시겠습니까?");
	if(result){
		jQuery.ajax({
			type: "post",
			url: "deletepro.do",
			data : {idx: idx},
			dataType: "json",
			success:
				function(data){
					if(data.result == "false1"){
						alert("시스템 오류 발생하였습니다. ");
					}else{
						alert("삭제 되었습니다. ");
						location.href="getprolist.do";
					}
				}, 
			error: 
				function error(xhr,status,error){
					alert(error);
				} 
		}); 
	}
};