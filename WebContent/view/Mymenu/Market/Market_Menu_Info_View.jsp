<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장정보</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/market_mymenu/market.js"></script>
<script type="text/javascript" src="js/market_mymenu/image.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
			</tr>
		<tbody>
			<tr>
				<td>매장번호</td>
				<td>${mb.market_id }</td>
			</tr>
			<tr>
				<td>매장 email</td>
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
				<td>
					<!--<c:set var="array" value="${fn:split(mb.photos,',')}" /> -->
					<c:forTokens items="${mb.photos }" delims="," var="name">
						<img src="upload/${name }" width="200" height="200">
					</c:forTokens>
				</td>
			</tr>
			<tr>
				<td>매장 주소</td>
				<td>${mb.address }</td>
			</tr>
			<tr>
				<td>전문 지원 동물</td>
				<td><c:if test="${mb.pet_dog == 1}">개 </c:if> <c:if
						test="${mb.pet_cat == 1}">고양이 </c:if> <c:if
						test="${mb.pet_etc == 1}">기타 </c:if></td>
			</tr>
			<tr>
				<td>매장 종류</td>
				<td><c:if test="${mb.cl_hospital == 1}">병원 </c:if> <c:if
						test="${mb.cl_market == 1}">상점 </c:if> <c:if
						test="${mb.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${mb.cl_hotel == 1}">호텔 </c:if></td>
			</tr>
			<tr>
				<td>매장 서비스</td>
				<td><c:if test="${mb.ser_doctor == 1}">의사상담 </c:if> <c:if
						test="${mb.ser_surgery == 1}">수술 </c:if> <c:if
						test="${mb.ser_lodge == 1}">애완호텔(장기) </c:if> <c:if
						test="${mb.ser_buypet == 1}">펫분양 </c:if> <c:if
						test="${mb.ser_buystuff == 1}">펫용품 </c:if> <c:if
						test="${mb.ser_hair == 1}">털손질 </c:if> <c:if
						test="${mb.ser_bath == 1}">목욕 </c:if> <c:if
						test="${mb.ser_rent == 1}">애완호텔(단기) </c:if></td>
			</tr>
		</tbody>
	</table>
	<div id="button">
		<button class="ui primary basic button" type="button"
			onclick="upInfo('${mb.market_id }', '${mb.market_name }', '${mb.description }', '${mb.photos }', '${mb.address }', ${mb.pet_dog }, ${mb.pet_cat }, ${mb.pet_etc }, ${mb.cl_market }, ${mb.cl_beauty }, ${mb.cl_hotel }, ${mb.cl_hospital }, ${mb.ser_buypet }, ${mb.ser_buystuff }, ${mb.ser_hair }, ${mb.ser_bath }, ${mb.ser_rent }, ${mb.ser_lodge }, ${mb.ser_doctor }, ${mb.ser_surgery })">수정하기</button>
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
					<form name="modify_form" method="post"
						action="mymenu_shop_info_modi.do" enctype="multipart/form-data">
						<table>
							<tr>
								<td>매장번호</td>
								<td><input type="text" name="market_id" id="market_id" readonly="readonly" /></td>
							</tr>
							<tr>
								<td>매장 이름</td>
								<td><input type="text" name="market_name" id="market_name" maxlength="20" /></td>
							</tr>
							<tr>
								<td>매장 설명</td>
								<td><input type="text" name="description" id="description" maxlength="20" /></td>
							</tr>
							<tr>
								<td>매장 사진</td>
								<td>
									<input type="file" name="uploadFile[0]" id="uploadFile1" accept=".jpg, .jpeg, .png"> 
									<input type="file" name="uploadFile[1]" id="uploadFile2" accept=".jpg, .jpeg, .png"> 
									<input type="file" name="uploadFile[2]" id="uploadFile3" accept=".jpg, .jpeg, .png"> 
									<input type="file" name="uploadFile[3]" id="uploadFile4" accept=".jpg, .jpeg, .png"> 
									<input type="file" name="uploadFile[4]" id="uploadFile5" accept=".jpg, .jpeg, .png">
								</td>
							<tr>
								<td>매장 주소</td>
								<td><input type="text" name="address" id="address" maxlength="40" /> <input type="button" onclick="sample4_execDaumPostcode()" value="주소 검색"></td>
							</tr>
							<tr>
								<td>매장 종류</td>
								<td>
									<input type="checkbox" name="selectOption" value="0" <c:if test="${mb.cl_market == 1}">checked</c:if>>펫 샵
									<input type="checkbox" name="selectOption" value="1" <c:if test="${mb.cl_beauty == 1}">checked</c:if>>미용 
									<input type="checkbox" name="selectOption" value="2" <c:if test="${mb.cl_hotel == 1}">checked</c:if>>호텔 
									<input type="checkbox" name="selectOption" value="3" <c:if test="${mb.cl_hospital == 1}">checked</c:if>>병원
								</td>
							</tr>
							<tr>
								<td>서비스</td>
								<td>
									<input type="checkbox" name="selectOption" value="4" <c:if test="${mb.ser_buypet == 1}">checked</c:if>>펫 구매
									<input type="checkbox" name="selectOption" value="5" <c:if test="${mb.ser_buystuff == 1}">checked</c:if>>펫 물품
									<input type="checkbox" name="selectOption" value="6" <c:if test="${mb.ser_hair == 1}">checked</c:if>>털 손질 
									<input type="checkbox" name="selectOption" value="7" <c:if test="${mb.ser_bath == 1}">checked</c:if>>애완 목욕 
									<input type="checkbox" name="selectOption" value="8" <c:if test="${mb.ser_rent == 1}">checked</c:if>>애완호텔(단기이용) <!-- rent --> 
									<input type="checkbox" name="selectOption" value="9" <c:if test="${mb.ser_lodge == 1}">checked</c:if>>애완호텔(장기이용) <!-- lodge --> 
									<input type="checkbox" name="selectOption" value="10" <c:if test="${mb.ser_doctor == 1}">checked</c:if>>의사상담
									<input type="checkbox" name="selectOption" value="11" <c:if test="${mb.ser_surgery == 1}">checked</c:if>>동물수술
								</td>
							</tr>
							<tr>
								<td>주 동물</td>
								<td>
									<input type="checkbox" name="selectOption" value="12" <c:if test="${mb.pet_dog == 1}">checked</c:if>>개 
									<input type="checkbox" name="selectOption" value="13" <c:if test="${mb.pet_cat == 1}">checked</c:if>>고앙이
									<input type="checkbox" name="selectOption" value="14" <c:if test="${mb.pet_etc == 1}">checked</c:if>>기타
								</td>
							</tr>
						</table>
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