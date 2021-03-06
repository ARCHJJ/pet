<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/search/search.js"></script>
</head>
<body>
	<table class="ui orange table">
		<tbody id="compare_market">
			<tr>
				<th class="marketcompare_a">매장 email</th>
				<td class="marketcompare_b">${mb1.email }</td>
				<td class="marketcompare_b">${mb2.email }</td>
				<td class="marketcompare_b">${mb3.email }</td>
			</tr>
			<tr>
				<th>매장 이름</th>
				<td><a href="#" onclick="view_market(${mb1.market_id })" style="color: 0099CC">${mb1.market_name }</a></td>
				<td><a href="#" onclick="view_market(${mb2.market_id })" style="color: 0099CC">${mb2.market_name }</a></td>
				<td><a href="#" onclick="view_market(${mb3.market_id })" style="color: 0099CC">${mb3.market_name }</a></td>
			</tr>
			<tr>
				<th>매장 설명</th>
				<td>${mb1.description }</td>
				<td>${mb2.description }</td>
				<td>${mb3.description }</td>
			</tr>
			<tr>
				<th>매장 사진</th>
				<td>
						<c:set var="array" value="${fn:split(mb1.photos,',')}" />
						<c:forEach items="${array}" varStatus="s" var="s1">
							<c:if test="${(s.count==1)&&(s1 != null)}"> <c:set var="imgno1" value="${s1}" /> </c:if>
							<c:if test="${s.count==2}"> <c:set var="imgno2" value="${s1}" /> </c:if>
							<c:if test="${s.count==3}"> <c:set var="imgno3" value="${s1}" /> </c:if>								
							<c:if test="${s.count==4}"> <c:set var="imgno4" value="${s1}" /> </c:if>
							<c:if test="${s.count==5}"> <c:set var="imgno5" value="${s1}" /> </c:if>
						</c:forEach>
							<c:if test="${imgno1 != null}"> <img width="100" height="100" src="upload/${imgno1}" onclick="pop(this)"/> </c:if>
				</td>
				<td>
						<c:set var="array" value="${fn:split(mb2.photos,',')}" />
						<c:forEach items="${array}" varStatus="s" var="s1">
							<c:if test="${(s.count==1)&&(s1 != null)}"> <c:set var="imgno1" value="${s1}" /> </c:if>
							<c:if test="${s.count==2}"> <c:set var="imgno2" value="${s1}" /> </c:if>
							<c:if test="${s.count==3}"> <c:set var="imgno3" value="${s1}" /> </c:if>								
							<c:if test="${s.count==4}"> <c:set var="imgno4" value="${s1}" /> </c:if>
							<c:if test="${s.count==5}"> <c:set var="imgno5" value="${s1}" /> </c:if>
						</c:forEach>
							<c:if test="${imgno1 != null}"> <img width="100" height="100" src="upload/${imgno1}" onclick="pop(this)"/> </c:if>
						</td>
				<td>
						<c:set var="array" value="${fn:split(mb3.photos,',')}" />
						<c:forEach items="${array}" varStatus="s" var="s1">
							<c:if test="${(s.count==1)&&(s1 != null)}"> <c:set var="imgno1" value="${s1}" /> </c:if>
							<c:if test="${s.count==2}"> <c:set var="imgno2" value="${s1}" /> </c:if>
							<c:if test="${s.count==3}"> <c:set var="imgno3" value="${s1}" /> </c:if>								
							<c:if test="${s.count==4}"> <c:set var="imgno4" value="${s1}" /> </c:if>
							<c:if test="${s.count==5}"> <c:set var="imgno5" value="${s1}" /> </c:if>
						</c:forEach>
							<c:if test="${imgno1 != null}"> <img width="100" height="100" src="upload/${imgno1}" onclick="pop(this)"/> </c:if>
						</td>
			</tr>
			<tr>
				<th>전문 지원 동물</th>
				<td><c:if test="${mb1.pet_dog == 1}">개 </c:if> <c:if
						test="${mb1.pet_cat == 1}">고양이 </c:if> <c:if
						test="${mb1.pet_etc == 1}">기타 </c:if></td>
				<td><c:if test="${mb2.pet_dog == 1}">개 </c:if> <c:if
						test="${mb2.pet_cat == 1}">고양이 </c:if> <c:if
						test="${mb2.pet_etc == 1}">기타 </c:if></td>
				<td><c:if test="${mb3.pet_dog == 1}">개 </c:if> <c:if
						test="${mb3.pet_cat == 1}">고양이 </c:if> <c:if
						test="${mb3.pet_etc == 1}">기타 </c:if></td>
			</tr>
			<tr>
				<th>매장 주소</th>
				<td>${mb1.address }</td>
				<td>${mb2.address }</td>
				<td>${mb3.address }</td>
			</tr>
			<tr>
				<th>업종</th>
				<td><c:if test="${mb1.cl_hospital == 1}">병원 </c:if> <c:if
						test="${mb1.cl_market == 1}">상점 </c:if> <c:if
						test="${mb1.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${mb1.cl_hotel == 1}">호텔 </c:if></td>
				<td><c:if test="${mb2.cl_hospital == 1}">병원 </c:if> <c:if
						test="${mb2.cl_market == 1}">상점 </c:if> <c:if
						test="${mb2.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${mb2.cl_hotel == 1}">기타 </c:if></td>
				<td><c:if test="${mb3.cl_hospital == 1}">병원 </c:if> <c:if
						test="${mb3.cl_market == 1}">상점 </c:if> <c:if
						test="${mb3.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${mb3.cl_hotel == 1}">기타 </c:if></td>
			</tr>
			<tr>
				<th>매장 서비스</th>
				<td><c:if test="${mb1.ser_doctor == 1}">의사상담 </c:if>
					<c:if test="${mb1.ser_surgery == 1}">수술 </c:if>
					<c:if test="${mb1.ser_lodge == 1}">애완호텔(장기) </c:if>
					<c:if test="${mb1.ser_buypet == 1}">펫분양 </c:if>
					<c:if test="${mb1.ser_buystuff == 1}">펫용품 </c:if>
					<c:if test="${mb1.ser_hair == 1}">털손질 </c:if>
					<c:if test="${mb1.ser_bath == 1}">목욕 </c:if>
					<c:if test="${mb1.ser_rent == 1}">애완호텔(단기) </c:if>
				</td>
				<td><c:if test="${mb2.ser_doctor == 1}">의사상담 </c:if>
					<c:if test="${mb2.ser_surgery == 1}">수술 </c:if>
					<c:if test="${mb2.ser_lodge == 1}">애완호텔(장기) </c:if>
					<c:if test="${mb2.ser_buypet == 1}">펫분양 </c:if>
					<c:if test="${mb2.ser_buystuff == 1}">펫용품 </c:if>
					<c:if test="${mb2.ser_hair == 1}">털손질 </c:if>
					<c:if test="${mb2.ser_bath == 1}">목욕 </c:if>
					<c:if test="${mb2.ser_rent == 1}">애완호텔(단기) </c:if>
				</td>
				<td><c:if test="${mb3.ser_doctor == 1}">의사상담 </c:if>
					<c:if test="${mb3.ser_surgery == 1}">수술 </c:if>
					<c:if test="${mb3.ser_lodge == 1}">애완호텔(장기) </c:if>
					<c:if test="${mb3.ser_buypet == 1}">펫분양 </c:if>
					<c:if test="${mb3.ser_buystuff == 1}">펫용품 </c:if>
					<c:if test="${mb3.ser_hair == 1}">털손질 </c:if>
					<c:if test="${mb3.ser_bath == 1}">목욕 </c:if>
					<c:if test="${mb3.ser_rent == 1}">애완호텔(단기) </c:if>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>