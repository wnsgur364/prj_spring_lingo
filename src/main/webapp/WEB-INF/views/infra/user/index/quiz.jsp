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
	<button type="button" class="btn btn-dark" id="submit">Submit</button>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>
    // 인서트버튼 클릭이벤트
    $("#submit").on("click", function(){
    	var selectedAnswers = []; // 선택한 정답들을 저장할 배열
    	
        <c:forEach items="${quiz}" var="quiz" varStatus="quizLoop">
            var quizIndex = ${quizLoop.index};
            var submitAnswer = $(':input:radio[name="answer-' + quizIndex + '"]:checked').val();
            if(!submitAnswer) {
                alert("정답을 선택해주세요.");
                return;
            }
            selectedAnswers.push(submitAnswer); // 선택한 정답을 배열에 추가
        </c:forEach>
            
        alert("선택하신 정답은 " + selectedAnswers.join(", ") + "입니다."); // 모든 선택지 출력
        
        $.ajax({
//         	async: true,
//             cache: false,
            type: "POST",
            url: "/submitInsert", // 서버 URL
//             data: { selectedAnswers: selectedAnswers }, // 생성한 배열을 객체에 담아 전송
			data: JSON.stringify(selectedAnswers),
            success: function(response) {
                // 서버의 응답을 처리
                
                $("form[name=form]").attr("action","/submitInsert").submit();
                arlert("서버로 전송이 완료되었습니다.");
            }
        });
    });

// 	$("#submit").on("click", function() {
// 	    var selectedAnswers = [];
	
// 	    // 선택한 정답들을 배열에 추가하는 로직
// 	    <c:forEach items="${quiz}" var="quiz" varStatus="quizLoop">
// 	        var quizIndex = ${quizLoop.index};
// 	        var submitAnswer = $(':input:radio[name="answer-' + quizIndex + '"]:checked').val();
// 	        if (!submitAnswer) {
// 	        	alert("정답을 선택해주세요.");
//              	return;
// 	        } 
// 	        selectedAnswers.push(submitAnswer); // 선택한 정답을 배열에 추가
// 	    </c:forEach>
	    
// 	    alert("선택하신 정답은 " + selectedAnswers.join(", ") + "입니다."); // 모든 선택지 출력
	    
// 	    // 선택한 정답 배열을 폼 데이터에 추가
// 	    var formData = new FormData();
// 	    for (var i = 0; i < selectedAnswers.length; i++) {
// 	        formData.append("selectedAnswers", selectedAnswers[i]);
// 	    }
	
// 	    // AJAX 요청으로 선택한 정답 배열을 서버로 전송
// 		$.ajax({
// 		    type: "POST",
// 		    url: "/submitInsert", // 서버의 URL
// 		    data: formData, // 폼 데이터 전송
// 		    processData: false,
// 		    contentType: false,
// 		    success: function(response) {
// 		        if (response === "success") {
// 		            // 작업이 성공했을 때 처리할 코드
// 		            alert("작업이 성공적으로 완료되었습니다.");
// 		            window.location.href = "/materials"; // 예시: 리다이렉트
// 		        } else {
// 		            // 작업이 실패했을 때 처리할 코드
// 		            alert("작업이 실패하였습니다.");
// 		            window.location.href = "/materials";
// 		        }
// 		    }
// 		});
// 	});

		
</script>
</body>
</html>