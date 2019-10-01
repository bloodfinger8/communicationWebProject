<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

include summernote css/js
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>   -->
  
	<div class="container"><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            <div class="row">
                <p></p>
                <div class="col-md-6">
                    <h1>게시글 작성 </h1>
                </div>
            </div>
            <hr/>
		<form name="boardWriteForm" method="post" action="/communicationWebProject/board/boardWrite.do">
	      <div class="form-group">
	        <input type="text" class="form-control" id="subject" name="subject" placeholder="제목">
	      </div>
	      
	      <!-- <div id="summernote"></div> -->
	      <div class="form-group">
	        <textarea class="form-control" name="content" id="content" rows="12"
	        placeholder="여기를 눌러서 글을 작성 할 수 있습니다.&#13;&#10;&#13;&#10;[정보통신망법에 의한 홍보 게시물 작성 금지]&#13;&#10;1.회사/단체와 관련된 공모전,대외활동,구인,펀딩 홍보&#13;&#10;2.커뮤니티,어플,쇼핑몰,카페,블로그 홍보 및 방문유도&#13;&#10;3.토익,한자 등 어학원 홍보&#13;&#10;4.연극,영화 티켓 할인 서비스 홍보 "></textarea>
	      </div>
	      <button type="button" class="btn btn-primary" onclick="checkBoard()">글쓰기</button>
	      <button type="reset" class="btn btn-primary">다시작성</button>
	    </form>
	</div>
	
	<script>
	$(document).ready(function() {
		$('#summernote').summernote();
	});
	</script>