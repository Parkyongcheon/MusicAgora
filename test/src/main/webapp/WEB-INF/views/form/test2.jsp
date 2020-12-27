<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEST CSS2</title>
<link rel="stylesheet" type="text/css" href="resources/pftest2.css">
</head>
<body>

	<section>
		
		<div class="box">
			<div class="imgBx">
				<img src="resources/images/view1.jpg">
				<h2>Click Again To Close</h2>
				<div class="content">
					<h3>Image Caption One</h3>
					<p>Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST</p>
				</div>
			</div>
		</div>
		
		<div class="box">
			<div class="imgBx">
				<img src="resources/images/view2.jpg">
				<h2>Click Again To Close</h2>
				<div class="content">
					<h3>Image Caption Two</h3>
					<p>Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST</p>
				</div>
			</div>
		</div>
		
		<div class="box">
			<div class="imgBx">
				<img src="resources/images/view3.jpg">
				<h2>Click Again To Close</h2>
				<div class="content">
					<h3>Image Caption Three</h3>
					<p>Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST</p>
				</div>
			</div>
		</div>
		
		<div class="box">
			<div class="imgBx">
				<img src="resources/images/view4.jpg">
				<h2>Click Again To Close</h2>
				<div class="content">
					<h3>Image Caption Four</h3>
					<p>Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST</p>
				</div>
			</div>
		</div>
		
		<div class="box">
			<div class="imgBx">
				<img src="resources/images/view5.jpg">
				<h2>Click Again To Close</h2>
				<div class="content">
					<h3>Image Caption Five</h3>
					<p>Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST Test TEST</p>
				</div>
			</div>
		</div>
	</section>
	
	<script>
		let imgBx = document.querySelectorAll('.imgBx');
		imgBx.forEach(popup => popup.addEventListener('click', () =>
		{
			popup.classList.toggle('active')
		}))
	</script>

</body>
</html>