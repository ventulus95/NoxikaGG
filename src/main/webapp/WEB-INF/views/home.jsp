<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p> 이서버의 주인은 ${name}입니다.</p>
  <div>
        <form action="/noxikaGG/search" method="GET">
            <input type="text" name="title" placeholder="제목" value=""/>
            <input type="submit" value="전송"/>
        </form>
    </div>
</body>
</html>
