<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>회원가입</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/jquery-3.7.0.min.js"></script>
        <style>
            #birth {
                display: flex;
                gap: 4px;
            }

            #email {
                display: flex;
            }

            #btns {
                display: flex;
                gap: 10px;
            }

            #phone {
                display: flex;
                gap: 4px;
                text-align: center;
            }
        </style>
        <script>
            function checkForm() {
                if(!document.newMember.id.value){
                    alert("아이디를 입력하세요.");
                    return false;
                }
                
                if(!document.newMember.password.value){
                    alert("비밀번호를 입력하세요.");
                    return false;
                }

                if(document.newMember.password.value != document.newMember.password_confirm.value){
                    alert("비밀번호를 확인하세요.");
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
                    회원가입
                </h1>
            </div>
        </div>
        <div class="container">
            <form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">아이디</label>
                    <div class="col-sm-3">
                        <input name="id" type="text" class="form-control" placeholder="ID">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">비밀번호</label>
                    <div class="col-sm-3">
                        <input name="password" type="password" class="form-control" id="PW" placeholder="PW">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">비밀번호 확인</label>
                    <div class="col-sm-3">
                        <input name="password_confirm" type="password" class="form-control" id="PW_confirm" placeholder="PW_confirm">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">성명</label>
                    <div class="col-sm-3">
                        <input name="name" type="text" class="form-control" placeholder="NAME">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">성별</label>
                    <div class="col-sm-10">
                        <input name="gender" type="radio" value="남" />남
                        <input name="gender" type="radio" value="여" />여
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">생일</label>
                    <div class="col-sm-3" id="birth">
                        <input name="birthyy" type="text" class="form-control" placeholder="년(4자)" maxlength="4" size="6">
                        <select name="birthmm">
                            <option value="">월</option>
                            <option value="01">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <input name="birthdd" type="text" class="form-control" placeholder="일" maxlength="2" size="4">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">e-mail</label>
                    <div class="col-sm-4" id="email">
                        <input name="mail1" type="text" class="form-control" maxlength="50" placeholder="E-MAIL">@
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>google.com</option>
                            <option>nate.com</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">연락처</label>
                    <div class="col-sm-4" id="phone">
                        <input name="phone1" type="text" class="form-control" maxlength="50" placeholder="PHONE">
                        <input name="phone2" type="text" class="form-control" maxlength="50" placeholder="PHONE">
                        <input name="phone3" type="text" class="form-control" maxlength="50" placeholder="PHONE">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">주소</label>
                    <div class="col-sm-5">
                        <input name="address" type="text" class="form-control" placeholder="ADDRESS">
                        
                    </div>
                </div>
                <div class="form-group row" id="btns">
                    <input type="submit" class="btn btn-outline-primary" value="등록">
                    <input type="reset" class="btn btn-outline-primary" value="취소" onclick="reset()">
                </div>
            </form>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>