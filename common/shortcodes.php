<?php
/* Shortcode generator made by Srdjan Nezic */

function get_shortcode_from_text($db,$text){

	if(strpos($text,'[') !== FALSE && strpos($text,']') !== FALSE){
		$start = strpos($text,'[') ;
		$end = strpos($text,']');
	    //var_dump($start);
		//var_dump($end);
		$shortcode = trim(substr($text, $start + 1, $end - 1));
		//var_dump(substr($text,$start,$end));
		$textToDelete = substr($text, $start, ($end-1 + strlen($end-1)) - $start);
		//var_dump($textToDelete);
		$text = str_replace($textToDelete, '', $text);
		$parts = explode(" ", $shortcode);

		$function = $parts[0];
		unset($parts[0]);
		$newparts = array();

		if(function_exists($function)){
			foreach ($parts as $part) {
				$part_exp = explode("=",$part);
				$key = str_replace('"', '', $part_exp[0]);
				$value = str_replace('"', '', $part_exp[1]);
				$newparts[$key] = $value;
			}
			$text .= $function($db,$newparts);
		}

		get_shortcode_from_text($db,$text);
	}

	return $text;
}


function listBoxes($db,$atts,$texts)
{
    $table = 'pm_' . $atts['table'];
    $entity = $atts['table'];

    $result_room = $db->query('SELECT * FROM '.$table.' WHERE lang = '.LANG_ID.' AND checked = 1 AND home = 1 ORDER BY rank');
    if($result_room !== false){
        $nb_rooms = $db->last_row_count();
        
        $room_id = 0;
        
        $result_room_file = $db->prepare('SELECT * FROM '.$table.'_file WHERE id_item = :room_id AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1');
        $result_room_file->bindParam(':room_id',$room_id);
        
        $result_rate = $db->prepare('SELECT MIN(price) as price FROM pm_rate WHERE id_room = :room_id');
        $result_rate->bindParam(':room_id', $room_id);
    	
    	$box_class = "col-md-4";
    	$box_class = getBoxClass($nb_rooms);
        foreach($result_room as $i => $row){

            $room_id = $row['id'];
            $room_title = $row['title'];
            $room_alias = $row['title'];
            $room_subtitle = $row['subtitle'];
            $min_price = $row['price'];
            $alias = isset($pages[9]['alias']) ? $pages[9]['alias'] : null;
            $room_alias = DOCBASE.$alias.'/'.text_format($row['alias']);
            
            if($result_rate->execute() !== false && $db->last_row_count() > 0){
                $row = $result_rate->fetch();
                $price = $row['price'];
                if($price > 0) $min_price = $price;
            } ?>
            
            <article class="<?= $box_class ?> mb20" itemscope itemtype="http://schema.org/LodgingBusiness">
                <a itemprop="url" href="<?php echo $room_alias; ?>" class="moreLink">
                    <?php
                    if($result_room_file->execute() !== false && $db->last_row_count() > 0){
                        $row = $result_room_file->fetch(PDO::FETCH_ASSOC);
                        $file_id = $row['id'];
                        $filename = $row['file'];
                        $label = $row['label'];

                        $realpath = SYSBASE.'medias/'.$entity.'/small/'.$file_id.'/'.$filename;
                        $thumbpath = DOCBASE.'medias/'.$entity.'/small/'.$file_id.'/'.$filename;
                        $zoompath = DOCBASE.'medias/'.$entity.'/big/'.$file_id.'/'.$filename;
                        //var_dump($realpath);
                        if(is_file($realpath)){ ?>
                            <figure class="more-link">
                                <div class="img-container md">
                                    <img alt="<?php echo $label; ?>" src="<?php echo $thumbpath; ?>">
                                </div>
                                <div class="more-content">
                                    <h3 itemprop="name"><?php echo $room_title; ?></h3>
                                    <?php
                                    if($min_price > 0){ ?>
                                        <div class="more-descr">
                                            <div class="price">
                                                <?php echo $texts['FROM_PRICE']; ?>
                                                <span itemprop="priceRange">
                                                    <?php echo formatPrice($min_price*CURRENCY_RATE); ?>
                                                </span>
                                            </div>
                                            <small><?php echo $texts['PRICE'].' / '.$texts['NIGHT']; ?></small>
                                        </div>
                                        <?php
                                    } ?>
                                </div>
                                <div class="more-action">
                                    <div class="more-icon">
                                        <i class="fa fa-link"></i>
                                    </div>
                                </div>
                            </figure>
                            <?php
                        }
                    } ?>
                </a> 
            </article>
            <?php
        }
    } 
}

