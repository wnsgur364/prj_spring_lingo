<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LingoChat</title>

    <!-- 채팅 css -->
    <link rel="stylesheet" href="../../../../resources/chat/css/chat.css" />



    <link rel="stylesheet" href="../../../../resources/chat/css/chatStyle.css" />

    <style>
        #header {
            height: 218px;
        }
        #category_menu a:nth-child(4) {
            border-bottom: 3px solid #e83862;
            margin-bottom: 10px;
            box-sizing: border-box;
            color: #e83862;
            height: 44px;
        }
    </style>
</head>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<body>
<div class="hugeContainer">
<%--    <div class="chatCurtain"></div>--%>

    <%@include file="chat.jsp"%>
<%--    <div class="border_box">--%>
<%--        &lt;%&ndash;검색 부분&ndash;%&gt;--%>
<%--        &lt;%&ndash;검색 부분&ndash;%&gt;--%>
<%--        <div class="srch_box">--%>
<%--            <c:choose>--%>
<%--                <c:when test="${not empty id }">--%>
<%--                    &lt;%&ndash;Profile Picture&ndash;%&gt;--%>
<%--                    &lt;%&ndash;Profile Picture&ndash;%&gt;--%>


<%--                    <div class="dropDown">--%>
<%--                        <a id="headerProfile" href="#">--%>
<%--                            <c:choose>--%>
<%--                                <c:when test="${not empty sessionProfilePath}">--%>
<%--                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"--%>
<%--                                         id="uploadImgProfilePreview1"--%>
<%--                                         src="<c:out value="${sessionProfilePath}"/><c:out value="${userName}"/>"--%>
<%--                                         class="rounded-circle d-block" width="80" height="80"--%>
<%--                                    />--%>
<%--                                </c:when>--%>
<%--                                <c:otherwise>--%>
<%--                                    <img style="object-fit: cover; align-self: center; transition: all .2s ease-in-out;"--%>
<%--                                         id="uploadImgProfilePreview"--%>
<%--                                         src="/resources/img/prj_1/admin/defaultProfile.png"--%>
<%--                                         class="rounded-circle d-block" width="75" height="75"--%>
<%--                                    />--%>
<%--                                </c:otherwise>--%>
<%--                            </c:choose>--%>

<%--                        </a>--%>
<%--                        <div class="userMenu">--%>
<%--                            <div id="userGear" class="goTo"><span class="material-symbols-outlined">settings</span></div>--%>
<%--                            <div onclick="logOutUser()" class="logOut"><span class="material-symbols-outlined">logout</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>


<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <div style="cursor: pointer;" onclick="location.href='/login'" class="outBtn">--%>
<%--                        <span class="material-symbols-outlined">login</span>--%>
<%--                    </div>--%>

<%--                </c:otherwise>--%>
<%--            </c:choose>--%>


<%--        </div>--%>
<%--        &lt;%&ndash;검색 부분&ndash;%&gt;--%>
<%--        &lt;%&ndash;검색 부분&ndash;%&gt;--%>



    </div> <%--BorderBox--%>
</div> <%--hugeContainer--%>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

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
        const curtain = $(".chat-container");
        const frame = $(".chatFrame");
        curtain.hide();
        frame.hide();
        $("#chatNo1").on("click",function(){
            curtain.fadeToggle();
            frame.fadeToggle();
            var chatRecord = $(".chatRecord")[0];
            chatRecord.scrollTo({
                top: chatRecord.scrollHeight
            });


        });
    });
</script>
