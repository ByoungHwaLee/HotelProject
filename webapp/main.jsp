<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
</style>
<script type="text/javascript">

function login() {
	var popupX = (window.screen.width / 2) - (200 / 2);
	var popupY = (window.screen.height / 2) - (300 / 2);
	
	window.open(	
			'login.mem','_blank','height=300, width=300, toolbar=no, menubar=no, location=no, scrollbars=no, status=no, resizable=no, fullscreen=no, channelmode=yes, left='+ popupX +', top='+ popupY
			); return false
}

</script>

</head>
<body>
	<header>
		<a href="#" class="main" style="float:left; margin:20px;">메인으로</a>
		<c:if test="${sessionScope.loginfo == null }">
			<a href="register.mem" style="float:right; margin:20px;">회원가입</a>
			<a href="#" onclick="login()" style="float:right; margin:20px;">로그인</a>
			<!-- <a href="login.mem" style="float:right; margin:20px;">로그인</a> -->
		</c:if>
		<c:if test="${sessionScope.loginfo != null }">
			<a href="logout.mem" style="float:right; margin:20px;">로그아웃</a>
			<a href="info.mem" style="float:right; margin:20px;">내 정보</a>
		</c:if>
		<a href="#" style="float:right; margin:20px;">판매자</a>
	</header>
	
	<br>
	<section>
	<form action="Search.ho" method="post" style="margin:80px">
	<p>
		<label for="area">지역</label>
		<input type="text" name="area">
	</p>
	<span>
		<label for="checkin">체크인</label>
		<input type="text" name="checkin">
	</span>
	<span>
		<label for="checkout">체크아웃</label>
		<input type="text" name="checkout">
	</span>
	<p>
		<input type="submit" value="검색">
	</p>
	
	</form>
	</section>
	
</body>
</html>