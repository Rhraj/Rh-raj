<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="Styles.css"/>
    </head>
    <body>
      <h1> Sub Admin Login Form</h1>  
      <form action="SubAdminLoginOp.jsp" method="post">
      <div class="imgcontainer"> 
          
      
          <img src="login.jpg"  width="126" height="126">
          
         
      
      
      </div>

  <div class="container imgcontainer">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname1" required><br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw1" required>
        
    <button type="submit">login</button>
    <label>
     
    </label><br>
  </div>

  <div class="container" style="background-color:#f1f1f1">
      <button type="button" class="cancelbtn">Cancel</button>
    
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
    
    </body>
</html>
