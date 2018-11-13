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

require(getFromTemplate('common/header.php', false)); 

$widget = getWidgets('left', $page_id);

$w = $widget['left'][0];


?>

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
                    <h3><?= $page['intro']; ?></h3>
                    <?= $page['text']; ?>
                </div>
            </div>
        </section>

        <!--Our story-->
        <section class="our-story">
            <div class="container">
                <article class="our-story__box">
                    <div class="inner-container">
                        <?= $w['content']; ?>
                    </div>
                </article>
                <article class="our-story__box">
                    <div class="inner-container">
                        <?= $w['text1']; ?>
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
                    <?= $w['text2']; ?>
                </div>
            </div>
        </section>
    </div>
</main>
