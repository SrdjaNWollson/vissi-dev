<?php
if($article_alias == '') err404();

$result = $db->query('SELECT * FROM pm_room WHERE checked = 1 AND lang = '.LANG_ID.' AND alias = '.$db->quote($article_alias));
if($result !== false && $db->last_row_count() > 0){
    
    $room = $result->fetch(PDO::FETCH_ASSOC);
    
    $room_id = $room['id'];
    $article_id = $room_id;
    $title_tag = $room['title'].' - '.$title_tag;
    $page_title = $room['title'];
    $page_subtitle = '';
    $page_alias = $pages[$page_id]['alias'].'/'.text_format($room['alias']);
    
    $result_room_file = $db->query('SELECT * FROM pm_room_file WHERE id_item = '.$room_id.' AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1');
    if($result_room_file !== false && $db->last_row_count() > 0){
        
        $row = $result_room_file->fetch();
        
        $file_id = $row['id'];
        $filename = $row['file'];
        
        if(is_file(SYSBASE.'medias/room/medium/'.$file_id.'/'.$filename))
            $page_img = getUrl(true).DOCBASE.'medias/room/medium/'.$file_id.'/'.$filename;
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



require(getFromTemplate('common/send_comment.php', false));

require(getFromTemplate('common/header.php', false)); ?>

<main id="page" class="pg-single-room">
    <?php include(getFromTemplate('common/page_header.php', false)); ?>
    
    <div id="content">
        
        <div class="container">
            <div class="row">
                <div class="col-md-8 boxed mb20">
                    <div class="row mb10">
                        <div class="col-sm-8">
                            <h1 class="mb0">
                                <?php echo $room['title']; ?>
                                <br><small><?php echo $room['subtitle']; ?></small>
                            </h1>
                            <?php
                            $result_rating = $db->query('SELECT count(*) as count_rating, AVG(rating) as avg_rating FROM pm_comment WHERE item_type = \'room\' AND id_item = '.$room_id.' AND checked = 1 AND rating > 0 AND rating <= 5');
                            if($result_rating !== false && $db->last_row_count() > 0){
                                $row = $result_rating->fetch();
                                $room_rating = $row['avg_rating'];
                                $count_rating = $row['count_rating'];
                                
                                if($room_rating > 0 && $room_rating <= 5){ ?>
                                
                                    <input type="hidden" class="rating pull-left" value="<?php echo $room_rating; ?>" data-rtl="<?php echo (RTL_DIR) ? true : false; ?>" data-size="xs" readonly="true" data-default-caption="<?php echo $count_rating.' '.$texts['RATINGS']; ?>" data-show-caption="true">
                                    <?php
                                }
                            } ?>
                            <div class="clearfix"></div>
                        </div>
                        
                    </div>
                    <div class="row mb10">
                        <div class="col-sm-12">
                            <?php
                            $result_facility = $db->query('SELECT * FROM pm_facility WHERE lang = '.LANG_ID.' AND id IN('.$room['facilities'].') ORDER BY id',PDO::FETCH_ASSOC);
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
                                $result_room_file = $db->query('SELECT * FROM pm_room_file WHERE id_item = '.$room_id.' AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank');
                                if($result_room_file !== false){
                                    
                                    foreach($result_room_file as $i => $row){
                                    
                                        $file_id = $row['id'];
                                        $filename = $row['file'];
                                        $label = $row['label'];
                                        
                                        $realpath = SYSBASE.'medias/room/big/'.$file_id.'/'.$filename;
                                        $thumbpath = DOCBASE.'medias/room/big/'.$file_id.'/'.$filename;
                                        
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
                            echo $room['descr'];
                            
                            $short_text = strtrunc(strip_tags($room['descr']), 100);
                            $site_url = getUrl(); ?>
                           
                            <div id="twitter" data-url="<?php echo $site_url; ?>" data-text="<?php echo $short_text; ?>" data-title="Tweet"></div>
                            <div id="facebook" data-url="<?php echo $site_url; ?>" data-text="<?php echo $short_text; ?>" data-title="Like"></div>
                            <div id="googleplus" data-url="<?php echo $site_url; ?>" data-curl="<?php echo DOCBASE.'js/plugins/sharrre/sharrre.php'; ?>" data-text="<?php echo $short_text; ?>" data-title="+1"></div>
                        </div>
                    </div>
                </div>
               
                    
            </div>
        </div>
    </div>
</main>
