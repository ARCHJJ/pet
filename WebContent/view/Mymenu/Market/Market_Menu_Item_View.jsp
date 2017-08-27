<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 상품 목록</title>
</head>
<body>
	매장 상품 목록
	<div class="ui stackable six column grid">
		<div class="column">상품 번호</div>
		<div class="column">마켓 번호</div>
		<div class="column">상품 이름</div>
		<div class="column">상품 설명</div>
		<div class="column">상품 사진</div>
		<div class="column">상품 가격</div>
	</div>
	<div class="ui stackable six column grid">
		<div class="column">${ib.idx }</div>
		<div class="column">${ib.market_id }</div>
		<div class="column">${ib.name }</div>
		<div class="column">${ib.description }</div>
		<div class="column">${ib.photos }</div>
		<div class="column">${ib.price }</div>
	</div>
</body>
</html>