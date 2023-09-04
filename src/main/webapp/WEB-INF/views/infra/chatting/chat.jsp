<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://kit.fontawesome.com/594e2502af.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<div class="wrap">

<%--<section class="menu-section">--%>

<%--    <div class="user-box">--%>
<%--        <img class="user-img" src="${sessionScope.profile}" alt="user image" />--%>
<%--        <div class="name">--%>
<%--            <!-- addClass : active -->--%>
<%--            <span class="name-text"><c:out value="${name}"/></span>--%>
<%--        </div>--%>
<%--        <a href="javascript:void(0);" class="btn-alter"></a>--%>
<%--    </div>--%>
<%--    <nav class="menu">--%>
<%--        <ul>--%>
<%--            <li><a id="chatNo1" href="javascript:void(0);" onclick="toggleActive('chatNo1')">채팅방1</a></li>--%>
<%--            <li><a id="chatNo2" href="javascript:void(0);" onclick="toggleActive('chatNo2')">채팅방2</a></li>--%>
<%--        </ul>--%>
<%--    </nav>--%>

<%--    <!-- resource btns -->--%>
<%--    &lt;%&ndash;        <ul class="resource-box">&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a href="javascript:void(0);" class="btn"&ndash;%&gt;--%>
<%--    &lt;%&ndash;                ><img src="../../../../resources/chat/images/icon_resource1.png" />Resource</a&ndash;%&gt;--%>
<%--    &lt;%&ndash;                >&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;                <a href="javascript:void(0);" class="btn"&ndash;%&gt;--%>
<%--    &lt;%&ndash;                ><img src="../../../../resources/chat/images/icon_resource2.png" />Resource</a&ndash;%&gt;--%>
<%--    &lt;%&ndash;                >&ndash;%&gt;--%>
<%--    &lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--    &lt;%&ndash;        </ul>&ndash;%&gt;--%>
<%--</section>--%>

<main class="chat-wrap">
    <div class="chat-wrap-inner">
        <div class="chat-container">
            <h2 class="chat-title">톡플러스</h2>
            <!-- chat-area -->
            <div class="chat-area" id="chatView">
<%--                <div class="date"></div>--%>
<%--                <div class="notibox">--%>
<%--                    <span>채팅방 운영정책 및 공지를 입력할 수 있는 영역입니다</span>--%>
<%--                </div>--%>
                <!-- message-area -->
                <div class="message-area" style="height: 100%">


<%--                    <div class="message-list writer">--%>
<%--                        <div class="message-box">--%>
<%--                            <div class="message-time">--%>
<%--                                <div class="timestamps">오후 00:00</div>--%>
<%--                                <div class="message-text">발송메시지 영역</div>--%>
<%--                                <div class="gogo">발송자</div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>>--%>

