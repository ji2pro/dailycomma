$(function() {
	$('.card').hover(function() {
		$(this).addClass('shadow');
	},
	function() {
		$(this).removeClass('shadow');	
	})
})