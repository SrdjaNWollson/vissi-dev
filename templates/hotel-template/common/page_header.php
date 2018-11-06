<?php debug_backtrace() || die ("Direct access not permitted"); ?>
<header class="page_header">
    <div class="container">
  
        <?php
        if($article_id == 0){
            $page_title = $page['title'];
            $page_subtitle = $page['subtitle'];
            $page_name = $page['name']; ?>

            <h3 class="sec-subtitle"><?php echo $page['subtitle']; ?></h3>
            <h1 class="sec-title" itemprop="name"><?php echo $page['title']; ?></h1>
            <?php
        }else{
            
            $page_name = $page_title; ?>
            
            <?php
        }
        ///*if($page_subtitle != "") echo "<p class=\"lead mb0\">".$page_subtitle."</p>"; 
        ?> 
  
    </div>
</header> 
