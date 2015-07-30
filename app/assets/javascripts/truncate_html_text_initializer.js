$(function() {
	options = $(".truncate").data();
	text = $(".truncate").text();
	$(".truncate").html($.truncate(text, options));	
});