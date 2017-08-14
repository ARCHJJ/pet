<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
	
<%
	// upload 폴더에 파일 업로드
	String uploadPath=request.getRealPath("/uploadFolder");
	out.print("realPath : " + uploadPath);
	int size = 5*1024*1024;
	String name="";
	String subject="";
	
	String fileName=""; // 중복 처리된 이름
	String originalName=""; // 중복 처리전 실제 이름
	
	MultipartRequest multi=null;
	
	try{
		multi=new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		
		name=multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		// 첨부 파일을 여러개 가져온다.
		Enumeration files=multi.getFileNames();
		// 파일의 이름만 가져온다. -> 전송받은 이름
		String file = (String)files.nextElement();
		// multi에서 해당 이름을 알려주고 실제 시스템상의 이름을 알아낸다.
		fileName = multi.getFilesystemName(file);
		//multi에서 알고 있는 파일 원본 이름을 file1을 통해서 알아낸다.
		originalName = multi.getOriginalFileName(file);
		
	}catch (Exception e) {
		out.print(e.getMessage());
		System.out.print("파일 업로드 문제 발생 : " +e.getMessage());	//로그 기록	
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FileUpload.jsp</title>
<body>
업로드 완료
</body></head></html>