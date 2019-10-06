<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="header-title">
	<h3>모임을 갖자</h3>
</div>
<div class="header-menubar">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/communicationWebProject/main/main.do">HOME</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<c:if test="${memId != null }">
					<li class="nav-item"><a class="nav-link" href="/communicationWebProject/board/boardWriteForm.do">글쓰기</a></li>
						<c:if test="${memId == 'admin'}">
							<li class="nav-item"><a class="nav-link" href="/miniproject/imageboard/imageboardWriteForm.do">이미지등록</a></li>
						</c:if>
					<!-- <li class="nav-item"><a class="nav-link" href="/miniproject/imageboard/imageboardList.do?pg=1">이미지게시판</a></li> -->
				</c:if>
				<li class="nav-item"><a class="nav-link" href="/communicationWebProject/board/boardList.do?pg=1">게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="/communicationWebProject/main/location.do">찾아오는길</a></li>
				
			</ul>
			<ul class="navbar-nav my-2 my-lg-0">
				<c:if test="${memId == null}">
					<li class="nav-item"><button type="button" class="btn btn-primary nav-link" data-toggle="modal" data-target="#exampleModal">
	  				로그인</button></li>
					<li class="nav-item"><a class="nav-link" href="/communicationWebProject/member/writeForm.do">회원가입</a></li>
				</c:if>
				<c:if test="${memId != null }">
					<jsp:include page="../member/loginOk.jsp"/>
				</c:if>
			</ul>
			<input type="hidden" id="jqueryCookie" value="">
		</div>
	</nav>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="width: 100%; height: 400px; margin: 0; padding: 0;">
   	 	<jsp:include page="../member/loginForm.jsp"/>
      </div>
      <!-- <div class="modal-footer">
      </div>  -->
    </div>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
 	/* if($.cookie('id') != "undefined"){
		$('.jqueryCookie').val('in');
	} */ 
});

$('.close').click(function(){ //종료버튼을 눌렀을때
	$('#id').val('');
	$('#pwd').val('');
	$('#idDiv').empty();
	$('#pwdDiv').empty();
	$("input:checkbox[name='autoLogin']").prop("checked", false);
});

</script>
