<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Signup.css"/>
    </head>   
    <body>
       
        <form action="" method="post" id="teacher">
<div class="container">
    <h1>Main Admin Teacher Details</h1><A HREF="AdminOp.jsp">Back to Admin DashBoard</a>&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;<a href="TeacherView.jsp" target="view">View Teachers</a><br>
    <hr>
    <label><b>Teacher Id</b></label>
    <input type="text" placeholder="Enter Teacher Id" name="Tid" ID="TT">
    
     <label><b>Teacher Name</b></label>
    <input type="text" placeholder="Enter Teacher Name" name="TName">
    
    <label><b>Contact No.</b></label>
    <input type="number" placeholder="Enter Contact No." name="ContactNo">
    
    <label><b>Email</b></label>
    <input type="email" placeholder="Enter Email Id" name="email">
    

    <label><b>Experience</b></label>
    <input type="number" placeholder="Enter Experience" name="exp">
    
    <label><b>Qualification</b></label>
    <input type="text" placeholder="Enter Qualification" name="qual">
    
    <label><b>Specialization</b></label>
    <input type="text" placeholder="Enter Paper" name="spl">
    
    
    <div class="clearfix">
      
        <button class="signupbtn" onclick="add()">Add</button>
         <button class="signupbtn" onclick="search()">Search</button>
        <button class="signupbtn" onclick="remove()">Remove</button>
         <button class="signupbtn" onclick="update()">Update</button>
       
    </div>
  </div>
</form>
    </body>
    <script>
       
    function add()
    {
        document.getElementById("teacher").action="TeacherAddOp.jsp";
         document.getElementById("teacher").submit();
    }
    
    function search()
    {
        document.getElementById("teacher").action="TeacherSearchOp.jsp";
         document.getElementById("teacher").submit();
    }
        
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