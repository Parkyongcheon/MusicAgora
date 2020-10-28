<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message Popup</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$('#idcheck').click(function(){
		var id = $('#id').val();

		$.ajax
		({
			type	: 'GET'
			,data	: {'id' : id }
			,url	:'/idcheck'
			,success: function(data)
			{
				if(data == 1)
				{
					alert('You are ready to send your message');
				}
				else
				{
					alert('ID does not exist');
					location.replace('/messagepopup');
				}
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
	<form action="send" method="post" >
		<input type="text" id="id" placeholder="id seach"><input id="idcheck" type="button" value="check"><br>
		<textarea rows="8" cols="22" placeholder="content" id="content"></textarea><br>
		<input type="button" value="보내기" id="subbtn">
	</form>
</body>
</html>