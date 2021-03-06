<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/market.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>

<script type="text/javascript" src="js/admin/market.js"></script>
</head>
<body>
	<div align="center">
		<table>
			<tr>
				<th>마켓id</td>
				<th>마켓 이름</td>
				<th>마켓 종류</td>
				<th>애완동물 종류</td>
				<th>서비스 종류</td>
				<th>수정</td>
				<th>삭제</td>
			</tr>
			<c:forEach items="${marketlist}" var="item">
				<tr>
					<td>${item.market_id }</td>
					<td>${item.market_name }</td>
					<td><c:if test="${item.cl_hospital == 1}">병원 </c:if> <c:if
						test="${item.cl_market == 1}">상점 </c:if> <c:if
						test="${item.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${item.cl_hotel == 1}">호텔 </c:if></td>
					<td><c:if test="${item.pet_dog == 1}">개 </c:if> <c:if
						test="${item.pet_cat == 1}">고양이 </c:if> <c:if
						test="${item.pet_etc == 1}">기타 </c:if></td>
					<td><c:if test="${item.ser_doctor == 1}">의사상담 </c:if>
							<c:if test="${item.ser_surgery == 1}">수술 </c:if>
							<c:if test="${item.ser_lodge == 1}">애완호텔(장기) </c:if>
							<c:if test="${item.ser_buypet == 1}">펫분양 </c:if>
							<c:if test="${item.ser_buystuff == 1}">펫용품 </c:if>
							<c:if test="${item.ser_hair == 1}">털손질 </c:if>
							<c:if test="${item.ser_bath == 1}">목욕 </c:if>
							<c:if test="${item.ser_rent == 1}">애완호텔(단기) </c:if></td>
			<!-- 
					<td><button class="ui button" onclick="update_pro(${item.market_id },'${item.email }','${item.market_name }','${item.description }','${item.photos }','${item.address }',
							${item.pet_dog },${item.pet_cat },${item.pet_etc },${item.cl_market }, ${item.cl_beauty }, ${item.cl_hotel }, ${item.cl_hospital },
							${item.ser_buypet }, ${item.ser_buystuff }, ${item.ser_hair }, ${item.ser_bath }, ${item.ser_rent }, ${item.ser_lodge }, ${item.ser_doctor }, ${item.ser_surgery })">수정</button></td>
			-->
					<td><button class="ui button" onclick="update_pro(${item.market_id });">수정</button></td>
					<td><button class="ui button" onclick="delete_pro(${item.market_id });">삭제</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div class="ui modal first" id="modal_insert">
		<i class="close icon"></i>
		<div class="header">멤버 정보 추가</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">멤버 정보 추가</div>
				<div class="ui input focus">
					<form name="register_form" method="post">
						<input type="hidden" name="idx" id="idx"/>
						이메일 <input type="text" name="pro_name" id="pro_name2" maxlength="20" onfocus="javascript:changeBorder('pro_name')" />
						<br>
						패스워드 <input type="text" name="pro_email" id="pro_email2" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
					</form>
				</div>
				<p>추가 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="insert_pro_register();">
				추가 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
	
	
	<!-- 
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">정보 수정</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">정보 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"  action="marketModify.do">
						마켓id<input type="text" name="market_id" id="market_id" readonly="readonly"/>
						<br>
						관리자메일 <input type="text" name="email" id="email" maxlength="20" onfocus="javascript:changeBorder('pro_name')" />
						<br>
						이름 <input type="text" name="market_name" id="market_name" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						설명 <input type="text" name="description" id="description" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						사진 <input type="text" name="photos" id="photos" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						주소 <input type="text" name="address" id="address" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						펫종류
						<input type="checkbox" name="selectOption" value="12" <c:if test="${('pet_dog') == '1' }">checked</c:if>>개
						<input type="checkbox" name="selectOption" value="13" <c:if test="${('pet_cat') == '1' }">checked</c:if>>고앙이
						<input type="checkbox" name="selectOption" value="14" <c:if test="${('pet_etc') == '1' }">checked</c:if>>기타
						<br>
						마켓 종류 
						<input type="checkbox" name="selectOption" value="0" <c:if test="${('cl_market') == '1' }">checked</c:if>>펫 샵
						<input type="checkbox" name="selectOption" value="1" <c:if test="${('cl_beauty') == '1' }">checked</c:if>>미용
						<input type="checkbox" name="selectOption" value="2" <c:if test="${('cl_hotel') == '1' }">checked</c:if>>호텔
						<input type="checkbox" name="selectOption" value="3" <c:if test="${('cl_hospital') == '1' }">checked</c:if>>병원
						<br>
						서비스종류
						<input type="checkbox" name="selectOption" value="4" <c:if test="${('ser_buypet') == '1' }">checked</c:if>>펫 구매
						<input type="checkbox" name="selectOption" value="5" <c:if test="${('ser_buystuff') == '1' }">checked</c:if>>펫 물품
						<input type="checkbox" name="selectOption" value="6" <c:if test="${('ser_hair') == '1' }">checked</c:if>>털 손질
						<input type="checkbox" name="selectOption" value="7" <c:if test="${('ser_bath') == '1' }">checked</c:if>>애완 목욕
						<input type="checkbox" name="selectOption" value="8" <c:if test="${('ser_rent') == '1' }">checked</c:if>>애완호텔(단기이용)	
						<input type="checkbox" name="selectOption" value="9" <c:if test="${('ser_lodge') == '1' }">checked</c:if>>애완호텔(장기이용)	
						<input type="checkbox" name="selectOption" value="10" <c:if test="${('ser_doctor') == '1' }">checked</c:if>>의사상담
						<input type="checkbox" name="selectOption" value="11" <c:if test="${('ser_surgery') == '1' }">checked</c:if>>동물수술
					</form>
				</div>
				<p>수정 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="update_pro_register();">
				수정 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
	 -->
</body>
</html>
