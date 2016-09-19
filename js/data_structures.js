var colors = ["red", "orange", "yellow", "green"];

var names = ["Ed", "April", "Jenna", "Chad"];

colors.push("blue");
console.log(colors);

names.push("Jason");
console.log(names);

var horses = {}

for (var i = 0; i < names.length; i++){
	horses[names[i]] = colors[i];
}

console.log(horses);