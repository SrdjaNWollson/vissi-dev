<?php
/**
 * Script called (Ajax) on scroll or click
 * loads more content with Lazy Loader
 */
$html = '';
if(!isset($lz_offset)) $lz_offset = 1;
if(!isset($lz_limit)) $lz_limit = 30;
if(isset($_POST['ajax']) && $_POST['ajax'] == 1){
    
    require_once('../../../common/lib.php');
    require_once('../../../common/define.php');

    if(isset($_POST['offset']) && is_numeric($_POST['offset'])
    && isset($_POST['limit']) && is_numeric($_POST['limit'])
    && isset($_POST['page_id']) && is_numeric($_POST['page_id'])
    && isset($_POST['page_alias'])){
        $page_id = $_POST['page_id'];
        $lz_offset = $_POST['offset'];
        $lz_limit =	$_POST['limit'];
        $page_alias = $_POST['page_alias'];
    }
}
if(isset($db) && $db !== false){
    
    if(isset($page_id) && isset($pages[$page_id]['alias'])) $page_alias = $pages[$page_id]['alias'];

    $result_offer = $db->query('SELECT * FROM pm_offer WHERE lang = '.LANG_ID.' AND checked = 1 ORDER BY rank LIMIT '.($lz_offset-1)*$lz_limit.', '.$lz_limit);

    $offer_id = 0;

    $result_offer_file = $db->prepare('SELECT * FROM pm_offer_file WHERE id_item = :offer_id AND checked = 1 AND lang = '.LANG_ID.' AND type = \'image\' AND file != \'\' ORDER BY rank');
    $result_offer_file->bindParam(':offer_id', $offer_id);

    $result_rate = $db->prepare('SELECT MIN(price) as price FROM pm_rate WHERE id_offer = :id_offer');
    $result_rate->bindParam(':id_offer', $offer_id);

    $offer_pos = "left-side";

    $current = 0;

    foreach($result_offer as $i => $row){
                                
        $offer_id = $row['id'];
        $offer_title = $row['title'];
        $offer_subtitle = $row['subtitle'];
        $offer_price = $row['price'];
        $offer_alias = $row['alias'];
        
        $offer_alias = DOCBASE.$page_alias.'/'.text_format($offer_alias);
        
        $html .= '
        <article>
            <div class="isotopeInner">
                <a itemprop="url" href="'.$offer_alias.'">';
                    
                    if($result_offer_file->execute() !== false && $db->last_row_count() > 0){
                        $html .= "<div class='rooms-slider'>";
                        foreach($result_offer_file->fetchAll(PDO::FETCH_ASSOC) as $row){
                            //var_dump('test');
                            $file_id = $row['id']; 
                            $filename = $row['file'];
                            $label = $row['label'];
                            
                            $realpath = SYSBASE.'medias/offer/medium/'.$file_id.'/'.$filename;
                            $thumbpath = DOCBASE.'medias/offer/medium/'.$file_id.'/'.$filename;
                            $zoompath = DOCBASE.'medias/offer/big/'.$file_id.'/'.$filename;
                            
                            if(is_file($realpath)){
                                $html .= '
                                <figure class="more-link img-container md">
                                    <img alt="'.$label.'" src="'.$thumbpath.'">
                                    <span class="more-action">
                                        <span class="more-icon"><i class="fa fa-link"></i></span>
                                    </span>
                                </figure>';
                            }
                        }
                        $html .= "</div>";
                    }
                    $html .= '
                    <div class="isotopeContent">
                        <h3 itemprop="name">'.$offer_title.'</h3>
                        <h4>'.$offer_subtitle.'</h4>';
                        $min_price = $offer_price;
                        if($result_rate->execute() !== false && $db->last_row_count() > 0){
                            $row = $result_rate->fetch();
                            $price = $row['price'];
                            if($price > 0) $min_price = $price;
                        }
                        $html .= '
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="price text-primary">
                                    '.$texts['FROM_PRICE'].'
                                    <span itemprop="priceRange">
                                        '.formatPrice($min_price*CURRENCY_RATE).'
                                    </span>
                                </div>
                                <div class="text-muted">'.$texts['PRICE'].' / '.$texts['NIGHT'].'</div>
                            </div>
                            <div class="col-xs-6">
                                <span class="btn btn-green">'.$texts['BOOK_NOW'].'</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </article>';
    }
    if(isset($_POST['ajax']) && $_POST['ajax'] == 1)
        echo json_encode(array('html' => $html));
    else
        echo $html;
}
