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
  <link href="../../../../../resources/vendorassets/css/pace.min.css" rel="stylesheet"/>
  <script src="assets/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>

</head>

<body class="bg-theme bg-theme1">

<!-- start loader -->
<div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
<!-- end loader -->

<!-- Start wrapper-->
<div id="wrapper">

  <div class="card card-authentication1 mx-auto my-4">
    <div class="card-body">
      <div class="card-content p-2">
        <div class="text-center">
          <img src="assets/images/logo-icon.png" alt="logo icon">
        </div>
        <div class="card-title text-uppercase text-center py-3">Sign Up</div>
        <form>
          <div class="form-group">
            <label for="exampleInputName" class="sr-only">이름</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputName" class="form-control input-shadow" placeholder="이름을 입력하세요">
              <div class="form-control-position">
                <i class="icon-user"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputEmailId" class="sr-only">이메일 주소</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputEmailId" class="form-control input-shadow" placeholder="이메일 주소를 입력하세요">
              <div class="form-control-position">
                <i class="icon-envelope-open"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword" class="sr-only">비밀번호</label>
            <div class="position-relative has-icon-right">
              <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="비밀번호를 입력하세요">
              <div class="form-control-position">
                <i class="icon-lock"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputAddress" class="sr-only">주소</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputAddress" class="form-control input-shadow" placeholder="주소를 입력하세요">
              <div class="form-control-position">
                <i class="icon-home"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputAddressDetail" class="sr-only">상세 주소</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputAddressDetail" class="form-control input-shadow" placeholder="상세 주소를 입력하세요">
              <div class="form-control-position">
                <i class="icon-home"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputRank" class="sr-only">계급</label>
            <div class="position-relative has-icon-right">
              <input type="text" id="exampleInputRank" class="form-control input-shadow" placeholder="계급을 입력하세요">
              <div class="form-control-position">
                <i class="icon-trophy"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputGender" class="sr-only">성별</label>
            <div class="position-relative has-icon-right">
              <select id="exampleInputGender" class="form-control input-shadow">
                <option value="" disabled selected>성별 선택</option>
                <option value="male">남성</option>
                <option value="female">여성</option>
                <option value="other">기타</option>
              </select>
              <div class="form-control-position">
                <i class="icon-venus-mars"></i>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="icheck-material-white">
              <input type="checkbox" id="user-checkbox" checked="">
              <label for="user-checkbox">약관에 동의합니다</label>
            </div>
          </div>

          <button type="button" class="btn btn-light btn-block waves-effect waves-light">가입하기</button>
          <div class="text-center mt-3">다음과 함께 가입하기</div>

          <div class="form-row mt-4">
            <div class="form-group mb-0 col-6">
              <button type="button" class="btn btn-light btn-block"><i class="fa fa-facebook-square"></i> 페이스북</button>
            </div>
            <div class="form-group mb-0 col-6 text-right">
              <button type="button" class="btn btn-light btn-block"><i class="fa fa-twitter-square"></i> 트위터</button>
            </div>
          </div>
        </form>

      </div>
    </div>
    <div class="card-footer text-center py-3">
      <p class="text-warning mb-0">Already have an account? <a href="login.html"> Sign In here</a></p>
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
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- sidebar-menu js -->
<script src="assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="assets/js/app-script.js"></script>

</body>
</html>
