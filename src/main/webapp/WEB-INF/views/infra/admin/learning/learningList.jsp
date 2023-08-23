6<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="eg">
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
      			<div class="col-lg-12">
       				<div class="card">
          				<div class="card-body">
            					<h5 class="card-title">Learning Table</h5>
								<div class="table">
								
			 					 
               <form name="formList" method="post">
	              	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
						
					<button type="button" class="btn btn-secondary" id="btn">Search</button>
		
			   </form> 
             						

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">delNy</th>
            <th scope="col">title</th>
            <th scope="col">tags</th>
            <th scope="col">question</th>
            <th scope="col">answer</th>
            <th scope="col">member_seq</th>
        </tr>
    </thead>
   <tbody>
        <c:choose>
            <c:when test="${fn:length(list) eq 0}">
                <tr>
                    <td class="text-center" colspan="4">There is no data!</td>
                </tr>
            </c:when>
            <c:otherwise>
                <c:forEach items="${list}" var="list" varStatus="status">
                    <tr>
                        <th scope="row"><c:out value="${list.seq }"/></th>
                        <td><c:out value="${list.delNy }"/></a></td>
                        <td><c:out value="${list.title }"/></td>
                        <td><a href="learningForm?seq=<c:out value="${list.seq }"/>"><c:out value="${list.tags }"/></td>
                        <td><c:out value="${list.question }"/></td>
                        <td><c:out value="${list.answer }"/></td>
                        <td><c:out value="${list.member_seq }"/></td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </tbody> 
</table>
<%@include file="../include/pagination.jsp"%>
<!-- Rest of your HTML code... -->

    <a href="learningForm"><button type="button" class="btn btn-secondary" id="btn">Add</button></a>          
  				
          						</div>
          					</div>
        				</div>
      				</div>
	  			</div>
 			<!--start overlay-->
	  		<div class="overlay toggle-menu"></div>
			<!--end overlay-->

		</div>
   		<!-- End container-fluid-->
    
   	</div><!--End contentwrapper-->
<%@ include file="../include/footer.jsp" %>  
</div><!--End wrapper-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">


$("#btn").on("click", function(){
	
	$("form[name=formList]").attr("action", "/learningList").submit();
	
});

goList = function(thisPage) {
	$("input:hidden[name=thisPage]").val(thisPage);
	$("form[name=formList]").attr("action", "learningList").submit();
}

</script>
</body>
</html>