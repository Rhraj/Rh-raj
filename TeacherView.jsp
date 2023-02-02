<%-- 
    Document   : TeacherView
    Created on : Jul 26, 2021, 9:34:10 AM
    Author     : Rockstar
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <form action="" id="teacher" method="post">
         
        <%
           // String TID=request.getParameter("Tid");
                           
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
                 
                 Statement ps=con.createStatement();
                                       
                           int f=0;
                           ResultSet p=ps.executeQuery("select * from TEACHERTBL");
                           out.print("<h1>Teacher Details</h1>");
                           out.print("<table border='5'><tr><th>Teacher id</th><th>Teacher Name</th><th>Contact No.</th><th>Email Id</th><th>Experience</th><th>Qualification</th><th>Specialization</th></tr>");
                           while(p.next())
                           { f=1;
                               out.print("<tr><td>"+p.getString(1)+"</td>");
                               out.print("<td>"+p.getString(2)+"</td>");
                               out.print("<td>"+p.getString(3)+"</td>");
                               out.print("<td>"+p.getString(4)+"</td>");
                               out.print("<td>"+p.getString(5)+"</td>");
                               out.print("<td>"+p.getString(6)+"</td>");
                               out.print("<td>"+p.getString(7)+"</td></tr>");
                           }
                           out.print("</table>");
                         
                              con.close();
                                      
            %>
</form>
    </body>
</html>