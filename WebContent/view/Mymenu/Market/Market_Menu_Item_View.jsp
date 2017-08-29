<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>매장 상품 목록</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/market.css">

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="Semantic-UI-CSS-master/semantic.min.js"></script>

</head>
<body>
	<table class="ui compact celled definition table">
		<thead class="full-width">
			<tr>
				<th></th>
				<th>상품 번호</th>
				<th>마켓 번호</th>
				<th>상품 이름</th>
				<th>상품 설명</th>
				<th>상품 사진</th>
				<th>상품 가격</th>
			</tr>
		</thead>
		<tbody>
			<div class="grouped fields">
				<c:forEach items="${itemlist}" var="item">
					<tr>
						<td class="collapsing">
							<div class="ui radio checkbox">
								<input type="radio" name="field"> <label></label>
							</div>
						</td>
						<td>${item.idx }</td>
						<td>${item.market_id }</td>
						<td>${item.name }</td>
						<td>${item.description }</td>
						<td>${item.photos }</td>
						<td>${item.price }</td>
					</tr>
				</c:forEach>
			</div>
		</tbody>
		<tfoot class="full-width">
			<tr>
				<th></th>
				<th colspan="6">
					<div class="ui right floated small primary labeled icon button">
						<i class="ui primary button"></i> 상품 추가
					</div>
					<div class="ui small  button">수정</div>
				</th>
			</tr>
		</tfoot>
	</table>
</body>
</html>