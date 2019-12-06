<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.hoteltype{
		font-size: 70%;
		font-weight: lighter;
	}
	#imageArea{
		background-color: #D4F4FA;
		width:1000px;
		height:300px;
		margin:20px;
		
	}
	
	hr{
		width:1000px;
		margin:20px;
		
	}
	.hotelimage{
		margin:auto;
		padding:15px;
	}
	#hotelcomment{
		background-color: #D4F4FA;
		width:1000px;
		height:200px;
		margin:20px;
		
	}#hoteloptions{
		width:1000px;
		height:200px;
		margin:20px;
		
	}
	#hoteladdress{
		margin:20px;
		
	}#hotelname{
		margin:20px;
		
	}
	
</style>
</head>
<body>
<div>
	<div id="hotelname"><h2><span class="hoteltype">${hotel.h_type }&nbsp;&nbsp;&nbsp;</span>${hotel.h_name }</h2></div>
	<div id="hoteladdress"><p>${hotel.h_address2 } , ${hotel.h_address1 }, ${hotel.h_nation }</p></div>
	<div id="imageArea">  
		<c:forEach items="${hotel.images }" var="image">
			<img class="hotelimage" src="<%=request.getContextPath() %>/resources/Hotelimages/${hotel.h_name }/${image }" width="200px" height="200px">
		</c:forEach>
	</div>
	<hr>
	<div id="hotelcomment">
		${hotel.h_comment } 
	</div>	
	<hr>
	<div id="hoteloptions">
		<h2 style="background-color: #EAEAEA">호텔 시설</h2>
		<p class="facilities"><span style="font-weight: bold">편의시설&nbsp;</span>${hotel.h_facilities}</p><hr style="margin:0; width:1000px">
		<p class="internet"><span style="font-weight: bold">인터넷&nbsp;&nbsp;&nbsp;&nbsp;</span>${hotel.h_internet}</p><hr style="margin:0; width:1000px">
		<p class="animal"><span style="font-weight: bold" >반려동물&nbsp;&nbsp;&nbsp;&nbsp;</span>${hotel.h_animal}</p><hr style="margin:0; width:1000px">
		<p class="parking"><span style="font-weight: bold">주차&nbsp;&nbsp;&nbsp;&nbsp;</span>${hotel.h_parking}</p><hr style="margin:0; width:1000px">
		<p class="smoke"><span style="font-weight: bold">흡연구역&nbsp;&nbsp;&nbsp;&nbsp;</span>${hotel.h_smoke}</p><hr style="margin:0; width:1000px">
		<p class="language"><span style="font-weight: bold">지원가능언어&nbsp;&nbsp;&nbsp;&nbsp;</span>${hotel.h_language}</p><hr style="margin:0; width:1000px">
	</div>
</div>

</body>
</html>