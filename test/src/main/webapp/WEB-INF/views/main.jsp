<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale-1">
<title>Responsive Glowing Card UI</title>
<link rel="stylesheet" type="text/css" href="resources/style.css">
<link rel="stylesheet" type="text/css" href="resources/style2.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
		<c:choose>
		<c:when test="${userid != null}" >
			<div class="right_area">
				<a href="/logout" class="logout_btn">Logout</a>
			</div>
		</c:when>
		<c:when test="${userid == null}">
			<div class="right_area">
				<a href="/login" class="login_btn">Login</a>
			</div>
		</c:when>
		</c:choose>
		
		
		
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

	<div class="con" style="background: #fff; text-align: center;" >
		<div class="team"><a href="team">Searching Team</a></div>
		<div class="masterpiece"><a href="masterpiece">Masterpiece</a></div>
		<div class="recommend"><a href="recommend">Recommend</a></div>
		<div class="kakao"><a href="https://kauth.kakao.com/oauth/authorize?client_id=848400309939678a9e8fdf3e02717490&redirect_uri=http://localhost:8080/test/main/kakao&response_type=code">KakaoLogin</a></div>
		<div class="google"><a href="https://accounts.google.com/o/oauth2/v2/auth?scope=https://www.googleapis.com/auth/analytics.readonly&access_type=offline&include_granted_scopes=true&redirect_uri=http://localhost:8080/test/main/google&response_type=code&client_id=1076621433838-pgcvvagrsnr3n99l1h6chi292d1abe58.apps.googleusercontent.com">GoogleLogin</a></div>
		<div class="door"><a href="door">door</a></div>
		<div class="login"><a href="login">login</a></div>
		<div><h1>${userid }</h1></div>
	</div>

	<script type="text/javascript">
	$(document).ready(function(){
		$('.nav_btn').click(function(){
			$('.mobile_nav_items').toggleClass('active');
		});
	});
	</script>

</body>
</html>