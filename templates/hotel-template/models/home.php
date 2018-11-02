<?php
/* ==============================================
 * CSS AND JAVASCRIPT USED IN THIS MODEL
 * ==============================================
 */

$stylesheets[] = array('file' => DOCBASE.'js/plugins/royalslider/royalslider.css', 'media' => 'all');
$stylesheets[] = array('file' => DOCBASE.'js/plugins/royalslider/skins/minimal-white/rs-minimal-white.css', 'media' => 'all');
$javascripts[] = DOCBASE.'js/plugins/royalslider/jquery.royalslider.min.js';

require(getFromTemplate('common/header.php', false));

$arrowClass = "bottomArrow";
if($appearance['arrow_position'] == 1){
	$arrowClass = "centerArrow";
}

$slide_id = 0;
$result_slide_file = $db->prepare('SELECT * FROM pm_slide_file WHERE id_item = :slide_id AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1');
$result_slide_file->bindParam('slide_id', $slide_id);

$result_slide = $db->query('SELECT * FROM pm_slide WHERE id_page = '.$page_id.' AND checked = 1 AND lang = '.LANG_ID.' ORDER BY rank', PDO::FETCH_ASSOC);
if($result_slide !== false){
	$nb_slides = $db->last_row_count();
	if($nb_slides > 0){ ?>
        <?php if($appearance['booking_search_position'] == 1 || $appearance['booking_search_position'] == 3) : ?>
        <div id="search-home-wrapper">
            <div id="search-home" class="container">
                <?php include(getFromTemplate('common/search.php', false)); ?>
            </div>
        </div>
		<?php endif; ?>
		<div id="sliderContainer">
            
            <div class="royalSlider <?= $arrowClass; ?> rsMinW fullSized clearfix">
                <?php
                foreach($result_slide as $i => $row){
                    $slide_id = $row['id'];
                    $slide_legend = $row['legend'];
                    $url_video = $row['url'];
                    $id_page = $row['id_page'];
                    
                    $result_slide_file->execute();
                    
                    if($result_slide_file !== false && $db->last_row_count() > 0){
                        $row = $result_slide_file->fetch();
                        
                        $file_id = $row['id'];
                        $filename = $row['file'];
                        $label = $row['label'];
                        
                        $realpath = SYSBASE.'medias/slide/big/'.$file_id.'/'.$filename;
                        $thumbpath = DOCBASE.'medias/slide/small/'.$file_id.'/'.$filename;
                        $zoompath = DOCBASE.'medias/slide/big/'.$file_id.'/'.$filename;
                            
                        if(is_file($realpath)){ ?>
                        
                            <div class="rsContent">
                                <picture>
                                  <source media="(min-width: 650px)" srcset="<?= $zoompath; ?>">
                                  <source media="(min-width: 465px)" srcset="<?= $zoompath; ?>">
                                  <img src="<?= $zoompath; ?>" alt="Flowers" alt=""<?php if($url_video != '') echo ' data-rsVideo="'.$url_video.'"'; ?>>
                                </picture>
                                <?php
                                if($slide_legend != ''){ ?>
                                    <div class="infoBlock" data-fade-effect="" data-move-offset="10" data-move-effect="bottom" data-speed="200">
                                        <?php echo $slide_legend; ?>
                                    </div>
                                    <?php
                                } ?>
                            </div>
                            <?php
                        }
                    }
                } ?>
            </div>
        <?php if($appearance['booking_search_position'] == 2 || $appearance == NULL)  : ?>
        <div id="search-home-wrapper">
            <div id="search-home" class="container">
                <?php include(getFromTemplate('common/search.php', false)); ?>
            </div>
        </div>
        <?php endif; ?>
		</div>
		<?php
	}
} ?>
<content id="content" class="pt20 pb30">
<!-- rooms -->
<section id="rooms" class="prim-section">
    <div class="container">
        <h4 class="sec-subtitle">a new vision of comfort</h4>
        <h2 class="sec-title">Our Rooms</h2>
    </div>
    <!-- rooms slider -->
    <div class="content-slider-wrapper">    
        <div class="rooms-slider content-slider">   
            <?php contentSlider($db,array('table'=>'room','section-type'=>'1'),$texts); ?>
        </div>
        <span class="icon-left-arrow slider-nav"></span>
        <span class="icon-right-arrow slider-nav"></span>
    </div> 
</section>
<!-- offers --> 
<section id="offers" class="sec-section">
    <div class="container">
        <h4 class="sec-subtitle">taste of mediterranean</h4>
        <h2 class="sec-title">Special Offers</h2>
    </div>
    <div class="content-slider-wrapper">
        <div class="offers-slider content-slider">
            <?php contentSlider($db,array('table'=>'offer','section-type'=>'2'),$texts); ?> 
        </div>
        <span class="icon-left-arrow slider-nav"></span>
        <span class="icon-right-arrow slider-nav"></span>
    </div>
</section>
<!-- link to all offers -->
<section class="sec-link">
    <div class="container">
        <a href="#dummy">See all offers <i class="icon-right-arrow"></i></a>
    </div>
</section>
<!-- facilitys -->
<section id="facility" class="prim-section">
    <div class="container">
        <h4 class="sec-subtitle">why choose our hotel</h4>
        <h2 class="sec-title">AMENITIES HIGHLIGHTS</h2>
        <div class="facility__items">
            <?php listItemsInColumns($db, array('table'=>'facility','columns'=>3), $texts); ?>
        </div>
    </div>
</section> 
<!-- location -->
<section id="location" class="sec-section">
    <div class="container">
        <?php
        $location_text = ""; ?>
        <script>
            var locations = [
                <?php
                $result_location = $db->query("SELECT * FROM pm_location WHERE checked = 1 AND pages REGEXP '(^|,)".$page_id."(,|$)'");
                if($result_location !== false){
                    $nb_locations = $db->last_row_count();
                    foreach($result_location as $i => $row){
                        $location_name = $row['name'];
                        $location_address = $row['address'];
                        $location_lat = $row['lat'];
                        $location_lng = $row['lng'];
                        $location_text = $row['text'];

                        echo "['".addslashes($location_name)."', '".addslashes($location_address)."', '".$location_lat."', '".$location_lng."']";
                        if($i+1 < $nb_locations) echo ',\n';
                    }
                } ?>
            ];
        </script>
        <div class="location__info">
            <h4>Experience luxary in the city centre</h4>
            <h3>Best location</h3>

            <p><?= $location_text; ?> </p>
        </div>
        <div class="location__map">
            <div id="mapWrapper" data-marker="<?php echo getFromTemplate('images/marker.png'); ?>"></div>
        </div>
    </div>
</section>
<!-- testimonials -->
<section id="testimonial">
    <div class="quotes-sign">
        <img src="/vissi-dev/templates/hotel-template/images/quotes-sign.png" alt="">
    </div>
    <div class="container">
        <h3 class="sec-subtitle">COMMENTS FROM TRAVEL EXPERTS</h3>
        <div class="testimonial-slider">
            <?php listArticles($db,$page_id,$pages,$texts); ?>
        </div>
    </div>
</section>

</content>