<%--                    <div class="message-list avatar">--%>
<%--                        <div class="avatar-image"><img src="./images/user_1.png" /></div>--%>
<%--                        <div class="message-box">--%>
<%--                            <div class="avatar-name">톡플러스</div>--%>
<%--                            <div class="message-time">--%>
<%--                                <div class="message-time">--%>
<%--                                    <div class="timestamps">오후 00:00</div>--%>
<%--                                    <div class="message-text">발송메시지 영역</div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

                    <!-- 새로운채팅출력 -->
                    <div class="chatRecord"></div>

                    <script id="temp" type="text/x-handlebars-template">
                        {{#each .}}
                        <div class="message-list {{message-list sender}}" style="width: 100%">
                            <div class="message-box">
                                <div class="message-time">
                                    <div class="timestamps">{{regdate}}</div>
                                    <div class="message-text">{{message}}
                                        <a href="{{seq}}" style="display:{{printNone sender}}">X</a>
                                    </div>
                                    <div class="senderx">{{sender}}</div>

                                </div>
                            </div>
                        </div>
                        {{/each}}

                        <%--        이거 풀면 db연결--%>
                    </script>


                    <script id="temp1" type="text/x-handlebars-template">
                        <div class="message-list {{message-list sender}}">
                            <div class="message-box">
                                <div class="message-time">
                                    <div class="timestamps">{{regdate}}</div>
                                    <div class="message-text">{{message}}</div>
                                    <div class="senderx">{{sender}}</div>

                                </div>
                            </div>
                        </div>
                    </script>


                </div>
            </div>
            <!-- //message-area -->
        </div>
        <!-- //chat-area -->

    </div>
    <!-- message-write-area -->
    <!-- message-write-area -->
    <div class="message-write-area">
        <div class="message-write-inner">
            <div class="btn-attach">
                <a href="javascript:void(0);"></a>
            </div>
            <div class="attach-box">
                <ul>
                    <li>
                        <a class="attach pic" href="javascript:void(0);">사진첨부</a>
                    </li>
                    <li>
                        <a class="attach video" href="javascript:void(0);"
                        >동영상 첨부</a
                        >
                    </li>
                    <li>
                        <a class="attach file" href="javascript:void(0);">파일첨부</a>
                    </li>
                </ul>
            </div>
            <div class="write-box">
                <input
                        id="txtMessage"
                        type="text"
                        class="enterMessage"
                        placeholder="메시지를 입력해주세요."
                />
            </div>
            <a id="planeBtn" class="btn-send" id="btnEnterMessage" href="javascript:void(0);"
            >전송</a
            >
        </div>
    </div>
    <!-- //message-write-area -->
    <!-- //message-write-area -->
</main>

</div>




<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->
<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->
<script>
    var uid = "${id}";
    Handlebars.registerHelper("message-list", function(sender) {
        if (uid != sender) {
             return "avatar";

        } else {
            return "writer";
        }
    });
    Handlebars.registerHelper("printNone", function(sender) {
        if (uid != sender) {
            return "none";
        }
    });
</script>
<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->
<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->

<script>
    var uid = "${id}"
    getList();

    // 웹소캣 생성
    // var sock = new SockJS("http://3.36.75.118:8081/echo/");
    //
    var sock = new SockJS("http://localhost:8080/echo/");

    sock.onmessage = onMessage;
    console.log(sock);
    sock.onopen = function(event) {
        console.log("WebSocket connected");
    };
    sock.onclose = function(event) {
        console.log("WebSocket closed");
    };
    sock.onerror = function(event) {
        console.log("WebSocket error");
    };

    //채팅삭제
    //채팅삭제
    $(".chatRecord").on('click','.message-text a',function(e){
        e.preventDefault();
        var seq=$(this).attr("href");
        if(!confirm("삭제하시겠습니까?")) return;
        $.ajax({
            async:true,
            cache:false,
            type:'post',
            url:'/chat/delete',
            data:{seq:seq},
            success:function(){
                alert("삭제되었습니다.");
                getList();
            }
        })
    })

    $("#planeBtn").on('click', function(e){
        e.preventDefault();
        var message = $("#txtMessage").val();
        if (message == "") {
            alert("메시지를 입력하세요.");
            $("#txtMessage").focus();
            return;
        }
        // 서버로 메시지 보내기
        sock.send(uid + "|" + message);
        $("#txtMessage").val("");

        // DB로 데이터 보내기
        $.ajax({
            async:"true",
            cache:"false",
            type:'post',
            url:'/chat/insert',
            data:{
                sender:uid,
                message:message,
            },
            success:function(data){
                sock.send(uid + "|" + message+"|"+data);
            }
        })//ajax
    })

    $("#txtMessage").on("keypress", function(e) {
        if (e.keyCode == 13 && !e.shiftKey) {
            e.preventDefault();

            var message = $("#txtMessage").val();
            if (message == "") {
                alert("메시지를 입력하세요.");
                $("#txtMessage").focus();
                return;
            }
            // 서버로 메시지 보내기
            sock.send(uid + "|" + message);
            $("#txtMessage").val("");

            // DB로 데이터 보내기
            $.ajax({
                async:"true",
                cache:"false",
                type:'post',
                url:'/chat/insert',
                data:{
                    sender:uid,
                    message:message,
                },
                success:function(data){
                    sock.send(uid + "|" + message+"|"+data);
                }
            })//ajax

        }
    })

    // 채팅 데이터 받아오기
    function getList() {
        $.ajax({
            async:"true",
            cache:"false",
            type : 'get',
            url : '/chat.json',
            dataType : 'json',
            success : function(data) {
                var temp = Handlebars.compile($("#temp").html());
                $(".chatRecord").append(temp(data));
            }
        });
    }





    // 서버로부터 메시지 받기
    function onMessage(msg) {
        var items = msg.data.split("|");
        var sender = items[0];
        var message = items[1];
        var date = items[2];
        console.log("is this work? : " + items[2] );
        var data = {
            "message" : message,
            "sender" : sender,
            "regdate" : date
        }
        var temp = Handlebars.compile($("#temp1").html());
        $(".chatRecord").append(temp(data));
        var chatRecord = $(".chatRecord")[0];
        chatRecord.scrollTo({
            top: chatRecord.scrollHeight,
            behavior: 'smooth' // Set behavior to 'smooth' for smooth scrolling
                //
                //   var chatRecord = $(".chatRecord")[0];
                // chatRecord.scrollTo({
                //     top: chatRecord.scrollHeight
        });
    }

</script>

<script>
    // 메뉴 아이템의 활성화 상태를 토글하는 함수
    function toggleActive(menuItemId) {
        $("#" + menuItemId).closest("li").toggleClass("active");
    }

</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // chat-container 요소를 찾음
        var chatContainer = document.querySelector(".chat-container");
        var chatRecord = document.querySelector(".chatRecord");

        // chat-container 요소가 존재한다면
        if (chatContainer) {
            // style.display 속성을 "block"으로 설정
            chatContainer.style.display = "block";

            // 1초 후에 chatRecord의 스크롤을 가장 하단으로 이동 (부드러운 스크롤링)
            setTimeout(function() {
                chatRecord.scrollTop = chatRecord.scrollHeight;
            }, 500); // 1000 밀리초(1초) 지연
        }
    });
</script>




