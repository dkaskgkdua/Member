<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

</head>
<body>
  <form method ="post" action = "loginServlet" name = "myform" id ="myform"> 
    <div class ="container">
    <fieldset>
     <legend>유효성 검사</legend>
     	<label for ="id"><b>ID</b></label><br>
     	<input type = "text" size="10px" name = "id" id="id" placeholder ="Enter id" >
     	
     	<br>
     	<label for ="pass"><b>비밀번호</b></label><br>
     	<input type = "password" name ="pass" id="pass" placeholder = "Enter Password" >
     	
     	<button id = "button1" type = "reset" value ="취소">Cancel</button>
     	<button id = "button2" type = "submit" value ="회원가입">Sign Up</button>
    </fieldset>
    </div>
    </form>
</body>
</html>