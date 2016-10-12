function dropdowns() {
    var drops = $('div.drop');
	var indrops = $('div.indrop');
	if(drops.length!=indrops.length){
		alert("Some coder fucked up with dropdowns");
	}
	drops.each(function(index){
		$(this).toggleClass('closed');
		$(indrops[index]).hide();
		$(this).click(function(){
			$(this).toggleClass('closed');
			$(this).toggleClass('open');
			$(indrops[index]).toggle();
		});
	});
}

function filterchanges(type){
	$('ul.changes li').each(function(){
		if(!type || $(this).hasClass(type)){
			$(this).show();
		}		
		else {
			$(this).hide();
		}
	});
}

$(document).ready(function(){
	dropdowns();
});