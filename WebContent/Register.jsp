<body style="background-color:#F0F0F0">
<div class="container">
  <form role="form" name="registerForm" class="row" novalidate="novalidate">
   <div class="col-md-5">
    <div class="form-group">
      <label for="Name">Enter Name:</label>
            <input type="text" class="form-control" id="name" name="name" ng-model="user.name" placeholder="Enter name" required="required">
             <span class="label label-danger" data-ng-show="submitted && registerForm.name.$error.required">Required Field!</span>
    </div>
    <div class="form-group">
      <label for="Email">Email:</label>    
      <input type="email" name="email" class="form-control" id="email" ng-model="user.email" placeholder="Enter email" required="required">
       <span class="label label-danger" data-ng-show="submitted && registerForm.email.$error.required">Required Field!</span>
      <span class="label label-danger" data-ng-show="submitted && registerForm.$error.email">Invalid email format!</span>
    </div>
     <div class="form-group">
     <label for="phoneNumber">Phone Number</label>
          <input type="number" class="form-control" id="phone" name="phoneNumber" ng-model="user.phone" ng-minlength="10" ng-maxlength="10" placeholder="Enter phoneNumber"  required="required">
     	<span class="label label-danger" data-ng-show="submitted && registerForm.phoneNumber.$error.required">Required Field!</span>
     	<span class="label label-danger" data-ng-show="submitted && registerForm.phoneNumber.$error.minlength" >phoneNumber had to be 10 digits !</span>
        <span class="label label-danger" data-ng-show="submitted && registerForm.phoneNumber.$error.maxlength" >phoneNumber had to be 10 digits !</span>
     </div>
      <div class="form-group">
     <label for="Age">Age:</label>
     <input type="number" class="form-control" name="age" id="age" ng-model="user.age" placeholder="Enter age" required="required">
		</div>     

      <div class="form-group">
     <label for="birth">Date Of Birth:</label>
      <p class="input-group">
          <input type="text"  class="form-control" uib-datepicker-popup="{{format}}" placeholder="Date Of Birth" ng-model="dt" is-open="popup1.opened" datepicker-options="dateOptions" ng-required="true" close-text="Close" alt-input-formats="altInputFormats" />
          <span class="input-group-btn">
            <button type="button" class="btn btn-default" ng-click="open1()"><i class="glyphicon glyphicon-calendar" ></i></button>
          </span>
        </p>
     </div> 
      <div class="form-group">
     <label for="domains">Domain/Technology:</label>
     <input type="text" class="form-control"  name="domains" uib-typeahead="domain for domain in domains | filter:$viewValue | limitTo:20" id="domains" ng-model="selected" placeholder="Domain/Technology" required="required">
     <span class="label label-danger" data-ng-show="submitted && registerForm.domains.$error.required">Required Field!</span>
     </div>
      <div class="form-group">
     <label for="Experiance">Experience(years):</label>
     <input type="number" class="form-control" name="exp" ng-model="user.experience" id="exp" placeholder="Experience" required="required">
     <span class="label label-danger" data-ng-show="submitted && registerForm.exp.$error.required">Required Field!</span>
     </div>
     
     
    <br>
    <button type="submit" class="btn btn-info"  ng-click="register(user)">Register</button>
   
 </div>
  </form>
  
   <br>
</div>
<!-- Latest compiled JavaScript -->
<!-- <script type="text/javascript">
        jq(document).ready(function () {
            "use strict";
            var options = {
                bootstrap3: true,
                onLoad: function () {
                    jq('#messages').text('Start typing password');
                },
                onKeyUp: function (evt) {
                    jq(evt.target).pwstrength("outputErrorList");
                }
            };
            jq(':password').pwstrength(options);
        });
    </script>
    <script type="text/javascript">

jq("form").on("submit", function () {
    var isInvalid = false;
    jq("input", this).each(function () {
        if (!jq(this).val()) {
            isInvalid = true;
           
        }
      /*   else{
        	
        	 alert("Email: "+$("#email").val()+"  password: "+$("#pwd").val());
        } */
    });
    if (isInvalid) {
    	jq("#errorMsg").html("<div>Fields cannot be blank</div>")
    	jq("#errorMsg").css({
    		   'display' : 'block',
    		   'margin-bottom' : '-15px',
    		   'margin-top' : '14px',
    		   'padding' : '7px'
    		});
        return false;
    }
});
</script> -->
</body>
