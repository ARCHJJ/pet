<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<style>

/* 메뉴 전체영역에 대한 스타일 */
#nav {
	list-style-type: none; /* 불릿 기호 없앰 */
	height: 45px;
	padding: 6px 7px;
	margin: 0;
	background-color: #5C5C5C;
}

/* 서브메뉴 영역에 대한 스타일 */
#nav ul {
	margin: 0;
	padding: 0;
	list-style: none;
	position: absolute;
	left: 0;
	top: 45px;
	width: 150px;
	background: #DDDDDD;
	border: 1px solid #B4B4B4;
	border-radius: 8px;
	-webkit-box-shadow: 0 1px 3px RGBA(0, 0, 0, 0.3);
	-moz-box-shadow: 0 1px 3px RGBA(0, 0, 0, 0.3);
	box-shadow: 0 1px 3px RGBA(0, 0, 0, 0.3);
	opacity: 0;
}

/* 서브메뉴 링크 스타일 */
#nav ul a {
	font-weight: normal;
	text-shadow: 0 1px 0 #FFFFFF;
	color: #333333;
}

/* 서브메뉴 각 항목의 스타일 */
#nav ul li {
	float: none;
	margin: 0;
	padding: 0;
}

/* 서브메뉴 각 항목 위로 마우스를 올렸을 때 */
#nav ul li:hover a {
	background: #0078FF;
	color: #FFFFFF;
	text-shadow: 0 1px RGBA(0, 0, 0, 0.1);
	border-radius: 0;
}

/* 서브메뉴 첫번째 항목의 스타일 */
#nav ul li:first-child>a {
	-webkit-border-top-left-radius: 8px;
	-moz-border-radius-topleft: 8px;
	-webkit-border-top-right-radius: 8px;
	-moz-border-radius-topright: 8px;
}

/* 서브메뉴 마지막 항목의 스타일 */
#nav ul li:last-child>a {
	-webkit-border-bottom-left-radius: 8px;
	-moz-border-radius-bottomleft: 8px;
	-webkit-border-bottom-right-radius: 8px;
	-moz-border-radius-bottomright: 8px;
}

/* 메뉴 각 항목에 대한 스타일 */
#nav li {
	float: left; /* li 각 항목을 왼쪽정렬시키기 */
	position: relative; /* 순서대로 표시 */
	margin: 5px 10px;
	padding: 0;
}

/* 메뉴의 링크에 대한 스타일 */
#nav li a {
	display: block; /* 영역을 만듦 */
	font-family: "굴림";
	font-weight: 600;
	font-size: 1em;
	padding: 10px 20px;
	color: #E7E5E5;
	text-decoration: none;
	margin: 0;
	text-shadow: 0 1px 1px RGBA(0, 0, 0, 0.3); /* 그림자 효과 */
}

/* 메인 메뉴 위로 마우스 포인터를 가져갔을 때 서브 메뉴 스타일 */
#nav li:hover ul {
	opacity: 1;
}

/* 메뉴 항목 위로 마우스를 올렸을 때 스타일 */
#nav li:hover a {
	background: #EBEBEB;
	color: #444444;
	text-shadow: 0 1px 1px RGBA(255, 255, 255, 1);
	-webkit-box-shadow: 0 1px 1px RGBA(0, 0, 0, 0.2);
	-moz-box-shadow: 0 1px 1px RGBA(0, 0, 0, 0.2);
}
</style>


	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
	<%@ taglib prefix="decorator"
		uri="http://www.opensymphony.com/sitemesh/decorator"%>
	<%@ taglib prefix="page"
		uri="http://www.opensymphony.com/sitemesh/page"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><decorator:title /></title>
<link rel="stylesheet" type="text/css" href="frames/main_frame.css" />
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="frames/main_frame.js"></script>
<!-- <script type="text/javascript" src="js/common.js"></script> -->
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<decorator:head />
</head>
<body onload="<decorator:getProperty property='body.onload'/>">
	<div id="wrapper">
		<div id="top">
			<div id="header">
				<div class="logo">
					<a href="main.do"><button onclick="blur()" />메인</a>
				</div>
				<div id="menu">
					<ul id="nav">
						<li><a href="#">커뮤니티</a>
							<ul>
								<li><a href="notice.do">공지사항</a></li>
								<li><a href="kin.do">지식인</a></li>
								<li><a href="freeboard.do">자유게시판</a></li>
							</ul> 
							<c:if test="${session.power eq 200}">
								<li><a href="#">매장메뉴</a>
									<ul>
										<li><a href="">물품관리</a></li>
										<li><a href="">모니터링</a></li>
										<li><a href="">상품등록/관리</a></li>
										<li><a href="">예약현황관리</a></li>
										<li><a href="">메시지확인</a></li>
										<li><a href="">매장정보수정</a></li>
									</ul>
							</c:if> 
							<c:if test="${session.power eq 300}">
								<li><a href="#">마이메뉴</a>
									<ul>
										<li><a href="">예약정보</a></li>
										<li><a href="">동물모니터링</a></li>
										<li><a href="">게시글관리</a></li>
										<li><a href="">메시지확인</a></li>
										<li><a href="">개인정보수정</a></li>
										<li><a href="">비밀번호변경</a></li>
									</ul>
							</c:if> <!-- 관리자메뉴 --> 
							<c:if test="${session.power eq 101}">
								<li><a href="">메뉴4</a></li>
								<li><a href="">메뉴5</a></li>
								<li><a href="">메뉴6</a></li>
							</c:if>
					</ul>
				</div>

				<div id="login_info">
					<span class="auth"> <c:choose>
							<c:when test="${session.power eq 101}">[관리자]</c:when>
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