<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script language=javascript>
	self.window.alert("입력한 글을 저장하였습니다.");
	if (board_type == 1) {
		location.href = "board_notice.do";
	} else if (board_type == 2) {
		location.href = "board_customer_service.do";
	} else if (board_type == 3) {
		location.href = "board_kin.do";
	} else if (board_type == 4) {
		location.href = "board_freeboard.do";
	} else {
		self.window.alert("오류가 발생하였습니다.")
		location.href = "main.jsp";
	}
</script>