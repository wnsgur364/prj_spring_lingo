<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>facebook messenger chat - Bootdey.com</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link
			href="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
			rel="stylesheet"
	/>
	<link href="/resources/css/chat.css" rel="stylesheet" />
	<link
			href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
			rel="stylesheet"
	/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.6.8-fix/jquery.nicescroll.min.js"></script>
</head>
<body>
<div class="container">
	<div class="content container-fluid bootstrap snippets bootdey">
		<div class="row row-broken">
			<div class="col-sm-3 col-xs-12">
				<div
						class="col-inside-lg decor-default chat"
						style="overflow: hidden; outline: none"
						tabindex="5000"
				>
					<div class="chat-users">
						<h6>채팅방 이름</h6>
						<p>참여인원 1/10</p>
						<!-- 유저 인원 -->
						<div class="user">
							<div class="avatar">
								<img
										src="https://bootdey.com/img/Content/avatar/avatar1.png"
										alt="User name"
								/>
								<div class="status off"></div>
							</div>
							<div class="name">User name</div>
							<div class="mood">User mood</div>
						</div>

					</div>
				</div>
			</div>
			<div
					class="col-sm-9 col-xs-12 chat"
					style="overflow: hidden; outline: none"
					tabindex="5001"
			>


				<!-- 채팅 바디 -->
				<div class="col-inside-lg decor-default">
					<div class="chat-body">
						<h6>채팅방이름</h6>
						<div class="answer left">
							<div class="avatar">
								<img
										src="https://bootdey.com/img/Content/avatar/avatar1.png"
										alt="User name"
								/>
								<div class="status offline"></div>
							</div>
							<div class="name">Alexander Herthic</div>
							<div class="text">
								Lorem ipsum dolor amet, consectetur adipisicing elit Lorem
								ipsum dolor amet, consectetur adipisicing elit Lorem ipsum
								dolor amet, consectetur adiping elit
							</div>
							<div class="time">5 min ago</div>
						</div>
						<div class="answer right">
							<div class="avatar">
								<img
										src="https://bootdey.com/img/Content/avatar/avatar2.png"
										alt="User name"
								/>
								<div class="status offline"></div>
							</div>
							<div class="name">Alexander Herthic</div>
							<div class="text">
								Lorem ipsum dolor amet, consectetur adipisicing elit Lorem
								ipsum dolor amet, consectetur adipisicing elit Lorem ipsum
								dolor amet, consectetur adiping elit
							</div>
							<div class="time">5 min ago</div>
						</div>

<%--						길이 때문에 추가--%>
						<div class="answer left">
							<div class="avatar">
								<img
										src="https://bootdey.com/img/Content/avatar/avatar1.png"
										alt="User name"
								/>
								<div class="status offline"></div>
							</div>
							<div class="name">Alexander Herthic</div>
							<div class="text">
								Lorem ipsum dolor amet, consectetur adipisicing elit Lorem
								ipsum dolor amet, consectetur adipisicing elit Lorem ipsum
								dolor amet, consectetur adiping elit
							</div>
							<div class="time">5 min ago</div>
						</div>
						<div class="answer right">
							<div class="avatar">
								<img
										src="https://bootdey.com/img/Content/avatar/avatar2.png"
										alt="User name"
								/>
								<div class="status offline"></div>
							</div>
							<div class="name">Alexander Herthic</div>
							<div class="text">
								Lorem ipsum dolor amet, consectetur adipisicing elit Lorem
								ipsum dolor amet, consectetur adipisicing elit Lorem ipsum
								dolor amet, consectetur adiping elit
							</div>
							<div class="time">5 min ago</div>
						</div><div class="answer left">
						<div class="avatar">
							<img
									src="https://bootdey.com/img/Content/avatar/avatar1.png"
									alt="User name"
							/>
							<div class="status offline"></div>
						</div>
						<div class="name">Alexander Herthic</div>
						<div class="text">
							Lorem ipsum dolor amet, consectetur adipisicing elit Lorem
							ipsum dolor amet, consectetur adipisicing elit Lorem ipsum
							dolor amet, consectetur adiping elit
						</div>
						<div class="time">5 min ago</div>
					</div>
						<div class="answer right">
							<div class="avatar">
								<img
										src="https://bootdey.com/img/Content/avatar/avatar2.png"
										alt="User name"
								/>
								<div class="status offline"></div>
							</div>
							<div class="name">Alexander Herthic</div>
							<div class="text">
								Lorem ipsum dolor amet, consectetur adipisicing elit Lorem
								ipsum dolor amet, consectetur adipisicing elit Lorem ipsum
								dolor amet, consectetur adiping elit
							</div>
							<div class="time">5 min ago</div>
						</div>
<%--						길이 떄문에 추가--%>

						<div class="answer-add">
							<input placeholder="Write a message" />
							<span class="answer-btn answer-btn-1"></span>
							<span class="answer-btn answer-btn-2"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function () {
		$(".chat").niceScroll();
	});
</script>
</body>
</html>
