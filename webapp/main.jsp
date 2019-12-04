<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 
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
	
	
	
	
	 $.datepicker.setDefaults({
		 dateFormat: 'yy-mm-dd',
		 showOn: "both"
		,buttonImageOnly: true
		,buttonText: ""
		,minDate: "+1D"
		,maxDate: "+1Y"
		 
	 });
	
	 
	 $('#datepicker').datepicker('setDate', '+1D');
	
	 $("#datepicker").datepicker(); 
	 $("#datepicker2").datepicker();
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});

</script>


<meta charset="UTF-8">
<title>Insert title here</title>

<link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/js/test.js" />" rel="stylesheet">
<link href="<c:url value="/css/test.css" />" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">





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
				<label for="area">지역</label> <input type="text" name="area" placeholder="지역을 입력하세요">
			
				<p class="searcharea-p scheduler">
				<input type="text" id="datepicker" placeholder="체크인">
				<input type="text" id="datepicker2" placeholder="체크아웃">
				</p>
				
				

			
				<div id="person" class="searcharea-p"><i class="material-icons">face</i>성인:<span class="adult">0</span>아동:<span class="child">0</span>객실:<span class="room" >0</span></div>
				
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