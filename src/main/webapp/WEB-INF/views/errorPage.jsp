<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
	<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="css/bootstrap.css">
	<meta charset="UTF-8">
		<title>${ errorMsg}</title>
	</head>
	<body>
	<nav class="navbar sticky-top  navbar-dark bg-dark">
  		<a class="navbar-brand" href="/noxikaGG" >Noxika.GG</a>
  			<form  action="/noxikaGG/search" method="GET">
		 		<div class="nav-embed-submit-field">
  						<input type="text" placeholder="당신의 아이디를 검색하세요!" name="title">
   					<button type="submit" >검색!</button>
   				</div>
			</form>
	</nav>
	<div id="container-fluid" style="height: 100vh;">
		<div class="row h-100 justify-content-center align-items-center">
				<div class="col-12">
					<h1 style="text-align: center;">${errorMsg }</h1>
				</div>
		</div>
	</div>
	<footer class="bg-dark" style="color: white;" >
	  <div class="container">
	  	<div class="row">
	  		  <!-- Copyright -->
	  		<div class="col-sm-12" style="text-align: center; padding:10px; ">
	  			© 2019 Copyright: <a href="/noxikaGG"> NOXIKA.GG</a>
	  		</div>
	  	</div>
      </div>
	</footer>
	
	<!-- Optional JavaScript --> 
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</body>
</html>