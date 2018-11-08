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
                        <h3>Explore mediterranean jewels</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae cumque nesciunt dolorem quibusdam dignissimos. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi quisquam nam ratione ex optio quia? Eum praesentium, saepe veritatis numquam totam nisi similique debitis corporis.</p>
                    </div>
                </div>
            </section>
    </div>
</main>
