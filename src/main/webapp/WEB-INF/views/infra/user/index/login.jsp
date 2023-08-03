<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Dashtreme Admin - Free Dashboard for Bootstrap 4 by Codervent</title>
    <!-- loader-->
    <link href="../../../../../resources/assets/css/pace.min.css" rel="stylesheet"/>
    <script src="../../../../../resources/assets/js/pace.min.js"></script>
    <!--favicon-->
    <link rel="icon" href="../../../../../resources/assets/images/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS-->
    <link href="../../../../../resources/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- animate CSS-->
    <link href="../../../../../resources/assets/css/animate.css" rel="stylesheet" type="text/css"/>
    <!-- Icons CSS-->
    <link href="../../../../../resources/assets/css/icons.css" rel="stylesheet" type="text/css"/>
    <!-- Custom Style-->
    <link href="../../../../../resources/assets/css/app-style.css" rel="stylesheet"/>

</head>

<body class="bg-theme bg-theme4">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">

    <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
    <div class="card card-authentication1 mx-auto my-5">
        <div class="card-body">
            <div class="card-content p-2">
                <div class="text-center">
                    <img src="../../../../../resources/assets/images/logo-icon.png" alt="logo icon">
                </div>
                <div class="card-title text-uppercase text-center py-3">Sign In</div>
                <form>
                    <div class="form-group">
                        <label for="exampleInputUsername" class="sr-only">UserID</label>
                        <div class="position-relative has-icon-right">
                            <input type="text" name="id" id="exampleInputUsername" class="form-control input-shadow" placeholder="Enter User ID">
                            <div class="form-control-position">
                                <i class="icon-user"></i>
                            </div>
                        </div>
                        <p id="mb_id_msg" class="p_msg"></p>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword" class="sr-only">Password</label>
                        <div class="position-relative has-icon-right">
                            <input type="password" name="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="Enter Password">
                            <div class="form-control-position">
                                <i class="icon-lock"></i>
                            </div>
                        </div>
                        <p id="mb_password_msg" class="p_msg"></p>

                    </div>
                    <div class="form-row">
                        <div class="form-group col-6">
                            <div class="icheck-material-white">
                                <input type="checkbox" id="user-checkbox" checked="" />
                                <label for="user-checkbox">Remember me</label>
                            </div>
                        </div>
                        <div class="form-group col-6 text-right">
                            <a href="reset-password.html">Reset Password</a>
                        </div>
                    </div>
                    <button type="button" class="btn btn-light btn-block" id="login_submit_btn">Sign In</button>
                    <div class="text-center mt-3">Sign In With</div>

                    <div class="form-row mt-4">
                        <div class="form-group mb-0 col-6">
                            <button type="button" class="btn btn-light btn-block"><i class="fa fa-facebook-square"></i> KakaoTalk</button>
                        </div>
                        <div class="form-group mb-0 col-6 text-right">
                            <button type="button" class="btn btn-light btn-block"><i class="fa fa-twitter-square"></i> Naver</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="card-footer text-center py-3">
            <p class="text-warning mb-0">Do not have an account? <a href="register.html"> Sign Up here</a></p>
        </div>
    </div>

    <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->

    <!--start color switcher-->
    <div class="right-sidebar">
        <div class="switcher-icon">
            <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
        </div>
        <div class="right-sidebar-content">

            <p class="mb-0">Gaussion Texture</p>
            <hr>

            <ul class="switcher">
                <li id="theme1"></li>
                <li id="theme2"></li>
                <li id="theme3"></li>
                <li id="theme4"></li>
                <li id="theme5"></li>
                <li id="theme6"></li>
            </ul>

            <p class="mb-0">Gradient Background</p>
            <hr>

            <ul class="switcher">
                <li id="theme7"></li>
                <li id="theme8"></li>
                <li id="theme9"></li>
                <li id="theme10"></li>
                <li id="theme11"></li>
                <li id="theme12"></li>
                <li id="theme13"></li>
                <li id="theme14"></li>
                <li id="theme15"></li>
            </ul>

        </div>
    </div>
    <!--end color switcher-->

</div><!--wrapper-->

<!-- Bootstrap core JavaScript-->
<script src="../../../../../resources/assets/js/jquery.min.js"></script>
<script src="../../../../../resources/assets/js/popper.min.js"></script>
<script src="../../../../../resources/assets/js/bootstrap.min.js"></script>

<!-- sidebar-menu js -->
<script src="../../../../../resources/assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="../../../../../resources/assets/js/app-script.js"></script>
<%----%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<%--로그인--%>
<script type="text/javascript">
    $("#login_submit_btn").on("click", function(e) {
        e.preventDefault(); // 기본 동작 방지

        // 정규표현식
        var idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디 정규식
        var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,12}$/; // 비밀번호 정규식

        // 초기화
        $(".p_msg").text("");

        var id = $("#exampleInputUsername").val();
        var password = $("#exampleInputPassword").val();

        if (id.trim() === "") {
            $("#mb_id_msg").text("아이디 또는 휴대폰번호를 입력해주세요.").show();
            return false;
        }

        if (!idRegex.test(id)) {
            $("#mb_id_msg").text("영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.").show();
            return false;
        }

        if (password.trim() === "") {
            $("#mb_password_msg").text("비밀번호를 입력해주세요.").show();
            return false;
        }

        if (!passwordRegex.test(password)) {
            $("#mb_password_msg").text("영문 대소문자와 숫자를 포함한 6~12자리로 입력해 주세요.").show();
            return false;
        }

        // 유효성 검사 통과한 경우 로그인 로직 실행
        // ...
        // 로그인 로직 구현

        // $("form[name=login]").submit(); // 로그인 로직 실행 시 사용
        $.ajax({
            async: true
            ,cache: false
            ,type: "post"
            /* ,dataType:"json" */
            ,url: "/selectOneLogin"
            /* ,data : $("#formLogin").serialize() */
            ,data : { "id" : $("#exampleInputUsername").val(), "password" : $("#exampleInputPassword").val()}
            ,success: function(response) {
                if(response.rt == "success") {
                    location.href = "/index";
                } else {
                    alert("아이디 또는 비밀번호를 잘못 입력하셨습니다");
                }
            }
            ,error : function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    });



</script>
<%----%>
</body>
</html>

