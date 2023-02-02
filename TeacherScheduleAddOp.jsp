<%-- 
    Document   : TeacherScheduleAddOp
    Created on : Jul 24, 2021, 9:14:41 AM
    Author     : Rockstar
--%>

<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Signup.css"/>
    </head>   
    <body>
         
        <%
            String Tid=request.getParameter("Tid");
            String Days=request.getParameter("Days");
            String Time=request.getParameter("Time");
            String Subject=request.getParameter("Sub");
                
                 
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
                 PreparedStatement ps=con.prepareStatement("insert into TEACHERSCHEDULE values(?,?,?,?)");
                 ps.setString(1,Tid);
                 ps.setString(2,Days);
                 ps.setString(3,Time);
                 ps.setString(4,Subject);
                 int p=ps.executeUpdate();
                           if(p!=0)
                           {
                               out.print("SUCCUSSFULLY ADDED TEACHER'S SCHEDULE");%>
                           <A HREF="TeacherSchedule.jsp">Back</a>
                          <% }
                           else
                               out.print("Failed  to Add Teacher");
            con.close();    
            %>        
                           
                           
                           
      
    </body>
</html>