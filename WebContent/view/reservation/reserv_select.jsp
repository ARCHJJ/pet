<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"	href="Semantic-UI-CSS-master/semantic.min.css">
<link rel="stylesheet" type="text/css"	href="css/reservation/reservation.css" />

<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"	src="Semantic-UI-CSS-master/semantic.min.js"></script>
<script type="text/javascript" src="js/reservation/reservation.js"></script>

<script	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/moment-with-locales.min.js"></script>
<!-- <script	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/locale/ko.js"></script> -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"	rel="stylesheet" />
<script	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
</head>
<body>
<div class="container">
    
</div>
	<form name="submit_form" method="post" action="Reserv_submit.do">
		<table class="ui orange table">
			<thead>
			<tbody>
				<tr>
					<td>매장명</td>
					<td>${mb.market_name }</td>
				</tr>
				<tr>
					<td>매장 주소</td>
					<td>${mb.address }</td>
				</tr>
				<tr>
					<td>매장주인 email</td>
					<td>${mb.market_email }</td>
				</tr>
				<tr>
					<td>예약 서비스</td>
					<td>${mb.service_name }</td>
				</tr>
				<tr>
					<td>가격</td>
					<td>${mb.price }</td>
				</tr>
				<tr>
					<td>동물</td>
					<td>
						<select id="pets" name="pets">
							<option>개</option>
							<option>고양이</option>
							<option>기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>예약희망시간</td>
					<td>
					    <div class="row">
					        <div class='col-sm-6'>
					            <div class="form-group">
					                <div class='input-group date' id='datetimepicker1'>
					                    <input type='text' class="form-control" />
					                    <span class="input-group-addon">
					                        <span class="glyphicon glyphicon-calendar"></span>
					                    </span>
					                </div>
					            </div>
					        </div>
				    	</div>
					</td>
				</tr>
				<tr>
					<td>고객주소</td>
					<td><input type="text" id="user_address" name="user_address" value="${ub.address1} ${ub.address2}"></td>
				</tr>
			</tbody>
		</table>
		<input type="hidden" name="market_id" value="${mb.market_id}">
		<input type="hidden" name="reservation_service" value="${mb.item_idx}">
	</form>
	
	<input type="button" onclick="reserv_submit()" value="예약하기">
	
	<!-- <input type="button" onclick="reserv_confirm_form('${ub.email}', '${mb.market_id}', '${ub.address1}', '${ub.address2}', '11', '123', 000, '${mb.price }')"	value="예약하기">

	<div class="ui modal" id="modal_reserv">
		<i class="close icon"></i>
		<div class="header">주문서</div>
		<div class="image content">
			<div class="ui medium image">
				<img src="img/logo.gif">
			</div>
			<div class="description">
				<div class="ui header">예약 주문서</div>
				<div class="ui input focus">
					<form name="submit_form" method="post" action="Reserv_submit.do">
						고객 id<input type="text" name="member_email" id="member_email" readonly="readonly" /> <br> 
						고객 주소 <input type="text" name="address" id="address" maxlength="20" readonly="readonly" /><br> 
						서비스 <input type="text" name="reservation_service" id="reservation_service" maxlength="20" readonly="readonly" /> <br>
						동물 <input type="text" name="reservation_pets" id="reservation_pets" maxlength="20" readonly="readonly" /> <br>
						예약시간 <input type="text" name="timeofrev" id="timeofrev" maxlength="20" readonly="readonly" /> <br>						 
						가격 <input type="text" name="price" id="price" maxlength="20" readonly="readonly" /> <br>
					</form>
				</div>
				<p>예약 하시겠습니까?</p>
			</div>
		</div>
		<div class="actions">
			<div class="ui black deny button">취소</div>
			<div class="ui positive right labeled icon button" onclick="reserv_submit();">
				예약 <i class="checkmark icon"></i>
			</div>
		</div>
	</div> -->

</body>

</html>