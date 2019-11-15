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
	background : black;
	color : white;
	font-weight : bold;
	border : 0;
}
html, body {
  
   	background : black;
	height : 100%;
}
a {
	text-decoration:none;
	color : black;
}
footer, header { 
	text-align : center;
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
.affix {
    top: 0;
    width: 100%;
    -webkit-transition: all .5s ease-in-out;
    transition: all .5s ease-in-out;
  }
.affix-top {
    position: static;
    top: -35px;
  }
.affix + .container-fluid {
    padding-top: 70px;
  }
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    width: 85%;
    margin: auto;
    height : 500px;
  }
</style>
<title>Insert title here</title>
</head>
<body>
<%-- 
 background-image:url('../image/bacg.png');
#wrap{
	height : 70%;
}
aside {
	width:15%;
	height : 100%;
	float : left;
	border : 1px solid black;
}--%>
<%
	String pagefile = request.getParameter("page");
	if(pagefile==null) {
		pagefile = "Ballades";	
	}
	
%>
	<header>
		<h1>메인화면(제목 : MFE? 이쁘게....)</h1><br>
	</header>
	<nav class ="navbar navbar-inverse" data-spy ="affix" data-offset-top="400">
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
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">지역 <span class="caret"></span></a>
					<ul class="dropdown-menu" role = menu>
						<li><a href="#">서울</a></li>
						<li><a href="#">경기도</a></li>
						<li class="divider"></li>
						<li><a href="#">강원도</a></li>
						<li><a href="#">충청도</a></li>
						<li><a href="#">경상도</a></li>
						<li><a href="#">전라도</a></li>
						<li><a href="#">제주도</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">장르 <span class="caret"></span></a>
					<ul class="dropdown-menu" role = menu>
						<li><a href="#">발라드</a></li>
						<li><a href="#">락/메탈</a></li>
						<li><a href="#">랩/힙합</a></li>
						<li><a href="#">재즈/소울</a></li>
						<li><a href="#">디너쇼</a></li>
						<li><a href="#">포크/트로트</a></li>
						<li><a href="#">내한공연</a></li>
						<li><a href="#">패스티벌</a></li>
						<li><a href="#">팬클럽</a></li>
						<li><a href="#">인디</a></li>
						<li><a href="#">토크/강연</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
					<ul class="dropdown-menu" role = menu>
						<li><a href="#">자유게시판</a></li>
						<li><a href="#">고객센터</a></li>
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
	<section>
		<div class="container-fluid" style="height:1000px">
 			
		</div>
	</section>
	<%--
	<div id ="wrap">
		<aside>
			<div class ="list-group">
			<jsp:include page ="left.jsp"/>
			</div>
		</aside>
		<section>
			 <jsp:include page ='<%=pagefile+ ".jsp" %>'/>
		</section>
	</div> --%>
	<footer>
		<jsp:include page="loginResult.jsp"/>
	</footer>
</body>
</html>