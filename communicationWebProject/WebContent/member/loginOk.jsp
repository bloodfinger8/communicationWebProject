<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="text-align: right;">
<b>${sessionScope.memName} 님</b>
<input type="button" value="회원정보수정" onclick="location.href='/communicationWebProject/member/modifyForm.do'" >
<input type="button" value="로그아웃" onclick="location.href='/communicationWebProject/member/logout.do'">
</div>
</body>
 <script type="text/javascript">
 $(document).ready(function(){
	 window.parent.closeModal();
 });
  </script>
</html>