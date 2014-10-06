var active_slide = false;
var scale = 5;
$(function(){
	var viewport_height=$(window).innerHeight(),
		nav_height=$('#topbar').outerHeight(),
		wrapper_top=viewport_height-nav_height,
		half_wrap_top=Math.ceil(wrapper_top/2);

	var index_obj={},
		bg_obj={};

	index_obj['data-start']='margin-top:-'+half_wrap_top+'px';
	index_obj['data-end']='margin-top:-'+$('#background').height()+'px';

	bg_obj['data-start']='top: 0px';
	bg_obj['data-end']='top: -275px';

	$('#index-wrap')
		.attr(index_obj)
		.css('margin-top', half_wrap_top+'px');
	$('#background')
		.attr(bg_obj);

	// var new_h=$('#background').height()-76;
	// $('#background').css('height',new_h+'px');

	// Set min height on content container to fill page and hide bg image
	var min_h_diff=$('#topbar').outerHeight()+$('#footer').outerHeight()+100+20,
		min_h=viewport_height-min_h_diff;
	
	$('#index-wrap .content-wrap')
		.css('min-height',(min_h/2)+'px');

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
/*	$(window).resize(function(){
		set_content_bottom();
		s.refresh();
	});
	setTimeout(function(){
		set_content_bottom();
		s.refresh();
	},1000);*/
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
	// $('#index-wrap').css('margin-top',(window.innerHeight));
	var margin = ($('#index-wrap').height() - window.innerHeight);
	// $('#index-wrap').attr('data-0',"top:"+(window.innerHeight-74)+"px;left:0px;margin-top:0px");
				//	$('#index-wrap').attr('data-170','top:-'+topblog+'px;margin-top:74px');
				//	$('#index-wrap').attr('data-200','top:-'+topblog+'px;margin-top:74px');
				//	$('#index-wrap').attr('data-270','top:-'+topcontact+'px;margin-top:74px');
				//	$('#index-wrap').attr('data-300','top:-'+topcontact+'px;margin-top:74px');
	// $('#index-wrap').attr('data-370','top:-'+margin+'px;margin-top:0px');
	// $('#index-wrap').attr('data-400','top:-'+margin+'px;margin-top:0px');
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