<div id="gallery" class="content-wrap2 gallery">
   <?php foreach ($images as $key => $img) { ?>
                        <a class="group1" href="<?php echo base_url() . $dir['original'] . $img['original']; ?>" >
                            <img class="thumb" name="thumb" id="thumb_<?php echo $key; ?>" src="<?php echo base_url() . $dir['thumb'] . $img['thumb']; ?>"/>
                        </a>
            <?php } ?>
</div>