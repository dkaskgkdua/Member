<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<style>
#myform {
	border : 1px solid black;
}
</style>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
  <form method ="post" action = "login_ok.jsp" name = "myform" id ="myform"> 
    <div class ="container">
    <fieldset>
     <legend>유효성 검사</legend>
     <div class = "form-group">
     	<label for ="id"><b>ID</b></label><br>
     	<input class = "form-control" type = "text" size="10px" name = "id" id="id" placeholder ="Enter id" >
     </div>	
     <div class = "form-group">	
     	<label for ="pass"><b>비밀번호</b></label><br>
     	<input class = "form-control" type = "password" name ="pass" id="pass" placeholder = "Enter Password" >
     </div>		
     	<button class = "btn btn-default" id = "button1" type = "reset" value ="취소">Cancel</button>
     	<button class = "btn btn-default" id = "button2" type = "submit" value ="회원가입">Sign Up</button>
    </fieldset>
    </div>
    </form>
</body>
</html>