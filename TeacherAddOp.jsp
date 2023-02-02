<%-- 
    Document   : TeacherSearchOp
    Created on : Jul 20, 2021, 9:27:47 AM
    Author     : Rockstar
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.*"%>

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
select{
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
        <form action="" id="teacher" method="post">
         
        <%
            String TID=request.getParameter("Tid");
                           
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","banku");
                 
                 Statement ps=con.createStatement();
                                       
                           int f=0;
                           ResultSet p=ps.executeQuery("select * from TEACHERTBL where tid=\'"+TID+"\'");
                           while(p.next())
                           { f=1;
                               out.print("Teacher id:<input type='text' value="+p.getString(1)+" name='t1'>");
                               out.print("<br>Teacher Name:<input type='text' value="+p.getString(2)+" name='t2'>");
                               out.print("<br>Contact NO:<input type='text' value="+p.getString(3)+" name='t3'>");
                               out.print("<br>Email:<input type='text' value="+p.getString(4)+" name='t4'>");
                               out.print("<br>Experience:<input type='text' value="+p.getString(5)+" name='t5'>");
                               out.print("<br>Qualification:<input type='text' value="+p.getString(6)+" name='t6'>");
                               out.print("<br>Specialization:<input type='text' value="+p.getString(7)+" name='t7'>");
                           }
                          %>
                                    <A HREF="TeacherDetails.jsp">Back</a>
                                            
                           <%
                                                    
                           if(f==0)
                           {  out.print("Failed  to search Teacher");
                              con.close();
                           }
                           else
                           {
            %>
            <div class="clearfix">
      
        
        <button class="signupbtn" onclick="remove()">Remove</button>
         <button class="signupbtn" onclick="update()">Update</button>
       
    </div>  <% } %>
</form>
</body>
            <script>
      function remove()
    {
        document.getElementById("teacher").action="TeacherRemoveOp.jsp";
         document.getElementById("teacher").submit();
    }
    
    function update()
    {
        document.getElementById("teacher").action="TeacherUpdateOp.jsp";
         document.getElementById("teacher").submit();
    }
    </script>
</html>