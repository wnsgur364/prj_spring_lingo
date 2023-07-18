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
	
	<div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleControls" data-slide-to="1"></li>
			<li data-target="#carouselExampleControls" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div id="home" class="first-section" style="background-image:url('../../../../../resources/images/english_blackboard.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-right">
									<div class="big-tagline">
										<h2><strong>Learn</strong> Languages <Strong>Easily</Strong> </h2>
										<p class="lead"> Linggo offers a wide range of engaging and interactive activities, exercises, and lessons that are specifically designed to enhance your reading, writing, speaking, and listening abilities. </p>
											<a href="/chatting" class="hover-btn-new"><span>to enter</span></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

									</div>
								</div>
							</div><!-- end row -->
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section" style="background-image:url('images/slider-02.jpg');">
					<div class="dtab">
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
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section" style="background-image:url('images/slider-03.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-center">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight"><strong>Empower yourself through effortless</strong> language<strong> acquisition</strong></h2>
										<p class="lead" data-animation="animated fadeInLeft"> Learn Languages Easily provides an accessible and enjoyable learning experience
										</p>
											<a href="#" class="hover-btn-new"><span>to enter</span></a>
											
											
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="new-effect carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="new-effect carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

 <div id="overviews" class="section wb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 offset-md-2">
                    <h3>About</h3>
                    <p class="lead">Lorem Ipsum dolroin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem!</p>
                </div>
            </div><!-- end title -->
        
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        <h4>2018 BEST SmartEDU education school</h4>
                        <h2>Welcome to SmartEDU education school</h2>
                        <p>Quisque eget nisl id nulla sagittis auctor quis id. Aliquam quis vehicula enim, non aliquam risus. Sed a tellus quis mi rhoncus dignissim.</p>

                        <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum. Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis montes, nascetur ridiculus mus. Sed vitae rutrum neque. </p>

                        <a href="#" class="hover-btn-new orange"><span>Learn More</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
				
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="../../../../../resources/images/learn_block.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
			</div>
			<div class="row align-items-center">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="post-media wow fadeIn">
                        <img src="images/about_03.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
				
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                    <div class="message-box">
                        <h2>The standard Lorem Ipsum passage, used since the 1500s</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

                        <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum.</p>

                        <a href="#" class="hover-btn-new orange"><span>Learn More</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->
				
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

<div id="overviews" class="section wb">
	<div class="container">
		<div class="section-title row text-center">
			<div class="col-md-8 offset-md-2">
				<p class="lead"><strong style="font-size: 35px;">Chat room list</strong><br>
					Select a chat room list to enter the room</p>
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