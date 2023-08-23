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
<div class="container d-flex justify-content-center align-items-center" style="background: #f3f3f3;">
    <form name="form" method="post">
        <c:forEach items="${quiz}" var="quiz" varStatus="quizLoop">
	        <div class="col quiz-div" style="font-size: 1.5vw;">
       	        <c:if test="${quizLoop.count != 1}">
		            <hr>
		        </c:if>
	            <strong>Q${quizLoop.count}. <c:out value="${quiz.question}"></c:out></strong><br>
	            <c:forEach items="${answer}" var="answer" varStatus="answerLoop">
	                <c:if test="${quiz.seq eq answer.quiz_seq}">
	                    <div class="form-check d-flex align-items-center">
                    	 	<input class="form-check-input" type="radio" name="answer-${quizLoop.index}" id="answer" value="${answer.seq}">
	                        <label class="form-check-label" for="answer-${quizLoop.index}">
	                            <c:out value="${answer.answer}"></c:out>
	                        </label>
	                    </div>
	                </c:if>
	            </c:forEach>
	        </div>
        </c:forEach>
    </form>
</div>
<div class="d-flex justify-content-center align-items-center">
	<button type="button" class="btn btn-dark" id="submit">제출</button>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
    // 인서트버튼 클릭이벤트
    $("#submit").on("click", function(){
        <c:forEach items="${quiz}" var="quiz" varStatus="quizLoop">
            var quizIndex = ${quizLoop.index};
            var submitAnswer = $(':input:radio[name="answer-' + quizIndex + '"]:checked').val();
            if(!submitAnswer) {
                alert("정답을 선택해주세요.");
                return;
            }
        </c:forEach>
        alert(submitAnswer + "제출이 완료되었습니다.");
        $("form[name=form]").attr("action","/submitInsert").submit();
    });
</script>
</body>
</html>