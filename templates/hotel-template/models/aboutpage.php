<?php
/* ==============================================
 * CSS AND JAVASCRIPT USED IN THIS MODEL
 * ==============================================
 */

$stylesheets[] = array('file' => DOCBASE.'js/plugins/isotope/css/style.css', 'media' => 'all');
$javascripts[] = '//cdnjs.cloudflare.com/ajax/libs/jquery.isotope/1.5.25/jquery.isotope.min.js';
$javascripts[] = DOCBASE.'js/plugins/isotope/jquery.isotope.sloppy-masonry.min.js';

$stylesheets[] = array('file' => DOCBASE.'js/plugins/lazyloader/lazyloader.css', 'media' => 'all');
$javascripts[] = DOCBASE.'js/plugins/lazyloader/lazyloader.js';

$stylesheets[] = array('file' => '//cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/3.5.5/css/star-rating.min.css', 'media' => 'all');
$javascripts[] = '//cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/3.5.5/js/star-rating.min.js';

$stylesheets[] = array('file' => DOCBASE.'js/plugins/royalslider/royalslider.css', 'media' => 'all');
$stylesheets[] = array('file' => DOCBASE.'js/plugins/royalslider/skins/minimal-white/rs-minimal-white.css', 'media' => 'all');
$javascripts[] = DOCBASE.'js/plugins/royalslider/jquery.royalslider.min.js';

require(getFromTemplate('common/send_comment.php', false));

require(getFromTemplate('common/header.php', false)); ?>

<main id="page" class="pg-about">

    <?php include(getFromTemplate('common/page_header.php', false)); ?>

    <div id="content">
        <!--teaser-->    
        <section class="teaser">
            <div class="container">
                <div class="imgSlider">
                    <div class="imgSlider__wrapper">
                        <?php getImagesFromTable($db,'pm_page_file','page'); ?>
                    </div>
                </div>
                <div class="teaser__content">
                    <h3>Our rooms</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae cumque nesciunt dolorem quibusdam dignissimos.</p>
                </div>
            </div>
        </section>

        <!--Our story-->
        <section class="our-story">
            <div class="container">
                <article class="our-story__box">
                    <div class="inner-container">
                        <h3>Our philosophy</h3>
                        <p>We do not offer just accommodation and services but also unforgettable  guest experience. We take care about our guest from the moment he reserves his suite until his departure home. Hospitable  and dedicated to guests our staff is really at their full service . Also, we are hotel with high smart technology standard, perfect wi fi and every apartment has got tablet which easily manage all wishes of the guests.</p>
                    </div>
                </article>
                <article class="our-story__box">
                    <div class="inner-container">
                        <h3>Our values</h3>
                        <p>We redefined our traditional values - Innovation, Spirit of Conquest, Respect, Trust - and formulated two new values: Guest Passion, which reasserts our passion for hospitality and the strength of our humanist roots, and Sustainable Performance, which reminds us that we are part of a community, driven by a vision that does not take the short-term view, and that our business growth must also benefit the community at large over the long term</p>
                    </div>
                </article>
            </div>
            <div class="bgHolder">
                <div class="bg-left"></div>
                <div class="bg-right"></div>
            </div>    
        </section>
                
        <!--teaser-->    
        <section class="teaser">
            <div class="container">
                <div class="imgSlider">
                    <div class="imgSlider__wrapper">
                        <?php getImagesFromTable($db,'pm_article_file','article'); ?>
                    </div>
                </div>
                <div class="teaser__content">
                    <h3>Our rooms</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae cumque nesciunt dolorem quibusdam dignissimos.</p>
                </div>
            </div>
        </section>
    </div>
</main>
