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
#cart {
	margin-top : 7px;	
}
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
	width:15%;
	height : 100%;
	float : left;
	border : 1px solid black;
}
section {
	width : 80%;
	height : 100%;
	float : right;
	border : 1px solid black; 
}
footer{
	clear : both;
}
#wrap{
	height : 70%;
}
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    width: 70%;
    margin: auto;
    height : 300px;
  }
</style>
<title>Insert title here</title>
</head>
<body>
<%
	String pagefile = request.getParameter("page");
	if(pagefile==null) {
		pagefile = "Ballades";	
	}
	
%>
	<header>
		<h1>����ȭ��(���� : MFE? �̻ڰ�....)</h1><br>
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
      		<a class="navbar-brand" href="templateTest.jsp">DICE</a>
		</div>
		
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<form class = "navbar-form navbar-left" role ="search">
				<div class = "form-group">
					<input type="text" class ="form-control" placeholder="Search">
				</div>
				<button type ="button" class = "btn btn-secondary"><span class = "glyphicon glyphicon-search" aria-hidden="true"></span></button>
			</form>
			<ul class ="nav navbar-nav">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">���� <span class="caret"></span></a>
					<ul class="dropdown-menu" role = menu>
						<li><a href="#">����</a></li>
						<li><a href="#">��⵵</a></li>
						<li class="divider"></li>
						<li><a href="#">������</a></li>
						<li><a href="#">��û��</a></li>
						<li><a href="#">���</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">���ֵ�</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Ŀ�´�Ƽ <span class="caret"></span></a>
					<ul class="dropdown-menu" role = menu>
						<li><a href="#">�����Խ���</a></li>
						<li><a href="#">������</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<jsp:include page="login.jsp"/>
				<li><jsp:include page="addMember.jsp"/></li>	
			</ul>
		</div>
		</div>
	</nav>
	<article>
	<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="../image/music1.png" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>

      <div class="item">
        <img src="../image/music2.png" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Chania</h3>
          <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="../image/music3.png" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beautiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>

      <div class="item">
        <img src="../image/music4.png" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Flowers</h3>
          <p>Beautiful flowers in Kolymbari, Crete.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
	</article>
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