<style>
#index-wrap {
	position: relative;
}
#background {
	background-repeat: none;
	position: relative;
} 
</style>
<div id="background">
	<img id="signature" src="/assets/img/sig.png"/>
</div>
<div id="index-wrap">
	<?= $yield_topbar ?>
	<div class="content-wrap">
		<div id="homepage" class="about">
			<?= $content_about ?>
		</div>
	</div>
	<?= $yield_footer ?>
</div>
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