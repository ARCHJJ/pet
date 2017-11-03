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
/*마켓추가 모달*/
function insert_req(){
	$('#modal_insert').modal('show');
}
/*마켓추가 처리*/
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

/*마켓업데이트 모달*/
function update_pro(market_id) {
	jQuery.ajax({
		type: "post",
		url: "mymenu_shop_info.do",
		data: {market_id: market_id},
		success:
			function(data){
				window.location.href = "mymenu_shop_info.do?market_id=" + market_id;
			},
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	});
};

/*
function update_pro(market_id, email, market_name, description, photos, address, pet_dog, pet_cat, pet_etc, cl_market, cl_beauty, cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor, ser_surgery) {
	$('#market_id').val(market_id);
	$('#email').val(email);
	$('#market_name').val(market_name);
	$('#description').val(description);
	$('#photos').val(photos);
	$('#address').val(address);
	$('#pet_dog').val(pet_dog);
	$('#pet_cat').val(pet_cat);
	$('#pet_etc').val(pet_etc);
	$('#cl_market').val(cl_market);
	$('#cl_beauty').val(cl_beauty);
	$('#cl_hotel').val(cl_hotel);
	$('#cl_hospital').val(cl_hospital);
	$('#ser_buypet').val(ser_buypet);
	$('#ser_buystuff').val(ser_buystuff);
	$('#ser_hair').val(ser_hair);
	$('#ser_bath').val(ser_bath);
	$('#ser_rent').val(ser_rent);
	$('#ser_lodge').val(ser_lodge);
	$('#ser_doctor').val(ser_doctor);
	$('#ser_surgery').val(ser_surgery);
	
	$('#modal_update').modal('show');
}
*/

/*
//마켓업데이트 처리
function update_pro_register(){
	document.modify_form.submit();
}
*/

/*마켓삭제*/
function delete_pro(market_id){
	if(confirm("해당 사용자를 삭제 하시겠습니까?")){
		jQuery.ajax({
			type: "post",
			url: "marketDelete.do",
			data: {market_id: market_id},
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