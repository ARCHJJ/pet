<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>  
<%
	request.setCharacterEncoding("euc-kr");

	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/pet";
	String id = "test";
	String pass = "1234";
	int index = request.getIntHeader("index");
	String email = request.getParameter("email");
	String title = request.getParameter("title");
	String file = request.getParameter("file");
	String content = request.getParameter("content");
	
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO board(board_type,index,email,title,file,content,date) VALUES(3,?,?,?,?,?,sysdate)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, index);
		pstmt.setString(2, email);
		pstmt.setString(3, title);
		pstmt.setString(4, file);
		pstmt.setString(5, content);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="main.jsp"; 
</script>