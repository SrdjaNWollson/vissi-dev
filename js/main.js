/* =====================================================================
 * MAIN JS
 * =====================================================================
 */
$(document).ready(function(){
 	

	/*-- Mobile menu --*/
	$('.ham-menu-btn').click(function(){
		$(this).toggleClass('is-active');
		$('#mainMenu').fadeToggle(100);
		$('html').toggleClass('noScroll');
	});
    //---------------------------------

    /*-- Book now on mobile fixed bottom  --*/
    if($(window).width() < 768) {

		// Hide Header on on scroll down
		var didScroll;
		var lastScrollTop = 0;
		var delta = 5;

		$(window).scroll(function(event){
		    didScroll = true;
		});

		setInterval(function() {
		    if (didScroll) {
		        hasScrolled();
		        didScroll = false;
		    }
		}, 250);

		function hasScrolled() {
		    var st = $(this).scrollTop();
		    
		    // Make sure they scroll more than delta
		    if(Math.abs(lastScrollTop - st) <= delta)
		        return;
		    
		    // If they scrolled down and are past the navbar, add class .nav-up.
		    // This is necessary so you never see what is "behind" the navbar.
		    if (st > lastScrollTop){
		        // Scroll Down
		        $('.book-mob-fix').fadeIn();
		    } else {
		        // Scroll Up
		        if(st + $(window).height() < $(document).height()) {
		            $('.book-mob-fix').fadeOut();
		        }
		    }
		    
		    lastScrollTop = st;
		}
	}

});
