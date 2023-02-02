<%-- 
    Document   : TeacherSchedule
    Created on : Jul 23, 2021, 9:22:53 AM
    Author     : Rockstar
--%>



<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
        <link rel="stylesheet" type="text/css" href="Signup.css"/>
    </head>  
    <style>
        select{
   width: 100%;
  padding: 5px;
  margin: 5px 0 5px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1; 
}
    </style>
<body>
    <%
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
    String sql="select * from TEACHERTBL";
    Statement stat=conn.createStatement();
    ResultSet rs=stat.executeQuery(sql);
    int flag=0;
 %>
    <form action="" method="post" id="teacher">
        <div class="container">
        <h1> Teacher Schedule </h1> <A HREF="AdminOp.jsp">Back to Admin DashBoard</a>
        <hr>
        <table>
        <tr>
        <td><lable><b>Teacher Id</b></lable></td>
        <td> <select name="Tid" required>
        <% while(rs.next())
        { %>
        <option value="<%= rs.getString(1)%>"><%= rs.getString(1)%></option>
        <%}
        conn.close(); %>
        </select> </td>
        </tr>
        <tr>
        <td> <label><b>Days</b></label></td>
        <td> <select name="Days" required>
        <option value="MWF">MWF</option>
        <option value="TTS">TTS</option>
        </select> </td>
        </tr>
        <tr>
        <td> <label><b>Time</b></label></td>
        <td> <select name="Time" required>
           <option value="6AM">6AM</option> 
           <option value="7AM">7AM</option> 
           <option value="8AM">8AM</option> 
           <option value="9AM">9AM</option> 
           <option value="10AM">10AM</option> 
           <option value="11AM">11AM</option> 
           <option value="12AM">12AM</option> 
        </select>
        </td>
        </tr>
        <tr>
        <td>
        <label><b>Subject</b></label></td>
        <td><input type="text" name="Sub"></td>
        </tr>
        </table>
        <div class="clearfix">
                            <button class="signupbtn" onclick="add()">Add</button>
                            <button class="cancelbtn" onclick="search()">Search</button>
                            <button class="cancelbtn" onclick="remove()">Remove</button>
                            <button class="cancelbtn" onclick="update()">Update</button>
        </div>
        </div>
        </form>
</body>
</table>
</form>
    <script>
    function add()
    {
        document.getElementById("teacher").action="TeacherScheduleAddOp.jsp";
        document.getElementById("teacher").submit();
    }
    
    function search()
    {
        document.getElementById("teacher").action="TeacherScheduleSearchOp.jsp";
        document.getElementById("teacher").submit();
    }
        
    function remove()
    {
        document.getElementById("teacher").action="TeacherScheduleRemoveOp.jsp";
        document.getElementById("teacher").submit();
    }
    
    function update()
    {
        document.getElementById("teacher").action="TeacherScheduleUpdateOp.jsp";
        document.getElementById("teacher").submit();
    }
        </script>

</html>