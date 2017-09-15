<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%int word; %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="ui orange table">
		<thead>
			<tr>
			</tr>
		<tbody>
			<tr>
				<td>검색어 : </td>
				<td><input type="text" id="word"></td>
				<td><input type="submit" name="search_word" id="search_word" value="검색" onclick="search('word')"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>