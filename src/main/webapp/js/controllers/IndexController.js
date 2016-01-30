'use strict';

/**
 * IndexController
 * @constructor
 */

app.controller("IndexController", function($scope, $http, $location, $window, userService) {
		
	$scope.menu = {};    
    
    userService.initUser();
	$scope.user = userService.getUser();
    
    $scope.fetchMenu = function() {
     	 $http.get('/menu').success(function(menu){
              $scope.menu = menu;
        });
  	}  
    
    $scope.changeMenu = function(type, subtype, count) {
    	window.location = "/appliance?type="+type +"&subtype="+subtype +"&count="+count;
  	}  
    
    $scope.fetchMenu();
});