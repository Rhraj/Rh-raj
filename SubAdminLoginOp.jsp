
<%-- 
    Document   : SubAdminLoginOp
    Created on : 17 Jul, 2021, 1:33:27 PM
    Author     : RAMUCHA
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        
    </head>
    <body>
       <% 
            String user=request.getParameter("uname1");
            String pass=request.getParameter("psw1");
            
           Class.forName("oracle.jdbc.OracleDriver");
           Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","123456");
           String sql="select * from SUBADMIN where emailid=\'"+user+"\'"+" and pass=\'"+pass+"\'";
           Statement stat = conn.createStatement();
         //  stat.setString(1,user);
         //  stat.setString(2,pass);
           ResultSet rs=stat.executeQuery(sql);
           int flag=0;
           while(rs.next())
           {
               flag=1;
               out.print("Successfully Logined");
               %>
              <jsp:include page="SubAdminDesk.jsp"></jsp:include>
              <%
              // conn.close();
           }
           if(flag==0)
           {
               out.print("login failed");
            %>
               <jsp:include page="SubAdminLogin.jsp"></jsp:include>
               <%
                   
           }
           conn.close();
              
             
              
              %>
            
              
              
    </body>
</html>