<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp"%>

memberInfoForm
<br>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script type="text/javascript">

	function deleteMem(m_email) {
		location.href = "delete.mem?m_email=" + m_email;
	}
</script>

<script type="text/javascript">
	$(function() {
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("#alert-danger2").hide();
		$("#update").prop("disabled", true);
		 $("input").keyup(function() {
			var pwd = $("#pwd").val();
			var pwd1 = $("#pwd1").val();
			var pwd2 = $("#pwd2").val();
			if (pwd1 != "" || pwd2 != "") { 
				if (pwd != pwd1) {
					if (pwd1 == pwd2) {
						$("#alert-success").show();
						$("#alert-danger").hide();
						$("#alert-danger2").hide();
						$("#submit").removeAttr("disabled");
						$("#update").prop("disabled", false);
					} else {
						$("#alert-success").hide();
						$("#alert-danger").show();
						$("#alert-danger2").hide();
						$("#submit").attr("disabled", "disabled");
					}
				} else {
					$("#alert-success").hide();
					$("#alert-danger").hide();
					$("#alert-danger2").show();
				}
			}
		});
	});

</script>

<form:form commandName="member" action="update.mem" method="post">
	<input type="hidden" name="m_num" value="${member.m_num }">

	<p>
			<label for="m_email">이메일</label>
			<input type="text" name="m_email" value="${member.m_email}">
	</p>

	<p>
			<label for="m_password">현재 비밀번호</label>
			<input type="password" name="m_password" id="pwd" value="${member.m_password}">
	</p>
	
	<p>
			<label for="new_m_password">새 비밀번호</label>
			<input type="password" name="new_m_password" id = "pwd1" value="">
	</p>
	
	<p>
			<label>새 비밀번호 확인</label>
			<input type="password" id = "pwd2" value="">
	</p>
	
		<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
		<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
		<div class="alert alert-danger2" id="alert-danger2">현재 비밀번호와 일치합니다.</div>
	
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
			<input type="submit" id="update" value="수정">
			<input type="submit" value="탈퇴" onclick="deleteMem('${member.m_email}')">
		</p>

</form:form>
		