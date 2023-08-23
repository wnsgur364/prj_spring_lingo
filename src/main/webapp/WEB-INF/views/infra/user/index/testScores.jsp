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
			<h1>Test Scores</h1>
		</div>
	</div>

    <div id="pricing-box" class="section wb">
        <div class="container">
			<div class="row">
                <div class="col-md-15 col-sm-12">
                    <div class="pricingTable">
                        <div class="pricingTable-header">
                            <span class="heading">
                                <h3><span class="material-symbols-outlined">
									verified_user
									</span>Test Date Scores</h3>
                            </span>
                           <span class="month"> </span>
                        </div>
                        <div class="pricingContent">
                            
                            <div>
                            
                           
                            </div>
                            
                            
                          
                            

                        </div><!-- /  CONTENT BOX-->

                        
                    </div>
                </div>
            </div>
		</div>
    </div><!-- end section -->

    <%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>