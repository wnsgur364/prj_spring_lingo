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
            					<h5 class="card-title">Basic Table</h5>
								<div class="table-responsive">
             						<table class="table">
                						<thead>
	                  						<tr>
						                      	<th scope="col">#</th>
						                      	<th scope="col">First</th>
						                      	<th scope="col">Last</th>
						                      	<th scope="col">Handle</th>
	                  						</tr>
                						</thead>
                						<tbody>
						                    <tr>
						                      	<th scope="row">1</th>
						                      	<td>Mark</td>
						                      	<td>Otto</td>
						                      	<td>@mdo</td>
						                    </tr>
                  							<tr>
                    							<th scope="row">2</th>
                    							<td>Jacob</td>
                    							<td>Thornton</td>
                    							<td>@fat</td>
                  							</tr>
                  							<tr>
                    							<th scope="row">3</th>
                    							<td>Larry</td>
                    							<td>the Bird</td>
                    							<td>@twitter</td>
                  							</tr>
                						</tbody>
              						</table>
          						</div>
          					</div>
        				</div>
      				</div>
      				<div class="col-lg-6">
        				<div class="card">
          					<div class="card-body">
            					<h5 class="card-title">Bordered Table</h5>
	  							<div class="table-responsive">
            						<table class="table table-bordered">
              							<thead>
						   					<tr>
					                    		<th scope="col">#</th>
						                    	<th scope="col">First</th>
						                    	<th scope="col">Last</th>
						                    	<th scope="col">Handle</th>
						                  	</tr>
              							</thead>
              							<tbody>
						                  	<tr>
						                    	<th scope="row">1</th>
						                    	<td>Mark</td>
						                    	<td>Otto</td>
						                    	<td>@mdo</td>
						                  	</tr>
						                  	<tr>
						                    	<th scope="row">2</th>
						                    	<td>Jacob</td>
						                    	<td>Thornton</td>
						                    	<td>@fat</td>
						                  	</tr>
						                  	<tr>
						                    	<th scope="row">3</th>
						                    	<td colspan="2">Larry the Bird</td>
						                    	<td>@twitter</td>
						                  	</tr>
              							</tbody>
            						</table>
          						</div>
          					</div>
        				</div>
      				</div>
    			</div><!--End Row-->

				<div class="row">
     			<div class="col-lg-6">
       				<div class="card">
         				<div class="card-body">
           					<h5 class="card-title">Striped Table</h5>
  								<div class="table-responsive">
            						<table class="table table-striped">
               						<thead>
					                    <tr>
					                      	<th scope="col">#</th>
					                      	<th scope="col">First</th>
					                      	<th scope="col">Last</th>
					                      	<th scope="col">Handle</th>
					                    </tr>
               						</thead>
               						<tbody>
				                    	<tr>
					                      	<th scope="row">1</th>
					                      	<td>Mark</td>
					                      	<td>Otto</td>
					                      	<td>@mdo</td>
					                    </tr>
					                    <tr>
					                      	<th scope="row">2</th>
				                     	 	<td>Jacob</td>
					                      	<td>Thornton</td>
					                      	<td>@fat</td>
					                    </tr>
					                    <tr>
					                      	<th scope="row">3</th>
					                      	<td>Larry</td>
					                      	<td>the Bird</td>
					                      	<td>@twitter</td>
					                    </tr>
               						</tbody>
             					</table>
         					</div>
         				</div>
       				</div>
     			</div>
     			<div class="col-lg-6">
       				<div class="card">
         				<div class="card-body">
           					<h5 class="card-title">Hover Table</h5>
  								<div class="table-responsive">
           						<table class="table table-hover">
             						<thead>
				                  		<tr>
					                    	<th scope="col">#</th>
					                    	<th scope="col">First</th>
					                    	<th scope="col">Last</th>
					                    	<th scope="col">Handle</th>
					                  	</tr>
             						</thead>
             						<tbody>
					                  	<tr>
					                    	<th scope="row">1</th>
					                    	<td>Mark</td>
					                    	<td>Otto</td>
					                    	<td>@mdo</td>
					                  	</tr>
					                 	<tr>
					                    	<th scope="row">2</th>
					                    	<td>Jacob</td>
					                    	<td>Thornton</td>
					                    	<td>@fat</td>
					                  	</tr>
					                  	<tr>
					                    	<th scope="row">3</th>
					                    	<td colspan="2">Larry the Bird</td>
					                    	<td>@twitter</td>
					                  	</tr>
             						</tbody>
           						</table>
         					</div>
         				</div>
       				</div>
     			</div>
   			</div><!--End Row-->
   			
   			<div class="row">
     			<div class="col-lg-6">
       				<div class="card">
         				<div class="card-body">
           					<h5 class="card-title">Small Table</h5>
  								<div class="table-responsive">
            						<table class="table table-sm">
             						<thead>
					                  	<tr>
					                    	<th scope="col">#</th>
					                    	<th scope="col">First</th>
					                    	<th scope="col">Last</th>
					                    	<th scope="col">Handle</th>
					                  	</tr>
             						</thead>
             						<tbody>
					                  	<tr>
						                    <th scope="row">1</th>
						                    <td>Mark</td>
						                    <td>Otto</td>
						                    <td>@mdo</td>
					                  	</tr>
					                  	<tr>
						                    <th scope="row">2</th>
						                    <td>Jacob</td>
						                    <td>Thornton</td>
						                    <td>@fat</td>
					                  	</tr>
					                  	<tr>
						                    <th scope="row">3</th>
						                    <td colspan="2">Larry the Bird</td>
						                    <td>@twitter</td>
					                  	</tr>
             						</tbody>
           						</table>
       						</div>
         				</div>
       				</div>
     			</div>
     			<div class="col-lg-6">
       				<div class="card">
         				<div class="card-body">
           					<h5 class="card-title">Responsive Table</h5>
           					<div class="table-responsive">
             					<table class="table">
               						<thead>
				                    	<tr>
					                      	<th scope="col">#</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                      	<th scope="col">Heading</th>
					                    </tr>
               						</thead>
               						<tbody>
				                    	<tr>
					                      	<th scope="row">1</th>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                    </tr>
					                    <tr>
					                      	<th scope="row">2</th>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                    </tr>
					                    <tr>
					                      	<th scope="row">3</th>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                      	<td>Cell</td>
					                    </tr>
   									</tbody>
             					</table>
       						</div>
       					</div>
   					</div>
				</div>
   			</div><!--End Row-->
	  
 			<!--start overlay-->
	  		<div class="overlay toggle-menu"></div>
			<!--end overlay-->

		</div>
   		<!-- End container-fluid-->
    
   	</div><!--End content-wrapper-->
<%@ include file="../include/footer.jsp" %>  
</div><!--End wrapper-->
	
</body>
</html>