// loop through the word starting at the end
// for each looped letter, add it to a variable that holds all the 
// letters together

function reverse(string){
	
	var word = "";
	
	for(var i = string.length -1 ; i >= 0; i--){
		word += string[i];
	}
	return word;
}

var greeting = reverse("hello");


if (5 != 4){
	console.log(greeting);
}