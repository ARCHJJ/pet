function Logout(){
	location.href="logout.do";
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
	var userid = document.register_form.userid.value;
	var password = document.register_form.passwd.value;
	var username = document.register_form.username.value;
	
	if(!userid){
		alert("아이디를 입력하세요.");
		document.login_form.userid.focus();
		return false;
	}else if(!password){
		alert("비밀번호를 입력하세요.");
		document.login_form.password.focus();
		return false;
	}else if(!username){
		alert("비밀번호를 입력하세요.");
		document.login_form.username.focus();
		return false;
	}
	register(userid, password, username);
}

//가입폼 리셋
function registerReset(){
	document.register_form.reset();
}
//가입 처리
function register(userid, password, username){
	jQuery.ajax({
		type: "post",
		url: "register.do",
		data : {userid: userid, password: password, username: username},
		dataType: "json",
		success:
			function(data){
				if(data.result == "false1"){
					alert("현재 영대 컴공과 학생이 아닙니다. ");
					registerReset();
				}else if(data.result == "false2"){
					alert("시스템 오류 발생하였습니다.");
					registerReset();
				}else{
					alert("회원가입 되었습니다. ");
					location.href="index.do";
				}
			}, 
		error: 
			function error(xhr,status,error){
				alert(error);
			} 
	}); 
}