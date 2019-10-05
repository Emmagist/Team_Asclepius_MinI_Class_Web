<?php
require 'controllers/user.php';

$user =  new User;


if(isset($_POST['reset-btn'])){

  $email = $_POST['email'];
  $message = $user->forgetPassword($email);

}
?>

<!DOCTYPE html>
<div lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/newdashboard.css">
    <link rel="stylesheet" href="css/form.css">
    <!-- <link rel="stylesheet" href="css/main.css"> -->
    <title>Forgot Password</title>
  </head>

  <body>

    <!-- <div class="logo">
      <img src="./images/Logo.png" alt="logo">
    </div> -->

 <!-- enter email to forget password form  -->
    <div class="register_login-content" id="login-form">
      <form action="test.php" method="POST" id="resetPassword" onsubmit="return resetPassword();">
        <h2 class="form-title">Recover Your Password</h2>

        <div id="errorForResetPassword">

        </div> 

        <div class="form-box">
          <label for="Email"></label>
          <!-- <input type="email" name="email" id="email" class="text-input"> -->
          <input type="text" name="email" class="form-control pop" placeholder="Email" id="email">
          <span class="icon"><img class="icon-img" src="fonts/Vector.png" alt=""></<span>
        </div>

        <div>
          <button type="submit" class="btn btn-big" name="reset-btn">Reset</button>
        </div>
        <p>Return back to <a href="login.php" class="text-danger">Login</a></p>

      </form>
    </div>

    <script src="js/main.js"></script>
  </body>

</div>