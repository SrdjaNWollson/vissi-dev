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
		sliderMargin.css('padding-left',((fullWidth - 1140) / 2) +'px');
		slideDots.css('left',((fullWidth - 1140 + 16) / 2) +'px');
	}
	
	giveMargin();

	$(window).resize(function(){
	    giveMargin();
	});
	

});
