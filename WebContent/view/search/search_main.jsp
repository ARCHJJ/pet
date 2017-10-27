<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/search/search.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/search/search.js"></script>

</head>
<body>
	<form name="search_form" method="post" action="searchAction.do"> 
		<select name="combobox"> 
			<option value="1">매장</option> 
			<option value="2">물품, 서비스</option> 
		</select> 
		<input type="text" name="word" id="word" value="${word}"/>
	</form> 
	<input type="submit" value="검색" onclick="searchaction()">
	<br><br>

	<form name="select_search_form" method="post" action="selectsearchAction.do">
		<table>
			<tr><td><input type="checkbox" name="selectOption" value="0" onclick="checkbox_submit()" <c:if test="${check == 1}">checked</c:if>>펫 샵</td>
				<td><input type="checkbox" name="selectOption" value="1" onclick="checkbox_submit()" <c:if test="${check1 == 1}">checked</c:if>>미용</td>
				<td><input type="checkbox" name="selectOption" value="2" onclick="checkbox_submit()" <c:if test="${check2 == 1}">checked</c:if>>호텔</td>
				<td><input type="checkbox" name="selectOption" value="3" onclick="checkbox_submit()" <c:if test="${check3 == 1}">checked</c:if>>병원</td></tr>
				
			<tr><td><input type="checkbox" name="selectOption" value="4" onclick="checkbox_submit()" <c:if test="${check4 == 1}">checked</c:if>>펫 구매</td>
				<td><input type="checkbox" name="selectOption" value="5" onclick="checkbox_submit()" <c:if test="${check5 == 1}">checked</c:if>>펫 물품</td>
				<td><input type="checkbox" name="selectOption" value="6" onclick="checkbox_submit()" <c:if test="${check6 == 1}">checked</c:if>>털 손질</td>
				<td><input type="checkbox" name="selectOption" value="7" onclick="checkbox_submit()" <c:if test="${check7 == 1}">checked</c:if>>애완 목욕</td>
				<td><input type="checkbox" name="selectOption" value="8" onclick="checkbox_submit()" <c:if test="${check8 == 1}">checked</c:if>>애완호텔(단기이용)</td>	<!-- rent -->
				<td><input type="checkbox" name="selectOption" value="9" onclick="checkbox_submit()" <c:if test="${check9 == 1}">checked</c:if>>애완호텔(장기이용)</td>	<!-- lodge -->
				<td><input type="checkbox" name="selectOption" value="10" onclick="checkbox_submit()" <c:if test="${check10 == 1}">checked</c:if>>의사상담</td>
				<td><input type="checkbox" name="selectOption" value="11" onclick="checkbox_submit()" <c:if test="${check11 == 1}">checked</c:if>>동물수술</td></tr>
			
			<tr><td><input type="checkbox" name="selectOption" value="12" onclick="checkbox_submit()" <c:if test="${check12 == 1}">checked</c:if>>개</td>
				<td><input type="checkbox" name="selectOption" value="13" onclick="checkbox_submit()" <c:if test="${check13 == 1}">checked</c:if>>고앙이</td>
				<td><input type="checkbox" name="selectOption" value="14" onclick="checkbox_submit()" <c:if test="${check14 == 1}">checked</c:if>>기타</td></tr>
		</table>
	</form>
	
	<table class="ui orange table">
		<thead>
			<tr>
				<td>사진</td>
				<td>매장명</td>
				<td>매장설명</td>
				<td>동물</td>
				<td>서비스, 물품</td>
				<td>주소</td>
				<td>비교</td>
			</tr>
			<form name="market_compare_form2" method="post" action="market_compareAction.do">
				<c:forEach items="${mblist}" var="item">
					<tbody>
						<tr>
							<td>${item.photos }</td>
							<td><a href="#" onclick="view_market(${item.market_id })" style="color: 0099CC">${item.market_name }</a></td>
							<td>${item.description }</td>
							<td>
								<c:if test="${item.pet_dog == 1}">개 </c:if>
								<c:if test="${item.pet_cat == 1}">고양이 </c:if>
								<c:if test="${item.pet_etc == 1}">기타 </c:if>
							</td>
							<td>
								<c:if test="${item.ser_doctor == 1}">의사상담 </c:if>
								<c:if test="${item.ser_surgery == 1}">수술 </c:if>
								<c:if test="${item.ser_lodge == 1}">애완호텔(장기) </c:if>
								<c:if test="${item.ser_buypet == 1}">펫분양 </c:if>
								<c:if test="${item.ser_buystuff == 1}">펫용품 </c:if>
								<c:if test="${item.ser_hair == 1}">털손질 </c:if>
								<c:if test="${item.ser_bath == 1}">목욕 </c:if>
								<c:if test="${item.ser_rent == 1}">애완호텔(단기) </c:if>
							</td>
							<td>${item.address }</td>
							<td><input type="checkbox" name="selectMarket" value="${item.market_id }"></td>
						</tr>
				</c:forEach>
			</form>
		</tbody>
	</table>
	<input type="submit" value="비교하기" onclick="compare_market2()">
	<table class="ui orange table">
		<thead>
			<tr>
				<td>판매처</td>
				<td>사진</td>
				<td>물품, 서비스명</td>
				<td>설명</td>
				<td>가격</td>
			</tr>
			<c:forEach items="${mslist}" var="item">
				<tbody>
					<tr>
						<td><a href="#" onclick="view_market(${item.market_id })" style="color: 0099CC">${item.market_name }</a></td>
						<td>${item.item_photos }</td>
						<td>${item.service_name }</td>
						<td>${item.service_description }</td>
						<td>${item.price }</td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>