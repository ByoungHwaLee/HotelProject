<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../resources/jquery/jquery.js"></script>
<style>
	
</style>
<script>
	$(function(){
		var i=-1;
		$(".leftbtn").bind("click",function(){
			$(".hotelimage").animate({marginLeft:"-=235px"},2000);
		});
		
	});

</script>
</head>
<body>
	<c:forEach items="${hotelList }" var="hotel">
		<table border="1" id="area">
			<tr>
				<th><a href="#">${hotel.h_name }</a><br>${hotel.h_address1 },${hotel.h_nation }</th>
				<th colspan="3">평점</th>
			</tr>
			<tr>
				<td>
				<div>
					<div>  
						<c:forEach items="${hotel.images }" var="image">
							<img class="hotelimage" src="<%=request.getContextPath() %>/resources/Hotelimages/${hotel.h_name }/${image }" width="200px" height="200px">
						</c:forEach>
						</div>
				</div>
				<div>
						<button type="button" class="leftbtn" >&laquo;</button>
						<button type="button" class="rightbtn" style="margin-left:150px;">&raquo;</button> 
				</div>
				</td>
				<td>
					<table>
						<tr>
							<th>객실유형&nbsp;&nbsp;&nbsp;&nbsp;</th>
							<th>객실가격</th>
						</tr> 
							<c:forEach items="${hotel.rooms }" var="room">
								<tr>
									<td>${room.r_type }&nbsp;&nbsp;&nbsp;&nbsp;</td>
									<td>${room.r_price }</td>
								</tr>				
							</c:forEach>
					</table>
				</td>
			</tr>
		</table>
	</c:forEach>
	

</body>
</html>