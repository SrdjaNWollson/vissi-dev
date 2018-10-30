<?php
debug_backtrace() || die ('Direct access not permitted');

$max_adults_search = 30;
$max_children_search = 10;

if(!isset($_SESSION['num_adults']))
    $_SESSION['num_adults'] = (isset($_SESSION['book']['adults'])) ? $_SESSION['book']['adults'] : 1;
if(!isset($_SESSION['num_children']))
    $_SESSION['num_children'] = (isset($_SESSION['book']['children'])) ? $_SESSION['book']['children'] : 0;

$from_date = (isset($_SESSION['from_date'])) ? $_SESSION['from_date'] : date('j/m/Y');
$to_date = (isset($_SESSION['to_date'])) ? $_SESSION['to_date'] : date('j/m/Y', time()+86400); ?>

<form action="<?php echo DOCBASE.$sys_pages['booking']['alias']; ?>" method="post" class="booking-search">
    <?php
    if(isset($hotel_id)){ ?>
        <input type="hidden" name="hotel_id" value="<?php echo $hotel_id; ?>">
        <?php
    } ?>
    <div class="row">

        <div class="form-group form-date">
            <label class="sr-only" for="from"></label>
            <div class="input-group">
                <div class="input-group-addon"> <?php echo $texts['ARRIVAL_DATE']; ?></div>
                <input type="text" class="form-control" id="from_picker" name="from_date" value="<?php echo $from_date; ?>" autocomplete="off">
                <div id="fromDate-holder"></div>
                <i class="icon-calendar"></i>
            </div>
            <div class="field-notice" rel="from_date"></div>
        </div>


        <div class="form-group form-date">
            <div class="input-group">
                <div class="input-group-addon"> <?php echo $texts['DEPARTURE_DATE']; ?></div>
                <input type="text" class="form-control" id="to_picker" name="to_date" value="<?php echo $to_date; ?>" autocomplete="off">
                <div id="toDate-holder"></div>
                <i class="icon-calendar"></i>
            </div>
            <div class="field-notice" rel="to_date"></div>
        </div>


        <div class="form-group form-drop">
            <div class="input-group">
                <div class="input-group-addon"><?php echo $texts['PERSONS']; ?></div>
                <select name="num_adults" class="selectpicker form-control">
                    <?php
                    for($i = 1; $i <= $max_adults_search; $i++){
                        $select = ($_SESSION['num_adults'] == $i) ? ' selected="selected"' : '';
                        echo '<option value="'.$i.'"'.$select.'>'.$i.'</option>';
                    } ?>
                </select>
            </div>
            <i class="icon-arrow-down"></i>
        </div>


        <div class="form-group form-drop">
            <div class="input-group">
                <div class="input-group-addon"> <?php echo $texts['CHILDREN']; ?></div>
                <select name="num_children" class="selectpicker form-control">
                    <?php
                    for($i = 0; $i <= $max_children_search; $i++){
                        $select = ($_SESSION['num_children'] == $i) ? ' selected="selected"' : '';
                        echo '<option value="'.$i.'"'.$select.'>'.$i.'</option>';
                    } ?>
                </select>
            </div>
            <i class="icon-arrow-down"></i>
        </div>

   
        <div class="form-group form-code">
            <label class="sr-only" for="from"></label>
            <div class="input-group">
                 <div class="input-group-addon"> <?php echo $texts['PROMO_CODE']; ?></div>
                <input type="text" class="form-control" placeholder="000000">
            </div>
        </div>



        <div class="form-group form-btn">
            <button class="btn btn-block btn-primary" type="submit" name="check_availabilities"><?php echo $texts['BOOK_NOW']; ?></button>
        </div>

        <div class="cancel-reservation">
            <a href="#dummy"><i class="icon-pen"></i>Change / cancel reservation</a>
        </div>

    </div>
</form>
