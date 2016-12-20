'use strict';
var app=angular.module('app',['ngRoute','ngResource','ngCookies']);

app.config(function($routeProvider){
	$routeProvider
	
     .when('/', {
         controller: 'HomeController',
         templateUrl: 'resources/home.jsp',
         
     })

     .when('/login', {
         controller: 'UserController',
         templateUrl: 'resources/login.jsp',
         
     })
     
     .when('/user', {
         controller: 'UserController',
         templateUrl: 'resources/user.jsp',
         
     })
     

     .when('/blog', {
         controller: 'BlogController',
         templateUrl: 'resources/blog.jsp',
        
     })
     .when('/myProfile', {
		controller : 'UserController',
		templateUrl : 'resources/profile.jsp'
	})
     .when('/friend', {
         controller: 'FriendController',
         templateUrl: 'resources/viewfriend.jsp',
        
     })
     .when('/friendrequest', {
         controller: 'FriendController',
         templateUrl: 'resources/friend.jsp',
        
     })
     .when('/userinfo', {
                controller: 'UserController',
                templateUrl: 'resources/userinfo.jsp'
            })
      .when('/userlist', {
                controller: 'UserController',
                templateUrl: 'resources/userlist.jsp'
            })
     
     .when('/chat', {
         controller: 'ChatController',
         templateUrl: 'resources/chat.jsp',
        
     })
     .when('/event', {
         controller: 'EventController',
         templateUrl: 'resources/event.jsp',
        
     })

     
     .otherwise({ redirectTo: '/' });
})
app.run( function ($rootScope, $location,$cookieStore, $http){ 
	
	$rootScope.$on('$locationChangeStart', function (event, next, current) {
        // redirect to login page if not logged in and trying to access a restricted page
        var restrictedPage = $.inArray($location.path(), ['/login','/bloglist']) === -1;
        console.log("restrictedPage:" +restrictedPage)
        var loggedIn = $rootScope.currentUser.id;
        console.log("loggedIn:" +loggedIn)
        if(!loggedIn)
        	{
        		if (restrictedPage) {
        			console.log("Navigating to login page")
        			$location.path('/login');
        		}
        	}
        else
        	{
        		var role= $rootScope.currentUser.role;
        		var userRestrictedPage=  $.inArray($location.path(), ['/userlist']) == 0;
        		
        		if(userRestrictedPage && role!='admin')
        			{
        				alert("You can not do this operation as you are logged as :" + role);
        				$location.path('/');
        			}
        	}
        
    });


// KEEP USER LOGGED IN AFTER PAGE REFRESH

$rootScope.currentUser=$cookieStore.get('CurrentUser') || {};
if($rootScope.currentUser){
	
	$http.defaults.headers.common['Authorization']='Basic'+ $rootScope.currentUser;
}
});