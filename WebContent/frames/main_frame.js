function Logout(){
	location.href="logout.do";
}
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 도로명 조합형 주소 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
            if(fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('sample4_roadAddress').value = fullRoadAddr;
            //document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

            /*// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                //예상되는 도로명 주소에 조합형 주소를 추가한다.
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

            } else {
                document.getElementById('guide').innerHTML = '';
            }*/
        }
    }).open();
}

$(document).ready(function(){
    $('#login').click(function(){
   	 $('.ui.modal.first').modal('show');
    });
    
    $('#signup').click(function(){
      	 $('.ui.modal.second').modal('show');
       });
    
    $('.outer-menu').hover(function () {
    	$(this).find('.inner-menu').css('display', 'block');
    }, function () {
    	$(this).find('.inner-menu').css('display', 'none');
    });
});

//userid foucs
function init(){
	document.login_form.userid.focus();
}
//로그인창 경계선 색상 변화
function changeBorder(type){
	var userid = document.login_form.userid;
	var password = document.login_form.password;
	
	if(type == 'userid' ){
		userid.style.border = "1px solid green";
		password.style.border = "1px solid #dddddd";
	}else{
		userid.style.border = "1px solid #dddddd";
		password.style.border = "1px solid green";
	}
}
//enter로 로그인
function enterSubmit(event){
	if(event.keyCode==13)
		loginCheck();
}
//로그인 유효성 검사
function loginCheck(){
	var userid = document.login_form.userid.value;
	var password = document.login_form.password.value;
	
	if(!userid){
		alert("아이디를 입력하세요.");
		document.login_form.userid.focus();
		return false;
	}else if(!password){
		alert("비밀번호를 입력하세요.");
		document.login_form.password.focus();
		return false;
	}
	login(userid, password);
}
//로그인폼 리셋
function loginReset(){
	document.login_form.reset();
	init();
}
//로그인 처리
function login(userid, password){
	jQuery.ajax({
		type: "post",
		url: "login.do",
		data : {userid: userid, password: password},
		dataType: "json",
		success:
			function(data){
				if(data.result == "false1"){
					alert("아이디 또는 패스워드가 잘못되었습니다.");
					loginReset();
				}else if(data.result == "false2"){
					alert("계정이 잠김상태 입니다.");
					loginReset();
				}else{
					location.href="main.do";
				}
			}, 
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	}); 
}

//가입폼 유효성 검사
function registerCheck(){
	var email = document.register_form.email.value;
	var password = document.register_form.password.value;
	var name = document.register_form.name.value;
	
	if(!email){
		alert("아이디를 입력하세요.");
		document.login_form.email.focus();
		return false;
	}else if(!password){
		alert("비밀번호를 입력하세요.");
		document.login_form.password.focus();
		return false;
	}else if(!name){
		alert("이름을 입력하세요.");
		document.login_form.name.focus();
		return false;
	}
	alert('가입이 완료되었습니다.');
	document.register_form.submit();
}

//가입폼 리셋
function registerReset(){
	document.register_form.reset();
}
