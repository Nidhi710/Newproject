 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<title>Insert title here</title>


</head>
<body ng-app="myApp">
<div ng-controller="UserController as userCtrl" class="container">
  <table class="table table-bordered">
        <thead>
            <tr>
            	<th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Mobile Number</th>
                <th>Username</th>
                <th>Password</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="row in userCtrl.users">
            	<td><span ng-bind="row.id"></span></td>
	        	<td><span ng-bind="row.name"></span></td>
	         	<td><span ng-bind="row.email"></span></td>
	         	<td><span ng-bind="row.address"></span></td>
	         	<td><span ng-bind="row.mobile"></span></td>
	         	<td><span ng-bind="row.name"></span></td>
	         	<td><span ng-bind="row.password"></span></td>
                <td><a href="" ng-click="userCtrl.deleteUser(row.id)">delete</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>