<%-- 
    Document   : Display
    Created on : Jun 23, 2021, 5:28:31 PM
    Author     : Rockstar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <style>
       #myDIV {
  
  background: lightgreen url('smiley.jpg') no-repeat top left/40px 40px;
  animation: mymove 5s infinite;
}

@keyframes mymove {
  50% {background: indianred bottom right/50px 50px;}
}
   </style>
    <body id="myDIV">
    <div class="w3-content w3-section" style="max-width:1050px">
        <center>
  <img class="mySlides w3-animate-fading" src="images.jpg"  style="width:70%;border-radius: 50%;">
  <img class="mySlides w3-animate-fading" src="image3.jpg" style="width:65%;border-radius: 50%;">
  <img class="mySlides w3-animate-fading" src="image1.png" style="width:70%;border-radius: 60%;">
  <img class="mySlides w3-animate-fading" src="image2.jpg" style="width:70%;border-radius: 70%;">
        </center>
  </div>

<script>
var myIndex = 0;
moveslide();

function moveslide() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(moveslide, 4000);    
}
</script>
       
    </body>
</html>