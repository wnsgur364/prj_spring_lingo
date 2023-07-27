<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>회원가입</title>
  <!-- loader-->
  <link href="../../../../../resources/assets/css/pace.min.css" rel="stylesheet"/>
  <script src="../../../../../resources/assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="../../../../../resources/assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="../../../../../resources/assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="../../../../../resources/assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="../../../../../resources/assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="../../../../../resources/assets/css/app-style.css" rel="stylesheet"/>

</head>


<body class="bg-theme bg-theme4">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">

  <div class="card card-authentication1 mx-auto my-4">
    <div class="card-body">
      <div class="card-content p-2">
        <div class="text-center">
          <a href="index">
            <img src="../../../../../resources/vendor/images/LingoLogo.png" alt="logo icon" style="width: 70px">
          </a>
        </div>
        <div class="card-title text-uppercase text-center py-3">Sign Up</div>
        <form>
          <div class="form-group">
            <label for="exampleInputName" class="sr-only">id</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputid" class="form-control input-shadow" placeholder="Enter your ID">
              <div class="form-control-position">
                <i class="icon-user"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputName" class="sr-only">Name</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputName" class="form-control input-shadow" placeholder="Enter your name">
              <div class="form-control-position">
                <i class="icon-user"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmailId" class="sr-only">Email Address</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter your email address">
              <div class="form-control-position">
                <i class="icon-envelope-open"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword" class="sr-only">Password</label>
            <div class="position-relative has-icon-right">
              <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="Enter your password">
              <div class="form-control-position">
                <i class="icon-lock"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputAddress" class="sr-only">Address</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputAddress" class="form-control input-shadow" placeholder="Enter your address">
              <div class="form-control-position">
                <i class="icon-home"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputAddressDetail" class="sr-only">Address Detail</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputAddressDetail" class="form-control input-shadow" placeholder="Enter your address detail">
              <div class="form-control-position">
                <i class="icon-home"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputRank" class="sr-only">Rank</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputRank" class="form-control input-shadow" placeholder="Enter your rank">
              <div class="form-control-position">
                <i class="icon-trophy"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputGender" class="sr-only">Gender</label>
            <div class="position-relative has-icon-right">
              <select id="exampleInputGender" class="form-control input-shadow">
                <option value="" disabled selected>Select Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
              </select>
              <div class="form-control-position">
                <i class="icon-venus-mars"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="icheck-material-white">
              <input type="checkbox" id="user-checkbox" checked="">
              <label for="user-checkbox">I agree to the terms and conditions</label>
            </div>
          </div>

          <button type="button" class="btn btn-light btn-block waves-effect waves-light">Sign Up</button>
          <div class="text-center mt-3">Sign up with the following</div>

          <div class="form-row mt-4">
            <div class="form-group mb-0 col-6">
              <button type="button" class="btn btn-light btn-block"><i class="fa fa-facebook-square"></i> KakaoTalk</button>
            </div>
            <div class="form-group mb-0 col-6 text-right">
              <button type="button" class="btn btn-light btn-block"><i class="fa fa-twitter-square"></i> Naver</button>
            </div>
          </div>
        </form>

      </div>
    </div>
    <div class="card-footer text-center py-3">
      <p class="text-warning mb-0">Already have an account? <a href="login.html">Sign In here</a></p>
    </div>
  </div>




  <!--Start Back To Top Button-->
  <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
  <!--End Back To Top Button-->

  <!--start color switcher-->
  <div class="right-sidebar">
    <div class="switcher-icon">
      <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
    </div>
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>

      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
      <hr>

      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
        <li id="theme13"></li>
        <li id="theme14"></li>
        <li id="theme15"></li>
      </ul>

    </div>
  </div>
  <!--end color switcher-->

</div><!--wrapper-->

<!-- Bootstrap core JavaScript-->
<script src="../../../../../resources/assets/js/jquery.min.js"></script>
<script src="../../../../../resources/assets/js/popper.min.js"></script>
<script src="../../../../../resources/assets/js/bootstrap.min.js"></script>

<!-- sidebar-menu js -->
<script src="../../../../../resources/assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="../../../../../resources/assets/js/app-script.js"></script>

</body>
</html>
