<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
pre {
	white-space: pre-line;
	word-break: break-all;
}
.submit_btn{
	/* transform: translate(80%, -120%); */
	margin-left: 450px;
	margin-right: 49px;
	margin-top: -70px;
	height:60px;
}
</style>

<form id="boardViewForm" name="boardViewForm" method="post" action="">
<c:if test="${boardDTO != null }">
<table class="table-sm" border="1" width="600" height="400" cellspacing="0" cellpadding="15">
			<tr>
				<td colspan="3"><h3>${boardDTO.subject }</h3></td>
			</tr>
			<tr>
				<td width="100">글번호 : ${boardDTO.seq}</td>
				<td width="100">작성자 : ${boardDTO.id}</td>
				<td width="100">조회수 : ${boardDTO.hit}</td>
			</tr>
			<tr>
				<td colspan="3" height="200" valign="top"><pre>${boardDTO.content }</pre></td>
			</tr>
			<tr>
				<td colspan="3" height="50" valign="top">
				<textarea rows="3" cols="50" id="content" name="content"></textarea>
				<div class="submit_btn">
				<button type="button" id="regist" class="btn btn-outline-secondary btn-lg" onclick="checkboardreply()">등록</button>
				</div>
				</td>
			</tr>
			<tr>
				<td colspan="3" >
				<button type="button" class="btn btn-outline-info" onclick="location.href='/communicationWebProject/board/boardList.do?pg=${pg}'">목록</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='/communicationWebProject/board/boardReplyForm.do?pg=${pg}&pseq=${boardDTO.seq}'">답글</button> 				
				<c:if test="${sessionScope.memId == boardDTO.id }">
					<button type="button" class="btn btn-outline-success" onclick="location.href='boardModifyForm.do?pg=${pg}&seq=${boardDTO.seq}'">글수정</button>
					<button type="button" class="btn btn-outline-danger" onclick="location.href='boardDelete.do?seq=${boardDTO.seq}'">글삭제</button>
				</c:if>
				</td>
			</tr>
	</table>
	<div id="registDiv"></div>
	<input type="hidden" name="pseq" value="${boardDTO.seq}">
	<input type="hidden" name="id" value="${boardDTO.id}">
	<input type="hidden" name="pg" value="${pg}">
</c:if>
</form>

<script>
function checkboardreply(){
	if (document.getElementById("content").value == ""){ 
		alert("댓글을 입력하시오");
	}else {
		document.boardViewForm.submit();
	}
}

</script>

<script>
$("#regist").click(function(){
	$.ajax({
		type : 'post',
		url : '/communicationWebProject/boardreply/boardreplyWrite.do',
		data : $('#boardViewForm').serialize(),
		dataType : 'text',
		success : function(data){
			$('#registDiv').append('<div style="border:1px solid red;" >ggg</div>'); 
		}
	});
	
	 
});
</script>
