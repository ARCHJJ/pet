#main {
	float: left;
	widht: 950px;
	height: 600px;
	text-align:center;
	vertical-align: middle;
	overflow:auto;
	}
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>자유 게시판</title>
 
     <script type="text/javascript">
        function writeForm(){
            location.href="freeboard.do";
        }
    </script>
    
 </head>
 <body>

<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
   <td width="73">번호</td>
   <td width="379">제목</td>
   <td width="73">작성자</td>
   <td width="164">작성일</td>
   <td width="7"><img src="img/table_right.gif" width="5" height="30" /></td>
   </tr>
	<tr align="center" bgcolor="#FFFFFF" height="30">
	<td colspan="6">등록된 글이 없습니다.</td>
	</tr>
 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
</table>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
  <tr><td colspan="4" height="5"></td></tr>
	<tr align="center">
    <td><input type=button value="글쓰기" OnClick="writeForm()"></td>
    <br>
         <div id="searchForm">
        <form>
            <select name="opt">
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
                <option value="3">글쓴이</option>
            </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="submit" value="검색"/>
        </form> s
  </tr>
 </table>
 </body>
</html>