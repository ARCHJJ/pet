<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 상세정보</title>
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
		<button class="ui primary basic button" id="Fixed">수정하기</button>
	</div>
</body>
</html>