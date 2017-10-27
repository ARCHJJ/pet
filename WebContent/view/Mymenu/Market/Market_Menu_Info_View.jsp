<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 상세정보</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/market_mymenu/market.js"></script>
<script type="text/javascript" src="js/market_mymenu/image.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

	매장 상세정보
	<table class="ui orange table">
		<thead>
			<tr>
			</tr>
		<tbody>
			<tr>
				<td>Market_id</td>
				<td>${mb.market_id }</td>
			</tr>
			<tr>
				<td>매장주인 email</td>
				<td>${mb.email }</td>
			</tr>
			<tr>
				<td>매장 이름</td>
				<td>${mb.market_name }</td>
			</tr>
			<tr>
				<td>매장 설명</td>
				<td>${mb.description }</td>
			</tr>
			<tr>
				<td>매장 사진</td>
				<td></td>
			</tr>
			<tr>
				<td>매장 주소</td>
				<td>${mb.address }</td>
			</tr>
			<tr>
				<td>매장에서 지원하는 펫</td>
				<td>${mb.pet_dog }, ${mb.pet_cat }, ${mb.pet_etc }</td>
			</tr>
			<tr>
				<td>매장 종류</td>
				<td>${mb.cl_market }, ${mb.cl_beauty }, ${mb.cl_hotel }, ${mb.cl_hospital }</td>
			</tr>
			<tr>
				<td>매장 서비스</td>
				<td>${mb.ser_buypet }, ${mb.ser_buystuff }, ${mb.ser_hair }, ${mb.ser_bath }, 
					${mb.ser_rent }, ${mb.ser_lodge }, ${mb.ser_doctor }, ${mb.ser_surgery }</td>
			</tr>
		</tbody>
	</table>
	<div id="button">
		<button class="ui primary basic button" type="button"
			onclick="upInfo('${mb.market_id }','${mb.market_name }','${mb.description }','${mb.photos }','${mb.address }',
			${mb.pet_dog },${mb.pet_cat },${mb.pet_etc },${mb.cl_market }, ${mb.cl_beauty }, ${mb.cl_hotel }, ${mb.cl_hospital },
			${mb.ser_buypet }, ${mb.ser_buystuff }, ${mb.ser_hair }, ${mb.ser_bath }, 
			${mb.ser_rent }, ${mb.ser_lodge }, ${mb.ser_doctor }, ${mb.ser_surgery })">수정하기</button>
	</div>
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">매장정보 수정</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">매장정보 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post" action="mymenu_shop_info_modi.do">
						마켓id<input type="text" name="market_id" id="market_id"	readonly="readonly" /> <br> 
						매장 이름<input type="text" name="market_name" id="market_name" maxlength="20" /> <br>
						매장 설명 <input type="text" name="description" id="description" maxlength="20" /> <br> 
						매장 사진 <input type="text" name="photos" id="photos" maxlength="20" /> <br>
						매장 주소 <input type="text" name="address" id="address" maxlength="20" />	<br> 
						애완동물 종류  <br> 
						매장 종류  <br> 
						매장 서비스 <br>
					</form>
				</div>
				<p>수정 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button"
				onclick="update_Info();">
				수정 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>