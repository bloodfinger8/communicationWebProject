<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../bootstrap_css/bootstrap.css">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../bootstrap_js/bootstrap.js"></script>
</head>
<body>
	 <div class="header">
		<jsp:include page="../template/header.jsp"/>
	</div>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"><a class="nav-link" href="#">Home<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="#">게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="#">거래장</a></li>
			</ul>
			<ul class="navbar-nav my-2 my-lg-0">
				<c:if test="${memId == null}">
					<li class="nav-item"><button type="button" class="btn btn-primary nav-link" data-toggle="modal" data-target="#exampleModal">
	  				로그인</button></li>
					<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
				</c:if>
				<c:if test="${memId != null}">
					<jsp:include page="../member/loginOk.jsp"/>
				</c:if>
				
			</ul>
		</div>
	</nav>
	<!-- 메뉴바 -->
	
	
<!-- <button type="button" class="btn btn-primary nav-link" data-toggle="modal" data-target="#exampleModal">로그인</button> -->

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
      <div class="modal-body">
        <iframe src="../member/loginForm.jsp" frameborder="0" framespacing="0" marginheight="0" marginwidth="0" scrolling="no" vspace="0" style="width:100%; height:300px;"></iframe>
      </div>
      <!-- <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary">로그인 </button>
      </div> -->
    </div>
  </div>
</div>
	
	<div class="content">
		 <jsp:include page="../template/body.jsp"/>
	</div>
	
	<footer class="tail">
		 <jsp:include page="../template/bottom.jsp"/>
 	</footer>
  
</body>
<script type="text/javascript">
window.closeModal = function() {
    $('#exampleModal').modal('hide');
}	
</script>
</html>