<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <h3>결과페이지(파일업로드)</h3>
    <%
        String saveDir=application.getRealPath("shoppingmall/upload");
        int maxSize=5 * 1024 * 1024;
        MultipartRequest mreq = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());

        out.print("파일업로드 성공");
        String name=mreq.getParameter("username");
    %>
        <br>
        이름: <%=name%><br>
        원본파일명: <%=mreq.getOriginalFileName("myfile")%>
        저장파일명: <%=mreq.getFilesystemName("myfile")%>
</body>
</html>