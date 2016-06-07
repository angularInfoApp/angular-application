var registerController=angular.module('registerModule',['ui.bootstrap']);


registerController.factory('Domain', function(){
	  var domains = ["Java", "JavaScript", "Jquery", "php", "C#", "C++", "C", ".Net", "Angular Js", "Node Js", "Mongo DB", "HTML", "CSS3", "Struts", "Spring", "Hibernate", "DB2", "My SQL", "Bootstrap", "Ajax", "json"];
	  
	  return domains;
	  
	});

registerController.controller('RegCtrl',function($scope,$rootScope,$location,Domain){
	
	/* $scope.today = function() {
		    $scope.dt = new Date();
		  };
		  $scope.today();*/

		  $scope.clear = function() {
		    $scope.dt = null;
		  };

		  $scope.inlineOptions = {
		    customClass: getDayClass,
		    minDate: new Date(),
		    showWeeks: true
		  };

		  $scope.dateOptions = {
		    dateDisabled: disabled,
		    formatYear: 'yy',
		    maxDate: new Date(2020, 5, 22),
		    minDate: new Date(),
		    startingDay: 1
		  };

		  // Disable weekend selection
		  function disabled(data) {
		    var date = data.date,
		      mode = data.mode;
		    return mode === 'day' && (date.getDay() === 0 || date.getDay() === 6);
		  }

		  $scope.toggleMin = function() {
		    $scope.inlineOptions.minDate = $scope.inlineOptions.minDate ? null : new Date();
		    $scope.dateOptions.minDate = $scope.inlineOptions.minDate;
		  };

		  $scope.toggleMin();

		  $scope.open1 = function() {
		    $scope.popup1.opened = true;
		  };

		  $scope.open2 = function() {
		    $scope.popup2.opened = true;
		  };

		  $scope.setDate = function(year, month, day) {
		    $scope.dt = new Date(year, month, day);
		  };

		  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
		  $scope.format = $scope.formats[0];
		  $scope.altInputFormats = ['M!/d!/yyyy'];

		  $scope.popup1 = {
		    opened: false
		  };

		  $scope.popup2 = {
		    opened: false
		  };

		  var tomorrow = new Date();
		  tomorrow.setDate(tomorrow.getDate() + 1);
		  var afterTomorrow = new Date();
		  afterTomorrow.setDate(tomorrow.getDate() + 1);
		  $scope.events = [
		    {
		      date: tomorrow,
		      status: 'full'
		    },
		    {
		      date: afterTomorrow,
		      status: 'partially'
		    }
		  ];

		  function getDayClass(data) {
		    var date = data.date,
		      mode = data.mode;
		    if (mode === 'day') {
		      var dayToCheck = new Date(date).setHours(0,0,0,0);

		      for (var i = 0; i < $scope.events.length; i++) {
		        var currentDay = new Date($scope.events[i].date).setHours(0,0,0,0);

		        if (dayToCheck === currentDay) {
		          return $scope.events[i].status;
		        }
		      }
		    }

		    return '';
		  }
	
$scope.selected = undefined;
	
	$scope.domains = Domain;
	
	
	
    $scope.register=function(user){
    	 // Trigger validation flag.
    	  $scope.submitted = true;

    	  // If form is invalid, return and let AngularJS show validation errors.
    	  if ($scope.registerForm.$invalid) {
    	    return;
    	  }
    	  
    	 
        $rootScope.user={};
        $rootScope.user.name=user.name;
        $rootScope.user.email=user.email;
        $rootScope.user.age=user.age;
        $rootScope.user.experience=user.experience;
        $rootScope.user.dt=$scope.dt.toLocaleDateString();
        $rootScope.user.tech=$scope.selected;
        $rootScope.user.phone=user.phone;
        $location.path('registered');
        
    };
});