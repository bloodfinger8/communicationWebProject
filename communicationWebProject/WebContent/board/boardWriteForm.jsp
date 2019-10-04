<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
   		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    
    	<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
  
		
            <!-- 헤더 들어가는 부분 -->
            <div >
                <div >
                    <h1>게시글 작성 </h1>
                </div>
            </div>
            <hr/>
		<form name="boardWriteForm" method="post" action="/communicationWebProject/board/boardWrite.do">
	      <div class="form-group">
	        <input type="text" class="form-control" id="subject" name="subject" placeholder="제목">
	      </div>
	      
	      <!-- 썸머노트 에디터 사용 -->
	      <textarea id="summernote" name="summernote"></textarea>
	      <button type="button" class="btn btn-primary" onclick="checkBoard()">글쓰기</button>
	      <button type="reset" class="btn btn-primary">다시작성</button>
	      
	    </form>
	
	<script>
	$(document).ready(function() {
		$('#summernote').summernote({
	        placeholder: '여기를 눌러서 글을 작성 할 수 있습니다.<br>[정보통신망법에 의한 홍보 게시물 작성 금지]<br><br>1.회사/단체와 관련된 공모전,대외활동,구인,펀딩 홍보.<br>2.커뮤니티,어플,쇼핑몰,카페,블로그 홍보 및 방문유도.<br>3.토익,한자 등 어학원 홍보.<br>4.연극,영화 티켓 할인 서비스 홍보',
	        height: 300,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true 
	      });
		$('.dropdown-toggle').dropdown()
		
	});
	</script>