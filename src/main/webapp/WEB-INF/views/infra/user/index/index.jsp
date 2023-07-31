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
    <title>Lingo</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="../../../../../resources/assets/css/style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display&display=swap" rel="stylesheet">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version"> 

<%@ include file="/WEB-INF/views/include/header.jsp" %>
	
	<div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >
		
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div id="home" class="first-section" style="background-image:url('../../../../../resources/images/main.png'); background-size: 35%;background-repeat: no-repeat; background-position: 95%;">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-right">
									<div class="big-tagline">
									    <p>Become Master</p>
										<h2><strong >Learn English Skills <br> Online Find Best <br>Courses</Strong> </h2>
										<!-- <p class="lead"> Lingo offers a wide range of engaging and interactive activities, exercises, and lessons that are specifically designed to enhance your reading, writing, speaking, and listening abilities. </p> -->
											<a href="/chatting" class="hover-btn-new"><span>to enter</span></a>
											

									</div>
								</div>
							</div><!-- end row -->
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
		</div>
	</div>
	
	<div id="overviews" class="section wb">
	<div class="container">
		<div class="section-title row text-center">
			<div class="col-md-8 offset-md-2">
				<h3>Top Featured Courses</h3>	
					<p>Select a chat room list to enter the room</p>
			</div>
		</div><!-- end title -->

		<hr class="invis">

		<div class="row">
			<div class="col-lg-4 col-md-6 col-12">
				<div class="blog-item">
					<div class="image-blog">
						<img src="../../../../../resources/images/exchahimg.jpg" alt="" class="img-fluid">
					</div>
					<div class="meta-info-blog">
						<span><i class="fa fa-calendar"></i> <a href="#">May 11, 2015</a> </span>
						<span><i class="fa fa-users" aria-hidden="true"></i>  <a href="#">10 student</a> </span>
						<span><i class="fa fa-comments"></i> <a href="#">12 Comments</a></span>
					</div>
					<div class="blog-title">
						<h2><a href="/chatting" title="">방제목</a></h2>
					</div>
					<div class="blog-desc">
						<p>상세설명</p>
					</div>
					<div class="blog-button">
						<a class="hover-btn-new orange" href="/chatting"><span>입장하기<span></a>
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

 <div id="overviews" class="section wb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>About</h3>
               
                </div>
            </div><!-- end title -->
        
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        
                        <h2>Welcome to LingoConnect</h2>
                        <p>LingoConnect, accessing English resources, and taking exams. Immerse yourself in English conversations, explore a wide range of study materials, and challenge yourself with interactive tests. </p>

                        <p> Enhance your language skills and knowledge at your own pace. Join us and embark on an exciting journey of English learning and growth! </p>

                        <a href="#" class="hover-btn-new orange"><span>Learn More</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
				
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="../../../../../resources/images/main_02.png" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
			</div>
			

	<div class="section cl">
		<div class="container">
			<div class="row text-left stat-wrap">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-study"></i></span>
					<p class="stat_count">120</p>
					<h3>number of students with</h3>
				</div><!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-online"></i></span>
					<p class="stat_count">15</p>
					<h3>chat rooms studied</h3>
				</div><!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll class="global-radius icon_wrap effect-1 alignleft"><i class="flaticon-years"></i></span>
					<p class="stat_count">55</p>
					<h3>date studied</h3>
				</div><!-- end col -->
			</div><!-- end row -->
		</div><!-- end container -->
	</div><!-- end section -->
	<div class="hmv-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12">
					<div class="inner-hmv">
						<div class="icon-box-hmv"><i class="flaticon-achievement"></i></div>
						<h3>Mission</h3>
						<div class="tr-pa">M</div>
						<p>Our mission is to facilitate global communication and cultural understanding by providing accessible and engaging language learning resources.
						 We aim to empower learners of all backgrounds to develop their language skills and build connections across borders.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="inner-hmv">
						<div class="icon-box-hmv"><i class="flaticon-eye"></i></div>
						<h3>Vision</h3>
						<div class="tr-pa">V</div>
						<p>We envision a world where language barriers are dissolved, and individuals are confident and proficient in multiple languages.
						 Through our platform, we strive to foster a community of global citizens who appreciate diversity and communicate seamlessly across languages.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="inner-hmv">
						<div class="icon-box-hmv"><i class="flaticon-history"></i></div>
						<h3>History</h3>
						<div class="tr-pa">H</div>
						<p>Since our inception, we have been dedicated to delivering high-quality educational resources, collaborating with experts, and nurturing a supportive learning community. 
						We are proud of our journey and excited about the future of language learning.</p>
					</div>
				</div>
			</div>
		</div>
	</div>


<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyCKjLTXdq6Db3Xit_pW_GK4EXuPRtnod4o"></script>
	<!-- Mapsed JavaScript -->
	<script src="js/mapsed.js"></script>
	<script src="js/01-custom-places-example.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>