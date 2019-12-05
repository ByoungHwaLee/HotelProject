<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="./../common/common.jsp" %>

selInsert.jsp<br>

<form:form commandName="sel" action="insertSel.ad" method="post">

	<p>
	이메일: <input type="text" name="email" value="${seller.email }">
	<form:errors path="email"/>
	</p>
	<p>
	비밀번호 : <input type="password" name="password" value="${seller.password }">
	<form:errors path="password"/>
	</p>
	<p>
	이름 : <input type="text" name="name" value="${seller.name }">
	<form:errors path="name"/>
	</p>
	<p>전화번호: <input type="text" name="phone" value="${seller.phone }">
	<form:errors path="phone"/>
	</p>
	<p>
	사업자번호: <input type="text" name="comnumber" value="${seller.comnumber }">
	<form:errors path="comnumber"/>
	</p>
	<p>
	<input type="submit" value="회원가입">
	</p>
</form:form>
    
    

    
    
    
    
    
    
    