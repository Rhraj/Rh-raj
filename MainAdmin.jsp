<%@page import="java.sql.*"%>
<html>
    <head>
        
    </head>
    <style>
        body{
            background: radial-gradient(closest-side at 60% 55%, rgba(100,10,40,0),rgba(105,60,90,1));
            }
            button{
               
                background: linear-gradient(to right,#4CAF50,white);
                border-radius: inherit;
                 border: none;
                 color: darkblue;
                 padding: 20px 15px;
                text-align: center;
                text-decoration: none;
               display: inline-block;
               font-size: 12vw;
               margin: 0px 0px;
               width: 100%;
             
               cursor: pointer;
              -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }
            button:hover{
                    box-shadow: 0 12px 16px 0 rgba(255,0,10,0.30), 0 17px 50px 0 rgba(250,0,10,0.25);
             color: yellow;
                    -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            } 
    </style>
    <body>
        
        <a href="AdminDesk.jsp" target="view"> <button>Admin Login</button></a><br>
    </body>
</html>