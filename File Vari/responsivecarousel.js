$(document).ready(function() {
	console.log($(document).width()/100);
	var countTo = $(document).width()/100;
	if (countTo > 10) {
		countTo = 2;
	}else {
		countTo = 1;
	}
	
	$('.carousel .item').each(function(){
		for (var i = 0; i < countTo; i++) {
			next = $(this).next();
			next.appendTo($(this));
		}
	});
});
