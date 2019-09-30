<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <div class="container"><!-- 좌우측의 공간 확보 -->
            <!-- 헤더 들어가는 부분 -->
            <div class="row">
                <p></p>
                <div class="col-md-6">
                    <h1>회원가입 </h1>
                </div>
            </div>
            <hr/>
            
            <form class="form-horizontal" role="form" method="post" action="javascript:alert( 'success!' );">
					
					<div class="form-group" id="divName">
                		<label for="inputName" class="col-lg-2 control-label">이름</label>
                		<div class="col-lg-3">
                    		<input type="text" class="onlyHangul" id="name" name="name"  placeholder="한글만 입력 가능합니다." maxlength="15">
               		 	</div>
            		</div>
            		
            		<div class="form-group" id="divId">
                		<label for="inputId" class="col-lg-2 control-label">아이디</label>
                		<div class="col-lg-7">
                    		<input type="text" class="onlyAlphabetAndNumber" id="id" name="id" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능합니다.">
                			<button class="btn btn-outline-secondary" type="button" onclick="checkId()">중복체크</button>
                			<input type="hidden" name="check" value="">
                		</div>
            		</div>
            		
            		<div class="form-group" id="divPassword">
                		<label for="inputPassword" class="col-lg-2 control-label">비밀번호</label>
                		<div class="col-lg-3">
                   	 		<input type="password" id="password" name="pwd" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                		</div>
            		</div>
            		
            		<div class="form-group" id="divPasswordCheck">
                		<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                		<div class="col-lg-3">
                    		<input type="password" id="passwordCheck" name="repwd" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                		</div>
            		</div>
            		
            		<div class="form-group">
                		<label for="inputPhoneNumber" class="col-lg-2 control-label">성별</label>
               			<div class="col-lg-10">
                    		<input type="radio" name="gender" value="0" checked>남
							<input type="radio" name="gender" value="1">여
                		</div>
            		</div>
            		
            		<div class="form-group" id="divEmail">
		                <label for="inputEmail" class="col-sm-5 control-label">이메일</label>
		                <div class="col-lg-7">
		                	<input type="text" class="onlyAlphabetAndNumber" name="email1" > @ 
		                	<input type="text" list="browsers" placeholder="직접입력" name="email2"> 
							<datalist id="browsers">
								<option value="gmail.com">
								<option value="naver.com">
								<option value="hanmail.com">
							</datalist>
		                </div>
		            </div>
		            
		            <div class="form-group" id="divTel">
		            	<label for="inputEmail" class="col-sm-5 control-label">전화번호</label>
		            	<div class="col-lg-7">
							<select name="tel1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="018">018</option>
							</select> - <input type="text" class="onlyNumber" name="tel2" size="4" maxlength="4"> -<input
								type="text" name="tel3" class="onlyNumber" size="4" maxlength="4">
						</div>
					</div>		
					
					<div class="form-group" id="divZipcode">
						<label for="inputZipcode" class="col-lg-2 control-label">주소</label>
						<div class="col-lg-7">
							<input type="text" name="zipcode" id="daum_zipcode"  size="10" readonly> 
							<button class="btn btn-outline-secondary" type="button" onclick="checkPost()">우편번호검색</button>
						</div>
					</div>
					
					<div class="form-group " id="divAddr1">
						<div class="col-lg-7">
						<input type="text" name="addr1" id="daum_addr1" placeholder="주소" size="40" readonly>
						</div>
					</div>
					
					<div class="form-group" id="divAddr2">
						<div class="col-lg-7">
							<input type="text" name="addr2" id="daum_addr2" placeholder="상세주소" size="40">
						</div>
					</div>	
					
					<div class="form-group" id="divBtn">
						<div class="col-lg-7">
							<button type="button" class="btn btn-primary" onclick="checkWrite()">회원가입</button>
							<button type="reset" class="btn btn-secondary">입력취소</button>
						</div>
					</div>
            
        </form>
     </div>
     
     <script>
     $(function(){
    	 $(".onlyHangul").keyup(function(event){
             if (!(event.keyCode >=37 && event.keyCode<=40)) {
                 var inputVal = $(this).val();
                 $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
             }
         });
     });
	     $('.onlyAlphabetAndNumber').keyup(function(event){
	         if (!(event.keyCode >=37 && event.keyCode<=40)) {
	             var inputVal = $(this).val();
	             $(this).val($(this).val().replace(/[^_a-z0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
	         }
	     });
	     
	     $('.onlyNumber').keyup(function(event){
	    	 if (!(event.keyCode >=37 && event.keyCode<=40)) {
	             var inputVal = $(this).val();
	             $(this).val($(this).val().replace(/[^0-9]/gi,'')); //_(underscore), 영어, 숫자만 가능
	         }
	     });
     </script>
     
     
     
     