<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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

<!-- start loader -->
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
            					<h5 class="card-title">Code Table</h5>
								<div class="table">
								
			<%-- 					 
               <form name="formList" method="post">
	              	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
					<input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword}"/>">
						
					<button type="button" class="btn btn-primary" id="btn">Search</button>
		
			   </form> --%>
             						<!-- Rest of your HTML code... -->

<table class="table">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">delNy</th>
            <th scope="col">useNy</th>
            <th scope="col">name</th>
            <th scope="col">codegroup_seq</th>
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
                <c:forEach items="${list}" var="item" varStatus="status">
                    <tr>
                        <th scope="row"><c:out value="${list.seq }"/></th>
                        <td><a href="codeForm?seq=<c:out value="${list.seq }"/>"><c:out value="${item.delNy }"/></a></td>
                        <td><c:out value="${list.useNy }"/></td>
                        <td><c:out value="${list.name }"/></td>
                        <td><c:out value="${list.codegroup_seq }"/></td>
                    </tr>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </tbody>
</table>

<!-- Rest of your HTML code... -->

    <a href="codeForm"><button type="button" class="btn btn-primary" id="btn">Add</button></a>          
  				
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
	
	$("form[name=formList]").attr("action", "/codeGroupList").submit();
	
});
goList = function(thisPage) {
	$("input:hidden[name=sthisPage]").val(thisPage);
	$("form[name=formList]").attr("action", "codeList").submit();
}

</script>
</body>
</html>