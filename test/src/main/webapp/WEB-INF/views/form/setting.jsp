<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale-1">
<title>Responsive Glowing Card UI</title>
<link rel="stylesheet" type="text/css" href="resources/style.css">
<link rel="stylesheet" type="text/css" href="resources/setting.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	$(function(){
		//리스트 출력 위한 함수

		$('#follow').click(function(){
			var ran = Math.random().toString(36).substr(2,11);
			var userid = '<%=session.getAttribute("userid") %>'
				
			$.ajax
			({
				type	: 'GET'
				,data	: {'follower' : userid, 'follow' : ran}
				,url	: '/insertfollow'
				,success: function(data)
				{
					if(data == "1")
					{
						console.log("add follower check -> follow : "+ran+" follower : "+userid);
						alert("Add Follow");
					}
					else
					{
						alert("Can't add follow")
					}
				}
				,error	: function(error)
				{
					console.log(error);
				}
			})
		})
		
		$('#follower').click(function(){
			var ran = Math.random().toString(36).substr(2,11);
			var userid = '<%=session.getAttribute("userid") %>'
				
			$.ajax
			({
				type	: 'GET'
				,data	: {'follow' : userid, 'follower' : ran}
				,url	: '/insertfollower'
				,success: function(data)
				{
					if(data == "1")
					{
						console.log("add follower check -> follow : "+userid+" follower : "+ran);
						alert("Add Follower");
					}
					else
					{
						alert("Can't add follower")
					}
				}
				,error	: function(error)
				{
					console.log(error);
				}
			})
		})

		$('#selfollower').click(function()
		{
			var userid = '<%=session.getAttribute("userid")%>'
			$.ajax
			({
				type	: 'GET'
				,data	: {'follow' : userid}
				,url	: '/selfollower'
				,success: function(data)
				{
					console.log(data);
					$('#noci').append(data + " <br>")
				}
				,error	: function(error)
				{
					console.log(error);
				}
			})

		})


		
	})

</script>

</head>
<body>
	<input type="checkbox" id="check" checked>
	<!-- header -->
	<header>
		<label for="check">
			<i class="fas fa-bars" id="sidebar_btn"></i>
		</label>
		<div class="left_area">
			<h3>Msuic <span>Agora</span></h3>
		</div>
		<div class="right_area">
			<a href="#" class="logout_btn">Logout</a>
		</div>
	</header>
	
	<!-- mobile navigation bar start-->
	<div class="mobile_nav">
		<div class="nav_bar">
			<img src="resources/images/user.png" class="mobile_profile_image" alt="">
			<i class="fa fa-bars nav_btn"></i>
		</div>
		<div class="mobile_nav_items">	
			<a href="masterpiece"><i class="fas fa-compact-disc"></i><span>Masterpiece</span></a>
			<a href="recommend"><i class="fas fa-music"></i><span>Recommend</span></a>
			<a href="team"><i class="fas fa-user-plus"></i><span>Searching Team</span></a>
			<a href="about"><i class="fas fa-info-circle"></i><span>About</span></a>
			<a href="setting"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
		</div>
	</div>

	
	<!--  sidebar start -->
	<div class="sidebar">
		<div class="profile_info">
			<img src="resources/images/user.png" class="profile_image" alt="">
			<h4>User</h4>
		</div>
			<a href="masterpiece"><i class="fas fa-compact-disc"></i><span>Masterpiece</span></a>
			<a href="recommend"><i class="fas fa-music"></i><span>Recommend</span></a>
			<a href="team"><i class="fas fa-user-plus"></i><span>Searching Team</span></a>
			<a href="about"><i class="fas fa-info-circle"></i><span>About</span></a>
			<a href="setting"><i class="fas fa-sliders-h"></i><span>Settings</span></a>
	</div>

	<div class="con">
		
		<div class="pCard_card">
   <div class="pCard_up">
      <div class="pCard_text">
         <h2>User</h2><!-- 추후에 로그인하면 session으로 받아야됨 -->
      </div>
      <div class="pCard_add"><i class="fa fa-plus"></i></div>
   </div>
   <div class="pCard_down">
      <div>
         <p>Written</p>
         <p>0</p>
      </div>
      <div>
         <p>Follow</p>
         <p>0</p>
      </div>
      <div>
         <p>Follower</p>
         <p>${follownum}</p>
      </div>
   </div>
   <div class="pCard_back">
      <p>See My Latest Work Here</p>
      <a href="#"><i class="fa fa-facebook fa-2x fa-fw"></i></a>
      <a href="#"><i class="fa fa-linkedin fa-2x fa-fw"></i></a>
      <a href="#"><i class="fa fa-behance fa-2x fa-fw"></i></a> <br>
      <a href="#"><i class="fa fa-codepen fa-2x fa-fw"></i></a>
      <a href="#"><i class="fa fa-dribbble fa-2x fa-fw"></i></a>
      <a href="#"><i class="fa fa-instagram fa-2x fa-fw"></i></a>
      <p>Follow Me!</p>
   </div>
</div>

	<div>
		<input type="button" id="follow" value="follow">
	</div>
	<div>
		<input type="button" id="follower" value="follower">
	</div>
	<div>
		<input type="button" id="selfollower" value="seachingfollower">
	</div>
	
	<div id="noci">
		
	</div>
	
	<div>
		<form action="upload" method="post" enctype="multipart/form-data">
			<input type="file" name="file"> <input type="submit" value="제출">
		</form>
	</div>
	

</div>

	<script type="text/javascript">
	
	$(document).ready(function(){

		$('.nav_btn').click(function(){
			$('.mobile_nav_items').toggleClass('active');
		});
	});

	$(function () {
		"use strict";
		$(".pCard_add").click(function () {
			$(".pCard_card").toggleClass("pCard_on");
			$(".pCard_add i").toggleClass("fa-minus");
		});
	});
	
	</script>

</body>
</html>