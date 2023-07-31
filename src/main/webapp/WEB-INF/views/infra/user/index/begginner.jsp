<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <!-- Site Metas -->
    <title>SmartEDU - Education Responsive HTML5 Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version">

	<%@ include file="/WEB-INF/views/include/header.jsp" %>

	<div class="all-title-box">
		<div class="container text-center">
			<h1>Begginner<!-- <span class="m_1">Lorem Ipsum dolroin gravida nibh vel velit.</span> --></h1>
		</div>
	</div>

    <div id="overviews" class="section wb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <p class="lead"><strong style="font-size: 35px;">Popular Courses</strong><br>
                    	Upgrade your skills with newest courses</p>
                </div>
            </div><!-- end title -->

            <hr class="invis">

            <div class="row">

            </div><!-- end row -->

            <hr class="hr3">

            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                <img src="../../../../../resources/images/lankUnlank.png">
					<div class="card ">
						<p> Unlank <br>
							There are no learning records yet.</p>
					</div>
                </div><!-- end col -->

            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	<div class="section-title row text-center">
		<div class="col-md-8 offset-md-2">
			<p class="lead"><strong style="font-size: 35px;">Recommended chat room</strong><br>
				Upgrade your skills with newest courses</p>
		</div>
	</div><!-- end title -->
    <div class="parallax section dbcolor">
        <div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 text-left">
					<div class="big-tagline">
						<h2 data-animation="animated zoomInRight"><strong>Mastering </strong>  languages <strong>made easy</strong></h2>
						<p class="lead" data-animation="animated fadeInLeft">  Discover the power of Learn Languages Easily,
							an invaluable tool that simplifies the process of acquiring new languages
						</p>
						<a href="#" class="hover-btn-new"><span>to enter</span></a>
					</div>
				</div>
			</div><!-- end row -->
        </div><!-- end container -->

    </div><!-- end section -->

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>