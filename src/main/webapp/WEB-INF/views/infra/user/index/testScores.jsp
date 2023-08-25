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
    
    
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>   
	    
</head>

<body class="host_version"> 

	<%@ include file="/WEB-INF/views/include/header.jsp" %>
		<div class="all-title-box">
			<div class="container text-center">
				<h1>Test Scores</h1>
			</div>
		</div>
	
	<div class="row" style="font-size: 1.2vw">
		<div class="h1 text-center py-5 col-12">Quiz Answer</div>
		<c:choose>
			<c:when test="${fn:length(list) eq 0}">
				<tr>
	                <td colspan="6">There is no data</td>
	            </tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="item" varStatus="loop">
					 <c:if test="${fn:length(list) - loop.index <= 5}">
					 	<c:if test="${loop.index % 5 == 0}">
						<table class="table table-borderess table-spacing col-10">
						  <tbody>
						    <tr >
						      <th scope="col">Name: ${item.name}</th>
						      <th scope="col">Date: ${item.submitDatetime}</th>
						    </tr>
						  </tbody>
						</table>
						</c:if>
					<table class="table table-borderess col-10">
						  <thead>
						    <tr>
						      <th class="col-6">Quiz</th>
						      <th class="col-2">My Answer</th>
						      <th class="col-2">Answer</th>
						      <th class="col-2">O/X</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <td>${item.question}</td>
						      <td>${item.answer}</td>
						      <td>${item.answerCheck}</td>
						      <td>${item.answerNy == 1 ? "O" : "X"}</td>
						    </tr>
                		</tbody>
					</table>
					</c:if>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="d-flex justify-content-center align-items-center py-4">
		<button type="button" class="btn btn-dark" id="goback" onclick="location.href='materials'">Go back</button>
	</div>
	
	    <%@ include file="/WEB-INF/views/include/footer.jsp" %>

</body>
</html>