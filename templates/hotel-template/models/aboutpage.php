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

<section id="page">

    <?php include(getFromTemplate('common/page_header.php', false)); ?>

    <div id="content">
            <!--teaser-->    
            <section class="teaser">
                <div class="container">
                    <div class="imgSlider">
                        <div class="imgSlider__wrapper">
                            <?php getImagesFromTable($db,'pm_page_file','page'); ?>
                        </div>
                        <span class="icon-left-arrow slider-nav"></span>
                        <span class="icon-right-arrow slider-nav"></span>
                    </div>
                    <div class="teaser__content">
                        <h3>Our rooms</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae cumque nesciunt dolorem quibusdam dignissimos.</p>
                    </div>
                </div>
            </section>

    <div id="content" class="pt30 pb20">

        <div class="container" itemprop="text">
        
            <?php include(getFromTemplate('common/slider.php', false)); ?>

            <div class="alert alert-success" style="display:none;"></div>
            <div class="alert alert-danger" style="display:none;"></div>
            
            <div class="row">
                <?php
                $widgetsLeft = getWidgets('left', $page_id);
                $widgetsRight = getWidgets('right', $page_id);
                
                if(!empty($widgetsLeft)){ ?>
                    <div class="col-sm-3">
                        <?php displayWidgets('left', $page_id); ?>
                    </div>
                    <?php
                } ?>
                
                <div class="col-sm-<?php if(!empty($widgetsLeft) && !empty($widgetsRight)) echo 6; elseif(!empty($widgetsLeft) || !empty($widgetsRight)) echo 9; else echo 12; ?>">
                    <?php echo $page['text']; ?>
                </div>
                
                <?php
                if(!empty($widgetsRight)){ ?>
                    <div class="col-sm-3">
                        <?php displayWidgets('right', $page_id); ?>
                    </div>
                    <?php
                } ?>
            </div>

            <div class="row">
                <?php
                $lz_offset = 1;
                $lz_limit = 9;
                $lz_pages = 0;
                $num_records = 0;
                $result = $db->query('SELECT count(*) FROM pm_article WHERE id_page = '.$page_id.' AND checked = 1 AND (publish_date IS NULL || publish_date <= '.time().') AND (unpublish_date IS NULL || unpublish_date > '.time().') AND lang = '.LANG_ID);
                if($result !== false){
                    $num_records = $result->fetchColumn(0);
                    $lz_pages = ceil($num_records/$lz_limit);
                }
                if($num_records > 0){
                    
                    $result_tag = $db->query('SELECT * FROM pm_tag WHERE pages REGEXP \'(^|,)'.$page_id.'(,|$)\' AND checked = 1 AND lang = '.LANG_ID.' ORDER BY rank');
                    if($result_tag !== false){
                        $nb_tags = $db->last_row_count();
                        
                        if($nb_tags > 0){ ?>
                    
                            <nav id="filter" class="text-center mt20">
                                <div class="btn-group">
                                    <a href="" class="btn btn-default" data-filter="*"><?php echo $texts['ALL']; ?></a>
                                    <?php
                                    foreach($result_tag as $i => $row){
                                        $tag_id = $row['id'];
                                        $tag_value = $row['value']; ?>
                                        
                                        <a href="" class="btn btn-default" data-filter=".tag<?php echo $tag_id; ?>"><?php echo $tag_value; ?></a>
                                        
                                        <?php
                                    } ?>
                                </div>
                            </nav>
                            <?php
                        }
                    } ?>
                    
                    <?php
                } ?>
            </div>
        
        </div>

    <div id="content">
            <!--teaser-->    
            <section class="teaser">
                <div class="container">
                    <div class="imgSlider">
                        <div class="imgSlider__wrapper">
                            <?php getImagesFromTable($db,'pm_article_file','article'); ?>
                        </div>
                        <span class="icon-left-arrow slider-nav"></span>
                        <span class="icon-right-arrow slider-nav"></span>
                    </div>
                    <div class="teaser__content">
                        <h3>Our rooms</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae cumque nesciunt dolorem quibusdam dignissimos.</p>
                    </div>
                </div>
            </section>
    </div>
</section>
