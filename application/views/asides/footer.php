
<div class="spacer100"></div>
<div id="footer" class="pad20 hidden">
	<a class="w100pc" href="/#home" title="<?= $meta['site_name'] ?>">
		<?= $meta['site_name'] ?>
	</a>
	<hr class="w100pc"/>
	<div class="w100pc hidden">
		<a class="w25pc" href="/#about" title="<?= $meta['site_name'] ?>">About</a>
		<a class="w25pc" href="/#blog" title="<?= $meta['site_name'] ?>">News</a>
		<a class="w25pc" href="/#contact" title="<?= $meta['site_name'] ?>">Contact</a>
		<!--a class="w25pc" href="/contact" title="Contact <?= $meta['site_name'] ?>">Contact</a-->
		<? if($logged_in){ ?>
			<a class="w25pc" href="/authentication/log_out">Logout</a>
		<? }else{ ?>
			<a class="w25pc" href="/authentication/log_in">Login</a>
		<? } ?>
	</div>
	<? if(!empty($has_social_media)){ ?>
		<hr/>
		<div class="w100pc align-center hidden">
			<? foreach($social_media as $s){ ?>
				<? if(empty($s['value'])) continue; ?>
				<a target="_blank" href="<?= $s['value'] ?>" title="<?= $site_name . ' ' . $s['label'] ?>">
					<img src="/assets/img/<?= $s['name'] ?>.png" alt="<?= $s['label'] ?>"/>
				</a>
			<? } ?>
		</div>
	<? } ?>
</div>