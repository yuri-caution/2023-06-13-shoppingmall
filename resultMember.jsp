<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/jquery-3.7.0.min.js"></script>
        <title>회원 정보</title>
    </head>
    <body>
        <%@ include file="menu.jsp"%>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-6">
                    회원정보
                </h1>
            </div>
        </div>
        <div class="container" align="center">
            <%
                String msg = request.getParameter("msg");

                if (msg != null){
                    if (msg.equals("0"))
                        out.println("<h2 class='alert alert-danger'>회원정보가 수정되었습니다.</h2>");
                    else if (msg.equals("1"))
                        out.println("<h2 class='alert alert-success'>회원가입을 축하드립니다.</h2>");
                    else if (msg.equals("2")){
                        String loginId = (String) session.getAttribute("sessionID");
                        out.println("<h2 class='alert alert-success'>" + loginId + "님 환영합니다.</h2>");
                    }
                } else {
                    out.println("<h2 class='alert alert-danger'>회원정보가 삭제되었습니다.</h2>");
                }
            %>
        </div>


        <%@ include file="footer.jsp"%>

    </body>
</html>