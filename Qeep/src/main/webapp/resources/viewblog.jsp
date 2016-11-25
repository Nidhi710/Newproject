<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
 <script>
	var myApp = angular.module('Blog', []);
	app.controller('viewblog', function($scope, $http, $location) {
		$scope.blog = ${viewblog};
		
	});
</script>
<style>
h3 {
    color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
</style>
</head>
<body ng-app="myApp"> <div 
ng-controller="BlogController as blogCtrl" >
	<div class="container">
    <div class="row">
        <div class="col-md-12">
			<div class="col-xs-12 col-sm-3 col-md-12">
				
				<div> <h3><span class="h4 text-uppercase">Title:{{group.c_title}}</span></h3>
				<p><span class="h4 ">Description: {{group.c_desc}}</span>	</p>
					<!-- <div class="caption"> -->
					<div class="info">
						<div class="row">
							
							<%-- <div class="col-md-12 col-sm-3 col-xs-12">
								<!-- <a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a> -->
    						     <a href="<c:url value='/blogview{{group.c_id}}' />"><span class="fa fa-list"></span>More Details</a>
    						     
    						</div> --%>
						</div>

						<p> </p>
					</div>
				</div>
			</div>
			
			</div>
	</div>
	</div>		 
</div>
</body>
</html>