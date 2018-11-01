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
	
	/*-- Count margin of content slider --*/
	const roomMargin = $('.room-slide');
	const offerMargin = $('.offer-slide');
	const roomSlideDots = $('#rooms .slick-dots');

	function giveMargin() {

		let fullWidth = $(window).width();
		if($(window).width() > 1140) {
			roomMargin.css('padding-left',((fullWidth - 1140) / 2) +'px');
			offerMargin.css('padding-right',((fullWidth - 1140) / 2) +'px');
			roomSlideDots.css('left',((fullWidth - 1140 + 16) / 2) +'px');
		}
		else if ($(window).width() > 990){
			roomMargin.css('padding-left', 1  +'%');
			roomSlideDots.css('left', 4  +'%');
		}
	}
	
	giveMargin();

	$(window).resize(function(){
	    giveMargin();
	});
	//----------------------------

	// /*-- Disable datepicker keyboard on mobile and tablet devices--*/

	// if($(window).width() < 991){
	// 	$('#from_picker, #to_picker').attr('readonly','readonly');
	// }

});
