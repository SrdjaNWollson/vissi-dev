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
    //---------------------------------
	
	// /*-- Count margin of content slider --*/
	// const roomMargin = $('.room-slide');
	// const offerMargin = $('.offer-slide');
	// const roomSlideDots = $('#rooms .slick-dots');

	// function giveMargin() {

	// 	let fullWidth = $(window).width();
	// 	if(fullWidth > 1140) {
	// 		roomMargin.css('padding-left',((fullWidth - 1140) / 2) +'px');
	// 		offerMargin.css('padding-right',((fullWidth - 1140) / 2) +'px');
	// 		roomSlideDots.css('left',((fullWidth - 1140 + 16) / 2) +'px');
	// 	}
	// 	else if (fullWidth > 990 && fullWidth < 1140){
	// 		roomMargin.css('padding-left', 1  +'%');
	// 		roomSlideDots.css('left', 4  +'%');
	// 	}
	// }
	
	// giveMargin();

	// $(window).resize(function(){
	//     giveMargin();
	// });
	//----------------------------

	// /*-- Find and put at right position green btn of offers section --*/


	// let offersBtn = $('#offers .btn-gold');
	// let winWidth = $(window);
	// let dots = $('#offers .slick-dots');

	// function placeOffersDots(){
	// 	let btnPosition = winWidth.width() - Math.abs(offersBtn.offset().left);
	// 	dots.css('left', btnPosition - 8 +'px');
	// }

	// placeOffersDots();

	// $(window).resize(function(){
	//     placeOffersDots();
	// });

});
