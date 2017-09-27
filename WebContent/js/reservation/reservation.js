
/* 예약목록 페이지로 이동 */
function reserv() {
	document.reserv_go_form.submit();
}

/* 예약 정보 입력 페이지로 이동 */
function reserv_page() {
	document.reserv_select_form.submit();
}

function reserv_confirm_form(email, address, service_name, pet, time, price){
	$('#member_email').val(email);
	$('#address').val(address);
	$('#reservation_service').val(service_name);
	$('#reservation_pets').val(pet);
	$('#timeofrev').val(time);
	$('#price').val(price);
	$('#modal_reserv').modal('show');
}

function reserv_submit(){
	document.submit_form.submit();
}