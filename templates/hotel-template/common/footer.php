<?php debug_backtrace() || die ("Direct access not permitted"); 
$footer_cols = $appearance['footer_columns'];

$boxClass = getBoxClass($footer_cols);
$counter = 0;
?>
<footer>
    <section id="booknow" class="third-section">
        <div id="search-home" class="container">
            <?php include(getFromTemplate('common/search.php', false));
             ?>
        </div>
    </section>
    <section id="mainFooter">
        <div class="container" id="footer">
            <div class="row">
            <?php while($counter < $footer_cols) : $counter++; ?>
                <div class="<?= $boxClass ?>">
                    <?php displayWidgets("footer_col_".$counter, $page_id); ?>
                </div>
            <?php endwhile; ?>
            </div>
        </div>
    </section>
    <div id="footerRights">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>
                        &copy; <?php echo date("Y"); ?>
                        <?php echo OWNER." ".$texts['ALL_RIGHTS_RESERVED']; ?>
                    </p>
                </div>
                <div class="col-md-6">
                    <p class="text-right">
                        <a href="<?php echo DOCBASE; ?>feed/" target="_blank" title="<?php echo $texts['RSS_FEED']; ?>"><i class="fas fa-fw fa-rss"></i></a>
                        <?php
                        foreach($menus['footer'] as $nav_id => $nav){ ?>
                            <a href="<?php echo $nav['href']; ?>" title="<?php echo $nav['title']; ?>"><?php echo $nav['name']; ?></a>
                            &nbsp;&nbsp;
                            <?php
                        } ?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>
<a href="#" id="toTop"><i class="fas fa-fw fa-angle-up"></i></a>
</body>
</html>
