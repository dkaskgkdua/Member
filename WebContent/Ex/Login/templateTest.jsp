<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
.list-group-item {
	background : #222;
	color : white;
	font-weight : bold;
	border : 0;
}
html, body {
background-image:url('../image/dd.png');
	height : 100%;
}
a {
	text-decoration:none;
	color : black;
}
footer, header { 
	text-align : center;
}
aside {
	width:30%;
	height : 100%;
	float : left;
	border : 1px solid black;
}
section {
	width : 70%;
	height : 100%;
	float : right;
	border : 1px solid black; 
}
footer{
	clear : both;
}
#wrap{
	height : 80%;
}

</style>
<title>Insert title here</title>
</head>
<body>
<%
	String pagefile = request.getParameter("page");
	if(pagefile==null) {
		pagefile = "newItem";	
	}
	
%>
	<header>
		<h1>상품 목록입니다.</h1><br>
	</header>
	<nav class ="navbar navbar-inverse">
		<div class ="container-fluid">
		<div class = "navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        		<span class="sr-only">Toggle navigation</span>
       			<span class="icon-bar"></span>
       		 	<span class="icon-bar"></span>
       			<span class="icon-bar"></span>
      		</button>
      		<a class="navbar-brand" href="#">DICE</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><jsp:include page="login.jsp"/></li>
				<li><jsp:include page="addMember.jsp"/></li>	
			</ul>
		</div>
		</div>
	</nav>
	<div id ="wrap">
		<aside>
			<div class ="list-group">
			<jsp:include page ="left.jsp"/>
			</div>
		</aside>
		<section>
			 <jsp:include page ='<%=pagefile+ ".jsp" %>'/>
		</section>
	</div>
	<footer>
		<jsp:include page="loginResult.jsp"/>
	</footer>
</body>
</html>