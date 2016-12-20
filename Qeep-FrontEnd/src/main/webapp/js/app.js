'use strict';
var app=angular.module('app',['ngRoute','ngResource','ngCookies']);

app.config(function($routeProvider){
	$routeProvider
	
     .when('/', {
         controller: 'HomeController',
         templateUrl: 'home.html',
         
     })

     .when('/login', {
         controller: 'UserController',
         templateUrl: 'login.html',
         
     })
     
     .when('/user', {
         controller: 'UserController',
         templateUrl: '/user.html',
         
     })
     

     .when('/blog', {
         controller: 'BlogController',
         templateUrl: 'blog.html',
        
     })
     .when('/myProfile', {
		controller : 'UserController',
		templateUrl : 'resources/profile.jsp'
	})
     .when('/friend', {
         controller: 'FriendController',
         templateUrl: 'friend.html',
        
     })
     .when('/friendrequest', {
         controller: 'FriendController',
         templateUrl: 'viewfriend.html',
        
     })
     .when('/userinfo', {
                controller: 'UserController',
                templateUrl: 'userinfo.html'
            })
      .when('/userlist', {
                controller: 'UserController',
                templateUrl: 'resources/userlist.jsp'
            })
     
     .when('/chat', {
         controller: 'ChatController',
         templateUrl: 'chat.html',
        
     })
     .when('/event', {
         controller: 'EventController',
         templateUrl: 'event.html',
        
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