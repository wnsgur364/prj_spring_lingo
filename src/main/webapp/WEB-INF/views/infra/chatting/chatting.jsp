<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<style>
    .avatar{
        width: 100%!important;
    }
</style>
<html>
<head>
    <title>채팅입니당</title>
    <link rel="stylesheet" href="../../../../resources/chat/css/chatStyle.css" />
    <meta charset="utf-8" />
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="wrap">
    <section class="menu-section">
        <h1>
            <!-- <a href="#" target="_blank">
              <img src="Logo.png" alt="logo" />
            </a> -->
            이그잼플 채팅
        </h1>
        <div class="user-box">
            <img class="user-img" src="../../../../resources/chat/images/user_0.png" alt="user image" />
            <div class="name">
                <!-- addClass : active -->
                <input type="text" value="안도형" />
            </div>
            <a href="javascript:void(0);" class="btn-alter"></a>
        </div>
        <nav class="menu">
            <ul>
                <li class="active"><a id="chat" href="javascript:void(0);">채팅방1</a></li>
                <li><a href="javascript:void(0);">채팅방2</a></li>
            </ul>
        </nav>
        <!-- resource btns -->
<%--        <ul class="resource-box">--%>
<%--            <li>--%>
<%--                <a href="javascript:void(0);" class="btn"--%>
<%--                ><img src="../../../../resources/chat/images/icon_resource1.png" />Resource</a--%>
<%--                >--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a href="javascript:void(0);" class="btn"--%>
<%--                ><img src="../../../../resources/chat/images/icon_resource2.png" />Resource</a--%>
<%--                >--%>
<%--            </li>--%>
<%--        </ul>--%>
    </section>
    <main class = "chat-wrap">
        <%@include file="chat.jsp"%>
    </main>
</div>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<script
        src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
        crossorigin="anonymous"
></script>
<script src="../../../../resources/chat/js/talkplus-0.4.0.js"></script>

<!-- <script src="../../../../resources/chat/js/chat.js" type="module"></script> -->

<script>
    $(".btn-attach").on("click", function () {
        $(".attach-box").toggleClass("active");
    });
</script>
<!-- <script>

  $('.btn-attach a').on('click', function () {
      $(this).toggleClass('active');
      $(this).closest('.message-write-inner').find('.attach-box').addClass('active');
  });
  $('.btn-attach a').on('focusout', function () {
      $(this).removeClass('active');
      $(this).closest('.message-write-inner').find('.attach-box').removeClass('active');
  });

</script> -->




</body>
</html>
<script>
    /*수정 버튼 이벤트*/
    $(".updateBtn").on("click",function(){
        alert("변경 후 재로그인 해주세요!");
        $("form[name=updateForm]").attr("action","/userMemberForm/update").submit();
    });
</script>
<script>
    $(function(){
        const curtain = $(".chatCurtain");
        const frame = $(".chatFrame");
        curtain.hide();
        frame.hide();
        $("#chat").on("click",function(){
            curtain.fadeToggle();
            frame.fadeToggle();
            var chatRecord = $(".chatRecord")[0];
            chatRecord.scrollTo({
                top: chatRecord.scrollHeight
            });


        });
    });
</script>
