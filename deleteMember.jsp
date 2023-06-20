<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>
    <%
        String sessionId = (String) session.getAttribute("sessionId");
        String password=request.getParameter("password");

        PreparedStatement pstmt=null; 
        ResultSet rs=null;
        try {
                %>
                <script>
                    confirm('정말로 삭제하시겠습니까?')
                </script>
                <%
                String sql="delete from member23 where id=?";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1,sessionId);
                
                pstmt.executeUpdate();
                session.invalidate();
                response.sendRedirect("resultMember.jsp");
        }catch(Exception e){
            e.printStackTrace();
        } 
    %>
</body>
</html>