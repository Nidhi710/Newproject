<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"href="resources/css/bootstrap-theme.min.css" />
<!-- <script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-resource.min.js"></script>
<script src="resources/js/event.js"></script> 
<script src="resources/js/jquery-1.12.4.min.js"></script>
 <script src="resources/js/bootstrap.min.js"></script>   -->
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/>
    
  </head>
  <body >
   <div ng-controller="EventController as eventCtrl">
       <div class="container">
	<form name="eventForm" method="POST">
	    <table>
		<tr><td colspan="2">
		  <div ng-if="eventCtrl.flag != 'edit'">
		     <h3> Add New Event </h3> 
		  </div>
		  <div ng-if="eventCtrl.flag == 'edit'">
		     <h3> Update Event for ID: {{ eventCtrl.event.c_id }} </h3> 
		  </div> </td>
		</tr>
		
		<div class="form-group">
		<tr>
		      <td>Event Name: </td> <td><input type="text" class="form-control" name="c_name" ng-model="eventCtrl.event.c_name" required/> 
         	      <span ng-show="eventForm.c_name.$error.required" class="msg-val">Event is required.</span> </td>
		</tr>
		</div>
		
		<div class="form-group">
		<tr>
		      <td>Venue: </td> <td> <input type="text" class="form-control" name="c_venue" ng-model="eventCtrl.event.c_venue" required/> 
	              <span ng-show="eventForm.c_venue.$error.required" class="msg-val">Venue is required.</span> </td>
		</tr></br>
		
		<div class="form-group">
		<tr>
		      <td>Description: </td> <td> <input type="text"  class="form-control" name="c_desc" ng-model="eventCtrl.event.c_desc" required/> 
	              <span ng-show="eventForm.c_desc.$error.required" class="msg-val">Description is required.</span> </td>
		</tr>
		
		<div class="form-group">
		<tr>
		      <td>Date&Time: </td> <td> <input type="text"  class="form-control" name="c_dateTime" ng-model="eventCtrl.event.c_dateTime" required/> 
	              <span ng-show="eventForm.c_dateTime.$error.required" class="msg-val">Date&Time is required.</span> </td>
		</tr>
		
		<div class="form-group">
		<tr>
		     <td colspan="2"> <span ng-if="eventCtrl.flag=='created'" class="msg-success">Event successfully added.</span>
		     <span ng-if="eventCtrl.flag=='failed'" class="msg-val">Event already exists.</span> </td>
		</tr>
	        <tr><td colspan="2">
	            <div ng-if="eventCtrl.flag != 'edit'">
		       <input  type="submit" ng-click="eventCtrl.createEvent()" value="Add Event"/> 
		       <input type="button" ng-click="eventCtrl.reset()" value="Reset"/>
		    </div>
		    <div ng-if="eventCtrl.flag == 'edit'">
		       <input  type="submit" ng-click="eventCtrl.updateEventDetail()" value="Update Event"/> 	
			   <input type="button" ng-click="eventCtrl.cancelUpdate()" value="Cancel"/>				   
		    </div> </td>
		</tr>
		<tr>
		     <td colspan="2"> <span ng-if="eventCtrl.flag=='deleted'" class="msg-success">Event successfully deleted.</span>
		</tr>
	    </table>     
	</form>
        <table>
	      <tr><th>Event Id</th> 
	          <th>Name</th> 
	          <th>Venue</th> 
	          <th>Description</th> 
	          <th>Date&Time</th>
	      </tr>
	      <tr ng-repeat="row in eventCtrl.events">
	         <td><span ng-bind="row.c_id"></span></td>
	         <td><span ng-bind="row.c_name"></span></td>
	         <td><span ng-bind="row.c_venue"></span></td>
	         <td><span ng-bind="row.c_desc"></span></td>
	         <td><span ng-bind="row. c_dateTime"></span></td>
	         <td>
		    <input type="button" ng-click="eventCtrl.deleteEvent(row.c_id)" value="Delete"/>
		    <input type="button" ng-click="eventCtrl.edit(row.c_id)" value="Edit"/>
		    <span ng-if="eventCtrl.flag=='updated' && row.c_id==eventCtrl.updatedId" class="msg-success">Event successfully updated.</span> </td> 
	      </tr>	
	</table>
	</div>     
 </body>
</html>  