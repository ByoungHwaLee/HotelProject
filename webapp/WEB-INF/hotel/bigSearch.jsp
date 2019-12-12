<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<script type="text/javascript" src="resources/jquery/jquery.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
	$(function() {
			
			$('.leftbtn').click(function(){
				$('.hi-1').animate({marginLeft:'+=205px'});
			});
			$('.rightbtn').click(function(){
				$('.hi-1').animate({marginLeft:'-=205px'});
			});
		
			//******** ADUlt********************************************************************
			var i = 0;
			var ori = $('input.adult').val();
			ori = parseInt(ori);
			
			$('#minus').click(function(){
				i--;	
				if((ori+i)<0){
					ori = 0;
					i = 0;
				}
				
				$('span.adult').append().text(ori+i);
				$('input.adult').attr('value', ori+i);
				
			});
			
			$('#plus').click(function(){
				i++;
				
				$('span.adult').append().text(ori+i);
				
				$('input.adult').attr('value', ori+i);
			});
			
			//********CHILD      ***********************************************************
			var c = 0;
			var orc = $('input.child').val();
			orc = parseInt(orc);
			$('#cminus').click(function(){
				c--;
				if((orc+c)<0){
					orc = 0;
					c = 0;
				}
				
				$('span.child').append().text(orc+c);
				$('input.child').attr('value', orc+c);
			});
			
			$('#cplus').click(function(){
				c++;
				
				$('span.child').append().text(orc+c);
				$('input.child').attr('value', orc + c);
				
			});
			
			//********room*********************************************************************
			var r = 0;
			var orr = $('input.room').val();
			orr = parseInt(orr);
			$('#rminus').click(function(){
				r--;
				if((orr+r)<0){
					orr = 0;
					r = 0;
				}
				
				$('span.room').append().text(orr+r);
				$('input.room').attr('value',orr+ r);
			});
			
			$('#rplus').click(function(){
				r++;
				
				$('span.room').append().text(orr+r);
				$('input.room').attr('value',orr+ r);
				
			});
		
		
		
			//********DATE********************************************************************
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
		 
		 
		//********DATE********************************************************************
		$(".searchAsMoney").click(function(){
			$("input[name=searchas]").attr("value","money");
			$("form[name=searchForm]").submit();
		});
		$(".searchAsComment").click(function(){
			$("input[name=searchas]").attr("value","comment");
			$("form[name=searchForm]").submit();
		});
		var filterTypeArray=$("input[name=filterType]").attr("value").split(",");
		
		$(".filterType_hotel").click(function(){
			if(filterTypeArray.indexOf("호텔")==-1){
				$(this).html("<i class='fas fa-check-square'></i>호텔");
				filterTypeArray.unshift("호텔");
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}else{
				$(this).html("<i class='far fa-square'></i>호텔");
				filterTypeArray.splice(filterTypeArray.indexOf("호텔"),1);
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}
		});
	
		$(".filterType_motel").click(function(){
			if(filterTypeArray.indexOf("모텔")==-1){
				$(this).html("<i class='fas fa-check-square'></i>모텔");
				filterTypeArray.unshift("모텔");
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}else{
				$(this).html("<i class='far fa-square'></i>모텔");
				filterTypeArray.splice(filterTypeArray.indexOf("모텔"),1);
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}
		});
		
		$(".filterType_apart").click(function(){
			if(filterTypeArray.indexOf("아파트")==-1){
				$(this).html("<i class='fas fa-check-square'></i>아파트");
				filterTypeArray.unshift("아파트");
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}else{
				$(this).html("<i class='far fa-square'></i>아파트");
				filterTypeArray.splice(filterTypeArray.indexOf("아파트"),1);
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}
		});
		$(".filterType_guestHouse").click(function(){
			if(filterTypeArray.indexOf("게스트하우스")==-1){
				$(this).html("<i class='fas fa-check-square'></i>게스트하우스");
				filterTypeArray.unshift("게스트하우스");
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}else{
				$(this).html("<i class='far fa-square'></i>게스트하우스");
				filterTypeArray.splice(filterTypeArray.indexOf("게스트하우스"),1);
				var filterType=filterTypeArray.join();
				$("input[name=filterType]").attr("value",filterType);
				$("form[name=searchForm]").submit();
			}
		});
		
		
		
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
	
			<div class="rowfilter" >
				<ul class="rowFilUl" >
					<li>기본</li>
					<li><a href="#" class="searchAsMoney">요금</a></li>
					<li><a href="#" class="searchAsComment">평점</a></li>
				</ul>
			</div>
			
			<c:forEach items="${hotelList  }" var="hotel" varStatus="rr">
				<table>
					<tr class="tablerow">
						<td>
							<div class="img-cutter">
								
								<div class="img-only-wrap">
								<c:forEach items="${hotel.images }" var="image" varStatus="i">
									<img class="hotelimage hi-${i.count }" src="<%=request.getContextPath() %>/resources/Hotelimages/${hotel.h_name }/${image }">
								</c:forEach>
								</div>
							</div>
								<button type="button" class="leftbtn">&laquo;</button>
								<button type="button" class="rightbtn" style="margin-left: 150px;">&raquo;</button>
						</td>

						<td><span class="htypesearch">${hotel.h_type }</span><a class="hnamesearch" href="hotelDetail.ho?h_num=${hotel.h_num }&area=${param.area}&checkin=${param.checkin}&checkout=${param.checkout}&adult=${param.adult}&child=${param.child}&room=${param.room}"><b>${hotel.h_name }</b></a>

							<div class="addsearch">  
								<b>${hotel.h_address1 },&nbsp;${hotel.h_nation }</b>
							</div>

							<div>${hotel.h_comment }</div>
							<div>객실유형&nbsp;&nbsp;&nbsp;&nbsp;객실가격</div>
							<c:forEach items="${hotel.rooms }" var="room">
								<a>${room.r_type }&nbsp;&nbsp;&nbsp;&nbsp;${room.r_price }</a><br>
							</c:forEach>
					
						</td>
					</tr>
					
				</table>

			</c:forEach>
		</div>
	</div>

	<div class="leftbar">

		<div class="leftSearch-wrap">
			<form name="searchForm" action="Search.ho" class="leftsearch-form">
				<h4>검색</h4>
				<div class="searchinput">
					<i class="material-icons">airplanemode_active</i>
					 <input	type="text" name="area" placeholder="지역을 입력하세요" value="${search.area }">

					<p class="searcharea-p scheduler">
						<i class="material-icons">event</i>&nbsp;
						<input name="checkin" type="text" id="datepicker" placeholder="체크인" value="${search.checkin }"><br>
						<i class="material-icons">event</i>&nbsp;
						<input name="checkout" type="text" id="datepicker2" placeholder="체크아웃" value="${search.checkout }">
					</p>

					<div id="person" class="searcharea-p">
						&nbsp;<i class="material-icons">face</i><br>
						성인:<span class="adult">${search.adult }</span>&nbsp;&nbsp;
						아동:<span class="child">${search.child }</span>&nbsp;&nbsp;
						객실:<span class="room">${search.room }</span>&nbsp;
					</div>

					<div class="personbox">
						<div class="perbox-box">
							<div>
								성인:<input id="minus" class="calc" type="button" value="-">
								<span class="adult">${search.adult }</span>
								<input id="plus" class="calc" type="button" value="+">
							</div>
							<div>
								아동:<input id="cminus" class="calc" type="button" value="-">
								<span class="child">${search.child }</span>
								<input id="cplus" class="calc" type="button" value="+">
							</div>
							<div>
								객실:<input id="rminus" class="calc" type="button" value="-">
								<span class="room">${search.room }</span>
								<input id="rplus" class="calc" type="button" value="+">
							</div>
						</div>
					</div>

					<input type="hidden" name="adult" class="adult" value="${search.adult }">
					<input type="hidden" name="child" class="child"  value="${search.child }">
					<input type="hidden" name="room" class="room"  value="${search.room }">
					<input type="hidden" name="searchas" value="${search.searchas }">
					<input type="hidden" name="filterType" value="${search.filterType }">
					
					<input class="mainsubmitbtn" type="submit" value="검색">
					
				</div>
			</form>
		</div>
		<div class="leftFilter-wrap">
			filters
				<h6>숙소 유형</h6>
				
				<div class="filterType">
				<c:set value="${search.filterType }" var="filter"/>
				 <span class="filterType_hotel">
				 	<c:if test="${fn:contains(filter,'호텔') }">
				 		<i class='fas fa-check-square'></i>호텔 
				 	</c:if>
				 	<c:if test="${fn:indexOf(filter,'호텔')==-1 }">
				 		<i class="far fa-square"></i>호텔
				 	</c:if>
				  </span>
				  <span class="filterType_motel">
				  <c:if test="${fn:contains(filter,'모텔') }">
				 		<i class='fas fa-check-square'></i>모텔
				 	</c:if>
				 	<c:if test="${fn:indexOf(filter,'모텔')==-1 }">
				 		<i class="far fa-square"></i>모텔
				 	</c:if>
				 	</span>
				  <span class="filterType_guestHouse">
				  <c:if test="${fn:contains(filter,'게스트하우스') }">
				 		<i class='fas fa-check-square'></i>게스트하우스
				 	</c:if>
				 	<c:if test="${fn:indexOf(filter,'게스트하우스')==-1 }">
				 		<i class="far fa-square"></i>게스트하우스
				 	</c:if>
				 	</span>
				  <span class="filterType_apart">
				  	<c:if test="${fn:contains(filter,'아파트') }">
				 		<i class='fas fa-check-square'></i>아파트
				 	</c:if>
				 	<c:if test="${fn:indexOf(filter,'아파트')==-1 }"> 
				 		<i class="far fa-square"></i>아파트
				 	</c:if>
				  </span>
			    </div>

		</div>

	</div>
</div>