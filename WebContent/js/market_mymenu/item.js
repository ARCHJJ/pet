/**
 * 
 */
function addItem(market_id){
	$('#market_id').val(market_id);
	$('#modal_insert').modal('show');
};

function deleteItem(idx){
	if (confirm("삭제 하시겠습니까?")) {
		jQuery.ajax({
			type : "post",
			url : "mymenu_shop_item_delete.do",
			data : { idx : idx },
			success : function(data) {
				alert("해당 상품이 삭제 되었습니다.");
				location.reload();
			},
			error : function error(xhr, status, error) {
				alert(error);
			}
		});
	}
};

function upInfo(idx , name, description, photos, price) {
	$('#idx').val(idx);
	$('#name').val(name);
	$('#description').val(description);
	$('#photos').val(photos);
	$('#price').val(price);
	$('#modal_update').modal('show');
};

function update_Info() {
	document.modify_form.submit();
}

function add_item(){
	document.insert_form.submit();
}