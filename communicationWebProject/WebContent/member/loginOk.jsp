<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div style="text-align: right;">
<b>${sessionScope.memName} 님</b>
<button type="button" class="btn btn-outline-secondary" onclick="location.href='/communicationWebProject/member/logout.do'">로그아웃</button>
<button type="button" class="btn btn-outline-secondary" onclick="location.href='/communicationWebProject/member/modifyForm.do'">회원정보</button>
</div>

