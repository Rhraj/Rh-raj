<%-- 
    Document   : TeacherScheduleRemoveOp
    Created on : Jul 24, 2021, 9:26:28 AM
    Author     : Rockstar
--%>


<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Signup.css"/>
    </head>
    <style>
        body {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email], input[type=number] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 90%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}

    </style>
    
    <body>
        <%
            String TID=request.getParameter("Tid");
                         
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
                 Statement ps=con.createStatement();
                 
                           int p=ps.executeUpdate("delete from TEACHERSCHEDULE where TID='"+TID+"'");
                           if(p!=0)
                           {
                               out.print("Succussfully REMOVED Teacher from Schedule");%>
                           <A HREF="TeacherSchedule.jsp">Back</a>
                          <% }
                           else
                               out.print("Failed  to REMOVE Teacher"+TID);
            con.close();    
            %>
    </body>    

</html>