<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>선택 매장 페이지</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/search/search.js"></script>
<script type="text/javascript" src="js/reservation/reservation.js"></script>

</head>
<body>
	<form name="reserv_go_form" method="post" action="Reservation.do">
		<button class="ui positive basic button" onclick="reserv()" id="market_id" name="market_id" value="${mb.market_id }">예약하기</button>
	</form>
	<table class="ui orange table">
		<tbody class="market_info">
			<tr>
				<th>매장 사진</th>
				<td>
					<c:forTokens items="${mb.photos }" delims="," var="name">
						<img src="upload/${name }" width="200" height="200">
					</c:forTokens>
				</td>
			</tr>
			<tr>
				<th>매장 email</th>
				<td>${mb.email }</td>
			</tr>
			<tr>
				<th>매장 이름</th>
				<td>${mb.market_name }</td>
			</tr>
			<tr>
				<th>매장 설명</th>
				<td>${mb.description }</td>
			</tr>
			<tr>
				<th>전문 지원 동물</th>
				<td><c:if test="${mb.pet_dog == 1}">개 </c:if> <c:if
						test="${mb.pet_cat == 1}">고양이 </c:if> <c:if
						test="${mb.pet_etc == 1}">기타 </c:if></td>
			</tr>
			<tr>
				<th>매장 주소</th>
				<td>${mb.address }</td>
			</tr>
			<tr>
				<th>업종</th>
				<td><c:if test="${mb.cl_hospital == 1}">병원 </c:if> <c:if
						test="${mb.cl_market == 1}">상점 </c:if> <c:if
						test="${mb.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${mb.cl_hotel == 1}">호텔 </c:if>
				</td>
			</tr>
			<tr>
				<th>매장 서비스</th>
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
	<form name="comment_form" method="post">
		<table class="ui orange table" id="marketsearch_info">
			<thead>
				<tr>
					<th>댓글작성</th>
					<td colspan="2"><textarea name="content" id="content" rows="3" cols="100"></textarea></td>
					<td colspan="2"><button class="ui secondary basic button" onclick="insert_comment();" id="insert_btn">댓글 작성</button></td>
				</tr>
				<tr>
					<th>작성자</th>
					<th class="marketsearch_a">내용</th>
					<th class="marketsearch_b">작성일</th>
					<th class="marketsearch_c">수정</th>
					<th class="marketsearch_c">삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${mflist}" var="item">
					<tr>
						<td>${item.email }</td>
						<td>${item.content }</td>
						<td>${item.date }</td>
						<td><a id="update_btn" onclick="modal1(${item.idx }, '${item.email }')">수정</a></td>
						<td><a id="delete_btn" onclick="modal2(${item.idx }, '${item.email }')">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="hidden" name="market_id" value="${mb.market_id }">
	</form>
	

	<div class="ui modal" id="comment_update">
		<i class="close icon"></i>
		<div class="header">코멘트 수정</div>
		<div class="content">
			<div class="description">
				<textarea name="content_update" id="content_update"></textarea>
			</div>
		</div>
		<div class="actions">
			<div class="ui deny button">Cancel</div>
			<div class="ui button" onclick="update_comment();">OK</div>
		</div>
	</div>

	<div class="ui tiny modal" id="comment_delete">
		<i class="close icon"></i>
		<div class="header">코멘트 삭제</div>
		<div class="content">
			<p>삭제하시겠습니까?</p>
		</div>
		<div class="actions">
			<div class="ui negative button">No</div>
			<div class="ui positive right labeled icon button" onclick="delete_comment();">
				Yes <i class="checkmark icon" ></i>
			</div>
		</div>
	</div>
</body>
</html>