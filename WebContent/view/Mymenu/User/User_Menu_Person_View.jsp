<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보 보기</title>
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/mymenu/user.js"></script>
</head>
<body>
	<table class="ui orange table">
		<tbody class="market_info">
			<tr>
				<th>ID (e-mail)</th>
				<td>${ub.email }</td>
			</tr>
			<tr>
				<th>이름</th>
				<td>${ub.name }</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${ub.address1 }&nbsp${ub.address2}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${ub.phone }</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>${ub.gender }</td>
			</tr>
		</tbody>
	</table>
	<br>
	<form name="User_button">
		<button class="ui violet basic button" type="button" onclick="upInfo('${ub.email}', '${ub.name }', '${ub.address1 }', '${ub.address2 }', '${ub.phone }', '${ub.gender }', '${ub.power }');">개인정보 수정</button>
		<button class="ui violet basic button" type="button" onclick="delInfo('${ub.email}');">회원탈퇴</button>
	</form>
	<div class="ui modal second" id="modal_update">
		<i class="close icon"></i>
		<div class="header">개인정보 수정</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">개인정보 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"  action="User_Menu_Person_Modi.do">
						<table class="ui compact celled definition table">
							<tr>
								<td>이메일</td>
								<td><input type="text" name="email" id="email" readonly="readonly"/></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="text" name="password" id="password" maxlength="20" /></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text" name="name" id="name" maxlength="20" /></td>
							</tr>
							<tr>
								<td>주소1</td>
								<td>
									<input type="text" name="address1" id="address1" value="${address1 }">
									<input type="button" onclick="sample4_execDaumPostcode()" value="주소 검색">
								</td>
							</tr>
							<tr>
								<td>주소2</td>
								<td><input type="text" name="address2" id="address2" maxlength="20" /></td>
							</tr>
							<tr>
								<td>전화</td>
								<td><input type="text" name="phone" id="phone" maxlength="20" /></td>
							</tr>
							<tr>
								<td>성별</td>
								<td><input type="text" name="gender" id="gender" maxlength="20" /></td>
							</tr>
						</table>
						<br>
					</form>
				</div>
				<p>수정 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="update_Info();">
				수정 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>