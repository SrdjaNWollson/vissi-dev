<?php
if($article_alias == '') err404();

$result = $db->query('SELECT * FROM pm_offer WHERE checked = 1 AND lang = '.LANG_ID.' AND alias = '.$db->quote($article_alias));
if($result !== false && $db->last_row_count() > 0){
    
    $offer = $result->fetch(PDO::FETCH_ASSOC);
    
    $offer_id = $offer['id'];
    $article_id = $offer_id;
    $title_tag = $offer['title'].' - '.$title_tag;
    $page_title = $offer['title'];
    $page_subtitle = '';
    $page_alias = $pages[$page_id]['alias'].'/'.text_format($offer['alias']);
    
    $result_offer_file = $db->query('SELECT * FROM pm_offer_file WHERE id_item = '.$offer_id.' AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1');
    if($result_offer_file !== false && $db->last_row_count() > 0){
        
        $row = $result_offer_file->fetch();
        
        $file_id = $row['id'];
        $filename = $row['file'];
        
        if(is_file(SYSBASE.'medias/offer/medium/'.$file_id.'/'.$filename))
            $page_img = getUrl(true).DOCBASE.'medias/offer/medium/'.$file_id.'/'.$filename;
    }
    
}else err404();

check_URI(DOCBASE.$page_alias);

/* ==============================================
 * CSS AND JAVASCRIPT USED IN THIS MODEL
 * ==============================================
 */
$javascripts[] = DOCBASE.'js/plugins/sharrre/jquery.sharrre.min.js';

$javascripts[] = DOCBASE.'js/plugins/jquery.event.calendar/js/jquery.event.calendar.js';
$javascripts[] = DOCBASE.'js/plugins/jquery.event.calendar/js/languages/jquery.event.calendar.'.LANG_TAG.'.js';
$stylesheets[] = array('file' => DOCBASE.'js/plugins/jquery.event.calendar/css/jquery.event.calendar.css', 'media' => 'all');

$stylesheets[] = array('file' => '//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css', 'media' => 'all');
$stylesheets[] = array('file' => '//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.theme.default.min.css', 'media' => 'all');
$javascripts[] = '//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/owl.carousel.min.js';

$stylesheets[] = array('file' => '//cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/3.5.5/css/star-rating.min.css', 'media' => 'all');
$javascripts[] = '//cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/3.5.5/js/star-rating.min.js';

require(getFromTemplate('common/send_comment.php', false));

require(getFromTemplate('common/header.php', false)); ?>

