/**
 * 
 */


function upInfo(idx , market_id, name, description, photos, price) {
	$('#idx').val(idx);
	$('#market_id').val(market_id);
	$('#name').val(name);
	$('#description').val(description);
	$('#photos').val(photos);
	$('#price').val(price);
	$('#modal_update').modal('show');
};

function update_Info() {
	document.modify_form.submit();
}