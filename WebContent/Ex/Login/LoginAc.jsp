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
     <legend>��ȿ�� �˻�</legend>
     	<label for ="id"><b>ID</b></label><br>
     	<input type = "text" size="10px" name = "id" id="id" placeholder ="Enter id" >
     	
     	<br>
     	<label for ="pass"><b>��й�ȣ</b></label><br>
     	<input type = "password" name ="pass" id="pass" placeholder = "Enter Password" >
     	
     	<button id = "button1" type = "reset" value ="���">Cancel</button>
     	<button id = "button2" type = "submit" value ="ȸ������">Sign Up</button>
    </fieldset>
    </div>
    </form>
</body>
</html>