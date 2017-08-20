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
		
		String sql = "SELECT * FROM board WHERE board_type='1'";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			max=rs.getInt(1);
		}
		sql = "INSERT INTO board(index,board_type,email,title,file,content)" 
				+ "VALUES(?, 1, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, max+1);
		pstmt.setString(2, email);
		pstmt.setString(3, title);
		pstmt.setString(4, file);
		pstmt.setString(5, content);

		pstmt.execute();
		pstmt.close();
		stmt.close();
		conn.close();
		
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>
  <script language=javascript>
</script>