<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <h3>입력폼, COS를 사용한 MultipartRequest 객체 사용</h3>
    <hr>
    <form action="resultProcess.jsp" method="post" enctype="multipart/form-data">
        이름: <input type="text" name="username"><br>
        파일: <input type="file" name="myfile"><br>
        <button>전송</button>
    </form>
</body>
</html>