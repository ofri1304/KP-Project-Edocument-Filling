<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>BPJSTK-Edoc</title>

    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="../assets/css/style.css" rel="stylesheet">
    <link href="../assets/css/style-responsive.css" rel="stylesheet">
  </head>
  <style media="screen">
  .header{
    position: fixed;
    padding-left: 70px; /*mengatur tata letak komponen isi web*/
    margin-bottom: 50%;
    z-index: 9999;
  }
  .header img{
    width: 240px;
    height: 65px;
    margin-top: 5%;
    margin-bottom: 10%;
    padding: 0px;
    padding-right: 10px;
    float: center;
    z-index: 9999;
  }

  </style>
  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page" >
	  	<div class="container">
        <div class="header">
          <img src="img/LogoBPJSTK.png">
        </div>
        <div class="content" style="margin-top:20%; z-index: 9999;">
          <form class="form-login" action="verify.php" method="post" >
  	        <h2 class="form-login-heading" style="background:rgba(38, 165, 204, 0.9);">BPJSTK E-DOCUMENT LOGIN</h2>
  	        <div class="login-wrap">

  	            <input type="text" class="form-control" name = "username" id ="username" placeholder="User ID" autofocus>
  	            <br>
  	            <input type="password" class="form-control" name = "password" id="password" placeholder="Password">
                <br>
  	            <button class="btn btn-theme btn-block" id="submit" type="submit"  style="background:rgba(38, 165, 204, 0.9);"><i class="fa fa-lock"></i> SIGN IN</button>

  	        </div>
  	      </form>
        </div>
	  	</div>
	  </div>

    <footer style="z-index: 9999;">
        <div class="text-center" style=" position: absolute;  right: 0;  bottom: 0; left: 0; color:#fff;">
             &copy; 2017 Complaint Handling and Services Division BPJS Ketenagakerjaan.
        </div>
    </footer>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="../assets/js/jquery.backstretch.min.js"></script>
    <script>
       $.backstretch("img/company.jpg", {speed: 500});
    </script>


  </body>
</html>
