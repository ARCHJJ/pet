/* 검색어 전송 */
function search_market() {
	document.market_search_form.submit();
}

function search_item() {
	document.item_search_form.submit();
}

/* 매장 상세 보기 (매장 기본정보 + 후기 등) */
function view_market(market_id) {
	var form = document.writeform;
	
	$('#market_id').val(market_id);
	window.location.href = "market_feedback_View.do?market_id=" + market_id;
	form.submit();
}