<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>상품 정보</title>
</head>
<body>
    <%@ include file="menu.jsp"%>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">상품 정보</h1>
        </div>
    </div>
    <div class="container" align="center">
        <%
            String msg = request.getParameter("msg");

            if (msg != null){
                if (msg.equals("1"))
                    out.println("<h2 class='alert alert-success'>상품등록이 완료되었습니다.</h2>");
                else if (msg.equals("2"))
                    out.println("<h2 class='alert alert-primary'>상품정보 수정이 완료되었습니다.</h2>");
            } else {
                out.println("<h2 class='alert alert-danger'>상품정보가 삭제되었습니다.</h2>");
            }
        %>
    </div>
</body>
</html>