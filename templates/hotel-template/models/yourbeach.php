<?php
require(getFromTemplate("common/header.php", false)); ?>

<main id="page">
    
    <?php include(getFromTemplate("common/page_header.php", false)); ?>
    
    <div id="content">
            <!--teaser-->    
            <section class="teaser">
                <div class="container">
                    <div class="imgSlider">
                        <div class="imgSlider__wrapper">
                            <?php 
                            getImagesFromTable($db,'pm_page_file','page');
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
