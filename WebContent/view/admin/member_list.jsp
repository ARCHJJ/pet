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
<script type="text/javascript" src="js/admin/member.js"></script>
</head>
<body>
	<div align="center">
		<!--
		<div id="addpro" class="ui positive right labeled icon button" onclick="insert_req();">멤버 추가하기</div>
		-->
		<table>
			<tr>
				<th>이메일</th>
				<th>이름</th>
				<th>주소</th>
				<th>전화</th>
				<th>성별</th>
				<th>권한</th>
				<th>수정</th>
				<th>삭제</th>
				<th id="a">마켓 할당</th>
			</tr>
			<c:forEach items="${memberlist}" var="item">
				<tr>
					<td>${item.email }</td>
					<td>${item.name }</td>
					<td>${item.address1 } ${item.address2 }</td>
					<td>${item.phone }</td>
					<td>${item.gender }</td>
					<td>${item.power }</td>
					<td><button class="ui button" onclick="update_pro('${item.email}', '${item.name}', '${item.address1}', '${item.address2}', '${item.phone}', '${ item.gender}', ${item.power});">수정</button></td>
					<td><button class="ui button" onclick="delete_pro('${item.email}');">삭제</button></td>
					<td><button class="ui button" onclick="insert_market('${item.email}'); " >마켓 할당</button></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<div class="ui modal first" id="modal_insert">
		<i class="close icon"></i>
		<div class="header">멤버 정보 추가</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">멤버 정보 추가</div>
				<div class="ui input focus">
					<form name="register_form" method="post">
						<input type="hidden" name="idx" id="idx"/>
						이메일 <input type="text" name="pro_name" id="pro_name2" maxlength="25" onfocus="javascript:changeBorder('pro_name')" />
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
		<div class="header">정보 수정</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">정보 수정</div>
				<div class="ui input focus">
					<form name="modify_form" method="post"  action="memberModify.do">
						이메일<input type="text" name="email" id="email" maxlength="25" readonly="readonly"/>
						<br>
						패스워드 <input type="text" name="password" id="password" maxlength="12" onfocus="javascript:changeBorder('pro_name')" />
						<br>
						이름 <input type="text" name="name" id="name" maxlength="14" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						주소1 <input type="text" name="address1" id="address1" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						주소2 <input type="text" name="address2" id="address2" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						전화 <input type="text" name="phone" id="phone" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						성별 <input type="text" name="gender" id="gender" maxlength="20" onfocus="javascript:changeBorder('pro_email')" />
						<br>
						권한 <input type="text" name="power" id="power" maxlength="10" onfocus="javascript:changeBorder('pro_email')" />
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
