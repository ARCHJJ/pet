<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/search/search.css" />

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
		<thead>
		<tbody>
			<tr>
				<td>매장 사진</td>
				<td>${mb.photos }</td>
			</tr>
			<tr>
				<td>매장주인 email</td>
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
				<td>매장에서 지원하는 펫</td>
				<td><c:if test="${mb1.pet_dog == 1}">개 </c:if> <c:if
						test="${mb1.pet_cat == 1}">고양이 </c:if> <c:if
						test="${mb1.pet_etc == 1}">기타 </c:if></td>
			</tr>
			<tr>
				<td>매장 주소</td>
				<td>${mb.address }</td>
			</tr>
			<tr>
				<td>매장 종류</td>
				<td><c:if test="${mb1.cl_hospital == 1}">병원 </c:if> <c:if
						test="${mb1.cl_market == 1}">상점 </c:if> <c:if
						test="${mb1.cl_beauty == 1}">미용샵 </c:if> <c:if
						test="${mb1.cl_hotel == 1}">호텔 </c:if></td>
			</tr>
			<tr>
				<td>매장 서비스</td>
				<td><c:if test="${mb1.ser_doctor == 1}">의사상담 </c:if> <c:if
						test="${mb1.ser_surgery == 1}">수술 </c:if> <c:if
						test="${mb1.ser_lodge == 1}">애완호텔(장기) </c:if> <c:if
						test="${mb1.ser_buypet == 1}">펫분양 </c:if> <c:if
						test="${mb1.ser_buystuff == 1}">펫용품 </c:if> <c:if
						test="${mb1.ser_hair == 1}">털손질 </c:if> <c:if
						test="${mb1.ser_bath == 1}">목욕 </c:if> <c:if
						test="${mb1.ser_rent == 1}">애완호텔(단기) </c:if></td>
			</tr>
		</tbody>
	</table>
	<form name="comment_form" method="post">
		<table class="ui orange table">
			<thead>
				<tr>
					<td>댓글작성</td>
					<td><textarea name="content" id="content"></textarea></td>
					<td><button class="ui secondary basic button" onclick="insert_comment();" id="insert_btn">댓글 작성</button></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>후기 내용</td>
					<td>작성일</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${mflist}" var="item">
					<tr>
						<td>${item.email }</td>
						<td>${item.content }</td>
						<td>${item.date }</td>
						<td><a id="update_btn" onclick="modal1(${item.idx }, ${item.email })">수정</a></td>
						<td><a id="delete_btn" onclick="modal2(${item.idx }, ${item.email })">삭제</a></td>
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
			<div class="ui button">Cancel</div>
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