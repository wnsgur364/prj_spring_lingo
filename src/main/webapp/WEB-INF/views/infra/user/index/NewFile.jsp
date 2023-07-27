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

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body class="host_version"> 

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="step" data-question-id="57" data-type="radio" data-required="false">
    <div class="container">
        <c:forEach items="${quiz}" var="quiz" varStatus="loop">
            <div class="ays-quiz-question">
                <p>
                    ${loop.count} <strong><c:out value="${quiz.question}"></c:out></strong>
                </p>
            </div>
        </c:forEach>
        <c:forEach items="${answer}" var="answer">
            <div class="ays-quiz-answers ays-list-view-container">
                <div class="ays-field ays-list-view-item">
                    <input type="hidden" name="ays_answer_correct[]" value="0" />
                    <input type="radio" name="ays_questions[ays-question-57]" id="ays-answer-222-9" value="222" />
                    <label for="ays-answer-222-9" class="ays-position-initial">
                        <c:out value="${answer.answer}"></c:out>
                    </label>
                    <label for="ays-answer-222-9" class="ays-answer-image ays-empty-before-content"></label>
                </div>
            </div>
        </c:forEach>
        <div class="ays-buttons-div">
            <i class="ays-fa ays-fa-arrow-left ays-previous action-button ays-arrow ays-display-none"></i>
            <input type="button" name="next" class="ays-previous action-button" value="Prev" />
            <i class="ays-fa ays-fa-arrow-right ays-next action-button ays-arrow ays-next-arrow ays-display-none"></i>
            <input type="button" name="next" class="ays-next action-button" value="Next" />
        </div>
        <div class="wrong-answer-text ays-do-not-show" style="display: none"></div>
        <div class="right-answer-text ays-do-not-show" style="display: none"></div>
        <div class="ays-question-explanation" style="display: none"></div>
    </div>
</div>

    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>

</body>
</html>