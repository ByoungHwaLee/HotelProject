<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.Member" %>
<%@ include file="./../common/common.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function insert(){
		alert("insert");
	}
</script>

</head>
<body>
selList.jsp<br>

	<form action="selList.ad" method="get">
		<select name="whatColumn">
			<option value="all" <c:if test="${whatColumn eq 'all' }">selected</c:if>>선택</option>
			<option value="email" <c:if test="${whatColumn eq 'email' }">selected</c:if>>이메일 검색</option>
			<option value="phone" <c:if test="${whatColumn eq 'phone' }">selected</c:if>>연락처 검색</option>
			<option value="comnumber" <c:if test="${whatColumn eq 'comnumber' }">selected</c:if>>사업자등록번호 검색</option>
		</select> 	
		<input type="text" name="keyword"> 
		<input type="submit" value="검색">
	</form>	
	
	<table border="1">
		<tr>
			<td colspan="9">
				<input type="button" value="추가하기" onClick="insert()">
			</td>
		</tr>
		<tr>
			<th>번호</th>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>연락처</th>
			<th>사업자등록번호</th>
			<th>상세조회</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${selList }" var="sel">
			<tr>
			<td>${sel.num }</td>
			<td>${sel.email}</td>
			<td>${sel.password}</td>
			<td>${sel.name}</td>
			<td>${sel.phone}</td>
			<td>${sel.comnumber}</td>
			<!-- 
			<td><a href="delete.me?id=${member.id}&pageNumber=${pageInfo.pageNumber}">삭제</a></td>
			<td><input type="button" value="수정" onClick="goUpdate('${member.id	}','${pageInfo.pageNumber }')"></td>
			 -->
			 <td><a href="#">상세조회</a></td>	
			 <td><a href="#">수정</a></td>
			 <td><a href="selDelete.ad?num=${sel.num }">삭제</a></td>
			</tr>
		</c:forEach>
</table>
${pageInfo.pagingHtml }
</body>
</html>