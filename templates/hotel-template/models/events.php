<?php
require(getFromTemplate("common/header.php", false)); ?>

<main id="page">
    
    <?php include(getFromTemplate("common/page_header.php", false)); ?>
    
    <div id="content">
            <!--teaser-->    
            <section class="teaser">
                <div class="container">
                    <?php 
                    $where = "WHERE lang = " . LANG_ID . " AND type = 'image'";
                    $num_rows = numRows($db, 'pm_activity_file', $where );
                    $bulletClass = "";
                    if($num_rows <= 1){
                        $bulletClass = "oneImg";
                    }
                    ?>
                    <div class="imgSlider <?= $bulletClass ?>">
                        <div class="imgSlider__wrapper s-play">
                            <?php 
                            getImagesFromTable($db,'pm_activity_file','activity');
                             ?>
                        </div>
                    </div>
                    <div class="teaser__content">
                        <h3><?= $page['intro']; ?></h3>
                        <?= $page['text']; ?>
                    </div>
                </div>
            </section>
    </div>
</main>
