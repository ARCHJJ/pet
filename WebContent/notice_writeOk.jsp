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
	String email = request.getParameter("email");
	String title = request.getParameter("title");
	String file = request.getParameter("file");
	String content = request.getParameter("content");
	
	int max=0;
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(NUM) FROM board";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			max=rs.getInt(1);
		}
		sql = "INSERT INTO board(board_type,index,email,title,file,content,date) VALUES(1,?,?,?,?,?,sysdate)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, 3);
		pstmt.setString(2, email);
		pstmt.setString(3, title);
		pstmt.setString(4, file);
		pstmt.setString(5, content);
		pstmt.setInt(6, max+1);

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