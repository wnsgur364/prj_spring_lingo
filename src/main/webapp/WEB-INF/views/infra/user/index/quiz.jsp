<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

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
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
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
    <script src="/resources/template/js/modernizer.js"></script>

</head>
<body class="host_version"> 

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="container d-flex justify-content-center align-items-center">
	<form name="form" method="post">
	    <c:forEach items="${quiz}" var="quiz" varStatus="loop">
	        <div class="col quiz-div" style="font-size: 2.5vw;">
	            ${loop.count} <strong><c:out value="${quiz.question}"></c:out></strong>
	            <c:forEach items="${answer}" var="answer">
	                <c:if test="${quiz.seq eq answer.quiz_seq}">
	                    <div class="form-check d-flex align-items-center">
	                        <input class="form-check-input" type="radio" name="answer" id="answer">
	                        <label class="form-check-label" for="answer">
	                            <c:out value="${answer.answer}"></c:out>
	                        </label>
	                    </div>
	                </c:if>
	            </c:forEach>
	        </div>
	    </c:forEach>
	    <div class="d-flex justify-content-center align-items-center">
	    	<button type="button" class="btn btn-dark" onclick="moveToQuiz('previous')"><strong>&lt;</strong></button>
	    	<button type="button" class="btn btn-dark" onclick="moveToQuiz('next')"><strong>&gt;</strong></button>
	    </div>
	</form>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!-- ALL JS FILES -->
<script src="js/all.js"></script>
<!-- ALL PLUGINS -->
<script src="js/custom.js"></script>
<script>
	var currentQuizIndex = 0;
	var quizDivs = document.querySelectorAll('.quiz-div');
	
	function showQuizByIndex(index) {
	    for (var i = 0; i < quizDivs.length; i++) {
	        quizDivs[i].style.display = 'none';
	    }
	
	    quizDivs[index].style.display = 'block';
	}
	
	function moveToQuiz(direction) {
	    if (direction === 'previous') {
	        currentQuizIndex = Math.max(0, currentQuizIndex - 1);
	    } else if (direction === 'next') {
	        currentQuizIndex = Math.min(currentQuizIndex + 1, quizDivs.length - 1);
	    }
	
	    showQuizByIndex(currentQuizIndex);
	}
	
	// Show the first quiz initially
	showQuizByIndex(0);
</script>
</body>
</html>