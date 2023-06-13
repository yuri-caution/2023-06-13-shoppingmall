<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    <%
        String id=request.getParameter("id");
        String password=request.getParameter("password");

        PreparedStatement pstmt=null; 
        ResultSet rs=null;
        try {
                String sql="select id,password from member23 where id=?";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1,id);
                rs=pstmt.executeQuery();
                if(rs.next()){
                    String ID=rs.getString(1);
                    String PW=rs.getString(2);
                    if(name.equals(PW)){
                        sql="delete from member23 where id=?";
                        pstmt=conn.prepareStatement(sql);
                        pstmt.setString(1,id);
                        %>
                        <script>
                            confirm('정말로 삭제하시겠습니까?')
                        </script>
                        <%
                        pstmt.executeUpdate();
                        %>
                        <script>
                            alert("삭제가 완료되었습니다!")
                            location.href="index.jsp"
                        </script>
                        <%
                    }else{
                        %>
                        <script>
                            alert("아이디가 일치하지 않습니다.")
                        </script>
                        <%
                    }
                }else{
                    %>
                    <script>
                        alert("비밀번호가 일치하지 않습니다.")
                        history.back(-1);
                    </script>
                    <%
                }
        }catch(Exception e){
            e.printStackTrace();
        } %>
</body>
</html>