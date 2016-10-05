// set a variable that holds an empty string
// start at the end of the string
// loop through each letter and add it to the variable that holds the string

function reverse(string){
	
	var word = "";

	for(var i = string.length - 1; i >= 0; i--){
		word += string[i];
	}
	return word;
}

var greeting = reverse("hello");
console.log(greeting)
