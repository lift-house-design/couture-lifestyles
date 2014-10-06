<style>
#index-wrap {
	position: relative;
}
#background {
	background-repeat: none;
	position: relative;
} 
</style>
<script>
	$(function(){
/*		var viewport_height=$(window).innerHeight(),
			nav_height=$('#topbar').outerHeight(),
			wrapper_top=viewport_height-nav_height,
			half_wrap_top=Math.ceil(wrapper_top/2);

		$('#index-wrap').css('margin-top', '-'+half_wrap_top+'px');*/
		// console.log(half_wrap_top);
	});
</script>
<div id="background">
	<img id="signature" src="/assets/img/sig.png"/>
</div>
<div id="index-wrap">
	<?= $yield_topbar ?>
	<div class="content-wrap">
		<div class="about">
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