function listItemsInColumns($db, $atts, $texts){
    $table = 'pm_'.$atts['table'];
    $entity = $atts['table'];
    $columns = $atts['columns'];

    $result_room = $db->query('SELECT * FROM '.$table.' WHERE lang = '.LANG_ID.' AND home = 1 ORDER BY rank');
    $num_rows = $db->last_row_count();

    $box_class = getBoxClass($num_rows);
    $counter = 0;
    foreach ($result_room as $i => $row) {
        $name = $row['name'];
        $item_id = $row['id'];
        //var_dump($item_id);
        $result_item_file = $db->prepare('SELECT * FROM '.$table.'_file WHERE id_item = :item_id AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1');
        $result_item_file->bindParam(':item_id',$item_id);

        if($counter % $columns == 0) {
            if($counter > 0) { echo "</ul></div>"; }
            ?> <div class="<?= $box_class; ?>"><ul> <?php
        }
        ?>       
        <li><?php 
        //var_dump($result_item_file->execute()); 
        if($result_item_file->execute()){
            $file = $result_item_file->fetch(PDO::FETCH_ASSOC);
            $file_id = $file['id'];
            $filename = $file['file'];
            $label = $file['label'];

            $realpath = SYSBASE.'medias/'.$entity.'/small/'.$file_id.'/'.$filename;
            $zoompath = DOCBASE.'medias/'.$entity.'/big/'.$file_id.'/'.$filename;
            ?>
            <img alt="<?= $label; ?>" src="<?php echo $zoompath; ?>" width="30" />
            <?php
        }
        echo '<span>'.$name.'</span>';  

        ?></li>        
        <?php
        $counter++;
    }
    echo "</ul>";
} 

function listArticles($db, $page_id, $pages, $texts){ 
   $result_article = $db->query('SELECT * FROM pm_article WHERE (id_page = '.$page_id.' OR home = 1) AND checked = 1 AND (publish_date IS NULL || publish_date <= '.time().') AND (unpublish_date IS NULL || unpublish_date > '.time().') AND lang = '.LANG_ID.' ORDER BY rank');

    if($result_article !== false){
        $nb_articles = $db->last_row_count();
        
        if($nb_articles > 0){
            $article_id = 0;
            $result_article_file = $db->prepare('SELECT * FROM pm_article_file WHERE id_item = :article_id AND checked = 1 AND lang = '.DEFAULT_LANG.' AND type = \'image\' AND file != \'\' ORDER BY rank LIMIT 1');
            $result_article_file->bindParam(':article_id', $article_id);
            //var_dump($result_article);
            foreach($result_article as $i => $row){
                $article_id = $row['id'];
                $article_title = $row['title'];
                $article_alias = $row['alias'];
                $char_limit = ($i == 0) ? 1200 : 500;
                $article_text = strtrunc(strip_tags($row['text'], '<p><br>'), $char_limit, true, '');
                $article_page = $row['id_page'];
                
                
                $article_alias = DOCBASE.$pages[$article_page]['alias'].'/'.text_format($article_alias); ?>
                
                <article id="article-<?php echo $article_id; ?>" class="col-sm-4" itemscope itemtype="http://schema.org/Article">
                    <div class="row">
                        <a itemprop="url" href="<?php echo $article_alias; ?>" class="moreLink">
                            <div class="col-sm-12 mb20">
                                <?php
                                if($result_article_file->execute() !== false && $db->last_row_count() == 1){
                                    $row = $result_article_file->fetch(PDO::FETCH_ASSOC);
                                    
                                    $file_id = $row['id'];
                                    $filename = $row['file'];
                                    $label = $row['label'];
                                    
                                    $realpath = SYSBASE.'medias/article/big/'.$file_id.'/'.$filename;
                                    $thumbpath = DOCBASE.'medias/article/big/'.$file_id.'/'.$filename;
                                    $zoompath = DOCBASE.'medias/article/big/'.$file_id.'/'.$filename;
                                    
                                    if(is_file($realpath)){
                                        $s = getimagesize($realpath); ?>
                                        <figure class="more-link">
                                            <div class="img-container lazyload xl">
                                                <img alt="<?php echo $label; ?>" data-src="<?php echo $thumbpath; ?>" itemprop="photo" width="<?php echo $s[0]; ?>" height="<?php echo $s[1]; ?>">
                                            </div>
                                            <div class="more-action">
                                                <div class="more-icon">
                                                    <i class="fa fa-link"></i>
                                                </div>
                                            </div>
                                        </figure>
                                        <?php
                                    }
                                } ?>
                            </div>
                            <div class="col-sm-12">
                                <div class="text-overflow">
                                    <h3 itemprop="name"><?php echo $article_title; ?></h3>
                                    <?php echo $article_text; ?>
                                    <div class="more-btn">
                                        <span class="btn btn-primary"><?php echo $texts['READMORE']; ?></span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </article>
                <?php
            }
        }
    } 
}

?>