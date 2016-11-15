<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login PAGE</title>
<style type="text/css">
.msg-val {
	color: red;
}
.msg-success {
	color: green;
} 
body{
    background-color:#E6E6FA ;
    color: #0000;
}
th {
    background-color:	#2F4F4F ;
    color:#F5FFFA
}
</style>
</head>
<div ng-controller="UserController as userCtrl">
<div ng-show='userCtrl.user.errorMessage'>
<div class="alert alert-danger face in">
{{userCtrl.user.errorMessage}}
</div>
 </div>
<body   ng-app="" >
<span ng-hide="userCtrl.userLoggedIn"></span>
<form name="userForm"   ng-submit="userCtrl.login()"  method="POST" >
<div ng-if="userCtrl.flag != 'edit'">
		     <h3 align=center> Please Login Here </h3> 
		  </div>
		  <div ng-if="userCtrl.flag == 'edit'">
		     <h3> Update User for ID: {{ userCtrl.user.id }} </h3> 
		  </div>
<div class="form-group ">
      <label class="control-label col-sm-2">User ID:</label>
      <div class="col-sm-10">
        <input type="text" name="username" ng-model="userCtrl.user.username" class="form-control" id="inputSuccess">
         <span ng-show="userForm.username.$error.required" class="msg-val">User Name is required.</span>
      </div>
</div>
    <br><br>
<div class="form-group">
      <label class="control-label col-sm-2">Title:</label>
      <div class="col-sm-10">
        <input type="password" name="password" ng-model="userCtrl.user.password" class="form-control" id="inputSuccess">
        <span ng-show="userForm.password.$error.required" class="msg-val">Password is required.</span>
      </div>
</div>
   <br><br>
    
  
		       <button type="submit"  ng-click="userCtrl.login()"> Login</button> 
		       <a href="#/register"><button type="button">Register</button></a>
		       
		
		     <!-- <span ng-if="userCtrl.flag=='created'" class="msg-success">User successfully Login.</span> -->
		    
	</div>		     	     
    </form>
</body>
	


</html>