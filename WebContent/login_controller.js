var myApplication = angular.module('myApplication', ['ngRoute', 'validController','registerModule',"ui.bootstrap"]);

myApplication.config(['$routeProvider',
    function($routeProvider) {
        $routeProvider.
        when('/main', {
            templateUrl: 'loginPage.jsp',
            controller: 'LoginCtrl'
            	
        }).when('/welcome', {
            templateUrl: 'Welcome.jsp'
           
        }).when('/register', {
            templateUrl: 'Register.jsp',
            controller: 'RegCtrl'
        }).when('/registered', {
            templateUrl: 'Registered.jsp'
        }).otherwise({
            redirectTo: '/main'
        });
    }]);




