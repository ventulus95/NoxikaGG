<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${summoner.name}님의 전적정보</title>
</head>
<body>
	<div>
		<form action="/noxikaGG/search" method="GET">
			<input type="text" name="title" placeholder="제목" value="" /> <input
				type="submit" value="전송" />
		</form>
	</div>
	<h2>찾은사람의 정보는?</h2>
	<p>${summoner.name}</p>
	<img alt="아이콘" src=${ profileImgURL} width="300" height="300">
	<p>${summoner.getSummonerLevel()}</p>
	<h3>승리/패배</h3>
	<p>${leagueInfo.getWins()}/ ${leagueInfo.getLosses()}</p>
	<h3>당신의 티어는?</h3>
	<img alt="랭크 엠블램" src=${ tierImgURL}>
	<p>티어는 ${leagueInfo.getRank()}입니다.</p>
	<a href="/noxikaGG">돌아가기</a>
</body>
</html>
