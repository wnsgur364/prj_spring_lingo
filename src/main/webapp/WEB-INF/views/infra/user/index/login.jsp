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
    <title>Login</title>
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
                <form name="form" method="post">
                    <div class="form-group">
                        <label for="id" class="sr-only">UserID</label>
                        <div class="position-relative has-icon-right">
                            <input type="text" name="id" id="id" class="form-control input-shadow" placeholder="Enter User ID" value="test">
                            <div class="form-control-position">
                                <i class="icon-user"></i>
                            </div>
                        </div>
                        <p id="mb_id_msg" class="p_msg"></p>
                    </div>
                    <div class="form-group">
                        <label for="password" class="sr-only">Password</label>
                        <div class="position-relative has-icon-right">
                            <input type="password" name="password" id="password" class="form-control input-shadow" placeholder="Enter Password" value="12345a">
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
                    <p id="mb_login_msg" class="p_msg"></p>
                    <div class="text-center mt-3">Sign In With</div>

                    <div class="form-row mt-4">
                        <div class="form-group mb-0 col-6">
                            <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=6b4cc63a82c5df0d0745f8c7e135a319&redirect_uri=http%3A%2F%2Flocalhost%3A8080%2Flogin/kakao&response_type=code">
                                <button type="button" class="btn btn-light btn-block">
                                    <i class="fa fa-facebook-square"></i> KakaoTalk
                                </button>
                            </a>
                        </div>
                        <div class="form-group mb-0 col-6 text-right">
                            <button type="button" class="btn btn-light btn-block"><i class="fa fa-twitter-square"></i> Naver</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="card-footer text-center py-3">
            <p class="text-warning mb-0">Do not have an account? <a href="/join"> Sign Up here</a></p>
        </div>
    </div>

    <!--Start Back To Top Button-->
<%--    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>--%>
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

<%----%>
<!-- Bootstrap core JavaScript-->
<script src="../../../../../resources/assets/js/jquery.min.js"></script>
<script src="../../../../../resources/assets/js/popper.min.js"></script>
<script src="../../../../../resources/assets/js/bootstrap.min.js"></script>

<!-- sidebar-menu js -->
<script src="../../../../../resources/assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="../../../../../resources/assets/js/app-script.js"></script>
<%----%>
<script src="../../../../../resources/assets/js/jquery.min.js"></script>
<script type="text/javascript">
    $("#login_submit_btn").on("click", function() {

        // 정규표현식
        var idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디 정규식 (공백 허용하지 않음)
        var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?!.*\s).{6,12}$/; // 비밀번호 정규식 (공백 허용하지 않음)

        // 초기화
        $(".p_msg").text("");

        var id = $("#id").val();
        var password = $("#password").val();

        if (id.trim() === "") {
            $("#mb_id_msg").text("아이디 또는 휴대폰번호를 입력해주세요.").show();
            return false;
        }

        if (!idRegex.test(id)) {
            $("#mb_id_msg").text("영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.").show();
            return false;
        }

        if (password === "") {
            $("#mb_password_msg").text("비밀번호를 입력해주세요.").show();
            return false;
        }

        if (!passwordRegex.test(password)) {
            $("#mb_password_msg").text("영문 대소문자와 숫자를 포함한 6~12자리로 입력해 주세요.").show();
            return false;
        }

        // 유효성 검사 통과한 경우 로그인 로직 실행
        $.ajax({
            async: true,
            cache: false,
            type: "post",
            /* dataType:"json" */
            url: "/selectOneLogin",
            data: { "id": id, "password": password },
            success: function(response) {
                if (response.rt == "success") {
                    if (id === "admin") { // 아이디가 admin인 경우
                        location.href = "/indexAdmin"; // /admin 페이지로 리디렉션
                    } else {
                        location.href = "/"; // 그 외의 경우 /index 페이지로 리디렉션
                    }
                } else {
                    $("#mb_login_msg").text("아이디 또는 비밀번호를 잘못 입력하셨습니다.").show();
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                alert("AJAX Request Error: " + textStatus + " : " + errorThrown);
            }
        });
    });
</script>


<%----%>
</body>
</html>

