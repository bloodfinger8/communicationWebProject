<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="jumbotron">
	<h1 class="text-center">안녕하세요</h1>
	<p class="text-center">원하는 모임이 있으신가요?</p>
	<p class="text-center"><a class="btn btn-primary btn-lg" href="/communicationWebProject/board/boardList.do?pg=1" role="button">ds</a></p>
</div>
	 
	 <!-- Add Captions to Slides -->
<div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <!-- <li data-target="#carouselExampleCaptions" data-slide-to="2"></li> -->
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../image/first.jpg" class="d-block w-100" width="600" height="400" >
        <div class="carousel-caption d-none d-md-block">
          <h5>First slide label</h5>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../image/second.jpg" class="d-block w-100" width="600" height="400"  >
        <div class="carousel-caption d-none d-md-block">
          <h5>Second slide label</h5>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
      </div>
<!--       <div class="carousel-item">
        <img src="..." class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
          <h5>Third slide label</h5>
          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
        </div>
      </div>
 -->    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br><br>
<div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-4">
            <img class="rounded-circle" src="../image/mo1.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>다양한 만남</h2>
            <p>동업에 종사하고 있는 사람들을 만나보세요! 어떤 회사는 어떤 기술을 사용하고 있고 요새 트렌트를 파악 할 수있어요!</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="../image/mo2.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>사회생활</h2>
            <p>많은 사람들을 만나고 함께 더불어 살아간다는건 삶에 많은 도움이 될겁니다!</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-4">
            <img class="rounded-circle" src="../image/mo3.jpg" alt="Generic placeholder image" width="140" height="140">
            <h2>실력 증가</h2>
            <p>많은 기술에 대해 접해볼수있는 경험을 가질거에요. 당신의 커리어에 좋은 경험을 넣을수 있을겁니다!</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->


        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">다양한 만남을 가져보세요. <span class="text-muted">It'll blow your mind.</span></h2>
            <p class="lead">평소에 하고싶었던 활동을 마음이 맞는 사람들과 만나서 시작해보세요. 당신의 삶의 활력을 불어 넣어줄꺼에요</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="../image/mo1.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">사회생활은 인맥이 필수 <span class="text-muted">See for yourself.</span></h2>
            <p class="lead">같은 직업 , 취미를 가진사람들을 알아가는것! 그것은 당신의 커리어에 많은 도움이 될꺼에요 </p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="../image/mo2.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">나이가 많든 적든 상관없어요 지금 시작하세요 <span class="text-muted">Checkmate.</span></h2>
            <p class="lead">당신이 나이가 많건 적건 그건 중요하지 않습니다. 단지 실천을 하느냐 마느냐가 문제이죠. 혹시 알아요? 당신의 소울메이트를 만날지</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="../image/mo3.jpg" alt="Generic placeholder image">
          </div>
        </div>
        <hr class="featurette-divider">
      </div>
      
      
      <style>
      .marketing .col-lg-4 {
		  margin-bottom: 1.5rem;
		  text-align: center;
		}
		.marketing h2 {
		  font-weight: 400;
		}
		.marketing .col-lg-4 p {
		  margin-right: .75rem;
		  margin-left: .75rem;
		}
		
      .featurette-divider {
	  	  margin: 5rem 0; /* Space out the Bootstrap <hr> more */
		}
	  .featurette-heading {
		  font-weight: 300;
		  line-height: 1;
		  letter-spacing: -.05rem;
		}
		
		@media (min-width: 40em) {
		  /* Bump up size of carousel content */
		  .carousel-caption p {
		    margin-bottom: 1.25rem;
		    font-size: 1.25rem;
		    line-height: 1.4;
		  }
		
		  .featurette-heading {
		    font-size: 50px;
		  }
		}
		
		@media (min-width: 62em) {
		  .featurette-heading {
		    margin-top: 7rem;
		  }
		}
      </style>
      
      