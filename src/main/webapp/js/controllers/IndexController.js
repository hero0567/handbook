'use strict';

/**
 * IndexController
 * @constructor
 */
var IndexController = function($scope, $http, $location) {
	
	$scope.menu = {};
    $scope.handbook = [];
    
    $scope.size = 2;    
    $scope.type = "全部";
    $scope.key = "";
    
    $scope.fetchMenu = function() {
     	 $http.get('/menu').success(function(menu){
              $scope.menu = menu;
              $scope.fetchSubTypes();
        });
  	}  
    
    $scope.fetchSubTypes = function() {
    	angular.forEach($scope.menu, function (m) {
    		$http.get('/hb/大家电/'+m.subType+'?size=' + $scope.size).success(function(airCleaners){
                $scope.handbook.push({name:m.subType, count:m.count, subType: airCleaners});                
    		});
    	});    	
  	} 
    
    $scope.search = function() {
      	window.location = "/search?key=" + $scope.key;
   	} 
    
    $scope.fetchMenu();
};