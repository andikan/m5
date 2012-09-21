$(function(){
	var time = 0;

	$('.point').bind('click', function(event){
		$(this).toggleClass('invoke');
		$('.map').toggleClass('blur');

		if(time === 0){
			for (var i = 0; i < 4; i++) {
				$('<div class="pic"></div>').appendTo($(this));
			}
			setTimeout( function(){
				for (var i = 0; i < 4; i++) {
					$('.pic').eq(i).toggleClass('an'+(i+1));
				}
			}, 100);
			time = 1;
		}
		else{
			for( var i = 0; i< 4; i++ )
				var des = $('.pic').removeClass('an'+(i+1));				
			
			setTimeout(function(){
				des.remove();
			},500);

			time = 0;
		}
		
		
	});
	

	$(document).click(function(e){
		console.log(e.target);
		if($(e.target).is(".point, .info, h3"))return;
		for (var i = 0; i < 4; i++)
			var des = $('.pic').removeClass('an'+(i+1));
		$('.map').removeClass('blur');
		$('.point').removeClass('invoke');
		setTimeout(function(){
			des.remove();
		},500);
		time = 0;


	});

	//for get posistion
	$('.wrapper').click(function(e){
		var x = e.pageX - this.offsetLeft;
		var y = e.pageY - this.offsetTop;

		console.log(x,y);
	});
	
});