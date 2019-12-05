<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>

memberLoginForm.jsp<br>


<script type="text/javascript">
function cancel() {
	
	/* opener.parent.location="main.jsp"; */
	window.close();
	
	/* location.href="main.jsp" */
}

function login() {
	
	opener.location.reload();
	window.close();
}
</script>

<form:form method="post" action="login.mem">
	<table border="1">
	
	<tr>
		<td>이메일</td>
		<td><input type="text" name="m_email"></td>
	</tr>
		
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="m_password"></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="submit" value="로그인" onclick="login()">
			<input type="reset" value="취소" onclick="cancel()">
		</td>
	</tr>
	</table>
</form:form>
    