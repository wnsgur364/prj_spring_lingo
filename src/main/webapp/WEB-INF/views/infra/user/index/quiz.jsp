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
    <link rel="shortcut icon" href="../../../../../resources/images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="../../../../../resources/images/apple-touch-icon.png">

</head>
<body class="host_version"> 

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="h1 text-center py-5">TEST</div>
<div class="container d-flex justify-content-center align-items-center">
	<form name="form" method="post">
	    <c:forEach items="${quiz}" var="quiz" varStatus="loop">
	        <div class="col" style="font-size: 1.5vw;">
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
	        <button type="button" class="btn btn-dark"><strong>뒤로</strong></button>
	        <button type="button" class="btn btn-dark"><strong>제출</strong></button>
	    </div>
	</form>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
	
</script>
</body>
</html>