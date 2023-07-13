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
			<h1>Begginer<!-- <span class="m_1">Lorem Ipsum dolroin gravida nibh vel velit.</span> --></h1>
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
                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_1.jpg" alt="" class="img-fluid">
						</div>
						<div class="meta-info-blog">
							<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
                             <span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
                            <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
						</div>
						<div class="blog-title">
							<h2><a href="#" title="">perferendis doloribus asperiores.</a></h2>
						</div>
						<div class="blog-desc">
							<p>Lorem ipsum door sit amet, fugiat deicata avise id cum, no quo maiorum intel ogrets geuiat operts elicata libere avisse id cumlegebat, liber regione eu sit.... </p>
						</div>
						<div class="blog-button">
							<a class="hover-btn-new orange" href="#"><span>Read More<span></a>
						</div>
					</div>
                </div><!-- end col -->

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_2.jpg" alt="" class="img-fluid">
						</div>
						<div class="meta-info-blog">
							<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
                             <span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
                            <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
						</div>
						<div class="blog-title">
							<h2><a href="#" title="">perferendis doloribus asperiores.</a></h2>
						</div>
						<div class="blog-desc">
							<p>Lorem ipsum door sit amet, fugiat deicata avise id cum, no quo maiorum intel ogrets geuiat operts elicata libere avisse id cumlegebat, liber regione eu sit.... </p>
						</div>
						<div class="blog-button">
							<a class="hover-btn-new orange" href="#"><span>Read More</span></a>
						</div>
					</div>
                </div><!-- end col -->

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_3.jpg" alt="" class="img-fluid">
						</div>
						<div class="meta-info-blog">
							<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
                             <span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
                            <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
						</div>
						<div class="blog-title">
							<h2><a href="#" title="">perferendis doloribus asperiores.</a></h2>
						</div>
						<div class="blog-desc">
							<p>Lorem ipsum door sit amet, fugiat deicata avise id cum, no quo maiorum intel ogrets geuiat operts elicata libere avisse id cumlegebat, liber regione eu sit.... </p>
						</div>
						<div class="blog-button">
							<a class="hover-btn-new orange" href="#"><span>Read More</span></a>
						</div>
					</div>
                </div><!-- end col -->
            </div><!-- end row -->

            <hr class="hr3"> 

            <div class="row"> 
                <div class="col-lg-4 col-md-6 col-12">
                   <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_4.jpg" alt="" class="img-fluid">
						</div>
						<div class="meta-info-blog">
							<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
                             <span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
                            <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
						</div>
						<div class="blog-title">
							<h2><a href="#" title="">perferendis doloribus asperiores.</a></h2>
						</div>
						<div class="blog-desc">
							<p>Lorem ipsum door sit amet, fugiat deicata avise id cum, no quo maiorum intel ogrets geuiat operts elicata libere avisse id cumlegebat, liber regione eu sit.... </p>
						</div>
						<div class="blog-button">
							<a class="hover-btn-new orange" href="#"><span>Read More</span></a>
						</div>
					</div>
                </div><!-- end col -->

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_5.jpg" alt="" class="img-fluid">
						</div>
						<div class="meta-info-blog">
							<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
                             <span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
                            <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
						</div>
						<div class="blog-title">
							<h2><a href="#" title="">perferendis doloribus asperiores.</a></h2>
						</div>
						<div class="blog-desc">
							<p>Lorem ipsum door sit amet, fugiat deicata avise id cum, no quo maiorum intel ogrets geuiat operts elicata libere avisse id cumlegebat, liber regione eu sit.... </p>
						</div>
						<div class="blog-button">
							<a class="hover-btn-new orange" href="#"><span>Read More</span></a>
						</div>
					</div>
                </div><!-- end col -->

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="blog-item">
						<div class="image-blog">
							<img src="images/blog_6.jpg" alt="" class="img-fluid">
						</div>
						<div class="meta-info-blog">
							<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
                            <span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
                            <span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
						</div>
						<div class="blog-title">
							<h2><a href="#" title="">perferendis doloribus asperiores.</a></h2>
						</div>
						<div class="blog-desc">
							<p>Lorem ipsum door sit amet, fugiat deicata avise id cum, no quo maiorum intel ogrets geuiat operts elicata libere avisse id cumlegebat, liber regione eu sit.... </p>
						</div>
						<div class="blog-button">
							<a class="hover-btn-new orange" href="#"><span>Read More</span></a>
						</div>
					</div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    <div class="parallax section dbcolor">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_01.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_02.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_03.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_04.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_05.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="images/logo_06.png" alt="" class="img-repsonsive"></a>
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