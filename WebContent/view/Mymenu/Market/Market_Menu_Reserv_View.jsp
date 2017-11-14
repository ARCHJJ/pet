<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>마켓 예약 현황</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/market.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/market_mymenu/reserv.js"></script>
</head>
<body>
	<table class="ui compact celled definition table">
		<thead class="full-width">
			<tr>
				<td>예약번호</td>
				<td>고객 이메일</td>
				<td>물품/서비스</td>
				<td>동물</td>
				<td>예약시간</td>
				<td>접수시간</td>
				<td>CCTV</td>
				<td>비고</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${rblist}" var="item">
				<tr>
					<td>${item.rev_idx }</td>
					<td>${item.member_email }</td>
					<td>${item.item_name }</td>
					<td>${item.reservation_pets }</td>
					<td>${item.timeofrev }</td>
					<td>${item.date }</td>
					<td>${item.cctvid }</td>
					<td>
						<button class="ui small button" onclick="updateReserv('${item.rev_idx}', '${item.member_email }', '${item.market_name }', '${item.item_name }', '${item.reservation_pets }', '${item.timeofrev }', '${item.date }', '${item.cctvid }')">수정</button>
						<button class="ui small button" onclick="delReserv('${item.rev_idx}');">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">예약정보 수정</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">예약정보 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"  action="mymenu_shop_reserv_modi.do">
						<table>
							<tr>
								<td>예약번호</td>
								<td><input type="text" name="rev_idx" id="rev_idx" readonly="readonly"/></td>
							</tr>
							<tr>
								<td>고객이름</td>	
							 	<td><input type="text" name="member_email" id="member_email" maxlength="20" onfocus="javascript:changeBorder('pro_name')" readonly="readonly"/></td>
							</tr>
							<tr>
								<td>마켓 이름</td>
								<td><input type="text" name="market_name" id="market_name" maxlength="20" onfocus="javascript:changeBorder('pro_email')" readonly="readonly"/></td>
							</tr>
							<tr>
								<td>예약서비스/물품</td>
								<td><input type="text" name="reservation_service" id="reservation_service" maxlength="20" onfocus="javascript:changeBorder('pro_email')"  readonly="readonly"/></td>
							</tr>
							<tr>
								<td>동물종류</td>
								<td><input type="text" name="reservation_pets" id="reservation_pets" maxlength="20" onfocus="javascript:changeBorder('pro_email')" /></td>
							</tr>
							<tr>
								<td>예약희망시간</td>
								<td><input type="text" name="timeofrev" id="timeofrev" maxlength="20" onfocus="javascript:changeBorder('pro_email')" readonly="readonly"/></td>
							</tr>
							<tr>
								<td>예약접수날짜</td>
								<td><input type="text" name="date" id="date" maxlength="20" onfocus="javascript:changeBorder('pro_email')" readonly="readonly"/></td>
							</tr>
							<tr>
								<td>CCTV</td>
								<td><input type="text" name="cctvid" id="cctvid" maxlength="20" onfocus="javascript:changeBorder('pro_email')"/></td>
							</tr>
						</table>
					</form>
				</div>
				<p>수정 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="update_Reserv();">
				수정 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>