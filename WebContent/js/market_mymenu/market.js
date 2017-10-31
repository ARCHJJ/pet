/**
 * 
 */

			
function upInfo(market_id, market_name, description, photos, address, pet_dog, pet_cat, pet_etc, cl_market, cl_beauty, cl_hotel, cl_hospital, ser_buypet, ser_buystuff, ser_hair, ser_bath, ser_rent, ser_lodge, ser_doctor, ser_surgery) {
	$('#market_id').val(market_id);
	$('#market_name').val(market_name);
	$('#description').val(description);
	$('#photos').val(photos);
	$('#address').val(address);
	/*
	$('#pet_dog').val(pet_dog);
	$('#pet_cat').val(pet_cat);
	$('#pet_etc').val(pet_etc);
	$('#cl_market').val(cl_market);
	$('#cl_beauty').val(cl_beauty);
	$('#cl_hotel').val(cl_hotel);
	$('#cl_hospital').val(cl_hospital);
	$('#ser_buypet').val(ser_buypet);
	$('#ser_buystuff').val(ser_buystuff);
	$('#ser_hair').val(ser_hair);
	$('#ser_bath').val(ser_bath);
	$('#ser_rent').val(ser_rent);
	$('#ser_lodge').val(ser_lodge);
	$('#ser_doctor').val(ser_doctor);
	$('#ser_surgery').val(ser_surgery);
	*/
	$('#modal_update').modal('show');
};

function update_Info() {
	document.modify_form.submit();
}