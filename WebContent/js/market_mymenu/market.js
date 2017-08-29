/**
 * 
 */


function upInfo(market_id, market_name, description, photos, pets, address, classes, service) {
	$('#market_id').val(market_id);
	$('#market_name').val(market_name);
	$('#description').val(description);
	$('#photos').val(photos);
	$('#pets').val(pets);
	$('#address').val(address);
	$('#classes').val(classes);
	$('#service').val(service);
	$('#modal_update').modal('show');
};

function update_Info() {
	document.modify_form.submit();
}