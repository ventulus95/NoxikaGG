<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="css/bootstrap.css?after">
	<title>${summoner.name}님의 전적정보</title>
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
	<div class="container p-5 shadow-lg p-3 mb-5 bg-white rounded" >
		<div class="row h-100 justify-content-center align-items-center">
				<div class ="col-sm-4">
					<img alt="아이콘" src=${ profileImgURL} class="rounded-llg mx-auto d-block" style="max-width: 70%;">
				</div>
				<div class ="col-sm-1"> </div>
				<div class ="col-sm-7" id="idLevel">
					<h3>${summoner.name}</h3>
					<p>Lv. ${summoner.getSummonerLevel()}</p>
				</div>
		</div>
		<div class ="col-12" style="height: 100px" ></div>
		<div class ="row h-100 justify-content-center align-items-center">
			<div class="col-md-5">
				<img alt="랭크 엠블램" src=${ tierImgURL} class="mx-auto d-block" style="max-width: 75%;">
			</div>
			<div class ="col-md-1"> </div>
			<div class ="col-md-6" style="text-align: center;">
				<h2>승리/패배</h2>
				<p style="color: #007bff; font-size: 24px; display: inline">${leagueInfo.getWins()}</p><p style="font-size: 24px; display: inline">/</p><p style="color:#dc3545; font-size: 24px; display:inline">${leagueInfo.getLosses()}</p>
				<fmt:formatNumber var="percent" value="${leagueInfo.getWins()/(leagueInfo.getWins()+leagueInfo.getLosses())}" pattern="0.00%" />
				<span style="color: #6c757d; font-size:18px;"> (${percent}) </span>
				<h3>당신의 티어는?</h3>
				<p>당신의 리그는 ${leagueName}, ${leagueInfo.getTier()} ${leagueInfo.getRank()} 단계 입니다.</p>
			</div>
		</div>
	</div>
	 <!-- Footer -->
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
