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
				<button type="button" id="regist" class="btn btn-outline-secondary btn-lg regist">등록</button>
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
	<div id="registDiv">
		<div id="data_boardreply">
			<c:forEach items="${list }" var="list" varStatus="i">
				<div>
				${list.id} <div id="divContent_modifyReply${i.count}">${list.logtime} <br>
				${list.content}</div>
				<c:if test="${memId == list.id}">
					<input type="button" class="modifyReply" name="${list.seq}" id="modifyReply${i.count}" value="수정">
					<input type="button" class="deleteReply" name="${list.seq}" id="deleteReply${i.count}" value="삭제">
					<div class="modifyReply${i.count}"></div>
				</c:if>
				</div>
				<hr>
			</c:forEach>
		</div>
		<!-- 내용이 추가 되는 부분 -->
		<div id="angel"></div>
	</div>
	
	<input type="hidden" name="pseq" value="${boardDTO.seq}">
	<input type="hidden" name="id" value="${boardDTO.id}">
	<input type="hidden" name="logId" value="${memId}">
	<%-- <input type="hidden" name="seletedId" value="${list.id}"> --%>
	<input type="hidden" name="pg" value="${pg}">
	<input type="hidden" name="seq_trans" id="seq_trans">
	<input type="hidden" name="list" id="list" value="${list}">
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
$(document).on("click", ".regist", function(){
	if($('#content').val() == ''){
		alert('댓글을 입력하세요');
	}else{
		$.ajax({
			type : 'post',
			url : '/communicationWebProject/boardreply/boardreplyWrite.do',
			data : $('#boardViewForm').serialize(),
			dataType : 'html',
			success : function(data){
				//var result = "<div style='border:1px solid blue'>" + data.trim()+ "</div>";
				$('#data_boardreply').empty();
				$("#data_boardreply").append(data.trim());
				$('#content').val('');
			},
			error : function(){
				alert('실패');
			}
		});
	}
});

$(document).ready(function() {  
	$(document).on('click','.modifyReply',function(){
		
		var btnId = $(this).attr('id');
		var seq = $(this).attr('name');
		var divContent = $('#divContent_'+btnId);
		
		if($('.modifyText').length == 0){
			texthtml = '<input type="text" class="modifyText" name="modifyText"> <input type="button" class=modify2 value=수정3>';
			$('.'+btnId).append(texthtml);
		}
		$('.'+btnId).show();
		$('#seq_trans').val(seq);
		
		$(document).on('click','.modify2',function(){
			if($('.modifyText').val() == ''){
				alert('수정할 내용을 입력하세요');
			}else{
				$.ajax({
					type : 'post',
					url : '/communicationWebProject/boardreply/boardreplyModify.do',
					data : $('#boardViewForm').serialize(),
					dataType : 'html',
					success : function(data){
						//alert(data.trim());
						$('.modifyText').val(data);
						divContent.html(data.trim());
						$('.'+btnId).hide();
						$('.modifyText').val('');
					},
					error : function(){
						alert('수정 실패');
					}
				});
			}
		});
	});
	$(document).on('click','.deleteReply',function(){
		var btnId = $(this).attr('id');
		var seq = $(this).attr('name');
		$('#seq_trans').val(seq);
		
		jQuery.ajaxSettings.traditional = true;
		
		$.ajax({
			type : 'post', 
			url : '/communicationWebProject/boardreply/boardreplyDelete.do',
			data :   $('#boardViewForm').serialize(),
			dataType : 'html',
			success : function(data){
				$('#data_boardreply').empty();
				alert(data.trim());
				$("#data_boardreply").append(data.trim());
			},
			error : function(){
				alert('삭제 실패');
			}
		});
	});
	
});
</script>

