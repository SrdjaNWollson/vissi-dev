<?php
/* ==============================================
 * CSS AND JAVASCRIPT USED IN THIS MODEL
 * ==============================================
 */
if($article_id > 0){
    
    $title_tag = $article['title']." - ".$title_tag;
    $page_title = $article['title'];
    $page_subtitle = $article['subtitle'];
    $page_alias = $article['alias'];
    $publish_date = $article['publish_date'];
    $edit_date = $article['edit_date'];
}


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

<section id="page">

    <?php include(getFromTemplate('common/page_header.php', false)); ?>

    <div id="content" class="pt30 pb20">

        <div class="container" itemprop="text">

            <div class="alert alert-success" style="display:none;"></div>
            <div class="alert alert-danger" style="display:none;"></div>
            

            <div class="row">
                <?php
                $result = $db->query('SELECT count(*) FROM pm_article WHERE id_page = '.$page_id.' AND checked = 1 AND (publish_date IS NULL || publish_date <= '.time().') AND (unpublish_date IS NULL || unpublish_date > '.time().') AND lang = '.LANG_ID);
                if($result !== false){
                    $num_records = $result->fetchColumn(0);
                }
                if($num_records > 0){?>
                    <div class="col-md-3">
                        <div class="isotopeWrapper clearfix isotope lazy-wrapper" data-loader="<?php echo getFromTemplate('common/get_galleries.php'); ?>" data-mode="click" data-more_caption="<?php echo $texts['LOAD_MORE']; ?>" data-is_isotope="true" data-variables="page_id=<?php echo $page_id; ?>&page_alias=<?php echo $page['alias']; ?>">
                            <?php include(getFromTemplate('common/get_galleries.php', false)); ?>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div>
                            <?php include(getFromTemplate('common/get_gallery.php', false)); ?>
                        </div>
                    </div>
                    <?php
                } ?>
            </div>
            
        </div>
    </div>
</section>
