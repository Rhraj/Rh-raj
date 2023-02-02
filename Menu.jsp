<%-- 
    Document   : menu
    Created on : Jul 3, 2021, 9:30:51 AM
    Author     : Rockstar
--%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <style>
        body{
            background: radial-gradient(closest-side at 60% 55%, rgba(100,10,40,0),rgba(105,60,90,1));
            }
            button{
                /background-color: #4CAF50;
                background: linear-gradient(to right,#4CAF50,white);
                border-radius: 10px;
                 border: none;
                 color: black;
                 padding:auto;
                text-align: center;
                text-decoration: none;
               display: inline-block;
               font-size: 10vw;
               margin:inherit;
               width:100%;
               margin-bottom: 5px;
               cursor: pointer;
              -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }
            button:hover{
                    box-shadow: 0 12px 16px 0 rgba(255,0,0,0.24), 0 17px 50px 0 rgba(255,0,0,0.19);
                    color: #f44336;
                    -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            } 
           
    </style>
    <body>
        <div class="mySlides fade"><h3><font color="orange" size="5px" >&nbsp;&nbsp;&nbsp;<b>Student Section</b></font></h3></div> 
        <a href="display.jsp" target="view"> <button><b>Home</b></button></a><br>
         <a href="About.jsp" target="view"> <button><b>About</b></button></a><br>

         <a href="TeacherView.jsp" target="view"><button><b>Teachers</b></button></a><br>
         <a href="StudentSignUp.jsp" target="view">    <button><b>Sign Up</b></button></a>
        <br>
        
        <a href="StudentLogin.jsp" target="view">        <button><b>Login</b></button>
        </a><br>
         <a href="Logout.jsp" target="view"> <button><b>Logout</b></button></a><br>
        <a href="StudentLogin.jsp" target="view"> <button><b>Register</b></button></a><br>
         <a href="Help.jsp" target="view"> <button><b>Help</b></button></a><br>
        
        
    </body>
    
</html>