<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="stylesheet" href="resources/login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	
	<!-- form area -->
	<div class="form">
		
		<!--  login form -->
		<form class="login-form" action="" method="post">
			<i class="fas fa-user-circle"></i>
			<input class="user-input" type="text" name="" placeholder="Username" required>
			<input class="user-input" type="password" name="" placeholder="Password" required>
			<div class="options-01">
				<label class="remember-me"><input type="checkbox" name="" >Remember me</label>
				<a href="#">Forgot your password?</a>
			</div>
			<input class="btn" type="submit" name="" value="LOGIN">
			<div class="options-02">
				<p>Not Registered? <a href="#">Create an Account</a><p>
			</div>
		</form>
		
		<!-- signup form start -->
		<form class="signup-form" action="" method="post">
			<i class="fas fa-user-plus"></i>
			<input class="user-input" type="text" name="" placeholder="Username" required>
			<input class="user-input" type="text" name="" placeholder="Email Address" required>
			<input class="user-input" type="text" name="" placeholder="Password" required>
			<input class="btn" type="submit" name="" value="SIGN UP">
			<div class="options-02">
				<p>Already Registered? <a href="#">Sign In</a></p>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
	$('.options-02 a').click(function(){
		$('form').animate({
			height: "toggle", opacity: "toggle"
		}, "slow");
	});
	</script>


</body>
</html>