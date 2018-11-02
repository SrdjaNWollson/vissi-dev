<?php debug_backtrace() || die ("Direct access not permitted"); 
$footer_cols = $appearance['footer_columns'];

$boxClass = getBoxClass($footer_cols);
$counter = 0;
?>
<section id="booknow" class="third-section">
    <div id="search-home" class="container">
        <?php include(getFromTemplate('common/search.php', false));
         ?>
    </div>
</section>
<!-- footer -->
<footer class="footer">
    <div class="footer-main container">
        <div class="footer__info items">
            <div class="logo-wrapper">
                <img src="/vissi-dev/templates/hotel-template/images/vissi-darte-logo-grey.svg" alt="logos">
            </div>
        </div>
        <div class="footer__nav items">
            <ul>
                <li>
                    <a href="/vissi-dev/rooms" title="Rooms &amp; Suites">Rooms &amp; Suites</a>
                </li>
                <li>
                    <a href="/vissi-dev/special-offers" title="Special Offers">Special Offers</a>
                </li>
                <li>
                    <a href="/vissi-dev/conferences-events" title="Activities">Conferences &amp; Events</a>
                </li>
                <li>
                    <a href="/vissi-dev/your-beach" title="Your beach">Your beach</a>
                </li>
                <li>
                    <a href="/vissi-dev/gallery" title="Gallery">Gallery</a>
                </li>
                <li>
                    <a href="/vissi-dev/about-us" title="About The Hotel">About The Hotel</a>
                </li>
                <li>
                    <a href="#dummy" title="Contact">Contact</a>
                </li>
                  <li>
                    <a href="#dummy" title="Terms and Conditions">Terms & Conditions</a>
                </li>
            </ul>
        </div>
        <div class="footer__connect items">
            
        </div>
    </div>
    <div class="footer-bottom container">
        <div class="footer__copyright">
            <span>All rights reserved Copyright 2018</span>
        </div>
    </div>
</footer>
<a href="#" id="toTop"><i class="fas fa-fw fa-angle-up"></i></a>


    <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//rawgit.com/tuupola/jquery_lazyload/2.x/lazyload.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.5/js/bootstrap-select.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/2.1.0/jquery.imagesloaded.min.js"></script>
    <script src=" <?php if(LANG_TAG != "en") : ?>'//rawgit.com/jquery/jquery-ui/master/ui/i18n/datepicker-<?php echo LANG_TAG; ?>.js',<?php endif; ?>"></script>
    
    <script src="<?php echo DOCBASE; ?>common/js/modernizr-2.6.1.min.js"></script>
    <script src="<?php echo DOCBASE; ?>js/main.js" type="text/javascript"></script>
    <script src="<?php echo DOCBASE; ?>js/custom.js" type="text/javascript"></script>
    <script src="<?php echo DOCBASE; ?>js/plugins/imagefill/js/jquery-imagefill.js"></script>
    <script src="<?php echo DOCBASE; ?>js/plugins/toucheeffect/toucheffects.js"></script>
    <script src="<?php echo DOCBASE; ?>js/plugins/slick/slick.min.js"></script>
    <script src="//use.fontawesome.com/releases/v5.0.3/js/all.js"></script>


    <?php
    //CSS required by the current model
    
    if(isset($javascripts)){
        foreach($javascripts as $javascript){ ?>
            <script src="<?php echo $javascript ?>"></script>
            <?php
        }
    } ?>
    <script src='https://www.google.com/recaptcha/api.js'></script>

    <script type="text/javascript">
        //-- ROOMS slider
        $('.rooms-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            responsive: [
                {
                breakpoint: 767,
                    settings: {
                        arrows: true,
                        prevArrow: $('#rooms .icon-left-arrow'),
                        nextArrow: $('#rooms .icon-right-arrow')
                    }             
                }
            ]
        });

         //-- ROOMS slider
        $('.offers-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            responsive: [
                {
                breakpoint: 767,
                    settings: {
                        arrows: true,
                        prevArrow: $('#offers .icon-left-arrow'),
                        nextArrow: $('#offers .icon-right-arrow')
                    }             
                }
            ]
        });

         //-- Testimonial slider
        $('.testimonial-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            dots: true
        });
    </script>

</body>
</html>
