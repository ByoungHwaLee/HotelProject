<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./../common/common.jsp"%>

memberInfoForm
<br>


<form:form commandName="member" action="memUpdate.ad" method="post">
	<input type="hidden" name="m_num" value="${member.m_num }">
	<input type="hidden" name="pageNumber" value="${pageNumber }">
	
	<p>
			<label for="m_email">이메일</label>
			<input type="text" name="m_email" value="${member.m_email}">
	</p>

	<p>
			<label for="m_password">비밀번호</label>
			<input type="text" name="m_password" value="${member.m_password}">
	</p>
	
	<p>
			<label for="m_name">이름</label>
			<input type="text" name="m_name" value="${member.m_name}">
	</p>
	
	<p>
			<label for="m_nickname">닉네임</label>
			<input type="text" name="m_nickname" value="${member.m_nickname}">
	</p>
	
	<p>
			<label for="m_phone">전화번호</label>
			<input type="text" name="m_phone" value="${member.m_phone}">
	</p>
		

		<p>
			<input type="submit" value="수정">
		</p>

</form:form>
		