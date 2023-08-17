<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %> 

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>  

<!--Start Back To Top Button-->
<a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
<!--End Back To Top Button-->

<!--Start footer-->
<footer class="footer">
	<div class="container">
       	<div class="text-center">
         	Copyright © 2023 Dashtreme Admin
       	</div>
	</div>
</footer>
<!--End footer-->
 
<!--start color switcher-->
<!-- <div class="right-sidebar"> -->
<!--   	<div class="switcher-icon"> -->
<!--     	<i class="zmdi zmdi-settings zmdi-hc-spin"></i> -->
<!--   	</div> -->
<!--   	<div class="right-sidebar-content"> -->
<!--     <p class="mb-0">Gaussion Texture</p> -->
<!--     <hr> -->
<!--     <ul class="switcher"> -->
<!--       	<li id="theme1"></li> -->
<!--       	<li id="theme2"></li> -->
<!--       	<li id="theme3"></li> -->
<!--       	<li id="theme4"></li> -->
<!--       	<li id="theme5"></li> -->
<!--       	<li id="theme6"></li> -->
<!--     </ul> -->
<!--     <p class="mb-0">Gradient Background</p> -->
<!--     <hr> -->
<!--     <ul class="switcher"> -->
<!--       	<li id="theme7"></li> -->
<!--       	<li id="theme8"></li> -->
<!--       	<li id="theme9"></li> -->
<!--       	<li id="theme10"></li> -->
<!--       	<li id="theme11"></li> -->
<!--       	<li id="theme12"></li> -->
<!-- 		<li id="theme13"></li> -->
<!--       	<li id="theme14"></li> -->
<!--       	<li id="theme15"></li> -->
<!--     </ul> -->
<!--    </div> -->
<!-- </div> -->
<!-- end color switcher -->

<!-- Bootstrap core JavaScript-->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/popper.min.js"></script>
<script src="/resources/assets/js/bootstrap.min.js"></script>
<!-- simplebar js -->
<script src="/resources/assets/plugins/simplebar/js/simplebar.js"></script>
<!-- sidebar-menu js -->
<script src="/resources/assets/js/sidebar-menu.js"></script>
<!-- loader scripts -->
<script src="/resources/assets/js/jquery.loading-indicator.js"></script>
<!-- Custom scripts -->
<script src="/resources/assets/js/app-script.js"></script>
<!-- Chart js -->
<script src="/resources/assets/plugins/Chart.js/Chart.min.js"></script>
<!-- Index js -->
<script src="/resources/assets/js/index.js"></script>
<script>

	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true,
			cache: false,
			type: "post",
			url: "/logoutProc",
			data: { },
			success: function(response){
				location.href = "/"
			},
			error: function(jqXHR, textStatus, errorThrown) {
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});

</script>