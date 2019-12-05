<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/common/common.jsp"%>
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
	$(function() {
		
		
		
		
		$('.leftbtn').click(function(){
			$('.hi-1').animate({marginLeft:'+=205px'});
		});
		$('.rightbtn').click(function(){
			$('.hi-1').animate({marginLeft:'-=205px'});
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



<link href="<c:url value="resources/css/search.css" />" rel="stylesheet">
bigSearch
<br>
header를 이곳에 추가
<br>


<div class="bar-wrapper">
	<div class="rightbar">

		<div class="listarea">
			<table>
				<tr>
					<td class="rowfilter">필터링 할 수 있는 row 부분</td>
				</tr>
			</table>
			<c:forEach items="${hotelList  }" var="hotel">
				<table>
					<tr class="tablerow">
						<td>
							
								<div class="img-cutter">
									
									<div class="img-only-wrap">
									<c:forEach items="${hotel.images }" var="image" varStatus="i">
										<img class="hotelimage hi-${i.count }"
											src="<%=request.getContextPath() %>/resources/${hotel.h_name }/${image }">
										
									</c:forEach>
									</div>
								</div>
										<button type="button" class="leftbtn">&laquo;</button>
										<button type="button" class="rightbtn"
											style="margin-left: 150px;">&raquo;</button>
							
							

						</td>

						<td><span class="htypesearch">${hotel.h_type }</span><a
							class="hnamesearch" href="hoDetail.ho?h_name=${hotel.h_name }"><b>${hotel.h_name }</b></a>

							<div class="addsearch">
								<b>${hotel.h_address1 },&nbsp;${hotel.h_nation }</b>
							</div>

							<div>${hotel.h_comment }</div></td>


					</tr>
				
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


			</c:forEach>


		</div>







	</div>

	<div class="leftbar">

		<div class="leftSearch-wrap">
			<form action="Search.ho" method="post" class="leftsearch-form">
				<h4>검색</h4>
				<div class="searchinput">
					<i class="material-icons">airplanemode_active</i> <input
						type="text" name="area" placeholder="지역을 입력하세요"
						value="${param.area }">

					<p class="searcharea-p scheduler">
						<i class="material-icons">event</i>&nbsp;
						<input name="checkin" type="text" id="datepicker" placeholder="체크인" value="${param.checkin }"><br> 
							<i class="material-icons">event</i>&nbsp;
							<input name="checkout" type="text" id="datepicker2" placeholder="체크아웃" value="${param.checkout }">
					</p>




					<div id="person" class="searcharea-p">
						&nbsp;<i class="material-icons">face</i><br>성인:<span
							class="adult">0</span>&nbsp;&nbsp;아동:<span class="child">0</span>&nbsp;&nbsp;객실:<span
							class="room">0</span>&nbsp;
					</div>

					<div class="personbox">
						<div class="perbox-box">
							<div>
								성인:<input id="minus" class="calc" type="button" value="-"><span
									class="adult">0</span><input id="plus" class="calc"
									type="button" value="+">
							</div>
							<div>
								아동:<input id="cminus" class="calc" type="button" value="-"><span
									class="child">0</span><input id="cplus" class="calc"
									type="button" value="+">
							</div>
							<div>
								객실:<input id="rminus" class="calc" type="button" value="-"><span
									class="room">0</span><input id="rplus" class="calc"
									type="button" value="+">
							</div>
						</div>
					</div>


					<input class="mainsubmitbtn" type="submit" value="검색">

				</div>
			</form>

		</div>
		<div class="leftFilter-wrap">
			filters
			<!-- 이부분은 클릭하면 list가 바로변경되는거라 select 각각 해줘야 함  -->
			<form action="SearchFilter.ho" method="post">
				<h6>숙소 유형</h6>
				<div>
					<input type="checkbox" name="h_type" value="호텔">호텔 <input
						type="checkbox" name="h_type" value="아파트">아파트 <input
						type="checkbox" name="h_type" value="모텔">모텔 <input
						type="checkbox" name="h_type" value="게스트하우스">게스트하우스
				</div>










			</form>


		</div>

	</div>
</div>
