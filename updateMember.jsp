<%@ page contentType="text/html; charset=utf-8"%>
<%! String month="";%>

<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <%@ include file="menu.jsp" %>
        <%
            sessionId=(String) session.getAttribute("sessionId");
        %>
       
        <%@ include file="dbconn.jsp" %>
        <%
            try {
                PreparedStatement pstmt=null;
                ResultSet rs=null;
                String sql="select * from member23 where id=?";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1, sessionId);
                rs=pstmt.executeQuery();

                    if(rs.next()){
                        String password= rs.getString("password");
                        String name= rs.getString("name");
                        String gender= rs.getString("gender");
                        String birth= rs.getString("birth");
                        String mail= rs.getString("mail");
                        String phone= rs.getString("phone");
                        String address= rs.getString("address");
                        String mail1 = mail.split("@")[0];
                        String mail2 = mail.split("@")[1];
                        String year=birth.split("-")[0];
                        month=birth.split("-")[1];
                        System.out.println("month : " + month);
                        String day=birth.split("-")[2];

        %>
        <title>회원 수정</title>
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
    </head>
    <body onload="init()">
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-5">회원수정</h1>
            </div>
        </div>
        <div class="container">
            <form name="newMember" class="form-horizontal" action="processUpdate.jsp" method="post" onsubmit="return checkForm()">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">아이디</label>
                    <div class="col-sm-3">
                        <input name="id" type="text" class="form-control" placeholder="ID" value="<%=sessionId%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">비밀번호</label>
                    <div class="col-sm-3">
                        <input name="password" type="password" class="form-control" id="PW" placeholder="PW" value="<%=password%>">
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
                        <input name="name" type="text" class="form-control" placeholder="NAME" value="<%=name%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">성별</label>
                    <div class="col-sm-10">
                        <input name="gender" type="radio" value="남" <% if(gender.equals("남")){%>checked<%}%>>남
                        <input name="gender" type="radio" value="여" <% if(gender.equals("여")){%>checked<%}%>>여
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">생일</label>
                    <div class="col-sm-3" id="birth">
                        <input name="birthyy" type="text" class="form-control" placeholder="년(4자)" maxlength="4" size="6" value="<%=year%>">
                        <select name="birthmm" value="<%=month%>">
                            <option value="">월</option>
                            <option value="01" <%=month.equals("01")?"selected":"" %>>1</option>
                            <option value="02" <%=month.equals("02")?"selected":"" %>>2</option>
                            <option value="03" <%=month.equals("03")?"selected":"" %>>3</option>
                            <option value="04" <%=month.equals("04")?"selected":"" %>>4</option>
                            <option value="05" <%=month.equals("05")?"selected":"" %>>5</option>
                            <option value="06" <%=month.equals("06")?"selected":"" %>>6</option>
                            <option value="07" <%=month.equals("07")?"selected":"" %>>7</option>
                            <option value="08" <%=month.equals("08")?"selected":"" %>>8</option>
                            <option value="09" <%=month.equals("09")?"selected":"" %>>9</option>
                            <option value="10" <%=month.equals("10")?"selected":"" %>>10</option>
                            <option value="11" <%=month.equals("11")?"selected":"" %>>11</option>
                            <option value="12" <%=month.equals("12")?"selected":"" %>>12</option>
                        </select>
                        <input name="birthdd" type="text" class="form-control" placeholder="일" maxlength="2" size="4" value="<%=day%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">e-mail</label>
                    <div class="col-sm-4" id="email">
                        <input name="mail1" type="text" class="form-control" maxlength="50" placeholder="E-MAIL" value="<%=mail1%>">@
                        <select name="mail2">
                            <option value="naver.com" <% if(mail2.equals("naver.com")){%>selected<%}%>>naver.com</option>
                            <option value="daum.net" <% if(mail2.equals("daum.net")){%>selected<%}%>>daum.net</option>
                            <option value="google.com" <% if(mail2.equals("google.com")){%>selected<%}%>>google.com</option>
                            <option value="nate.com" <% if(mail2.equals("nate.com")){%>selected<%}%>>nate.com</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">연락처</label>
                    <div class="col-sm-3" id="phone">
                        <input name="phone" type="text" class="form-control" maxlength="50" placeholder="PHONE" value="<%=phone%>">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">주소</label>
                    <div class="col-sm-5">
                        <input name="address" type="text" class="form-control" placeholder="ADDRESS" value="<%=address%>">
                        
                    </div>
                </div>
                <div class="form-group row" id="btns">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" class="btn btn-outline-success" value="수정">
                        <a href="deleteMember.jsp" class="btn btn-outline-danger">회원탈퇴</a>
                    </div>
                </div>
                <%
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        %>
            </form>
        </div>

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
            }
        </script>
    </body>
</html>