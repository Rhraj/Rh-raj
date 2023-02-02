<%-- 
    Document   : StudentSignUp
    Created on : Jul 28, 2021, 9:12:43 AM
    Author     : Rockstar
--%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="Signup.css"/>
    </head>   
    <body>
       
        <form action="StudentSignUpOp.jsp" method="post">
<div class="container">
    <h1>Student Sign Up</h1>
    <hr>
    <label><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="FirstName" required>
    
     <label><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="LastName" required>
    
    <label><b>Contact No.</b></label>
    <input type="number" placeholder="Enter Contact No." name="ContactNo" required>
    
    <label><b>Email</b></label>
    <input type="email" placeholder="Enter Email Id" name="email" required>
    

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="pass" required>

    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="pswrepeat" id="cpass" required>

    
    <div class="clearfix">
      
      <button type="submit" class="signupbtn">Sign Up</button>
      <button type="button" class="cancelbtn">Cancel</button>
       
    </div>
  </div>
</form>
    </body>
    <script>
        var password= document.getElementById("pass");
        c_password=document.getElementById("cpass");
        function validatePassword()
        {
            if(password.value!=c_password.value)
            {
                c_password.setCustomValidity("password don't match");
            }
            else {
                c_password.setCustomValidity('');
            }
        }
        password.onchange= validatePassword;
        c_password.onkeyup= validatePassword;
            
        </script>
</html>