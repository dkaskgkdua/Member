<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
    .container{width:50%;border:1px solid lightgray;
               padding:20px;margin-top:20px}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>
	$(function() {
		var id = '<%= request.getAttribute("id")%>';
		if(id) {
			$("input:checkbox").prop('checked', true);
			$("#id").val(id);
		}
		
		$("#button3").click(function() {
			location.href="/Member/login_add_Member";
		})
	});
	
</script>
</head>
<body>
   <div class ="container">
  <form method ="post" action = "login_ok_cookie" name = "myform" id ="myform"> 
 
    <fieldset>
     <legend>로그인</legend>
     <div class = "form-group">
     	<label for ="id"><b>ID</b></label><br>
     	<input class = "form-control" type = "text" size="10px" name = "id" id="id" placeholder ="Enter id" maxlength ="10">
     </div>	
     <div class = "form-group">	
     	<label for ="pass"><b>비밀번호</b></label><br>
     	<input class = "form-control" type = "password" name ="pass" id="pass" placeholder = "Enter Password" >
     </div>
     <div class = "form-group">
     	<input = type = "checkbox" id = "remember" value = "remember" name = "remember" >
     	<label for = "remember">Remember me</label>
     </div>		
     	<button class = "btn btn-default" id = "button3" type = "button" value ="회원가입">회원가입</button>
     	<button class = "btn btn-default" id = "button1" type = "reset" value ="취소">Cancel</button>
     	<button class = "btn btn-default" id = "button2" type = "submit" value ="로그인">Sign Up</button>
     	
    </fieldset>

    </form>
        </div>
</body>
</html>