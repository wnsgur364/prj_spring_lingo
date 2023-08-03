<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!-- Site Icons -->
<link rel="shortcut icon" href="../../../../resources/vendor/images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="../../../../resources/vendor/images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../../../../resources/vendor/css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="../../../../resources/vendor/style.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="../../../../resources/vendor/css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="../../../../resources/vendor/css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="../../../../resources/vendor/css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="../../../../resources/vendor/js/modernizer.js"></script>

<!--fontawesome -->
<script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- ALL JS FILES -->
<script src="../../../../resources/vendor/js/all.js"></script>
<!-- ALL PLUGINS -->
<script src="../../../../resources/vendor/js/custom.js"></script>

<style>
  .headerLogo {
    width: 100px;
    height: 100px;
    margin-top: 0;
    margin-left: -35px;
  }
</style>
<!-- Start header -->
<header class="top-navbar">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="index">
        <img src="../../../../resources/vendor/images/LingoLogo.png" alt="" class="headerLogo" />
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-host" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbars-host">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a class="nav-link" href="index">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="materials">Materials</a></li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">Learning</a>
            <div class="dropdown-menu" aria-labelledby="dropdown-a">
              <a class="dropdown-item" href="begginner">Beginner</a>
              <a class="dropdown-item" href="intermediate">Intermediate</a>
              <a class="dropdown-item" href="advanced">Advanced</a>
            </div>
          </li>
          <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a class="hover-btn-new log orange" href="/join" data-toggle="modal" data-target="#login"><span>Login</span></a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<!-- End header -->