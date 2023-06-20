<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp example</title>
</head>
<body>
    <%@ include file="dbconn.jsp"%>;
    <%
        request.setCharacterEncoding("utf-8");

        PreparedStatement pstmt = null;

        String id=request.getParameter("id");
        String password=request.getParameter("password");
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String birthyy=request.getParameter("birthyy");
        String birthmm=request.getParameter("birthmm");
        String birthdd=request.getParameter("birthdd");
        String birth=birthyy + "-" + birthmm + "-" + birthdd;
        String mail1=request.getParameter("mail1");
        String mail2=request.getParameter("mail2");
        String mail=mail1 + "@" + mail2;
        String phone1=request.getParameter("phone1");
        String phone2=request.getParameter("phone2");
        String phone3=request.getParameter("phone3");
        String phone=phone1+phone2+phone3;
        String address=request.getParameter("address");

        try {
            String sql="insert into member23 values(?,?,?,?,?,?,?,?,sysdate())";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,id);
            pstmt.setString(2,password);
            pstmt.setString(3,name);
            pstmt.setString(4,gender);
            pstmt.setString(5,birth);
            pstmt.setString(6,mail);
            pstmt.setString(7,phone);
            pstmt.setString(8,address);
            pstmt.executeUpdate();
            response.sendRedirect("resultMember.jsp?msg=1");
        }catch(SQLException e){
            e.printStackTrace();
        }
        %>
</body>
</html>