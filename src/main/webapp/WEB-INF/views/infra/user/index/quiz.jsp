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
    	<div class="col" id="selected-answers">
		    선택한 답변:
		</div>
        <c:forEach items="${quiz}" var="quiz" varStatus="loop">
	        <div class="col quiz-div" style="font-size: 1.5vw;">
	            ${loop.count} <strong><c:out value="${quiz.question}"></c:out></strong>
	            <c:forEach items="${answer}" var="answer">
	                <c:if test="${quiz.seq eq answer.quiz_seq}">
	                    <div class="form-check d-flex align-items-center">
	                        <input class="form-check-input" type="radio" name="answer-${loop.index}" id="answer-${loop.index}" value="${answer.answer}">
	                        <label class="form-check-label" for="answer-${loop.index}">
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
        	<button type="button" class="btn btn-dark" onclick="submitAnswers()">제출</button>
        </div>
    </form>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script>

	var currentQuizIndex = 0;
	var quizDivs = document.querySelectorAll('.quiz-div');
	var selectedAnswers = new Array(quizDivs.length).fill(null); // 선택한 답변을 저장할 배열
	
	function updateSelectedAnswers() {
	    var selectedAnswersDiv = document.getElementById('selected-answers');
	    selectedAnswersDiv.innerHTML = "선택한 답변: ";
	
	    for (var i = 0; i < selectedAnswers.length; i++) {
	        if (selectedAnswers[i] !== null) {
	            selectedAnswersDiv.innerHTML += `Q${i + 1}: ${selectedAnswers[i]} | `;
	        }
	    }
	}
	
	function showQuizByIndex(index) {
	    for (var i = 0; i < quizDivs.length; i++) {
	        quizDivs[i].style.display = 'none';
	    }

	    quizDivs[index].style.display = 'block';
	}

	function moveToQuiz(direction) {
	    // 현재 퀴즈의 선택한 답을 저장
	    var selectedAnswer = document.querySelector(`input[name="answer-${currentQuizIndex}"]:checked`);
	    if (selectedAnswer) {
	        selectedAnswers[currentQuizIndex] = selectedAnswer.value;
	    }

	    if (direction === 'previous') {
	        currentQuizIndex = Math.max(0, currentQuizIndex - 1);
	    } else if (direction === 'next') {
	        currentQuizIndex = Math.min(currentQuizIndex + 1, quizDivs.length - 1);
	    }

	    // 다음 퀴즈로 이동하기 전에 선택한 답을 복원
	    var answerInput = document.querySelector(`input[name="answer-${currentQuizIndex}"][value="${selectedAnswers[currentQuizIndex]}"]`);
	    if (answerInput) {
	        answerInput.checked = true;
	    }

	    showQuizByIndex(currentQuizIndex);

	    // 선택한 답변이 변경될 때마다 updateSelectedAnswers 함수 호출
	    updateSelectedAnswers();
	}

	// Show the first quiz initially
	showQuizByIndex(0); // 첫 번째 퀴즈만 표시

	function updateSelectedAnswers() {
	    var selectedAnswersDiv = document.getElementById('selected-answers');
	    selectedAnswersDiv.innerHTML = "선택한 답변: ";

	    for (var i = 0; i < selectedAnswers.length; i++) {
	        if (selectedAnswers[i] !== null) {
	            selectedAnswersDiv.innerHTML += `Q${i + 1}: ${selectedAnswers[i]} | `;
	        }
	    }
	}
	
	function moveToQuiz(direction) {
	    // 현재 퀴즈의 선택한 답을 저장
	    var selectedAnswer = document.querySelector(`input[name="answer-${currentQuizIndex}"]:checked`);
	    if (selectedAnswer) {
	        selectedAnswers[currentQuizIndex] = selectedAnswer.value;
	    }

	    if (direction === 'previous') {
	        currentQuizIndex = Math.max(0, currentQuizIndex - 1);
	    } else if (direction === 'next') {
	        currentQuizIndex = Math.min(currentQuizIndex + 1, quizDivs.length - 1);
	    }

	    // 다음 퀴즈로 이동하기 전에 선택한 답을 복원
	    var answerInput = document.querySelector(`input[name="answer-${currentQuizIndex}"][value="${selectedAnswers[currentQuizIndex]}"]`);
	    if (answerInput) {
	        answerInput.checked = true;
	    }

	    showQuizByIndex(currentQuizIndex);
	    
	    // 선택한 답변이 변경될 때마다 updateSelectedAnswers 함수 호출
	    updateSelectedAnswers();
	}

	function submitAnswers() {
	    var answersToSubmit = []; // 서버에 전송할 답을 저장할 배열

	    for (var i = 0; i < selectedAnswers.length; i++) {
	        if (selectedAnswers[i] !== undefined) {
	            answersToSubmit.push({
	                questionIndex: i,
	                answer: selectedAnswers[i]
	            });
	        }
	    }

	    // answersToSubmit 배열에는 { questionIndex, answer } 형태의 객체가 담겨 있습니다.
	    // 이를 서버로 전송하거나 필요한 처리를 수행합니다.
	    // 예를 들어, AJAX 요청을 사용하여 서버에 데이터를 전송하거나 다른 처리를 수행할 수 있습니다.
	    // 아래는 AJAX 요청을 사용하는 예시입니다.
	    
	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "/submit-answers", true);
	    xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
	    xhr.onreadystatechange = function() {
	        if (xhr.readyState === 4 && xhr.status === 200) {
	            // 서버의 응답을 처리하거나 필요한 동작을 수행합니다.
	        }
	    };
	    
	    xhr.send(JSON.stringify(answersToSubmit));
	}
	
</script>
</body>
</html>