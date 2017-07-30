<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><decorator:title/></title>
<link rel="stylesheet" type="text/css" href="frames/main_frame.css"/>
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="frames/main_frame.js"></script>
<!-- <script type="text/javascript" src="js/common.js"></script> -->
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<decorator:head/>	
</head>
<body onload="<decorator:getProperty property='body.onload'/>">
	<div id="wrapper">
		<div id="top">
			<div id="header">
				<div class="logo">
					<a href="main.do"><button onclick="blur()"/>메인</a>
				</div>
				<div class="menu">
					<ul class="nav">
						<li><a href="">메뉴1</a></li>
						<li><a href="">메뉴2</a></li>
						<li><a href="">메뉴3</a></li>
						<!-- 관리자메뉴 -->
						<c:if test="${session.power eq 101}">
							<li><a href="">메뉴4</a></li>
							<li><a href="">메뉴5</a></li>
							<li><a href="">메뉴6</a></li>
						</c:if>
					</ul> 
				</div>
				<div id="login_info">
					<span class="auth">
						<c:choose>
							<c:when test="${session.power eq 101}">[관리자]</c:when>
						</c:choose>
					</span>
					<c:choose>
						<c:when test="${session ne null }">
							<span>${session.name}님</span>
							<span>
								<a onclick="javascript:Logout()">[로그아웃]</a>
							</span>
						</c:when>
						<c:when test="${session eq null}">
							<div id="button">
								<button class="ui primary basic button" id="login">
									로그인
								</button>
								<button class="ui positive basic button" id="signup">
									회원가입
								</button>
							</div>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
		<div id="middle">
			<div id="container">
				<decorator:body/>
			</div>
		</div>
		<div id="bottom">
			<div id="footer"></div>
		</div>
	</div>
	
	<div class="ui modal">
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
						아이디(이메일) : <input type="text" name="userid" /> <br><br>
						비밀번호 : <input type="text" name="password" /> <br> <br>
					</form>
				</div>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="loginCheck();">
				로그인 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>