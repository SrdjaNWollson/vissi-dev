/* =====================================================================
 * MAIN JS
 * =====================================================================
 */
$(document).ready(function(){
 	

	/*-- Mobile menu --*/
	$('.ham-menu-btn').click(function(){
		$(this).toggleClass('is-active');
		$('#mainMenu').toggle();
		$('html').toggleClass('noScroll');
	});

	

	const sliderMargin = $('.room-slide');
	const slideDots = $('.slick-dots');

	function giveMargin() {

		let fullWidth = $(window).width();
		if($(window).width() > 1140) {
			sliderMargin.css('padding-left',((fullWidth - 1140) / 2) +'px');
			slideDots.css('left',((fullWidth - 1140 + 16) / 2) +'px');
		}
		else if ($(window).width() > 990){
			sliderMargin.css('padding-left', 1  +'%');
			slideDots.css('left', 4  +'%');
		}
	}
	
	giveMargin();

	$(window).resize(function(){
	    giveMargin();
	});
	

});
