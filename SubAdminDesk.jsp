<%@page import="java.sql.*"%>
<html>
    <head>
        
    </head>
    <style>
        body{
            background-image: linear-gradient(to right,red,yellow,white); 
            }
            button{
                
                background: lightcoral;
                border-radius: 8px;
                 border: none;
                 color: white;
                 padding: 15px 32px;
                text-align: center;
                text-decoration: none;
               display: inline-block;
               font-size: 16px;
               margin: 4px 2px;
               width: 130px;
               margin-bottom: 15px;
               cursor: pointer;
              -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }
            button:hover{
                    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
                    color: blue;
            } 
            font{
                background: lightcoral;
                border-radius: 8px;
                 border: none;
                 color: white;
            }
    </style>
    <body><center><h1><font color="Darkred">Sub Admin Desk</font></h1>
        <br>
        <a href="profile" target="view"> <button>Profile</button></a><br>
        
         <a href="SubTeacherDetails.jsp" target="view"> <button>Teacher Details</button></a><br>
         <a href="SubTeacherSchedule.jsp" target="view"> <button>Teacher Schedule</button></a><br>
         <a href="StudentDetails.jsp" target="view"> <button>Student Details</button></a><br>
    </center>
    </body>
</html>