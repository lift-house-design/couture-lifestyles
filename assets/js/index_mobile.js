function skrollTo(identifier){
	if($(identifier).offset())
		scrollToTop(
			$(identifier).offset().top - 74
		);
	else
		scrollToTop(-74);
}
$(function(){ 
	$('#background').css('height', (window.innerHeight - 74) + 'px'); 
	$('#background').css('margin-top', '74px'); 
});