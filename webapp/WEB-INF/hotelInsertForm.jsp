<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		var str="<tr><td><input type='text' name='r_name'></td>"+
		"<td><input type='text' name='r_person'></td>" +
		"<td><input type='text' name='r_person'></td>" +
		"<td><input type='text' name='r_stock'></td>" +
		"<td>"+
		"<select name='r_breakfast'>" +
			"<option value='포함'>포함</option>" +
			"<option value='미포함'>미포함</option>" +
		"</select>" +
		"</td>" +
		"<td><button type='button' class='removebtn'>객실 삭제</button></td></tr>";
		$(".addbtn").click(function(){
			$("#roomtable").append(str);
		});
		$("#roomtable").on("click",".removebtn",function(){
			$(this).closest("tr").remove();
		});
		
		
	});

</script>
</head>
<body>
	<form action="insert.ho" method="post" enctype="multipart/form-data" id="hotelInsertForm"> 
	<p>
		<label for="h_name">호텔이름</label>
		<input type="text" name="h_name">	
	</p>
	<p>
		<label for="h_nation">국가</label>
		<input type="text" name="h_nation">	
	</p>
	<p>
		<label for="h_adress1">주소</label>
		<input type="text" name="h_adress1">	
	</p>
	<p>
		<label for="h_adress2">상세주소</label>
		<input type="text" name="h_adress2">	
	</p>
	<p>
		<label for="h_type">호텔유형</label>
		<input type="radio" name="type" value="호텔">호텔	
		<input type="radio" name="type" value="아파트">아파트	
		<input type="radio" name="type" value="모텔">모텔	
		<input type="radio" name="type" value="게스트하우스">게스트하우스	
	</p>
	<p>
		<label for="h_phone">호텔 전화번호</label>
		<input type="text" name="h_phone">	
	</p>
	<p>
		<label for="h_facilities">편의 시설</label>
		<input type="checkbox" name="h_facilities" value="피트니스센터">피트니스센터	
		<input type="checkbox" name="h_facilities" value="수영장">수영장
		<input type="checkbox" name="h_facilities" value="카페">카페
		<input type="checkbox" name="h_facilities" value="스파">스파 및 마사지
		<input type="checkbox" name="h_facilities" value="오락시설">오락시설
		<input type="checkbox" name="h_facilities" value="사우나">사우나
		<input type="checkbox" name="h_facilities" value="비즈니스센터">비즈니스센터
		<input type="checkbox" name="h_facilities" value="물품보관소">물품보관소
		<input type="checkbox" name="h_facilities" value="기념품가게">기념품가게
		<input type="checkbox" name="h_facilities" value="안전금고">안전금고
		<input type="checkbox" name="h_facilities" value="세탁실">세탁실
		<input type="checkbox" name="h_facilities" value="환전소">환전소
		<input type="checkbox" name="h_facilities" value="반려동물센터">반려동물센터
		<input type="checkbox" name="h_facilities" value="의료시설">의료시설
	</p>
	<p>
		<label for="h_internet">인터넷</label>
		<input type="radio" name="h_internet" value="무료 인터넷"> 무료 인터넷	
		<input type="radio" name="h_internet" value="유료 인터넷"> 유료 인터넷	
	</p>
	<p>
		<label for="h_animal">반려동물</label>
		<input type="radio" name="h_animal" value="가능">가능	
		<input type="radio" name="h_animal" value="불가능">불가능	
	</p>
	<p>
		<label for="h_parking">주차</label>
		<input type="radio" name="h_parking" value="유료주차">유료주차	
		<input type="radio" name="h_parking" value="무료주차">무료주차
		<input type="radio" name="h_parking" value="주차불가능">주차불가능
	</p>
	<p>
		<label for="h_smoke">흡연구역</label>
		<input type="radio" name="h_smoke" value="건물내">건물내	
		<input type="radio" name="h_smoke" value="건물외">건물외	
		<input type="radio" name="h_smoke" value="흡연불가">흡연불가	
	</p>
	<p>
		<label for="h_languange">지원언어</label>
		<input type="text" name="h_languange">
	</p>
	<p>
		<label for="h_hotel_url">호텔 홈페이지 주소</label>
		<input type="text" name="h_hotel_url">
	</p>
	<p>
		<label for="h_image">호텔 이미지</label>
		<input multiple="multiple" type="file" name="h_image">
	</p>
	<textarea rows="7" cols="60" name="h_comment" form="hotelInsertForm" placeholder="추가설명"></textarea>
	<p>
		<label for="h_room_num">총 객실 수</label>
		<input type="text" name="h_room_num">
	</p>
	<table id="roomtable">
		<tr>
			<th>객실 유형</th>
			<th>객실 허용인원</th>
			<th>객실 가격(1박)</th>
			<th>객실 수</th>
			<th>조식 포함여부</th>
			<th>객실 추가</th>
		</tr>
		<tr>
			<td><input type="text" name="r_name"></td>
			<td><input type="text" name="r_person"></td>
			<td><input type="text" name="r_price"></td>
			<td><input type="text" name="r_stock"></td>
			<td>
			<select name="r_breakfast">
				<option value="포함">포함</option>
				<option value="미포함">미포함</option>
			</select>
			</td>
			<td>
				<button type="button" class="addbtn">객실추가</button>		
			</td>
		</tr>
	</table>
	<input type="submit" value="호텔등록">
	</form>
	
</body>
</html>