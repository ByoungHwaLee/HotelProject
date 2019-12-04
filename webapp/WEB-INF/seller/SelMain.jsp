<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
seller main jsp <br>



<%

if(session.getAttribute("loginfo") == null){

%>
<p><a href="selLogin.sel">로그인</a></p> <p><a href="selSignup.sel">회원가입</a></p>
<% } else { %>
<p>${sessionScope.loginfo.name }님 반갑습니다</p>
<a href="logout.sel">로그아웃</a>

<a href="selInfo.sel">내정보 보기</a>
<a href="hotelInsert.ho">내숙소 등록하기</a>
<a href="hotelNow.ho">내숙소 예약현황</a>


<% } %>



