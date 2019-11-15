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
	
</script>
</head>
<body>
   <div class ="container">
  <form method ="post" action = "login_add_Member" name = "myform" id ="myform"> 
 
    <fieldset>
     <legend>회원가입</legend>
     <div class = "form-group">
     	<label for ="id"><b>ID</b></label><br>
     	<input class = "form-control" type = "text" size="10px" name = "id" id="id" placeholder ="Enter id" maxlength ="10">
     </div>	
     <div class = "form-group">	
     	<label for ="pass"><b>Password</b></label><br>
     	<input class = "form-control" type = "password" name ="pass" id="pass" placeholder = "Enter Password" >
     </div>
     <div class = "form-group">	
     	<label for ="name"><b>Name</b></label><br>
     	<input class = "form-control" type = "text" name ="name" id="name" placeholder = "Enter name" >
     </div>
    	 <button class = "btn btn-default" id = "button2" type = "submit" value ="회원가입">회원가입</button>
     	<button class = "btn btn-default" id = "button1" type = "reset" value ="취소">취소</button>
     	
    </fieldset>
    </form>
        </div>
</body>
</html>