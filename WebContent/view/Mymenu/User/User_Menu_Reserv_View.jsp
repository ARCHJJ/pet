<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약정보 확인</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/mymenu/reserv.js"></script>

</head>
<body>
	<table class="ui celled table" id="reserv_view">
			<tr>
				<th class="reservview_a">예약번호</th>
				<th class="reservview_b">매장명</th>
				<th class="reservview_c">서비스/물품</th>
				<th class="reservview_d">동물</th>
				<th class="reservview_e">예약시간</th>
				<th class="reservview_f">접수시간</th>
				<th class="reservview_g">동물모니터링</th>
				<th class="reservview_h">비고</th>
			</tr>
			<c:forEach items="${rblist}" var="item">
				<tbody>
					<tr>
						<td class="tr_center">${item.rev_idx }</td>
						<td>${item.market_name }</td>
						<td>${item.item_name }</td>
						<td>${item.reservation_pets }</td>
						<td class="tr_center">${item.timeofrev }</td>
						<td class="tr_center">${item.date }</td>
						<td class="tr_center">
							<c:if test="${item.cctvid != 0}">
								<form name="cctv_view">
									<input type="button" name="cctvView" value="동물 상태확인" onClick="location.href='User_Menu_Monitor_View.do'">
								</form>
							</c:if>
						</td>
						<td class="reservview_h_a"><button class="ui violet basic button" onClick="updateReserv('${item.rev_idx}', '${item.member_email }', '${item.market_name }', '${item.item_name }', '${item.reservation_pets }', '${item.timeofrev }', '${item.date }', '${item.cctvid }')">예약수정</button>
							<br>
							<button class="ui red basic button" onClick="delReserv(${item.rev_idx });">예약취소</button>
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
					<form name="modify_form" method="post"  action="User_Menu_Reserv_Modi.do">
						<table class="ui compact celled definition table">
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
								<td><input type="text" name="reservation_service" id="reservation_service" maxlength="20" onfocus="javascript:changeBorder('pro_email')" readonly="readonly"/></td>
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
								<td><input type="text" name="cctvid" id="cctvid" maxlength="20" onfocus="javascript:changeBorder('pro_email')" readonly="readonly"/></td>
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