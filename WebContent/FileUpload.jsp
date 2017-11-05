<%@ page contentType="text/html; charset=UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<%
	request.setCharacterEncoding("UTF-8");

	// 10Mbyte 제한
	int maxSize = 1024 * 1024 * 10;

	// 웹서버 컨테이너 경로
	// 파일 저장 경로(ex : /home/tour/web/ROOT/upload)
	String savePath = application.getRealPath("/upload");

	// 업로드 파일명
	String uploadFile = "";

	// 실제 저장할 파일명
	String newFileName = "";

	int read = 0;
	byte[] buf = new byte[1024];
	FileInputStream fin = null;
	FileOutputStream fout = null;
	long currentTime = System.currentTimeMillis();
	SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");

	try {

		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		// 파일업로드
		uploadFile = multi.getFilesystemName("uploadFile");

		// 실제 저장할 파일명(ex : 20140819151221.zip)
		newFileName = simDf.format(new Date(currentTime)) + "."
				+ uploadFile.substring(uploadFile.lastIndexOf(".") + 1);

		// 업로드된 파일 객체 생성
		File oldFile = new File(savePath + uploadFile);

		// 실제 저장될 파일 객체 생성
		File newFile = new File(savePath + newFileName);

		// 파일명 rename
		/* if (!oldFile.renameTo(newFile)) {

			// rename이 되지 않을경우 강제로 파일을 복사하고 기존파일은 삭제

			buf = new byte[1024];
			fin = new FileInputStream(oldFile);
			fout = new FileOutputStream(newFile);
			read = 0;
			while ((read = fin.read(buf, 0, buf.length)) != -1) {
				fout.write(buf, 0, read);
			}

			fin.close();
			fout.close();
		} */

	} catch (Exception e) {
		e.printStackTrace();
	}
%>