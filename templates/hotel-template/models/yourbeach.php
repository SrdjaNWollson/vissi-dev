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
</main>
