<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edge" /> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <title>Metlife Login</title>
        <!-- Latest compiled JavaScript -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>     
         <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
         <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script> 
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>         
         <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.3.3/ui-bootstrap.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/1.3.3/ui-bootstrap-tpls.min.js"></script> 
          <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
          <script type="text/javascript" src="./login_controller.js"></script>
        <script type="text/javascript" src="./validController.js"></script>
        <script type="text/javascript" src="./registerController.js"></script>
       
        <!-- Latest compiled and minified CSS -->
       
        <style>
        span {
	color:cadetblue;
	font-size: 25px;
	
}
.fill { 
    min-height: 100%;
    height: 100%;
}
html,body{

height: 100%;
width:100%;

}
.errorMsg{
display:block !important;
}

 .full button span {
    background-color: limegreen;
    border-radius: 32px;
    color: black;
  }
  .partially button span {
    background-color: orange;
    border-radius: 32px;
    color: black;
  }
        </style>
    </head>
    <body style="background-color:#F0F0F0" ng-app="myApplication">
        <div class="container">
          <!--   <table style="width: 100%;">
                <tr>
                    <td>
                        <h1>Metlife Lab</h1></td>
                    <td>
                        <img src="https://www.assets.metlife.com/RPP/public/MPImages/metlife-blue-logo.png" style="height: 45px; margin-left: 23px; float: right;"> </td>
                </tr></table> -->
                <div ng-include="'Header.jsp'"></div> 


            <div ng-view></div>
            
        </div>
     <script type="text/javascript">
        var j = jQuery.noConflict();
              </script>
               
    </body>
    
</html>