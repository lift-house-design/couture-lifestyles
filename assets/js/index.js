var active_slide = false;
var scale = 5;
$(function(){
	var s = skrollr.init({
		smoothScrolling: true,
		smoothScrollingDuration: 1000,
		scale: scale,
		easing: {
			sin: function(p) {
				return (Math.sin(p * Math.PI * 2 - Math.PI/2) + 1) / 2;
			},
			cos: function(p) {
				return (Math.cos(p * Math.PI * 2 - Math.PI/2) + 1) / 2;
			},
			random: Math.random,
        	inverted: function(p) {
            	return 1 - p;
        	},
        	tree: function(p) {
            	return p/1.2+Math.pow(p *2,2)+Math.pow(p *2,6)+Math.pow(p *2,10);
            	//return p+Math.pow(p *2,10);
        	}
		},
		render: function(data) {
			// set active nav
			var top = $(window).scrollTop();
			if(top < 500)
				top = 0;
			else if(top < 1000)
				top = 4;
			else if(top < 1500)
				top = 3;
			else top = 2;
			if($('#topbar a:nth-child('+top+')').hasClass('active'))
				return;

			$('#topbar a').removeClass('active');
			if(top)
				$('#topbar a:nth-child('+top+')').addClass('active');
		}
	});
	$(window).resize(function(){
		set_content_bottom();
		s.refresh();
	});
	setTimeout(function(){
		set_content_bottom();
		s.refresh();
	},1000);
});

function skrollTo(identifier)
{
	if(identifier==='#home')
		scrollToTop(0);
	if(identifier==='#about')
		scrollToTop(500);
	if(identifier==='#blog')
		scrollToTop(1000);
	if(identifier==='#contact')
		scrollToTop(1500);
}

function set_content_bottom()
{
	$('#index-wrap').css('margin-top',(window.innerHeight));
	var margin = ($('#index-wrap').height() - window.innerHeight);
	//var topblog = $('#blog').position().top;
	// var topabout = $('#about').position().top;
	//var topcontact = $('#contact').position().top;
	//var topcontact = Math.min(topcontact,margin+74);

	$('#index-wrap').attr('data-0',"top:"+(window.innerHeight-74)+"px;left:0px;margin-top:0px");
//	$('#index-wrap').attr('data-170','top:-'+topblog+'px;margin-top:74px');
//	$('#index-wrap').attr('data-200','top:-'+topblog+'px;margin-top:74px');
//	$('#index-wrap').attr('data-270','top:-'+topcontact+'px;margin-top:74px');
//	$('#index-wrap').attr('data-300','top:-'+topcontact+'px;margin-top:74px');
	$('#index-wrap').attr('data-370','top:-'+margin+'px;margin-top:0px');
	$('#index-wrap').attr('data-400','top:-'+margin+'px;margin-top:0px');
}

function to_slide(i)
{
	slide = i*2-1;

	if(slide == 1)
	{
		scroll_top = 50 * scale;
		time = 500;
	}
	else
	{ 
		scroll_top = (50  + i * 300) * scale; 
		time = 500 * Math.sqrt(Math.abs(slide-active_slide));
	}

	scrollToTop(scroll_top, time);
}