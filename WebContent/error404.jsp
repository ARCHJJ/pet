<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/expense/css/error.css"/>
<title>Error Page</title>
</head>
<body>
<%
	response.setStatus(HttpServletResponse.SC_OK);
%>
	<div id="wrapper">
		<div class="error">
			<img src="/expense/img/error/404.gif">
		</div>
	</div>
</body>
</html>