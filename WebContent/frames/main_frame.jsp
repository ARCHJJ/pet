<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title /></title>
<link rel="stylesheet" type="text/css" href="frames/main_frame.css" />
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="frames/main_frame.js"></script>
<!-- <script type="text/javascript" src="js/common.js"></script> -->
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<decorator:head />
</head>
<body onload="<decorator:getProperty property='body.onload'/>">
	<div id="wrapper">
		<div id="top">
			<div id="header">
				<div class="logo">
					<a href="main.do">메인</a>
				</div>
				<div id="menu">
					<ul id="nav">
						<li><a href="#">커뮤니티</a>
							<ul>
								<li><a href="board_notice.do">공지사항</a></li>
								<li><a href="board_customer_service.do">고객센터</a></li>
								<li><a href="board_kin.do">지식인</a></li>
								<li><a href="board_freeboard.do">자유게시판</a></li>
							</ul> 
						</li>
						<c:if test="${session.power eq 100}">
							<li><a href="#">마이메뉴</a>
								<ul>
									<li><a href="User_Menu_Reserv.do">예약정보</a></li>
									<li><a href="User_Menu_Write.do">게시글관리</a></li>
									<li><a href="User_Menu_Message.do">메시지확인</a></li>
									<li><a href="User_Menu_Person.do">개인정보</a></li>
								</ul>
							</li>
						</c:if>
						<c:if test="${session.power eq 200}">
							<li><a href="#">매장메뉴</a>
								<ul>
									<li><a href="mymenu_shop_item.do">물품관리</a></li>
									<li><a href="">모니터링</a></li>
									<li><a href="">예약현황관리</a></li>
									<li><a href="User_Menu_Message.do">메시지확인</a></li>
									<li><a href="mymenu_shop_info.do">매장정보수정</a></li>
								</ul>
							</li>
						</c:if> 
						 <!-- 관리자메뉴 --> 
						<c:if test="${session.power eq 300}">
							<li><a href="#">매장메뉴</a>
								<ul>
									<li><a href="marketmanage.do">매장관리</a></li>
									<li><a href="membermanage.do">회원관리</a></li>
									<li><a href="noticemanage.do">공지사항관리</a></li>
									<li><a href="csmanage.do">고객센터관리</a></li>
									<li><a href="reservemanage.do">예약현황관리</a></li>
								</ul>
							</li>
						</c:if>
					</ul>
				</div>

				<div id="login_info">
					<span class="auth"> <c:choose>
							<c:when test="${session.power eq 300}">[관리자]</c:when>
						</c:choose>
					</span>
					<c:choose>
						<c:when test="${session ne null }">
							<span>${session.name}님</span>
							<span> <a onclick="javascript:Logout()">[로그아웃]</a>
							</span>
						</c:when>
						<c:when test="${session eq null}">
							<div id="button">
								<button class="ui primary basic button" id="login">로그인
								</button>
								<button class="ui positive basic button" id="signup">
									회원가입</button>
							</div>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
		<div id="middle">
			<div id="container">
				<decorator:body />
			</div>
		</div>
		<div id="bottom">
			<div id="footer"></div>
		</div>
	</div>

	<div class="ui modal first">
		<i class="close icon"></i>
		<div class="header">로그인</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">로그인 폼</div>
				<div class="ui fluid input">
					<form name="login_form" method="post" action="login.do">
						아이디(이메일) : <input type="text" name="userid" /> <br>
						<br> 비밀번호 : <input type="text" name="password" /> <br>
						<br>
					</form>
				</div>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button"
				onclick="loginCheck();">
				로그인 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>