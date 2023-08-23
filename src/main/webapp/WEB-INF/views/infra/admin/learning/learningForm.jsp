<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta name="description" content=""/>
	<meta name="author" content=""/>
	<title>테이블</title>
</head>
<body class="bg-theme bg-theme9">

<!-- strt loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">
<%@ include file="../include/header.jsp" %>
	<div class="clearfix"></div>
	<div class="content-wrapper">
    <div class="container-fluid">

    <div class="row mt-3">
      <div class="col-lg-6">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Learning Form</div>
           <hr>
           
             <form  name="form" method="post">
          
          <c:choose>
	<c:when test="${empty param.seq }"> 
           <div class="form-group">
            <label for="input-1">Seq</label>
            <input type="text" class="form-control" name="seq" id="seq" value="<c:out value="${item.seq }"/>" disabled="disabled" placeholder="Auto Increment Area" >
           </div>
     </c:when>
     <c:otherwise>      
           <div class="form-group">
            <label for="input-2">Seq</label>
            <input type="text" class="form-control" name="seq" id="seq" value="<c:out value="${item.seq }"/>" readonly="readonly" >
           </div>
      </c:otherwise>
  </c:choose>         
           <div class="form-group">
            <label for="input-3">DelNy</label>
            <input type="text" class="form-control" name="delNy" id="delNy" value="<c:out value="${item.delNy}"/>" >
           </div>
           
         <div class="form-group">
            <label for="input-3">Title</label>
            <input type="text" class="form-control" name="title" id="title" value="<c:out value="${item.title}"/>" >
           </div>
          	
          	         <div class="form-group">
            <label for="input-3">Tags</label>
            <input type="text" class="form-control" name="tags" id="tags" value="<c:out value="${item.tags}"/>" >
           </div>
           
                    <div class="form-group">
            <label for="input-3">question</label>
            <input type="text" class="form-control" name="question" id="question" value="<c:out value="${item.question}"/>" >
           </div>
          	
          	 <div class="form-group">
            <label for="input-3">answer</label>
            <input type="text" class="form-control" name="answer" id="answer" value="<c:out value="${item.answer}"/>" >
           </div>
          	
          	<div class="form-group">
            <label for="input-3">member_seq</label>
            <input type="text" class="form-control" name="member_seq" id="member_seq" value="<c:out value="${item.member_seq}"/>" >
           </div>
          	
          	
          	
          	
           <div class="form-group">
            <button type="button" class="btn btn-light " id="btnSave"> save</button>
            <button type="button" class="btn btn-light " id="btnDelete"> Delete</button>
            <button type="button" class="btn btn-light " id="btnUelete"> Uelete</button>
            <button type="button" class="btn btn-light " id="btnUpdate"> Update</button>
          </div>
          
          </form>
          
         </div>
         </div>
      </div>
	  
 			<!--start overlay-->
	  		<div class="overlay toggle-menu"></div>
			<!--end overlay-->

		</div>
   		<!-- End container-fluid-->
    
   	</div><!--End content-wrapper-->
<%@ include file="../include/footer.jsp" %>  
</div><!--End wrapper-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">


$("#btnSave").on("click", function(){
	
	$("form[name=form]").attr("action", "/learningInst").submit();
	
});

$("#btnUpdate").on("click", function(){
 	$("form[name=form]").attr("action", "/learningUpdt").submit();
});


$("#btnDelete").on("click", function(){
 	$("form[name=form]").attr("action", "/learningDele").submit();
});


$("#btnUelete").on("click", function(){
 	$("form[name=form]").attr("action", "/learningUele").submit();
});

</script>
</body>
</html>