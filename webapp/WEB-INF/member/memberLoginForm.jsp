<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

memberLoginForm.jsp<br>

<form method="post" action="login.mem">
	<table border="1">
	
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email"></td>
	</tr>
	
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password"></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<input type="submit" value="로그인">
			<input type="reset" value="취소">
		</td>
	</tr>
	</table>
</form>
    