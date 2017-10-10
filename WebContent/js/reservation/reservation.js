
/* 예약목록 페이지로 이동 */
function reserv() {
	document.reserv_go_form.submit();
}

/* 예약 정보 입력 페이지로 이동 */
function reserv_page(market_id, name) {
	var form = document.writeform;

	$('#market_id').val(market_id);
	$('#name').val(name);
	window.location.href = "Reservation_select.do?market_id=" + market_id + "&name=" + name;
	form.submit();
}

function reserv_confirm_form(email, market_id, address1, address2, service_name, pets, time, price){
	$('#member_email').val(email);
	$('#market_id').val(market_id);
	$('#address').val(address1+" "+address2);
	$('#reservation_service').val(service_name);
	$('#reservation_pets').val(pets);
	$('#timeofrev').val(time);
	$('#price').val(price);
	$('#modal_reserv').modal('show');
}

function reserv_submit(){
	document.submit_form.submit();
}