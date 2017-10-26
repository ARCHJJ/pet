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
			<form name="market_compare_form" method="post" action="market_compareAction.do">
				<c:forEach items="${mblist}" var="item">
					<tbody>
						<tr>
							<td>${item.photos }</td>
							<td><a href="#" onclick="view_market(${item.market_id })"
								style="color: 0099CC">${item.market_name }</a></td>
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
							<td><input type="checkbox" name="selectMarket"
								value="${item.market_id }"></td>
						</tr>
				</c:forEach>
			</form>
		</tbody>
	</table>
	<input type="submit" value="비교하기" onclick="compare_market()">
</body>
</html>