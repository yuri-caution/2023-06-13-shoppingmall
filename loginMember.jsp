<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>로그인</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/jquery-3.7.0.min.js"></script>
        <style>
            .container h3 {
                margin-bottom: 30px;
            }
            #btns {
                display: flex;
                gap: 10px;
            }
        </style>

    </head>

    <body>
        <%@ include file="menu.jsp"%>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-5">
                    로그인
                </h1>
            </div>
        </div>
        <div class="container" align="center">
            <div class="col-md-4 col-md-offset-4">
                <h3 class="form-signin-heading">Please sign in</h3>
                <%
                    String error = request.getParameter("error");
                    if (error != null) {
                        out.println("<div class='alert alert-danger'>");
                        out.println("아이디와 비밀번호를 확인해주세요.");
                        out.println("</div>");
                    }
                %>
                <form name="form-signin" method="post" action="processLogin.jsp">
                    <div class="form-group">
                      <label for="inputUserName" class="sr-only">User Name</label>
                      <input type="text" class="form-control" placeholder="ID" name="id" required autofocus>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword" class="sr-only">Password</label>
                      <input type="password" class="form-control" placeholder="Password" name="password" required>
                    </div>
                    <button class="btn btn-outline-success btn-block" type="submit">로그인</button>
                  </form>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>