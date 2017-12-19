<?php
session_start();
    if (isset($_SESSION['iduser']))
    {
      header("location: ../home.php");
    }
	?>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login form</title>
    <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
    <link href='http://fonts.googleapis.com/css?family=Raleway:300,200' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

  </head>

  <body>
  <div class="container-fluid">
    <div class="header">
      <img src="img/LogoBPJSTK.png">

    </div>
    <div class="form">

            <div class="logo_login">
              <span id="title_login"><strong>E-DOCUMENT BPJSTK LOGIN</strong></span>
            </div>

      <div class="topbar">
        <form class="form-horizontal" action="verify.php" method="post">
          <input type="text" class="input"  name = "username" id ="username" placeholder="Username">
          <input type="password" class="input" name = "password" id="password" placeholder="Password"/>
          <button class="submit" id="submit" >Login</button>
        </form>

      </div>
    </div>
    </div>
  </body>
  <footer>
    <div class="footer"> <p>Copyright &copy 2017 Complaint Handling and Services Division BPJS Ketenagakerjaan, All Rights Reserved.</p> </div>
  </footer>
</html>
