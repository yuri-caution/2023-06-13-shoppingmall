<%@ page language="java" pageEncoding="utf-8" %>

<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery-3.7.0.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand  navbar-dark bg-dark">
            <div class="container">
                <div class="navbar-header">
                    <a href="./index.jsp" class="navbar-brand">Home</a>
                </div>
                <div>
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a class="nav-link" href="loginMember.jsp">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="addMember.jsp">회원가입</a></li>
                        <li class="nav-item"><a class="nav-link" href="productList.jsp">상품 목록</a></li>
                        <li class="nav-item"><a class="nav-link" href="addProduct.jsp">상품 등록</a></li>
                        <li class="nav-item"><a class="nav-link" href="editProduct.jsp?edit=update">상품 수정</a></li>
                        <li class="nav-item"><a class="nav-link" href="editProduct.jsp?edit=delete">상품 삭제</a></li>
                        <li class="nav-item"><a class="nav-link" href="BoardListAction.do?pageNum=1">게시판</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>
</html>