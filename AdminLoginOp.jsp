<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user=request.getParameter("u1");
            String pass=request.getParameter("p1");
            if(user.equals("abc") && pass.equals("123"))
            {
                out.print("<h1 align='center'><font color='green'>Succussfully Logined</font></h1>");
                %>
                <jsp:include page="AdminOp.jsp"></jsp:include>
               <% }
            else
            {
                out.print("<h1 align='center'><font color='red'>Login operation failed</font></h1>");
                out.print("<a href='AdminLogin.jsp'>Back to Login Page</a>");
            }
            
            %>
    </body>
</html>