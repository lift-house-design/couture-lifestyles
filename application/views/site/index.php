<style>

</style>
<div id="skrollr-body">
</div>


<div id="background" 
	data-0="bottom:00%;left:0%"
	data-100="bottom:50%;left:0%">
	<img id="signature" src="/assets/img/sig.png"/>
</div>

<div id="index-wrap"
	data-0="top:100%;left:0px;margin-top:0px"
	data-70="top:0px;left:0px;margin-top:74px;"
	data-100="top:0px;left:0px;margin-top:74px;">

	<div id="about">
		<!--img src="/assets/img/pedal.png" alt="Guitar Pedal" class="w100pc"/-->
		<?= $yield_content_home ?>
		<div class="content-wrap">
			<?= $content_about ?>
		</div>
	</div>

	<div id="blog">
		<img src="/assets/img/pedals.png" alt="Guitar Pedals" class="w100pc"/>
		<div class="content-wrap">
			<h2 class="align-center"><b>NEWS AND UPCOMING EVENTS</b></h2>
			<? if(empty($blogs)){ ?>
				<p>Coming Soon..</p>
			<? }else{ ?>
				<? foreach($blogs as $b){ ?>
					<h3>
						<?= $b['name'] ?> 
						<span class="time"><?= date('Y - m - d', strtotime($b['time'])) ?></span>
					</h3>
					<div class="w100pc"></div>
					<div>
						<?= $b['content'] ?>
					</div>
				<? } ?>
				<a href="/blog" title="JMV Blog" class="news-link">
					More News and Events &rarr;
				</a>
				<div class="spacer20"></div>
			<? } ?>
		</div>
	</div>

	<div  id="contact">
		<img src="/assets/img/Cord.png" alt="Guitar Pedal Cord" class="w100pc"/>
		<div class="content-wrap">
			<?= $yield_contact ?>
		</div>
		<div class="spacer20"></div>
	</div>
	<?= $yield_footer ?>
</div>

<?= $yield_topbar ?>

<script>
$(function(){
	<? if(!empty($scroll_to)){ ?>
		setTimeout(
			function(){skrollTo('<?= $scroll_to ?>');},
			500
		);
	<? } ?>
	if(window.location.hash)
		setTimeout(
			function(){skrollTo(window.location.hash);},
			500
		);
});
</script>