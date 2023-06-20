<%@ page  contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ include file="dbconn.jsp" %>

<%
    request.setCharacterEncoding("utf-8");
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    String id=request.getParameter("id");
    String password=request.getParameter("password");

    String PASS ="";
    try {
        String sql="select password from member23 where id=?";
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        rs=pstmt.executeQuery();
        if(rs.next()){
            PASS=rs.getString(1);
            if(password.equals(PASS)){ 
                session.setAttribute("sessionId", id);
                response.sendRedirect("resultMember.jsp?msg=2");
            }else {
                response.sendRedirect("loginMember.jsp?error=1");
            }
        }else{
            response.sendRedirect("loginMember.jsp?error=1");
        }
    } catch(Exception e) {
        e.printStackTrace();
    }   
        
%>    
