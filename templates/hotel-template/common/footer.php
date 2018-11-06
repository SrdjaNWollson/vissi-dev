<?php debug_backtrace() || die ("Direct access not permitted"); 
$footer_cols = $appearance['footer_columns'];

$boxClass = getBoxClass($footer_cols);
$counter = 0;
?>
<footer>
    <section id="booknow" class="third-section">
        <div id="search-home" class="container">
            <?php include(getFromTemplate('common/search.php', false));
             ?>
        </div>
    </section>
    <section id="mainFooter">
        <div class="container" id="footer">
            <div class="row">
            <?php while($counter < $footer_cols) : $counter++; ?>
                <div class="<?= $boxClass ?>">
                    <?php displayWidgets("footer_col_".$counter, $page_id); ?>
                </div>
            <?php endwhile; ?>
            </div>
        </div>
    </section>
    <div id="footerRights">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>
                        &copy; <?php echo date("Y"); ?>
                        <?php echo OWNER." ".$texts['ALL_RIGHTS_RESERVED']; ?>
                    </p>
                </div>
                <div class="col-md-6">
                    <p class="text-right">
                        <a href="<?php echo DOCBASE; ?>feed/" target="_blank" title="<?php echo $texts['RSS_FEED']; ?>"><i class="fas fa-fw fa-rss"></i></a>
                        <?php
                        foreach($menus['footer'] as $nav_id => $nav){ ?>
                            <a href="<?php echo $nav['href']; ?>" title="<?php echo $nav['title']; ?>"><?php echo $nav['name']; ?></a>
                            &nbsp;&nbsp;
                            <?php
                        } ?>
                    </p>
                </div>
            </div>
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

    jQuery(document).ready(function($) {
        $(".royalSlider").royalSlider({
            keyboardNavEnabled: true,
            arrowsNav:false,
            controlNavigation:'none'
        });  
    });
    </script>

</body>
</html>
