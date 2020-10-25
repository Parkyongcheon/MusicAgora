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
<script type="text/javascript">

var check = 0;

$(function(){
	//login
	$('#loginuser').click(function(){
		var id = $('#loginid').val();
		var pw = $('#loginpw').val();

		console.log(id);
		console.log(pw);

		if(id.length <= 5 || id.length > 19 || pw.length <= 5 || pw.length > 19)
		{
			alert("Please enter again");
		}
		else
		{
			$.ajax
			({
				type	: 'POST'
				,data	: {'id' : id, 'pw': pw}
				,url	: '/loginuser'
				,success:function(data)
				{
					
					if(data == "1")
					{
						alert("Login Success");
						location.replace('/main');
					}
					else
					{
						alert("Login Fail, Please check your ID and Password again");
					}
				}
				,error: function(data)
				{
					console.log(error);
				}
			})

		}
	})

	//Sign up
	$('#usercheck').click(function(){
		var id = $('#id').val();
		var pw = $('#pw').val();
		var email = $('#email').val(); 

		if(id.length <= 5 || id.length > 19 || pw.length <= 5 || pw.length > 19 || email.length <= 0 || email.length > 49)
		{
			alert("Please enter an ID of 5 to less than 20 characters and a password of 5 to less than 20 characters");
		}
		else
		{
		$.ajax({
			type	: 'POST'
			,data	: { "id" : id, "pw" : pw ,"email" : email}
			,url	: "/insertuser"
			,success: function(data)
			{
				if(data == 1)
				{
					alert("Sign up Success");
					location.replace('/login');
				}
				else
				{
					alert("You can't have a duplicate id or email. Please enter other information")
					location.replace('/login')
				}
			}
			,error: function(error)
			{
				console.log(error);
			}
		})
		}
	});
	

})

</script>

</head>
<body>
	
	<!-- form area -->
	<div class="form">
		
		<!--  login form -->
		<form class="login-form" action="" method="post">
			<i class="fas fa-user-circle"></i>
			<input class="user-input" type="text" id="loginid" name="loginid" placeholder="Username" required>
			<input class="user-input" type="password" id="loginpw" name="loginid" placeholder="Password" required>
			<div class="options-01">
				<label class="remember-me"><input type="checkbox" name="" >Remember me</label>
				<a href="#">Forgot your password?</a>
			</div>
			<input class="btn" id="loginuser" name="" value="LOGIN" style="text-align: center;">
			<div class="options-02">
				<p>Not Registered? <a href="#">Create an Account</a><p>
			</div>
		</form>
		
		<!-- signup form start -->
		<form class="signup-form" action="" method="post">
			<i class="fas fa-user-plus"></i>
			<input class="user-input" type="text" id="id" placeholder="Username" required>
			<input class="user-input" type="password" id="pw" placeholder="Password" required>
			<input class="user-input" type="text" id="email" placeholder="Email Address" required>
			<input class="btn" id="usercheck" value="SIGN UP" style="text-align: center;">
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