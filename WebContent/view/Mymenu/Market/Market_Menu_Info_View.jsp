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
</head>
<body>

	매장 상세정보
	<div class="ui list">
		<div class="item">Market_id : ${mb.market_id }</div>
		<div class="item">${mb.email }</div>
		<div class="item">${mb.market_name }</div>
		<div class="item">${mb.description }</div>
		<div class="item">${mb.photos }</div>
		<div class="item">${mb.pets }</div>
		<div class="item">${mb.address }</div>
		<div class="item">${mb.classes }</div>
		<div class="item">${mb.service }</div>
	</div>
	<div id="button">
		<button class="ui primary basic button" type="button" onclick="upInfo('${mb.market_id }','${mb.market_name }','${mb.description }','${mb.photos }','${mb.pets }','${mb.address }','${mb.classes }','${mb.service }')">수정하기</button>
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
					<form name="modify_form" method="post"  action="mymenu_shop_info_modi.do">
						마켓id<input type="text" name="market_id" id="market_id" readonly="readonly"/>
						<br>
						매장이름<input type="text" name="market_name" id="market_name" maxlength="20"/>
						<br>
						설명 <input type="text" name="description" id="description" maxlength="20" />
						<br>
						사진 <input type="text" name="photos" id="photos" maxlength="20" />
						<br>
						애완동물 종류 <input type="text" name="pets" id="pets" maxlength="20" />
						<br>
						주소 <input type="text" name="address" id="address" maxlength="20" />
						<br>
						방 수 <input type="text" name="classes" id="classes" maxlength="20" />
						<br>
						서비스종류 <input type="text" name="service" id="service" maxlength="20" />
						<br>
					</form>
				</div>
				<p>수정 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="update_Info();">
				수정 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>