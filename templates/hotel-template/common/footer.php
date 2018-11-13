<?php debug_backtrace() || die ("Direct access not permitted"); 
$counter = 0;

$widget = getWidgets('footer_col_1',$page_id);
$widget2 = getWidgets('footer_col_3',$page_id);
$footer_col1 = $widget['footer_col_1'][0];
$footer_col3 = $widget2['footer_col_3'][0]; 
//$social = 
?>
<!-- book now -->
<section id="search-home-bottom" class="third-section">
    <div class="container">
        <?php include(getFromTemplate('common/search.php', false));
         ?>
    </div>
</section>
<!-- book mobile btn -->
<div class="book-mob-fix">
    <a href="#dummy" class="btn btn-green"><span>Book Now</span></a>
</div>
<!-- footer -->
<footer class="footer">
    <div class="footer-main container">
        <div class="footer__info items">
            <div class="logo-wrapper">
                <img src="/vissi-dev/templates/hotel-template/images/vissi-darte-logo-grey.svg" alt="logos">
            </div>
            <div class="contact-info">
                <?= $footer_col1['content']; ?>
                <ul class="social-links">
                    <?php getSocialLinks($db); ?>
                </ul>
            </div>
        </div>
        <div class="footer__nav items">
            <ul>
            <?php
            foreach($menus['footer'] as $nav_id => $nav){ ?>
                <li>
                    <a href="<?php echo $nav['href']; ?>" title="<?php echo $nav['title']; ?>"><?php echo $nav['name']; ?></a>
                </li>
                <?php 
            } ?>
            </ul>
        </div>
        <div class="footer__subscribe items">
            <?= $footer_col3['content']; ?>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="footer__copyright">
                <span>All rights reserved Copyright 2018</span>
            </div>
        </div>
    </div>
</footer>
<!-- <a href="#" id="toTop"><i class="fas fa-fw fa-angle-up"></i></a> -->


    <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <!--  <script src="//rawgit.com/tuupola/jquery_lazyload/2.x/lazyload.min.js"></script> -->
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<!--     <script src="//cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script> -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
   <!--  <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script> -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.5/js/bootstrap-select.min.js"></script>
  <!--   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/2.1.0/jquery.imagesloaded.min.js"></script> -->
    <script src=" <?php if(LANG_TAG != "en") : ?>'//rawgit.com/jquery/jquery-ui/master/ui/i18n/datepicker-<?php echo LANG_TAG; ?>.js',<?php endif; ?>"></script>
    
    <script src="<?php echo DOCBASE; ?>common/js/modernizr-2.6.1.min.js"></script>
    <script src="<?php echo DOCBASE; ?>js/main.js" type="text/javascript"></script>
    <script src="<?php echo DOCBASE; ?>js/custom.js" type="text/javascript"></script>
   <!--  <script src="<?php /*echo DOCBASE;*/ ?>js/plugins/imagefill/js/jquery-imagefill.js"></script> -->
    <!-- <script src="<?php /*echo DOCBASE;*/ ?>js/plugins/toucheeffect/toucheffects.js"></script> -->
    <script src="<?php echo DOCBASE; ?>js/plugins/slick/slick.min.js"></script>
  <!--   <script src="//use.fontawesome.com/releases/v5.0.3/js/all.js"></script> -->


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

        //-- Intro slider
        $('.introSlider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            dots: false
        });
        //-- ROOMS and OFFER slider homepage
         $('.pg-home .content-slider').on('init', function() {
            $(this).css("visibility", "visible");
        });
        $('.pg-home .content-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            responsive: [
                {
                breakpoint: 767,
                    settings: {
                        arrows: true,
                        // prevArrow: $('#rooms .icon-left-arrow'),
                        // nextArrow: $('#rooms .icon-right-arrow')
                    }             
                }
            ]
        });

        //-- Testimonial slider
        $('.testimonial-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            adaptiveHeight: true
        });

        //-- Teaser slider
        $('.imgSlider__wrapper').on('init', function() {
            $(this).css("visibility", "visible");
        });

        $('.imgSlider__wrapper').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: true,
            dots: true
        });

    </script>

</body>
</html>
