$(function() {
	 $('#datetimepicker1').datetimepicker({
	 });
});

/* { 
		language : 'ko', // 화면에 출력될 언어를 한국어로 설정한다.
		//pickTime : false, // 사용자로부터 시간 선택을 허용하려면 true를 설정하거나 pickTime 옵션을 생략한다.
		defalutDate : new Date() // 기본값으로 오늘 날짜를 입력한다. 기본값을 해제하려면 defaultDate 옵션을// 생략한다.
}*/

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
	  if(confirm("예약 하시겠습니까?")) {
		  document.submit_form.submit();
      } else {
          return false;
      }
	
}