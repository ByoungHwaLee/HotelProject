<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./../common/common.jsp" %>
selInfo jsp
<br>

<form:form commandName="sel" action="selInfo.sel" method="post">
<input type="hidden" name="num" value="${seller.num }">
<input type="hidden" name="email" value="${seller.email }">
	<table>
		<tr>
			<td>아이디</td>
			<td>${seller.email }</td>

		</tr>
		<tr>
			<td>비밀번호 변경</td>
			<td><input type="password" name="password" value=""><form:errors path="password"/></td>

		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="password-check" value=""></td>
			<td><span class="message"></span></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value="${seller.name }"><form:errors path="name"/></td>

		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="phone" value="${seller.phone }"><form:errors path="phone"/></td>

		</tr>
		<tr>
			<td>사업자번호</td>
			<td><input type="text" name="comnumber" value="${seller.comnumber }"><form:errors path="comnumber"/></td>

		</tr>






	</table>
	<input type="submit" value="수정하기">
</form:form>
<a href="<%=request.getContextPath() %>/selMain.sel">메인으로</a>
<a href="<%=request.getContextPath() %>/selDelete.sel?num=${seller.num }">탈퇴하기</a>



