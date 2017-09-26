<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/search/search.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/search/search.js"></script>

</head>
<body>
	<form name="market_search_form" method="post" action="market_searchAction.do">
		매장검색 : <input type="text" name="word" id="word" />
	</form>
	<input type="submit" value="검색" onclick="search_market()">
	<br><br>

	<form name="item_search_form" method="post" action="item_searchAction.do">
		물품검색 : <input type="text" name="word2" id="word2" />
	</form>
	<input type="submit" value="검색" onclick="search_item()">
	<br><br>
</body>
</html>