/**
 * 
 */

			
function upInfo(market_id, market_name, description, photos, address) {
	$('#market_id').val(market_id);
	$('#market_name').val(market_name);
	$('#description').val(description);
	$('#photos').val(photos);
	$('#address').val(address);
	$('#modal_update').modal('show');
};

function update_Info() {
	document.modify_form.submit();
}