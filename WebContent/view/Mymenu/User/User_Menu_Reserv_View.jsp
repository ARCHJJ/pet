<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>예약정보 확인</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/mymenu/user.js"></script>

</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
				<td>예약번호</td>
				<td>매장번호</td>
				<td>서비스</td>
				<td>동물</td>
				<td>예약시간</td>
				<td>날짜</td>
				<td>CCTV</td>
				<td>비고</td>
			</tr>
			<c:forEach items="${rblist}" var="item">
				<tbody>
					<tr>
						<td>${item.rev_idx }</td>
						<td>${item.market_id }</td>
						<td>${item.service }</td>
						<td>${item.pets }</td>
						<td>${item.timeofrev }</td>
						<td>${item.date }</td>
						<td><form name="cctv_view">
								<input type="button" name="cctvView" value="CCTV 확인"
									onClick="location.href='User_Menu_Monitor_View.do'">
							</form></td>
						<td><button class="ui violet basic button"
								onClick="updateReserv('${item.rev_idx}', '${item.member_email }', '${item.market_id }', '${item.service }', '${item.pets }', '${item.timeofrev }', '${item.date }', '${item.cctvid }')">예약수정</button>
							<br>
							<button class="ui red basic button"
								onClick="delReserv(${item.rev_idx });">예약취소</button></td>
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
						예약번호<input type="text" name="rev_idx" id="rev_idx" readonly="readonly"/>
						<br>
						고객<input type="text" name="member_email" id="member_email" readonly="readonly"/>
						<br>
						매장번호 <input type="text" name="market_id" id="market_id" maxlength="20" readonly="readonly"/>
						<br>
						서비스 <input type="text" name="service" id="service" maxlength="20" />
						<br>
						동물 <input type="text" name="pets" id="pets" maxlength="20" />
						<br>
						예약시간 <input type="text" name="timeofrev" id="timeofrev" maxlength="20" />
						<br>
						CCTV <input type="text" name="cctvid" id="cctvid" maxlength="20" />
						<br>
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