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
  <title>회원가입</title>
  <!-- loader-->
<%--  <link href="../../../../../resources/assets/css/pace.min.css" rel="stylesheet"/>--%>
<%--  <script src="../../../../../resources/assets/js/pace.min.js"></script>--%>
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

  <div class="card card-authentication1 mx-auto my-4">
    <div class="card-body">
      <div class="card-content p-2">
        <div class="text-center">
          <a href="index">
            <img src="../../../../../resources/vendor/images/LingoLogo.png" alt="logo icon" style="width: 70px">
          </a>
        </div>
        <div class="card-title text-uppercase text-center py-3">Sign Up</div>
        <form>
          <div class="form-group">
            <label for="exampleInputid" class="sr-only">id</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputid" class="form-control input-shadow" placeholder="Enter your ID">
              <div class="form-control-position">
                <i class="icon-user"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_id_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <label for="exampleInputName" class="sr-only">Name</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputName" class="form-control input-shadow" placeholder="Enter your name">
              <div class="form-control-position">
                <i class="icon-user"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_name_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmailId" class="sr-only">Email Address</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="Enter your email address">
              <div class="form-control-position">
                <i class="icon-envelope-open"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_email_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword" class="sr-only">Password</label>
            <div class="position-relative has-icon-right">
              <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="Enter your password">
              <div class="form-control-position">
                <i class="icon-lock"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_password_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <label for="exampleInputAddress" class="sr-only">Address</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputAddress" class="form-control input-shadow" placeholder="Enter your address">
              <div class="form-control-position">
                <i class="icon-home"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_address_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <label for="exampleInputAddressDetail" class="sr-only">Address Detail</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputAddressDetail" class="form-control input-shadow" placeholder="Enter your address detail">
              <div class="form-control-position">
                <i class="icon-home"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_address_detail_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <label for="exampleInputRank" class="sr-only">Rank</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputRank" class="form-control input-shadow" placeholder="Enter your rank">
              <div class="form-control-position">
                <i class="icon-trophy"></i>
              </div>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_rank_msg" style="display: none;"></div>
          </div>

          <div class="form-group">
            <label for="exampleInputGender" class="sr-only">Gender</label>
            <div class="position-relative has-icon-right">
              <select id="exampleInputGender" class="form-control input-shadow">
                <option value="" disabled selected>Select Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
              </select>
              <div class="form-control-position">
                <i class="icon-user"></i>
              </div>
            </div>

            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_gender_msg" style="display: none;"></div>
          </div>
          <div class="form-group">
            <div class="icheck-material-white">
              <input type="checkbox" id="mb_agree">
              <label for="mb_agree">Agree the terms and policy</label>
            </div>
            <!-- 메시지 텍스트 박스 추가 -->
            <div class="msg-box alert alert-danger" id="mb_agree_msg" style="display: none;"></div>
          </div>
          <button type="button" class="btn btn-primary btn-block waves-effect waves-light" id="mb_join_btn">Sign Up</button>
        </form>
      </div>
    </div>
    <div class="card-footer text-center py-3">
      <p class="text-warning mb-0">Already have an account? <a href="login">Sign In here</a></p>
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
<script type="text/javascript">
  // 정규식 검사 함수
  function validateInput() {
    var idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디 정규식
    var nameRegex = /^[가-힣]{2,}$/; // 한글 이름 정규식
    var emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/; // 이메일 주소 정규식
    var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,12}$/; // 비밀번호 정규식

    // 초기화
    $(".msg-box").hide().text('');

    var isValid = true;

    // 아이디 검사
    var id = $("#exampleInputid").val();
    if (id == "") {
      $("#mb_id_msg").text("아이디를 입력해주세요.").show();
      $("#exampleInputid").focus();
      isValid = false;
    } else if (!idRegex.test(id)) {
      $("#mb_id_msg").text("영문 대소문자와 숫자로만 이루어진 4~12자로 입력해 주세요.").show();
      $("#exampleInputid").focus();
      isValid = false;
    }

    // 이름 검사
    var name = $("#exampleInputName").val();
    if (name == "") {
      $("#mb_name_msg").text("이름을 입력해주세요.").show();
      $("#exampleInputName").focus();
      isValid = false;
    } else if (!nameRegex.test(name)) {
      $("#mb_name_msg").text("올바른 이름 형식이 아닙니다.").show();
      $("#exampleInputName").focus();
      isValid = false;
    }

    // 이메일 주소 검사
    var email = $("#exampleInputEmailId").val();
    if (email == "") {
      $("#mb_email_msg").text("이메일 주소를 입력해주세요.").show();
      $("#exampleInputEmailId").focus();
      isValid = false;
    } else if (!emailRegex.test(email)) {
      $("#mb_email_msg").text("올바른 이메일 주소 형식이 아닙니다.").show();
      $("#exampleInputEmailId").focus();
      isValid = false;
    }

    // 비밀번호 검사
    var password = $("#exampleInputPassword").val();
    if (password == "") {
      $("#mb_password_msg").text("비밀번호를 입력해주세요.").show();
      $("#exampleInputPassword").focus();
      isValid = false;
    } else if (!passwordRegex.test(password)) {
      $("#mb_password_msg").text("영문 대소문자와 숫자 또는 특수문자 조합 6~12자리로 입력해 주세요.").show();
      $("#exampleInputPassword").focus();
      isValid = false;
    }

    // 주소 검사
    var address = $("#exampleInputAddress").val();
    if (address == "") {
      $("#mb_address_msg").text("주소를 입력해주세요.").show();
      $("#exampleInputAddress").focus();
      isValid = false;
    }

    // 상세주소 검사
    var addressDetail = $("#exampleInputAddressDetail").val();
    if (addressDetail == "") {
      $("#mb_address_detail_msg").text("상세주소를 입력해주세요.").show();
      $("#exampleInputAddressDetail").focus();
      isValid = false;
    }

    // 랭크 검사
    var rank = $("#exampleInputRank").val();
    if (rank == "") {
      $("#mb_rank_msg").text("랭크를 입력해주세요.").show();
      $("#exampleInputRank").focus();
      isValid = false;
    }

    // 성별 검사
    var gender = $("#exampleInputGender").val();
    if (gender == "" || gender == null) {
      $("#mb_gender_msg").text("성별을 입력해주세요.").show();
      $("#exampleInputGender").focus();
      isValid = false;
    }

    // 약관 동의 검사
    if (!$("#mb_agree").is(":checked")) {
      $("#mb_agree_msg").text("약관에 동의해주세요.").show();
      isValid = false;
    }

    return isValid;
  }

  // 회원가입 처리
  $("#mb_join_btn").on("click", function() {
    var isValid = validateInput(); // 정규식 검사 수행

    if (isValid) {
      $(".msg-box").hide().text(''); // 정상적으로 가입되면 메시지 텍스트 박스 초기화
      alert("회원가입이 완료되었습니다.");
      // 여기에 서버로 회원가입 정보를 제출하는 코드를 추가해야 합니다.
    }
  });
</script>


</body>
</html>
