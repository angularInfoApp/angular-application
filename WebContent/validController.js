var validController = angular.module('validController', []);

validController.controller('LoginCtrl', ['$scope', '$http', '$rootScope', "$location",
    function($scope, $http,$rootScope, $location) {
        $http.get('./user.json').success(function(data) {
            $scope.user = data;
           // console.log(data);
            $scope.validate = function() {
            	
                	 // Trigger validation flag.
                	  $scope.submitted = true;

                	  // If form is invalid, return and let AngularJS show validation errors.
                	  if ($scope.loginForm.$invalid) {
                	    return;
                	  }
            	            	
                angular.forEach($scope.user, function(x) {
                    if ($scope.email === x.email && $scope.password === x.password) {
                       $location.path('welcome');
                      
                    }
                   
                    
                    
                  
                });
                
            };

        });
    }]);
 