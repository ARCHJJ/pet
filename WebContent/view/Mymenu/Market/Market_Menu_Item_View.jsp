<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 상품 목록</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/market.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/market_mymenu/item.js"></script>
</head>
<body>
	<table class="ui compact celled definition table">
		<thead class="full-width">
			<tr>
				<th>상품 번호</th>
				<th>마켓 번호</th>
				<th>상품 이름</th>
				<th>상품 설명</th>
				<th>상품 사진</th>
				<th>상품 가격</th>
				<th>상품 수정</th>
				<th>상품 삭제</th>
			</tr>
		</thead>
		<tbody>
			<div class="grouped fields">
				<c:forEach items="${itemlist}" var="itemlist">
					<tr>
						<td>${itemlist.idx }</td>
						<td>${itemlist.market_id }</td>
						<td>${itemlist.name }</td>
						<td>${itemlist.description }</td>
						<td>${itemlist.photos }</td>
						<td>${itemlist.price }</td>
						<td><button class="ui small button"
								onclick="upInfo('${itemlist.idx }','${itemlist.market_id }','${itemlist.name }','${itemlist.description }','${itemlist.photos }','${itemlist.price }')">
								수정</button></td>
						<td><button class="ui small button"
								onclick="deleteItem('${itemlist.idx}');">삭제</button></td>
					</tr>
				</c:forEach>
			</div>
		</tbody>
		<tfoot class="full-width">
			<tr>
				<th></th>
				<th colspan="8">
					<div class="ui right floated small primary labeled icon button">
						<button class="ui primary button"
							onclick="addItem('${mb.market_id}');">상품 추가</button>
					</div>
				</th>
			</tr>
		</tfoot>
	</table>
	<div class="ui modal first" id="modal_insert">
		<i class="close icon"></i>
		<div class="header">상품 추가</div>
		<div class="image content">
			<div class="description">
				<div class="ui header">상품 추가</div>
				<div class="ui input focus">
					<form name="insert_form" method="post"
						action="mymenu_shop_item_insert.do">
						마켓 번호<input type="text" name="market_id" id="market_id"
							readonly="readonly" /> <br> 상품 이름<input type="text"
							name="name" id="name" maxlength="20" /> <br> 상품 설명 <input
							type="text" name="description" id="description" maxlength="20" />
						<br> 상품 사진 <input type="text" name="photos" id="photos"
							maxlength="20" /> <br> 상품 가격 <input type="text"
							name="price" id="price" maxlength="20" />
					</form>
				</div>
				<p>추가 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button"
				onclick="add_item();">
				추가 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">상품 정보 수정</div>
		<div class="image content">
			<div class="description">
				<div class="ui header">상품 정보 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"
						action="mymenu_shop_item_modi.do">
						상품 번호<input type="text" name="idx" id="idx" readonly="readonly" />
						<br> 마켓 번호<input type="text" name="market_id" id="market_id"
							readonly="readonly" /> <br> 상품 이름<input type="text"
							name="name" id="name" maxlength="20" /> <br> 상품 설명 <input
							type="text" name="description" id="description" maxlength="20" />
						<br> 상품 사진 <input type="text" name="photos" id="photos"
							maxlength="20" /> <br> 상품 가격 <input type="text"
							name="price" id="price" maxlength="20" />
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