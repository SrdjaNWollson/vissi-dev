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

    /*-- Book now on mobile fixed bottom  --*/
    $(document).scroll(function() {
	  var y = $(this).scrollTop();
	  if (y > 100) {
	    $('.book-mob-fix').fadeIn();
	  } else {
	    $('.book-mob-fix').fadeOut();
	  }
	});
	

});
