<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
 <style>

  #section0 {padding-top:0px;height:80px;color: #fff; background-color: #e68a00;}
 #section1 {padding-top:40px;height:700px;color: #fff; background-color: #990000;}
 /*  #section2 {padding-top:50px;height:600px;color: #fff; background-color: #990000;} */
  #section3 {padding-top:60px;height:600px;color: #fff; background-color: #00004d;}
  #section4 {padding-top:50px;height:600px;color: #fff; background-color: #ff9800;}
  /* #section42 {padding-top:50px;height:500px;color: #fff; background-color: #990000;} */
   
  
  
  </style> 
  

<body>
 <!-- <div ng-controller="HomeController as homeCtrl">
 <div ng-hide="currentUser==''">
   Welcome:{{currentUser.username}}
   role:{{currentUser.role}}
</div>
</div> -->

<div id="section0" class="container-fluid">
  <div class="col-xs-17 col-md-8"> 
  <div ng-controller="HomeController as homeCtrl">
 <div ng-hide="currentUser==''">
  <!--  Welcome:{{currentUser.username}}
   role:{{currentUser.role}} -->
</div>
<h3>welcome: ${currentUserName}</h3>
</div>
  </div> 
  
</div>
<div id="section1" class="container-fluid"> 
<h1>Blog</h1>
<img src="resources/images/banner cantinho do blog.png" alt="Flower">
 

</br>

 <!-- <img src="resources/images/camera-shiraz-md.png" alt="Flower">
 <img src="resources/images/hand-holding-a-mobile_459-99.jpg" alt="Flower"> -->

     
</div>  
</div>


<div id="section3" class="container-fluid">
  <h1>Event</h1>
  <img src="resources/images/hands in the air header.png">
</div>
<div id="section4" class="container-fluid">
<div class="col-sm-5">

  <h1>Join millions of others</h1>
   <p>Whether sharing your expertise, breaking news, or whatever is on your mind, you are in good company with our friends </p>
</div>
  <div class="col-sm-4">
  <img src="resources/images/Cpb1a7HVUAIEFRJ.png" alt="Flower">
  </div>
  
</div>

</body>
</html>