<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      <a class="navbar-brand" href="#"><img src="resources/images/icon-collaboration.png" width="40" height="30"  alt="Image"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#/">Home</a></li>
     <li><a href="#/userlist">UserList</a></li>
      <li><a href="#/blog">Blog</a></li>
      
      <li><a href="#/event">Event</a></li>
      <li><a href="#/userinfo">UserDetail</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Friend
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#/friend">Search</a></li>
          <li><a href="#/friendrequest">GetFriend</a></li>
        </ul>
      </li> 
      <li><a href="#/chat">ChatForum</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <div ng-show="currentUser !== null">
    <div ng-hide=="currentUser !== null">
      <!-- <li><a href="#/user"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
      <div ng-controller="HomeController as homeCtrl">
      {{currentUser.userName}}
       <!-- <div ng-hide=="currentUser !=null">  --> 
      <div ng-if="currentUser.userName == null">
      <c:if test="${currentUserName == null}">
     <!--  <li ><a href="#/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
     <!--  <button type="submit" class="btn btn-primary" href="/login"> Login</button> -->
       <li><a href="#/login"><button type="submit" class="btn btn-primary"> Login</button></a></li>
      </c:if>
      </div>
      </div>
      </div>
      <div ng-controller="UserController as userCtrl">
      <div ng-controller="HomeController as homeCtrl">
      
       <!-- <div ng-hide=="currentUser !=null">  --> 
      <div ng-hide="currentUser.userName != null">
      <c:if test="${currentUserName != null}">
      <button type="submit" class="btn btn-primary" ng-click="userCtrl.logout()"> Logout</button>
      </c:if>
      </div> 
      </div>
     </div>
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
<script src="resources/js/sockjs.js"></script>
<script src="resources/js/stomp.min.js"></script>


<script src="resources/js/app.js"></script>
<script src="resources/js/UserController.js"></script>
<script src="resources/js/HomeController.js"></script>
<script src="resources/js/ChatController.js"></script>
<script src="resources/js/BlogController.js"></script>
<script src="resources/js/EventController.js"></script>
<script src="resources/js/FriendController.js"></script> 
<script src="resources/js/FriendService.js"></script> 
<script src="resources/js/UserService.js"></script> 
<script src="resources/js/ChatService.js"></script> 

 
</body>
</html>