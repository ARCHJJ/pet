<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title /></title>
<link rel="stylesheet" type="text/css" href="frames/main_frame.css" />
<link rel="stylesheet" type="text/css" href="css/table.css" />
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="frames/main_frame.js"></script>
<!-- <script type="text/javascript" src="js/common.js"></script> -->
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<decorator:head />
</head>
<body onload="<decorator:getProperty property='body.onload'/>">
	<div id="wrapper">
		<div id="top">
			<div id="header">
				<!-- <div class="logo">
					<a href="main.do" id="logo"><img src="./img/pet_room_logo.png"></a>
				</div> -->

				<div class="ui menu" id="main_menu">
					<div class="header item"><img src="./img/pet_room_logo.png" id="logo"></div>
					<div class="header item">펫방</div>
					
					<a class="active item" href="search.do">검색 바로가기</a> 
					<!-- <a class="item">Link</a> -->
					
					<div class="ui dropdown item" tabindex="0">	커뮤니티 <i class="dropdown icon"></i>
						<div class="menu" tabindex="-1">
							<div class="item"><a href="board_notice.do">공지사항</a></div>
							<div class="item"><a href="board_customer_service.do">고객센터</a></div>
							<div class="divider"></div>
							<div class="item"><a href="board_kin.do">지식인</a></div>
							<div class="item"><a href="board_freeboard.do">자유게시판</a></div>
						</div>
					</div>
					
					<c:if test="${session.power eq 100}">
						<div class="ui dropdown item" tabindex="0">	Dropdown <i class="dropdown icon"></i>
							<div class="menu" tabindex="-1">
								<div class="item"><a href="User_Menu_Reserv.do">예약정보</a></div>
								<div class="item"><a href="User_Menu_Write.do">게시글관리</a></div>
								<div class="item"><a href="User_Menu_Message.do">메시지확인</a></div>
								<div class="divider"></div>
								<div class="item"><a href="User_Menu_Person.do">개인정보</a></div>
							</div>
						</div>
					</c:if>
					
					<c:if test="${session.power eq 200}">
						<div class="ui dropdown item" tabindex="0">	Dropdown <i class="dropdown icon"></i>
							<div class="menu" tabindex="-1">
								<div class="item"><a href="mymenu_shop_item.do">물품관리</a></div>
								<div class="item"><a href="mymenu_shop_reserv.do">예약현황관리</a></div>
								<div class="item"><a href="mymenu_shop_info.do">매장정보수정</a></div>
								<div class="divider"></div>
								<div class="item"><a href="User_Menu_Message.do">메시지확인</a></div>
							</div>
						</div>
					</c:if>
					
					<c:if test="${session.power eq 300}">
						<div class="ui dropdown item" tabindex="0">	Dropdown <i class="dropdown icon"></i>
							<div class="menu" tabindex="-1">
								<div class="item"><a href="marketmanage.do">매장관리</a></div>
								<div class="item"><a href="membermanage.do">회원관리</a></div>
								<div class="item"><a href="reservemanage.do">예약현황관리</a></div>
								<div class="divider"></div>
								<div class="item"><a href="board_notice.do">공지사항관리</a></div>
								<div class="item"><a href="board_customer_service.do">고객센터관리</a></div>
							</div>
						</div>
					</c:if>
					
					<div class="right menu">
						<div class="item">
							<!-- <div class="ui action left icon input">
								<i class="search icon"></i> <input type="text" placeholder="Search">
								<button class="ui button">Submit</button>
							</div> -->
							
							<div id="login_info">
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
						<!-- <a class="item">Link</a> -->
					</div>
					
				</div>



				<%-- <div id="menu">
					<ul id="nav">
						<li><a href="search.do">검색</a></li>

						<li><a href="#">커뮤니티</a>
							<ul>
								<li><a href="board_notice.do">공지사항</a></li>
								<li><a href="board_customer_service.do">고객센터</a></li>
								<li><a href="board_kin.do">지식인</a></li>
								<li><a href="board_freeboard.do">자유게시판</a></li>
							</ul></li>

						<c:if test="${session.power eq 100}">
							<li><a href="#">마이 메뉴</a>
								<ul>
									<li><a href="User_Menu_Reserv.do">예약정보</a></li>
									<li><a href="User_Menu_Write.do">게시글관리</a></li>
									<li><a href="User_Menu_Message.do">메시지확인</a></li>
									<li><a href="User_Menu_Person.do">개인정보</a></li>
								</ul></li>
						</c:if>

						<c:if test="${session.power eq 200}">
							<li><a href="#">매장 관리</a>
								<ul>
									<li><a href="mymenu_shop_item.do">물품관리</a></li>
									<li><a href="mymenu_shop_reserv.do">예약현황관리</a></li>
									<li><a href="User_Menu_Message.do">메시지확인</a></li>
									<li><a href="mymenu_shop_info.do">매장정보수정</a></li>
								</ul></li>
						</c:if>

						<!-- 관리자메뉴 -->
						<c:if test="${session.power eq 300}">
							<li><a href="#">시스템 관리</a>
								<ul>
									<li><a href="marketmanage.do">매장관리</a></li>
									<li><a href="membermanage.do">회원관리</a></li>
									<li><a href="reservemanage.do">예약현황관리</a></li>
									<li><a href="board_notice.do">공지사항관리</a></li>
									<li><a href="board_customer_service.do">고객센터관리</a></li>
								</ul></li>
						</c:if>
					</ul>
				</div> --%>

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
				<!-- <img src="img/logo.gif"> -->
			</div>
			<div class="description">
				<div class="ui header">로그인 폼</div>
				<div class="ui fluid input">
					<form name="login_form" method="post" action="login.do">
						아이디(이메일) : <input type="text" name="userid" /> <br> <br>
						비밀번호 : <input type="password" name="password"
							onkeyup="enterSubmit(event)" /> <br> <br>
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


	<div class="ui modal second">
		<i class="close icon"></i>
		<div class="header">회원가입 폼</div>
		<div class="image content">
			<div class="ui medium image">
				<!-- <img src="img/logo.gif"> -->
			</div>
			<div class="description">
				<div class="ui header">시스템 회원가입</div>
				<p>회원가입 폼</p>
				<div class="ui input focus">
					<form name="register_form" method="post" action="signup.do">
						<table>
							<tr>
								<td>Email</td>
								<td><input type="text" name="email" maxlength="20" /></td>
							</tr>
							<tr>
								<td>패스워드</td>
								<td><input type="password" name="password" maxlength="20" /></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text" name="name" maxlength="20" /></td>
							</tr>
							<tr>
								<td>우편번호</td>
								<td><input type="text" name="address1"
									id="sample4_postcode" placeholder="우편번호" maxlength="20" /> <input
									type="button" onclick="sample4_execDaumPostcode()"
									value="우편번호 찾기"><br></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input type="text" name="address2"
									id="sample4_roadAddress" placeholder="도로명주소" maxlength="20" /></td>
							</tr>
							<tr>
								<td>핸드폰</td>
								<td><input type="text" name="phone" maxlength="20" /></td>
							</tr>
							<tr>
								<td>성별</td>
								<td><select name="gender">
										<option value="남">남</option>
										<option value="여">여</option>
								</select></td>
							</tr>
						</table>
					</form>
				</div>
				<p>가입하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button"
				onclick="registerCheck();">
				가입 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>