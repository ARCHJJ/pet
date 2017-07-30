//롤오버
$(document).ready(function(){
	$(".nav a").each(function(){ 
		var image = $(this).children("img");
		var imgsrc = $(image).attr("src");
		
		//mouseOver
		$(this).mouseover(function(){
			var over = imgsrc.replace("_off.gif","_over.gif"); 
			$(image).attr("src", over);
		});
		//add mouseOut
		$(this).mouseout(function(){
			var out = imgsrc.replace("_over.gif","_off.gif");
			$(image).attr("src", out);
		});
		
/*		
		//add mouseDown
		$(this).mousedown(function(){
			var down = imgsrc.replace("_off.gif","_over.gif");
			$(image).attr("src", down);
		});
		
*/	});
});
//특수문자 입력 방지
function keyBlock(){
	//특수문자
	if((event.keyCode > 32 && event.keyCode < 48) || (event.keyCode > 57 && event.keyCode < 65) || (event.keyCode > 90 && event.keyCode < 97)){
		event.returnValue = false;
	}
	//따옴표, 홑따옴표
	if(event.keyCode == 34 || event.keyCode == 39){
		event.returnValue = false;
	}
}
//숫자만 입력 가능 (onkeydown 이벤트)
function onlyNumberInput(){
	var code = window.event.keyCode;
	if ((code > 34 && code < 41) || (code > 47 && code < 58) || (code > 95 && code < 106) || code == 8 || code == 9 || code == 13 || code == 46){
		window.event.returnValue = true;
		return;
	}
	window.event.returnValue = false;
}
// 숫자만 리턴
function onlyNum(val){
	 var num = val;
	 var tmp = "";
	
	 for (var i=0; i<num.length; i ++){
		 if (num.charAt(i) >= 0 && num.charAt(i) <= 9)
			 tmp = tmp + num.charAt(i);
	  	else
	  		continue;
	 }
	 return tmp;
}
//날짜 형식 (onkeyup 이벤트)
function dateFormat(obj){
	 var str  = onlyNum(obj.value);
	 var length = str.length;
	
	 switch (length){
	  case 1 :
	  case 2 :
	  case 3 :
	  case 4 : obj.value = str; break;
	  case 5 :
	  case 6 : obj.value = str.substring(0, 4) + "." + str.substring(4, 6); break;
	  case 7 :
	  case 8 : obj.value = str.substring(0, 4) + "." + str.substring(4, 6) + "." + str.substring(6);
	           break;
	 }
	 if(length == 8)
		 chkDate(str);
}
// 날짜 유효성 검사
function chkDate(str){
	/*year = str.substring(0, 4);
	month = str.substring(4, 6);
	date = str.substring(6);

	vDate = new Date();
	vDate.setFullYear(year);
	vDate.setMonth(month-1);
	vDate.setDate(date);
	
	if(vDate.getFullYear() != year || vDate.getMonth()+1 != parseInt(month) || vDate.getDate() != parseInt(date)){
		alert("날짜를 확인해주세요.");
		return false;
	}*/
}
//jQuery ajax 에러
function error(xhr,status,error){
	alert(error);
}