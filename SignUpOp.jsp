<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

            Class.forName("oracle.jdbc.OracleDriver");  // thin driver is using

            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","123456");
            PreparedStatement ps=con.prepareStatement("insert into SUBADMIN values(?,?,?,?,?,?)");
            ps.setString(1,fname);
            ps.setString(2,lname);
            ps.setString(3,contact);
            ps.setString(4,emailid);
            ps.setString(5,cpass);
            ps.setString(6,pass);
            int p=ps.executeUpdate();
            if(p!=0){
            out.print("Succussfully created your account");
            out.print("<br>Account user id :"+emailid);
          out.print("<br>Password : "+pass);
           
           %>
            <a href="AdminOp.jsp">Click Back to Admin Desk</a>
            <%}
            else
            out.print("Failed  to create your account");
            con.close();    
            %>
        
    </body>
</html>