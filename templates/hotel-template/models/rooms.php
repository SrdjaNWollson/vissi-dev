<?php
$stylesheets[] = array("file" => DOCBASE."js/plugins/isotope/css/style.css", "media" => "all");
$javascripts[] = DOCBASE."js/plugins/isotope/jquery.isotope.min.js";
$javascripts[] = DOCBASE."js/plugins/isotope/jquery.isotope.sloppy-masonry.min.js";


$stylesheets[] = array("file" => DOCBASE."js/plugins/lazyloader/lazyloader.css", "media" => "all");
$javascripts[] = DOCBASE."js/plugins/lazyloader/lazyloader.js";

require(getFromTemplate("common/header.php", false)); ?>

<main id="page" class="pg-rooms-suites">
    
    <?php include(getFromTemplate("common/page_header.php", false)); ?>
    
    <div id="content">
            <!--teaser-->    
            <section class="teaser">
                <div class="container">
                    <div class="imgSlider">
                        <div class="imgSlider__wrapper">
                            <?php getImagesFromTable($db,'pm_room_file','room'); ?>
                        </div>
                    </div>
                    <div class="teaser__content">
                        <h3>Our rooms</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae cumque nesciunt dolorem quibusdam dignissimos.</p>
                    </div>
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
            <!--room list--> 
            <section class="teaser-list">
                <div class="container">
                    <?php
                    $lz_offset = 1;
                    $lz_limit = 9;
                    $lz_pages = 0;
                    $num_records = 0;
                    $result = $db->query("SELECT count(*) FROM pm_room WHERE checked = 1 AND lang = ".LANG_ID);
                    if($result !== false){
                        $num_records = $result->fetchColumn(0);
                        $lz_pages = ceil($num_records/$lz_limit);
                    }
                    if($num_records > 0){ ?>
     
                        <?php include(getFromTemplate("common/get_rooms.php", false)); ?>
             
                        <?php
                    } ?>
                </div>
            </section>

    </div>
</main>