<article id="page">
    <?php include(getFromTemplate('common/page_header.php', false)); ?>
    
    <div id="content" class="pt20 pb30">
        
        <div id="search-page" class="mb20">
            <div class="container">
                <?php include(getFromTemplate('common/search.php', false)); ?>
            </div>
            <div class="clearfix"></div>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col-md-8 boxed mb20">
                    <div class="row mb10">
                        <div class="col-sm-8">
                            <h1 class="mb0">
                                <?php echo $offer['title']; ?>
                                <br><small><?php echo $offer['subtitle']; ?></small>
                            </h1>
                            <?php
                            $result_rating = $db->query('SELECT count(*) as count_rating, AVG(rating) as avg_rating FROM pm_comment WHERE item_type = \'offer\' AND id_item = '.$offer_id.' AND checked = 1 AND rating > 0 AND rating <= 5');
                            if($result_rating !== false && $db->last_row_count() > 0){
                                $row = $result_rating->fetch();
                                $offer_rating = $row['avg_rating'];
                                $count_rating = $row['count_rating'];
                                
                                if($offer_rating > 0 && $offer_rating <= 5){ ?>
                                
                                    <input type="hidden" class="rating pull-left" value="<?php echo $offer_rating; ?>" data-rtl="<?php echo (RTL_DIR) ? true : false; ?>" data-size="xs" readonly="true" data-default-caption="<?php echo $count_rating.' '.$texts['RATINGS']; ?>" data-show-caption="true">
                                    <?php
                                }
                            } ?>
                            <div class="clearfix"></div>
                        </div>
                        <div class="col-sm-4 text-right">
                            <div class="price text-primary">
                                <?php
                                $min_price = $offer['price'];
                                $result_rate = $db->query('SELECT MIN(price) as price FROM pm_rate WHERE id_offer = '.$offer_id);
                                if($result_rate !== false && $db->last_row_count() > 0){
                                    $row = $result_rate->fetch();
                                    $price = $row['price'];
                                    if($price > 0) $min_price = $price;
                                }
                                if($min_price > 0){
                                    echo $texts['FROM_PRICE']; ?>
                                    <span itemprop="priceRange">
                                        <?php echo formatPrice($min_price*CURRENCY_RATE); ?>
                                    </span>
                                    / <?php echo $texts['NIGHT'];
                                } ?>
                            </div>
                            <p>
                                <?php echo $texts['CAPACITY']; ?> : <i class="fas fa-fw fa-male"></i>x<?php echo $offer['max_people']; ?>
                            </p>
                        </div>
                    </div>
                    <div class="row mb10">
                        <div class="col-sm-12">
                            <?php
                            $result_facility = $db->query('SELECT * FROM pm_facility WHERE lang = '.LANG_ID.' AND id IN('.$offer['facilities'].') ORDER BY id',PDO::FETCH_ASSOC);
                            if($result_facility !== false && $db->last_row_count() > 0){
                                foreach($result_facility as $i => $row){
                                    $facility_id 	= $row['id'];
                                    $facility_name  = $row['name'];
                                    
                                    $result_facility_file = $db->query('SELECT * FROM pm_facility_file WHERE id_item = '.$facility_id.' AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1',PDO::FETCH_ASSOC);
                                    if($result_facility_file !== false && $db->last_row_count() > 0){
                                        $row = $result_facility_file->fetch();
                                        
                                        $file_id 	= $row['id'];
                                        $filename 	= $row['file'];
                                        $label	 	= $row['label'];
                                        
                                        $realpath	= SYSBASE.'medias/facility/big/'.$file_id.'/'.$filename;
                                        $thumbpath	= DOCBASE.'medias/facility/big/'.$file_id.'/'.$filename;
                                            
                                        if(is_file($realpath)){ ?>
                                            <span class="facility-icon">
                                                <img alt="<?php echo $facility_name; ?>" title="<?php echo $facility_name; ?>" src="<?php echo $thumbpath; ?>" class="tips">
                                            </span>
                                            <?php
                                        }
                                    }
                                }
                            } ?>
                        </div>
                    </div>
                    <div class="row mb10">
                        <div class="col-md-12">
                            <div class="owl-carousel owlWrapper" data-items="1" data-autoplay="true" data-dots="true" data-nav="false" data-rtl="<?php echo (RTL_DIR) ? 'true' : 'false'; ?>">
                                <?php
                                $result_offer_file = $db->query('SELECT * FROM pm_offer_file WHERE id_item = '.$offer_id.' AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank');
                                if($result_offer_file !== false){
                                    
                                    foreach($result_offer_file as $i => $row){
                                    
                                        $file_id = $row['id'];
                                        $filename = $row['file'];
                                        $label = $row['label'];
                                        
                                        $realpath = SYSBASE.'medias/offer/big/'.$file_id.'/'.$filename;
                                        $thumbpath = DOCBASE.'medias/offer/big/'.$file_id.'/'.$filename;
                                        
                                        if(is_file($realpath)){ ?>
                                            <img alt="<?php echo $label; ?>" src="<?php echo $thumbpath; ?>" class="img-responsive" style="max-height:600px;"/>
                                            <?php
                                        }
                                    }
                                } ?>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" itemprop="description">
                            <?php
                            echo $offer['descr'];
                            
                            $short_text = strtrunc(strip_tags($offer['descr']), 100);
                            $site_url = getUrl(); ?>
                           
                            <div id="twitter" data-url="<?php echo $site_url; ?>" data-text="<?php echo $short_text; ?>" data-title="Tweet"></div>
                            <div id="facebook" data-url="<?php echo $site_url; ?>" data-text="<?php echo $short_text; ?>" data-title="Like"></div>
                            <div id="googleplus" data-url="<?php echo $site_url; ?>" data-curl="<?php echo DOCBASE.'js/plugins/sharrre/sharrre.php'; ?>" data-text="<?php echo $short_text; ?>" data-title="+1"></div>
                        </div>
                    </div>
                </div>
                <aside class="col-md-4 mb20">
                    <div class="boxed">
                        <?php
                        $result_offer = $db->query('SELECT * FROM pm_offer WHERE id != '.$offer_id.' AND checked = 1 AND lang = '.LANG_ID.' ORDER BY rank', PDO::FETCH_ASSOC);
                        if($result_offer !== false && $db->last_row_count() > 0){ ?>
                            <p class="widget-title"><?php echo $texts['ALSO_DISCOVER']; ?></p>
                            
                            <?php
                            foreach($result_offer as $i => $row){
                                $id_offer 	= $row['id'];
                                $offer_title = $row['title'];
                                $offer_subtitle = $row['subtitle'];
                                $offer_alias = $row['alias'];
                                
                                $result_offer_file = $db->query('SELECT * FROM pm_offer_file WHERE id_item = '.$id_offer.' AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1',PDO::FETCH_ASSOC);
                                if($result_offer_file !== false && $db->last_row_count() > 0){
                                    $row = $result_offer_file->fetch();
                                    
                                    $file_id 	= $row['id'];
                                    $filename 	= $row['file'];
                                    $label	 	= $row['label'];
                                    
                                    $realpath	= SYSBASE.'medias/offer/big/'.$file_id.'/'.$filename;
                                    $thumbpath	= DOCBASE.'medias/offer/small/'.$file_id.'/'.$filename;
                                    $zoompath	= DOCBASE.'medias/offer/big/'.$file_id.'/'.$filename;
                                        
                                    if(is_file($realpath)){ ?>
                                        <div class="row">
                                            <div class="col-xs-3 mb20">
                                                <div class="img-container xs">
                                                    <img alt="" src="<?php echo $thumbpath; ?>">
                                                </div>
                                            </div>
                                            <div class="col-xs-9">
                                                <h3 class="mb0"><?php echo $offer_title; ?></h3>
                                                <h4 class="mb0"><?php echo $offer_subtitle; ?></h4>
                                                <a href="<?php echo DOCBASE.$page['alias'].'/'.$offer_alias; ?>" title=""><?php echo $texts['MORE_DETAILS']; ?></a>
                                            </div>
                                        </div>
                                        <?php
                                    }
                                }
                            } ?>
                            <?php
                        } ?>
                    </div>
                </aside>
                <div class="col-md-8">
                    <?php
                    $nb_comments = 0;
                    $item_type = 'offer';
                    $item_id = $offer_id;
                    $allow_comment = ALLOW_COMMENTS;
                    $allow_rating = ALLOW_RATINGS;
                    if($allow_comment == 1){
                        $result_comment = $db->query('SELECT * FROM pm_comment WHERE id_item = '.$item_id.' AND item_type = '.$db->quote($item_type).' AND checked = 1 ORDER BY add_date DESC');
                        if($result_comment !== false)
                            $nb_comments = $db->last_row_count();
                    }
                    include(getFromTemplate('common/comments.php', false)); ?>
                </div>
            </div>
        </div>
    </div>
</article>
