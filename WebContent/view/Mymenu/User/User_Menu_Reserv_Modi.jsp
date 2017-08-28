<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />
<title>예약정보 수정</title>
</head>
<body>
	<form name="modi_rev">
		<table class="ui orange table">
			<thead>
				<tr>
				</tr>
			<tbody>
				<tr>
					<td>예약번호</td>
					<td>${rb.rev_idx }</td>
				</tr>
				<tr>
					<td>매장</td>
					<td>${rb.market_id }</td>
				</tr>
				<tr>
					<td>서비스</td>
					<td>${rb.service }</td>
				</tr>
				<tr>
					<td>동물</td>
					<td><div class="ui input">
							<input type="text" placeholder="동물" value="${rb.pets }">
						</div></td>
				</tr>
				<tr>
					<td>예약시간</td>
					<td><div class="ui input">
							<input type="text" placeholder="시간" value="${rb.timeofrev }">
						</div></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><div class="ui input">
							<input type="text" placeholder="날짜" value="${rb.date }">
						</div></td>
				</tr>
				<tr>
					<td>CCTV</td>
					<td>${rb.cctvid }</td>
				</tr>
				<tr>
					<button class="ui violet basic button" onClick="modirev()">수정하기</button>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>