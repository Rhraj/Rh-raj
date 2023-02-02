<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="signup.css"/>
    </head>   
    <body>
         
        <%
            String TID=request.getParameter("Tid");
            String TNAME=request.getParameter("TName");
              String CONTACT=request.getParameter("ContactNo");
               String EMAIL=request.getParameter("email");
                String EXP=request.getParameter("exp");
                 String QUAL=request.getParameter("qual");
                  String SPL=request.getParameter("spl");
                 
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
                 PreparedStatement ps=con.prepareStatement("insert into SUBADMINTEACHERTBL values(?,?,?,?,?,?,?)");
                 ps.setString(1,TID);
                   ps.setString(2,TNAME);
                     ps.setString(3,CONTACT);
                       ps.setString(4,EMAIL);
                         ps.setString(5,EXP);
                           ps.setString(6,QUAL);
                           ps.setString(7,SPL);
                           
                           
                           int p=ps.executeUpdate();
                           if(p!=0)
                           {
                               out.print("Succussfully ADDED Teacher");%>
                           <A HREF="SubTeacherDetails.jsp">Back</a>
                          <% }
                           else
                               out.print("Failed  to Add Teacher");
            con.close();    
            %>
      
    </body>
</html>