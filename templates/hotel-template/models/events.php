<?php
require(getFromTemplate("common/header.php", false)); ?>

<main id="page">
    
    <?php include(getFromTemplate("common/page_header.php", false)); ?>
    
    <div id="content">
            <!--teaser-->    
            <section class="teaser">
                <div class="container">
                    <div class="imgSlider">
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
