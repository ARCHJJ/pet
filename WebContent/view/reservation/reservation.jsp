<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 매장에서 가능한 예약들을 보여줌  -->

	<table class="ui orange table">
		<thead>
			<tr>
				<td>서비스명</td>
				<td>가격</td>
				<td>설명</td>
			</tr>
			<c:forEach items="${iblist}" var="item">
				<tbody>
					<tr>
						<td>${item.name }</td>
						<td>${item.price }</td>
						<td>${item.description }</td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>