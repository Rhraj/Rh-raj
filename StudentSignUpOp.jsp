<%-- 
    Document   : StudentSignUpOp
    Created on : Jul 28, 2021, 9:17:04 AM
    Author     : Rockstar
--%>


<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
    </head>
    <body>
        
        <%
            String fname=request.getParameter("FirstName");
            String lname=request.getParameter("LastName");
            String contact=request.getParameter("ContactNo");
            String emailid=request.getParameter("email");
            String pass=request.getParameter("psw");
            String cpass=request.getParameter("pswrepeat");
            String course="Not Registred";
            String center="Not Registred";
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
            PreparedStatement ps=con.prepareStatement("insert into StudentDetails values(?,?,?,?,?,?,?,?)");
            ps.setString(1,fname);
            ps.setString(2,lname);
            ps.setString(3,contact);
            ps.setString(4,emailid);
            ps.setString(5,pass);
            ps.setString(6,cpass);
            ps.setString(7,course);
            ps.setString(8,center);
            int p=ps.executeUpdate();
            if(p!=0){
            out.print("Succussfully created your account and welcome to registration");
              
        %>
              <jsp:include page="StudentRegistration.jsp"></jsp:include>
            <%}
            else
            out.print("Failed  to create your account");
            con.close();    
            %>
        
    </body>
</html>