<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Door Page</title>
<link rel="stylesheet" type="text/css" href="resources/door.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#music').on('click', function(){
		location.href="/main";
	})
})

</script>
</head>
<body>
    <div class="banner">
        <video autoplay muted loop>
            <source src="resources/images/banner.mp4" type="video/mp4">
        </video>
        <h2 id="music">Music</h2>
        
    </div>
    

</body>
</html>