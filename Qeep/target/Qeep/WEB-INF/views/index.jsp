<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html >
<html ng-app="app">
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="resources/css/bootstrap-theme.min.css" />

  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>

  
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#/blog">Blog <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#/blog">Add Blog</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#/event">Event</a></li>
      <li><a href="#"></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <div ng-show="currentUser"></div>
      <li><a href="#/user"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <button href="#/logout" type="button" class="btn" data-color="info" tabindex="7">Logout</button>
     <!--  <li><a href="#/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li> -->
    </ul>
  </div>
</nav>
<div ng-view></div>
<script src="resources/js/jquery-1.12.4.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>  

<script src="resources/js/angular.js"></script>
<script src="resources/js/angular-resource.min.js"></script>
<script src="resources/js/angular-route.js"></script>
<script src="resources/js/angular-cookies.js"></script>

<script src="resources/js/app.js"></script>
<script src="resources/js/UserController.js"></script>
<script src="resources/js/HomeController.js"></script>
<script src="resources/js/BlogController.js"></script>
<script src="resources/js/EventController.js"></script>
<script src="resources/js/UserService.js"></script> 

 
</body>
</html>