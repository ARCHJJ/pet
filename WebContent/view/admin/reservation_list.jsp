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
<link rel="stylesheet" type="text/css" href="css/admin/member.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/admin/reservation.js"></script>
</head>
<body>
	<div align="center">
		<div id="addpro" class="ui positive right labeled icon button" onclick="insert_req();">예약 추가하기</div>
		<table>
			<tr>
				<th>idx</th>
				<th>신청자email</th>
				<th>마켓id</th>
				<th>예약서비스</th>
				<th>동물종류</th>
				<th>이용시간</th>
				<th>예약한시각</th>
				<th>cctvid</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach items="${reservationlist}" var="item">
				<tr>
					<td>${item.rev_idx }</td>
					<td>${item.member_email }</td>
					<td>${item.market_id }</td>
					<td>${item.service }</td>
					<td>${item.pets }</td>
					<td>${item.timeofrev }</td>
					<td>${item.date }</td>
					<td>${item.cctvid }</td>
					<td><button class="ui button" onclick="update_pro('${item.rev_idx}', '${item.member_email}', '${item.market_id}', '${item.service}','${item.pets}', '${item.timeofrev}', '${item.date}', '${ item.cctvid}');">수정</button></td>
					<td><button class="ui button" onclick="delete_pro('${item.rev_idx}');">삭제</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div class="ui modal first" id="modal_insert">
		<i class="close icon"></i>
		<div class="header">예약 정보 추가</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">예약 정보 추가</div>
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
	
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">예약 수정</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">예약 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"  action="reserveModify.do">
						idx<input type="text" name="rev_idx" id="rev_idx" readonly="readonly"/>
						<br>
						신청자email <input type="text" name="member_email" id="member_email" maxlength="20" onfocus="javascript:changeBorder('pro_name')" />
						<br>
						마켓id <input type="text" name="market_id" id="market_id" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						예약서비스 <input type="text" name="service" id="service" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						동물종류 <input type="text" name="pets" id="pets" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						이용시간 <input type="text" name="timeofrev" id="timeofrev" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						예약한시각 <input type="text" name="date" id="date" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						cctvid <input type="text" name="cctvid" id="cctvid" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
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
</body>
</html>
