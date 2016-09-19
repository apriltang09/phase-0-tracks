function reverse(string){
	return string.split("").reverse().join("");
}

var morning = reverse("hello");
console.log(morning);
var evening = reverse("goodbye");
console.log(evening);

if (2 != 3){
	console.log(morning);
	console.log(evening);
}