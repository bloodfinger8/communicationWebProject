<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <link rel="stylesheet" href="../css/loginForm.css">
    <form name="loginForm" id="loginForm" class="loginForm" method="post" action="/communicationWebProject/member/login.do">
      <h2>login</h2>
      <input type="text" name="id" id="id" placeholder="ID">
      <div id='idDiv'></div>
      <input type="password" name="pwd" id="pwd" placeholder="password">
      <div id='pwdDiv'></div>
      <br>
      <div id='loginResult'></div>
      <button type="button" name="Login" id="Login" class="btn btn-primary" >Login</button>
      <button type="reset"  name="cancel" id="cancel" class="btn btn-secondary">취소 </button>
   	  <br><br>
	  <div style="text-align:left;">
	  <label class="checkbox"><input type="checkbox" name="autoLogin" id="autoLogin" value="1" onclick="keepLogin()">
	  <b>자동로그인</b></label>
      </div>
      </form>
<script type="text/javascript">
$(document).ready(function(){
	$('#id').keyup(function(){
		$('#loginResult').empty();
	});
	
	$('#Login').click(function(){ 
		$('#idDiv').empty();
		$('#pwdDiv').empty();
		
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		alert($('#loginForm').serialize());
		if(id == '')
			$('#idDiv').text('아이디 입력하세요').css('color','red').css('font-size','9pt');
		else if(pwd == '')
			$('#pwdDiv').text('비밀번호를 입력하세요').css('color','red').css('font-size','9pt');
		else
			$.ajax({
				type : 'post',
				url : 'http://localhost:8080/communicationWebProject/member/login.do',
				data : $('#loginForm').serialize(),//ex)'id='+id+'&pwd='+pwd,
				dataType : 'text',
				success : function(data){
					if(data.trim()=='fail'){
						$('#loginResult').text("아이디 또는 비밀번호가 틀립니다.");
						$('#loginResult').css('color','red');
						$('#loginResult').css('font-size','9pt');
						
						$('#loginForm')[0].reset();
						$('#id').focus();
						
					}else{
						if($('#autoLogin').val() == '1'){ //체크박스가 체크 되었다면 쿠키 생성
							$.cookie('id', 'autoLogin'); 
						}
						alert($.cookie('id'));
						location.reload();
					}
				}
			});
	});
});



</script>

<script>
function keepLogin(){
 	  if(document.getElementById('autoLogin').checked){
		var input = confirm('개인 pc가 아닐 경우 타인이 로그인할 수 있습니다.\n\n pc를 여러사람이 사용하는 공공장소에서는 체크하지 마세요.\n\n정말로 앞으로 자동 로그인 하시겠습니까?');
		if(input){
			document.getElementById('autoLogin').checked=true;
		}else{
			document.getElementById('autoLogin').checked=false;
		}
	}   
}
</script>

