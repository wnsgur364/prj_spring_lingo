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
    <title>링고커넥트 학습자료</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="../../../../../resources/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="../../../../../resources/images/apple-touch-icon.png">
    
</head>
<body class="host_version"> 

<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<div class="all-title-box">
		<div class="container text-center">
			<h1>English Quiz</h1>
		</div>
	</div>

    <div id="pricing-box" class="section wb">
        <div class="container">
			<div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>Beginner</h3>
                            </span>
                           <span class="month"> Step: This step is designed for beginner students who have little to no prior knowledge of English.  </span>
                        </div>
                        <div class="pricingContent">
                            <i class="bi bi-brightness-alt-high begini"></i>
                            <ul>
                                <li>Grammer</li>
                                <li>words</li>
                                <li>Reading</li>
                                <li>Speaking</li>
                            </ul>
                        </div><!-- /  CONTENT BOX-->

                        <div class="pricingTable-sign-up">
                            <a href="quiz" class="hover-btn-new orange"><span>Test</span></a>
                        </div><!-- BUTTON BOX-->
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable pink">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>Intermediate</h3>
                            </span>
<!--<i class="fa-regular fa-lightbulb"></i> -->
                            <span class="month"> Step: This step is for students who have a basic understanding of English but want to further develop their skills.</span> 
                        </div>

                        <div class="pricingContent">
                            <i class="bi bi-brightness-high interi"></i>
                            <ul>
                               <li>Grammar</li>
                                <li>words</li>
                                <li>Reading</li>
                                <li>Speaking</li>
                            </ul>
                        </div><!-- /  CONTENT BOX-->

                        <div class="pricingTable-sign-up">
                            <a href="quiz" class="hover-btn-new orange"><span>Test</span></a>
                        </div><!-- BUTTON BOX-->
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable orange">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3>Advanced</h3>
                            </span>
                          
                            <span class="month"> Step: This step is aimed at students who have a solid grasp of English and want to refine their language skills.</span> 
                        </div>

                        <div class="pricingContent">
                            <i class="bi bi-brightness-high advani"></i>
                            <ul>
                               <li>Grammar</li>
                                <li>words</li>
                                <li>Reading</li>
                                <li>Speaking</li>
                            </ul>
                        </div><!-- /  CONTENT BOX-->

                        <div class="pricingTable-sign-up">
                            <a href="quiz" class="hover-btn-new orange"><span>Test</span></a>
                        </div><!-- BUTTON BOX-->
                    </div>
                </div>
            </div>
		</div>
    </div><!-- end section -->

    <%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>