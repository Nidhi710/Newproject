
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ include file="/WEB-INF/views/index.jsp"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<!-- <script type="text/javascript" src="resources/js/angular.min.js"></script>
 -->	
<!-- <script src="resources/js/angular.js"></script> -->

<style>
body{

background-image:  url("resources/images/2560x1440-peach-crayola-solid-color-background.jpg");
}
h3 {
    color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
p{
 /* color: #c81474; */
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 30px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;

}
</style>
</head>
<body ng-app="viewblog" ng-controller="getData">
	<h3>Title:{{blog.c_title}}</h3>
	<p>Description: {{blog.c_desc}}</p>
					
<script src="resources/js/angular.min.js"></script>
	
<script>
	var viewblog = angular.module('viewblog', []);
	viewblog.controller('getData', function($scope) {
		
		$scope.blog = ${blogdetails};
		
	});
</script>		 

</body>
</html>