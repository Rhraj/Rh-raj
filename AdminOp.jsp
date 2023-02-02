<html>
    <head>
        
    </head>
    <style>
        body{
            background: radial-gradient(closest-side at 60% 55%, rgba(100,10,40,0),rgba(105,60,90,1));
            }
            button{
                
                background: linear-gradient(to right,#4CAF50,white);
                border-radius: 8px;
                 border: none;
                 color: darkblue;
                 padding: 15px 32px;
                text-align: center;
                text-decoration: none;
               display: inline-block;
               font-size: 17px;
               margin: 2px 2px;
               width: 130px;
               margin-bottom: 5px;
               cursor: pointer;
              -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }
            button:hover{
                    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
            } 
    </style>
    <body><center>
        <h1><font color="yellow">Admin Operation DashBoard</font></h1><br>
        <a href="AdminProfile.jsp" target="view"> <button>Profile</button></a><br>
       
        <a href="SubAdminSignUp.jsp" target="view"> <button>Sub Admin SignUp</button></a><br>
         
        
         <a href="TeacherDetails.jsp" target="view"> <button>Add/Remove Teacher</button></a><br>
         
         <a href="TeacherSchedule.jsp" target="view"> <button>Teacher Schedule</button></a><br> 
         <a href="StudentDetails.jsp" target="view"> <button>Student Details</button></a><br>
         
    </center>
    </body>
</html>