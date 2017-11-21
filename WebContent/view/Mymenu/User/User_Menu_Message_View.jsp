<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메시지 확인</title>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
<link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/mymenu/menu.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/mymenu/message.js"></script>

</head>
<body>
	<table class="ui celled table" id="message_view">
		<thead class="full-width">
			<tr>
				<th class="messageview_a">송신자</th>
				<th class="messageview_b">내용</th>
				<th class="messageview_c">날짜</th>
				<th class="messageview_d">비고</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${mblist}" var="item">
				<tr>
					<td>${item.sender_email }</td>
					<td>${item.content }</td>
					<td>${item.date }</td>
					<td>
						<button class="ui blue basic button" onClick="returnMessage('${item.sender_email }', '${ub.email}');">답장</button>
						<button class="ui red basic button" onClick="delMessage('${item.receiver_email }', '${item.sender_email }', '${item.date }');">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<th colspan="4">
					<div class="ui right floated pagination menu">
				        <a class="icon item" onclick="boardSearch('${pageInfo.prevPage}')">
							<i class="left chevron icon"></i>
				        </a>
				        <c:forEach begin="${pageInfo.firstPage}" end="${pageInfo.endPage}" var="pages">
							<a class="item" onclick="boardSearch('${pages}')">${pages}</a>
				        </c:forEach>
				        <a class="icon item" onclick="boardSearch('${pageInfo.nextPage}')">
							<i class="right chevron icon"></i>
				        </a>
			      	</div>
	      		</th>
	      	</tr>
		</tfoot>
	</table>
	<button class="ui violet basic button" type="button" onclick="sendMessage('${ub.email}');">메시지 작성</button>

	<div class="ui modal second" id="modal_send">
		<i class="close icon"></i>
		<div class="header">메시지 작성</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">메시지 작성</div>
				<div class="ui input focus">
					<form name="send_form" method="post" action="User_Menu_Message_Send.do">
						송신자<input type="text" name="sender_email" id="sender_email" readonly="readonly" /> <br> 
						수신자<input type="text" name="receiver_email" id="receiver_email" maxlength="20" /> <br>
						내용<textarea name="content" id="content" rows="10" cols="50" ></textarea> <br>
					</form>
				</div>
				<p>전송 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="send_message();">
				전송 <i class="checkmark icon"></i>
			</div>
		</div>
	</div>
</body>
</html>