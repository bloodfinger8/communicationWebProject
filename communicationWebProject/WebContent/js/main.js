/**
 * 
 */
$(document).ready(function(){
	var headerOffset = $('.header').offset();
	
	$(window).scroll(function(){
		if($(document).scrollTop() > headerOffset.top){
			$('.header').addClass('jbFixed');
		}else{
			$('.header').removeClass('jbFixed');
		}
	});
});