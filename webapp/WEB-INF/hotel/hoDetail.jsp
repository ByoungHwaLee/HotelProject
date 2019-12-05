<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
hoDetail jsp <br>


<div>
${hotel.h_name}
<img  class="imagesearch" src="<%=request.getContextPath()%>/resources/${list.h_name}/${list.h_image}">
${hotel.h_comment}
${hotel.h_facilities}


right



<input type="submit" value="예약하기">

</div>

<div>
left


</div>
