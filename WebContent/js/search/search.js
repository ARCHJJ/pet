function sample4_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 도로명 조합형 주소 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}
			// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
			// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
			if (fullRoadAddr !== '') {
				fullRoadAddr += extraRoadAddr;
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			// document.getElementById('sample4_postcode').value =
			// data.zonecode; //5자리 새우편번호 사용
			document.getElementById('address').value = fullRoadAddr;
			// document.getElementById('sample4_jibunAddress').value =
			// data.jibunAddress;

			// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			if (data.autoRoadAddress) {
				// 예상되는 도로명 주소에 조합형 주소를 추가한다.
				var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
						+ expRoadAddr + ')';

			} else if (data.autoJibunAddress) {
				var expJibunAddr = data.autoJibunAddress;
				document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
						+ expJibunAddr + ')';

			} else {
				document.getElementById('guide').innerHTML = '';
			}
		}
	}).open();
}

/*$(document).ready(function() {
	$('#update_btn').click(function() {
		$('.ui.modal.first').modal('show');
	});
	$('#delete_btn').click(function() {
		$('.ui.tiny.modal').modal('show');
	});
});*/


/* 검색어 전송 */
function searchaction() {
	search_form.submit();
}

/* 매장 상세 보기 (매장 기본정보 + 후기 등) */
function view_market(market_id) {
	var form = document.writeform;

	$('#market_id').val(market_id);
	window.location.href = "market_feedback_View.do?market_id=" + market_id;
	form.submit();
}

/* 체크된 비교 대상 매장 전송 */
function compare_market() {
	var num = 0;
	var selCheck = document.getElementsByName("selectMarket");
	for (var i = 0; i < selCheck.length; i++) {
		if (selCheck[i].checked)
			num++;
	}
	if (num > 3) {
		alert("3개까지 선택 가능합니다.");
	} else if (num <= 0) {
		alert("선택된 것이 없습니다.");
	} else {
		document.market_compare_form.submit();
	}
}

// 댓글작성
function insert_comment() {
	comment_form.action="insertComment.do";
	comment_form.submit();
}

var temp;
var t_email;
//수정하기
function modal1(order, email){
	temp=order;
	t_email = email;
	$('#comment_update').modal('show');
}

//삭제하기
function modal2(order, email){
	temp=order;
	t_email = email;
	$('#comment_delete').modal('show');
}

// 댓글수정
function update_comment() {
	var content = $('#content_update').val();
	var email = t_email;
	var market_id = $('#market_id').val();

	jQuery.ajax({
		type : "post",
		url : "updateComment.do",
		data : {
			order : temp,
			email : email,
			content : content
		},
		dataType : "json",
		success : function(data) {
			if (data.result == "false1") {
				alert("자신이 작성한 글만 수정가능합니다.");
			} else {
				alert("수정 되었습니다. ");
				location.href = "market_feedback_View.do?market_id="+market_id;
			}
		},
		error : function error(xhr, status, error) {
			alert(error);
		}
	});
}

// 댓글삭제
function delete_comment() {
	var market_id = $('#market_id').val();
	var email = t_email;
	
	jQuery.ajax({
		type : "post",
		url : "deleteComment.do",
		data : {
			order : temp,
			email : email
		},
		dataType : "json",
		success : function(data) {
			if (data.result == "false1") {
				alert("자신이 작성한 글만 삭제 가능합니다.");
			} else {
				alert("삭제 되었습니다. ");
				location.href = "market_feedback_View.do?market_id="+market_id;
			}
		},
		error : function error(xhr, status, error) {
			alert(error);
		}
	});
}