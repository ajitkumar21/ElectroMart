/// <reference path="./angular.min.js"/>



(function(){
	var app = angular.module('webapp', []);
	app.controller('mainController', ['$scope','$http', function($scope,$http) {
	 var me=this;
	 me.user=[];
		$http.get('/electromart/product/all').success(function(data){
			me.user=data;
		});
	}]);
})();

