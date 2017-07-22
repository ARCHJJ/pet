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
<script type="text/javascript" src="frames/main_frame.js"></script>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<decorator:head/>	
</head>
<body onload="<decorator:getProperty property='body.onload'/>">
	<div id="wrapper">
		<div id="top">
			<div id="header">
				<div class="logo">
					<a href="main.do"><img src="img/frames/top/logo.gif" onclick="blur()"></a>
				</div>
				<div class="menu">
					<ul class="nav">
						<!-- 관리자메뉴 -->
						<c:if test="${session.auth eq 701}">
							<li><a href="record.do"><img src="img/frames/top/menu/menu2_off.gif"/></a></li>
							<li><a href="total.do"><img src="img/frames/top/menu/menu3_off.gif" /></a></li>
							<li><a href="minimum.do?egroup=administration"><img src="img/frames/top/menu/menu4_off.gif"/></a></li>
						</c:if>
							<li><a href="candidate.do?egroup=administration"><img src="img/frames/top/menu/menu1_off.gif"/></a></li>
						
						<!-- 관리자메뉴 -->
						<c:if test="${session.auth eq 701}">
							<li><a href="admin.do"><img src="img/frames/top/menu/menu5_off.gif" /></a></li>
						</c:if>
					</ul> 
				</div>
				<div id="login_info">
					<span class="auth">
						<c:choose>
							<c:when test="${session.auth eq 11}">[자료검증 위원장]</c:when>
							<c:when test="${session.auth eq 12}">[자료검증 위원]</c:when>
							<c:when test="${session.auth eq 13}">[자료검증 간사]</c:when>
							
							<c:when test="${session.auth eq 101}">[갑반 위원장]</c:when>
							<c:when test="${session.auth eq 102}">[갑반 위원]</c:when>
							<c:when test="${session.auth eq 103}">[갑반 간사]</c:when>
							
							<c:when test="${session.auth eq 201}">[을반 위원장]</c:when>
							<c:when test="${session.auth eq 202}">[을반 위원]</c:when>
							<c:when test="${session.auth eq 203}">[을반 간사]</c:when>
							
							<c:when test="${session.auth eq 301}">[선발위원회 위원장]</c:when>
							<c:when test="${session.auth eq 302}">[선발위원회 위원]</c:when>
							<c:when test="${session.auth eq 303}">[선발위원회 간사]</c:when>
							
							<c:when test="${session.auth eq 701}">[관리자]</c:when>
						</c:choose>
					</span>
					<span>${session.name}님</span>
					<span>
						<a onclick="javascript:Logout()"><img src="img/frames/top/login/logout.gif" align="top"/></a>
					</span>
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
</body>
</html>