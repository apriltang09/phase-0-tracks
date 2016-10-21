
$(document).ready(function(){

	//test to make sure jquery is linked
	// alert("Hello World!");

	$("h1").click(function(){
		$(this).addClass("red");
		$(this).slideUp();
	});

	$("p").hover(function(){
		$(this).addClass("lightblue");
	});

	$("button").click(function(){
		$("li").addClass("bolditalic");
		$("#list2").fadeOut();
	});

	$("li").hover(function(){
		$(this).removeClass();
		$(this).addClass("lightblue red");
	});

	$("#firsth2").hover(function(){
		$(this).css("background-color", "pink");
	});

	$("#secondh2").hover(function(){
		$(this).hide();
	});
});