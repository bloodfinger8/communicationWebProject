<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-5">
      <h2>메일 보내기 </h2>
      <form class="form-horizontal" role="form" method="post" action="index.php">
		<div class="form-group">
			<label for="name" class="col-sm-2 control-label">Name</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="email" class="col-sm-2 control-label">Email</label>
			<div class="col-sm-10">
				<input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="message" class="col-sm-2 control-label">Message</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="4" name="message"></textarea>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-10 col-sm-offset-2">
				<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
			</div>
		</div>
	</form>
	</div>

    <div class="col-sm-6">
      <h2>찾아 오는길</h2><hr>
      <div class="fakeimg">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.204140745878!2d127.0222449501111!3d37.50310313541844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca158a8d5dd53%3A0xaf6376543bcb7b3!2z67Cx7JWU67mM65Sp!5e0!3m2!1sko!2skr!4v1570348041279!5m2!1sko!2skr" width="500" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
      </div>
      <p><p>백암빌딩 서울특별시 서초구 서초동 1303-34 5층 비트캠프</p></p>
    </div>
  </div>
</div>


<script>
if (!$_POST['name']) {
	$errName = 'Please enter your name';
}
</script>