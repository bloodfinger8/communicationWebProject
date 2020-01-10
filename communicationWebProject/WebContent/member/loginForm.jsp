<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

    <link rel="stylesheet" href="../css/loginForm.css">
    <form name="loginForm" id="loginForm" class="loginForm" method="post" action="/communicationWebProject/member/login.do">
      <h2>login</h2>
      <input type="text" name="id" id="id" placeholder="ID">
      <div id='idDiv'></div>
      <input type="password" name="pwd" id="pwd" placeholder="password">
      <div id='pwdDiv'></div>
      <a id="kakao-login-btn"></a>
	  <a href="http://developers.kakao.com/logout"></a>
      <br><br>
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
						
						//alert($.cookie('id'));
						
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

<!-- 카카오 로그인  -->
	<script type='text/javascript'>
	  //<![CDATA[
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('15a495380b7a7e7b02effc686eb4a0f4');
	    // 카카오 로그인 버튼을 생성합니다.
	    Kakao.Auth.createLoginButton({
	      container: '#kakao-login-btn',
	      success: function(authObj) {
              //console.log(JSON.stringify(res));
              Kakao.API.request({

       url: '/v1/user/me',

       success: function(res) {
/* 
             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
             console.log(JSON.stringify(res));//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
              */
             
             $.ajax({
	            	url : '/communicationWebProject/kakao/checkDuplication.do',
					type : 'post',
					data : {userId :res.id,
							userName : res.properties.nickname
							},
					dataType : "text",
					success : function(data){
						//카카오 로그인이 처음이라면
						if(data == "false"){
							$.ajax({
			            		url : '/communicationWebProject/kakao/kakaoLogin.do',
								type : 'post',
								data :{
									userId : res.id,
									userName : res.properties.nickname,
			                    	password : "kakao123"
			                	},
			                	dataType : 'json',
								success : function(data){
									alert('회원가입성공');
								},
								error : function(){
									alert('err');
								}
							});
						}
						
						//리로드
						location.reload();
					},
					error : function(){
						alert('err');
					}
            	 
             });
              
              
           }
         })

	      },
	      fail: function(err) {
	         alert("err");
	      }
	    });
	  //]]>
	</script>
