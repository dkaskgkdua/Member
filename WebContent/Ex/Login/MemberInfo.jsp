<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ page import ="com.mf2.vo.Member" %>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	
<%
	Member member = (Member)request.getAttribute("member");
%>
<script>
	$(function() {
		$('#id').val('<%= member.getId() %>');
		$('#pass').val('<%= member.getPass() %>');
		$('#name').val('<%= member.getName() %>');
		$('#date').val('<%= member.getReg_date() %>');
	})
		
	
</script>
</head>
<body>
   <div class ="container">
  <form method ="post" action = "#" name = "myform" id ="myform"> 
 
    <fieldset>
     <legend>개인정보</legend>
     <div class = "form-group">
     	<label for ="id"><b>ID</b></label><br>
     	<input class = "form-control" type = "text" size="10px" name = "id" id="id" placeholder ="Enter id" maxlength ="10">
     </div>	
     <div class = "form-group">	
     	<label for ="pass"><b>Password</b></label><br>
     	<input class = "form-control" type = "text" name ="pass" id="pass" placeholder = "Enter Password" >
     </div>
     <div class = "form-group">	
     	<label for ="name"><b>Name</b></label><br>
     	<input class = "form-control" type = "text" name ="name" id="name" placeholder = "Enter name" >
     </div>
     <div class = "form-group">	
     	<label for ="name"><b>가입일</b></label><br>
     	<input class = "form-control" type = "text" name ="date" id="date" placeholder = "Enter date" >
     </div>
     
    	 <button class = "btn btn-default" onclick = "location.href = '#'">수정</button>
     	<button class = "btn btn-default" type = "button" onclick = "location.href = 'Ex/Login/templateTest.jsp'">확인</button>
     	
    </fieldset>
    </form>
        </div>
</body>
</html>