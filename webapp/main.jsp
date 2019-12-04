<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<script type="text/javascript">

























$(function(){
	
	
	
	
	
	
	
	
	
	
	$('#person').click(function(){
		$('.personbox').toggle();

		
	});
	
	
	
	
	
	
	
	
	
	var i = 0;
	$('#minus').click(function(){
		i--;
		
		$('span.adult').append().text(i);
	});
	
	$('#plus').click(function(){
		i++;
		
		$('span.adult').append().text(i);
		
	});
	
	
	var c = 0;
	$('#cminus').click(function(){
		c--;
		
		$('span.child').append().text(c);
	});
	
	$('#cplus').click(function(){
		c++;
		
		$('span.child').append().text(c);
		
	});
	
	var r = 0;
	$('#rminus').click(function(){
		r--;
		
		$('span.room').append().text(r);
	});
	
	$('#rplus').click(function(){
		r++;
		
		$('span.room').append().text(r);
		
	});
	
	
	
	
	
});

</script>


<meta charset="UTF-8">
<title>Insert title here</title>

<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/js/test.js" />" rel="stylesheet">
<link href="<c:url value="/css/test.css" />" rel="stylesheet">






</head>
<body>

	<header class="main-menu">
		<a href="#" class="main">호텔로고자리</a> 
		<a class="mainright" href="#">로그인</a>
		<a class="mainright" href="#">회원가입</a> 
		<a class="mainright" href="selMain.sel">판매자</a>
	</header>


	<div class="searcharea">
		<form action="Search.ho" method="post">
			<div class="searchinput">
				<label for="area">지역</label> <input type="text" name="area">
			
				<p class="searcharea-p">
				<input type="hidden" id="dates" /> 
				<label for="checkin">체크인</label> 
				<input type="text" id="checkin" /> 
				<label for="checkout">체크아웃</label> 
				<input type="text" id="checkout" />
				</p>
				
			

				<!-- <div id="datepicker">클릭</div> -->

			
				<div id="person" class="searcharea-p">성인:<span class="adult">0</span>아동:<span class="child">0</span>객실:<span class="room" >0</span></div>
				
				<div class="personbox">
					<div class="perbox-box">
					<div>성인:<input id="minus" type="button" value="-"><span class="adult">0</span><input id="plus" type="button" value="+"></div>
					<div>아동:<input id="cminus" type="button" value="-"><span class="child">0</span><input id="cplus" type="button" value="+"></div>
					<div>객실:<input id="rminus" type="button" value="-"><span class="room">0</span><input id="rplus" type="button" value="+"></div>
					</div>
				</div>

			
				<input type="submit" value="검색">
			
			</div>
		</form>
	</div>



	<footer class="modal-footer footer"> 만든이: 손안우 신서영 윤서호 이병화 </footer>
</body>
</html>