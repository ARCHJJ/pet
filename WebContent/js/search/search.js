/* 검색어 전송 */
function searchaction() {
	document.search_form.submit();
}

function checkbox_submit() {
	document.select_search_form.submit();
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
	} else if (num <=0 ) {
		alert("선택된 것이 없습니다.");	
	} else {
		document.market_compare_form.submit();
	}
}

/* 체크된 비교 대상 매장 전송 */
function compare_market2() {
	var num = 0;
	var selCheck = document.getElementsByName("selectMarket");
	for (var i = 0; i < selCheck.length; i++) {
		if (selCheck[i].checked)
			num++;
	}
	if (num > 3 || num <= 0) {
		alert("범위를 초과했습니다. (1~3개까지 선택 가능)");
	} else {
		document.market_compare_form2.submit();
	}
}