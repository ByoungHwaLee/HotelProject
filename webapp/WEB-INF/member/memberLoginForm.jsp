<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>

memberLoginForm.jsp
<br>

<script src="http://code.jquery.com/jquery-1.12.0.js"></script>
<script type="text/javascript">
function cancel() {
	
	window.close();
	
}

function login(url) {
	var f = document.getElementById("loginForm");
	
	f.action = url
	
	f.submit();
	
	window.open("about:blank", "_self").close();

}

function register() {
	
	opener.document.location="register.mem";
	self.close();
}

</script>

<%-- <form:form method="post" action="login.mem"> --%>
<form name="loginForm" method="post">
	<table border="1">

		<tr>
			<td>이메일</td>
			<td><input type="text" name="m_email" id="email" value=""></td>
		</tr>

		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="m_password" id="password"
				value=""></td>
		</tr>

		<tr>
			<td colspan="2">
			<input type="button" id="lgbtn" value="로그인">
			<input type="reset" value="취소" onclick="cancel()"></td>
		</tr>
	</table>
</form>
<%-- </form:form> --%>
<a href="#" onclick="register()">가입하기</a>
