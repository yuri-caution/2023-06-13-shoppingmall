<%@ page contentType="text/html; charset=utf-8" %>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>상품 목록</title>
    </head>
    <body>
        <%@ include file = "menu.jsp" %>
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-6">상푸 목록</h1>
            </div>
        </div>
        <div class="container">
            <div class="row" align="center">
                <%@ include file="dbconn.jsp" %>
                <%
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;

                    try{
                        String sql= "select * from product23";
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();
                        while (rs.next()){
                    %>

                    <div class="col-md-4">
                        <%=request.getContextPath()%>
                        <img src="<%=request.getContextPath()%>/shoppingmall/upload/<%=rs.getString("fileName")%>" style="width: 100%">

                        <h3><%=rs.getString("name")%></h3>
                        <p><%=rs.getString("description")%></p>
                        <p><%=rs.getString("unitPrice")%></p>
                        <p><%=rs.getString("filename")%></p>
                        <p><a href="product.jsp?id=<%=rs.getString("productId")%>" class="btn btn-secondary"
                                role="button">상세정보</a></p>
                    </div>
                    <%

                        }
                    }catch(Exception e){
                        e.printStackTrace();
                    }
                %>
            </div>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>