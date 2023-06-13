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
            #btns {
                display: flex;
                gap: 10px;
            }
        </style>
        <script>
            function checkForm() {
                if(!document.login.id.value){
                    alert("아이디를 입력하세요.");
                    return false;
                }
                
                if(!document.login.password.value){
                    alert("비밀번호를 입력하세요.");
                    return false;
                }
                document.newMember.submit()
            }
        </script>
    </head>

    <body>
        <%@ include file="menu.jsp"%>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-6">
                    로그인
                </h1>
            </div>
        </div>
        <div class="container">
            <form name="login" method="get" action="login.jsp">
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">ID</label>
                  <div class="col-sm-4">
                    <input type="text" class="form-control">
                  </div>
                </div>
                <div class="form-group row">
                  <label class="col-sm-2 col-form-label">PW</label>
                  <div class="col-sm-4">
                    <input type="password" class="form-control">
                  </div>
                </div>
                <div class="form-group row" id="btns">
                    <input type="submit" class="btn btn-outline-success" value="로그인">
                    <input type="reset" class="btn btn-outline-primary" value="취소" onclick="reset()">
                </div>
              </form>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>