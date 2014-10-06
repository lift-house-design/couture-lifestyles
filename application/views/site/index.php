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
             <?= $yield_topbar ?>

		<!--img src="/assets/img/pedal.png" alt="Guitar Pedal" class="w100pc"/-->
		
		<div class="content-wrap">
		   <? // =$yield_content_home ?>
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