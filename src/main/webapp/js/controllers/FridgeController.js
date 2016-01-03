'use strict';

/**
 * FridgeController
 * @constructor
 */
var FridgeController = function($scope, $http, $location) {
	
	$scope.menu = {};
	$scope.subTypes = {};
    $scope.params = {};
    // pn = 当前第几页;ppn=往后翻了几个下一页;size = 每页显示的数量 ;ps=显示几个选择页面的按钮;fp = 首页是否显示;pre = 上一页是否显示 ; nex = 下一页是否显示 ; ep = 尾页是否显示 
    $scope.page = {	pn:0, 
		    		ppn:0, 
		    		size:10, 
		    		ps:5, 
		    		pre : false, 
		    		next: false, 
		    		total:171 };
    $scope.ps = [1,2,3,4,5];
    
    $scope.type = "全部";
    $scope.key = "";
        
    $scope.parseParams = function(){
    	var paramString = window.location.search;
    	var params = paramString.substr(1).split('&');  

    	params.forEach(function(param){
    		var kv = param.split('=');  
    		if (kv.length = 2){
    			$scope.params[kv[0]] = decodeURI(kv[1]);
    		}
    	});
    }    
    
    $scope.fetchMenu = function() {
      	 $http.get('/menu').success(function(menu){
               $scope.menu = menu;
         });
   	}  
    
    $scope.changePageNavi = function() {
    	$scope.page.pre = $scope.page.ppn == 0;
    	$scope.page.next = ($scope.page.total / ($scope.page.size * $scope.page.ps) > $scope.page.ppn + 1);
    	console.log($scope.page.total / ($scope.page.size * $scope.page.ps));
    }
    
    $scope.resetPageNavi = function() {
    	$scope.page.pn = 0
    	$scope.page.ppn = 0;
    	$scope.changePageNavi();
    }
    
    $scope.goPage = function(pn) {
    	$scope.page.pn = pn - 1;
    	$scope.fetchSubType($scope.params.subtype);
  	} 
    
    $scope.goPrePage = function(pn) {
    	$scope.page.ppn--;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchSubType($scope.params.subtype);
    	$scope.changePageNavi();
  	} 
    $scope.goFirstPage = function(pn) {
    	$scope.resetPageNavi()
    	$scope.fetchSubType($scope.params.subtype);
  	}
    
    $scope.goNextPage = function(pn) {
    	$scope.page.ppn++;
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchSubType($scope.params.subtype);
    	$scope.changePageNavi();
  	} 
    $scope.goLastPage = function(pn) {
    	$scope.page.ppn = parseInt($scope.page.total / ($scope.page.size * $scope.page.ps));
    	$scope.page.pn = $scope.page.ppn * $scope.page.ps;
    	$scope.fetchSubType($scope.params.subtype);
    	$scope.changePageNavi();
  	} 
    
    $scope.fetchSubType = function(subtype) {
        $http.get('/hb/大家电/'+subtype, {params: {pn:$scope.page.pn, size:$scope.page.size}}).success(function(subTypes) {  
       	 $scope.subTypes = subTypes;
        });  
 	} 
    
    $scope.changeSubType = function(type) {
    	$scope.resetPageNavi();
    	$scope.fetchSubType(type);
        $scope.params.subtype = type;
        
  	} 
    
    $scope.search = function() {
      	window.location = "/search?type=" + $scope.type + "&key=" + $scope.key;
   	} 
    
    $scope.changeSearchType = function(type) {
    	 $scope.type = type;
   	}  
    
    $scope.changePageNavi();
    $scope.parseParams();
    $scope.fetchMenu();
    $scope.fetchSubType($scope.params.subtype); 
};