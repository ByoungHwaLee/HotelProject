<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>

memList.jsp<br>
<a href="logout.mem" style="float:right; margin:20px;">로그아웃</a>
<body>

	<form action="memList.ad" method="get">
		<select name="whatColumn">
			<option value="all" >전체 검색</option>
			<option value="m_email">이메일 검색</option>
			<option value="m_name" >이름 검색</option>
		</select> 	
		<input type="text" name="keyword"> 
		<input type="submit" value="검색">
	</form>	
	
	<table border="1">
		
		<tr>
			<th>번호</th>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>닉네임</th>
			<th>전화번호</th>
			<th>상세조회</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${memList }" var="mem">
			<tr>
				<td>${mem.m_num }</td>
				<td>${mem.m_email}</td>
				<td>${mem.m_password}</td>
				<td>${mem.m_name}</td>
				<td>${mem.m_nickname}</td>
				<td>${mem.m_phone}</td>
				<td><a href="#">상세조회</a></td>	
				<td><a href="memUpdate.ad?m_num=${mem.m_num }&pageNumber=${pageInfo.pageNumber}">수정</a></td>
				<td><a href="memDelete.ad?m_num=${mem.m_num }&pageNumber=${pageInfo.pageNumber}">삭제</a></td>
			</tr>
		</c:forEach>
</table>
${pageInfo.pagingHtml}
</body>
</html>