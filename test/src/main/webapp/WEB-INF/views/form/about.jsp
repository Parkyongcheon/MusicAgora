<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<!-- youtube ex -->
		<div class="videowrapper">
			<iframe width="1280" height="840" src="https://www.youtube.com/embed/SePL2w5f6dE?autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen ></iframe>"
		</div>
		
		
		<div class="card">
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
		</div>
		

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