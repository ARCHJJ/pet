<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색</title>
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"	src="Semantic-UI-CSS-master/semantic.min.js"></script>
	
<script type="text/javascript" src="js/search/search.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<form name="search_form" method="post" action="searchAction.do"> 
	<!--
		<select name="combobox"> 
			<option value="1">매장</option> 
			<option value="2">물품, 서비스</option> 
		</select> 
	-->
		<table class="ui celled table">
			<tr>
				<th>검색어</th>
				<td colspan="8"><div class="ui input focus">
  						<input type="text" placeholder="Search word" name="word" id="word" style="margin-left: 15px" value="${word}" />
					</div>
					<button class="ui primary button" value="검색" onclick="searchaction()">검색</button>
				</td>
			</tr>
			<tr>
				<th>위치기반</th>
				<td colspan="8"><div class="ui input focus">
  						<input type="text" placeholder="주소 찾기 버튼이용" name="address" id="sample2_address" readonly="readonly" style="margin-left: 15px" value="${address }" />
					</div>
					<button type="button" class="ui primary button" onclick="sample2_execDaumPostcode()" value="주소찾기">주소 찾기</button>
				</td>
			</tr>
			<tr>
				<th rowspan="3">상세검색</th>
				<td><input type="checkbox" name="selectOption" value="0" onclick="searchaction()" <c:if test="${check == 1}">checked</c:if>>펫 샵</td>
				<td><input type="checkbox" name="selectOption" value="1" onclick="searchaction()" <c:if test="${check1 == 1}">checked</c:if>>미용</td>
				<td><input type="checkbox" name="selectOption" value="2" onclick="searchaction()" <c:if test="${check2 == 1}">checked</c:if>>호텔</td>
				<td><input type="checkbox" name="selectOption" value="3" onclick="searchaction()" <c:if test="${check3 == 1}">checked</c:if>>병원</td>
				<td colspan="4"></td>
			</tr>
					
			<tr>
				<td><input type="checkbox" name="selectOption" value="4" onclick="searchaction()" <c:if test="${check4 == 1}">checked</c:if>>펫 구매</td>
				<td><input type="checkbox" name="selectOption" value="5" onclick="searchaction()" <c:if test="${check5 == 1}">checked</c:if>>펫 물품</td>
				<td><input type="checkbox" name="selectOption" value="6" onclick="searchaction()" <c:if test="${check6 == 1}">checked</c:if>>털 손질</td>
				<td><input type="checkbox" name="selectOption" value="7" onclick="searchaction()" <c:if test="${check7 == 1}">checked</c:if>>애완 목욕</td>
				<td><input type="checkbox" name="selectOption" value="8" onclick="searchaction()" <c:if test="${check8 == 1}">checked</c:if>>애완호텔(단기)</td>	<!-- rent -->
				<td><input type="checkbox" name="selectOption" value="9" onclick="searchaction()" <c:if test="${check9 == 1}">checked</c:if>>애완호텔(장기)</td>	<!-- lodge -->
				<td><input type="checkbox" name="selectOption" value="10" onclick="searchaction()" <c:if test="${check10 == 1}">checked</c:if>>의사상담</td>
				<td><input type="checkbox" name="selectOption" value="11" onclick="searchaction()" <c:if test="${check11 == 1}">checked</c:if>>동물수술</td>
			</tr>
				
			<tr>
				<td><input type="checkbox" name="selectOption" value="12" onclick="searchaction()" <c:if test="${check12 == 1}">checked</c:if>>개</td>
				<td><input type="checkbox" name="selectOption" value="13" onclick="searchaction()" <c:if test="${check13 == 1}">checked</c:if>>고앙이</td>
				<td><input type="checkbox" name="selectOption" value="14" onclick="searchaction()" <c:if test="${check14 == 1}">checked</c:if>>기타</td>
				<td colspan="5"></td>
			</tr>
		</table>
	</form>
	<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
		<img src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
	</div>
	<table class="ui orange table">
		<thead class="markettr">
			<tr>
				<th style="width:7%;">사진</th>
				<th style="width:15%;">매장명</th>
				<th style="width:20%;">매장설명</th>
				<th style="width:11%;">전문 지원 동물</th>
				<th style="width:21%;">서비스</th>
				<th style="width:21%;">주소</th>
				<th style="width:5%;">비교</th>
			</tr>
		</thead>
		<form name="market_compare_form" method="post" action="market_compareAction.do">
			<c:forEach items="${mblist}" var="item">
				<tbody>
					<tr>
						<td>
						<c:set var="array" value="${fn:split(item.photos,',')}" />
						<c:forEach items="${array}" varStatus="s" var="s1">
							<c:if test="${(s.count==1)&&(s1 != null)}"> <c:set var="imgno1" value="${s1}" /> </c:if>
							<c:if test="${s.count==2}"> <c:set var="imgno2" value="${s1}" /> </c:if>
							<c:if test="${s.count==3}"> <c:set var="imgno3" value="${s1}" /> </c:if>								<c:if test="${s.count==4}"> <c:set var="imgno4" value="${s1}" /> </c:if>
							<c:if test="${s.count==5}"> <c:set var="imgno5" value="${s1}" /> </c:if>
						</c:forEach>
							<c:if test="${imgno1 != null}"> <img width="100" height="100" src="upload/${imgno1}" onclick="pop(this)"/> </c:if>
						</td>
						<td><a href="#" onclick="view_market(${item.market_id })" style="color: 0099CC">${item.market_name }</a></td>
						<td>${item.description }</td>
						<td>
							<c:if test="${item.pet_dog == 1}">개 </c:if>
							<c:if test="${item.pet_cat == 1}">고양이 </c:if>
							<c:if test="${item.pet_etc == 1}">기타 </c:if>							</td>
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
				</tbody>
			</c:forEach>
		</form>
	</table>
	<button class="ui active button" value="비교하기" onclick="compare_market()">
  		<i class="check icon"></i>
  			선택 매장 비교하기
	</button>
	<table class="ui orange table">
		<thead class="markettr">
			<tr>
				<th style="width:15%;">판매처</th>
				<th style="width:7%;">사진</th>
				<th style="width:20%;">물품, 서비스명</th>
				<th style="width:10%;">가격</th>
				<th style="width:48%;">설명</th>
			</tr>
		</thead>
		<c:forEach items="${mslist}" var="item">
			<tbody>
				<tr>
					<td><a href="#" onclick="view_market(${item.market_id })" style="color: 0099CC">${item.market_name }</a></td>
					<td>${item.item_photos }</td>
					<td>${item.service_name }</td>
					<td>${item.price }</td>
					<td>${item.service_description }</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
	
</body>
</html>