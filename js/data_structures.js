var horses = {}
var	i
	colors = ["blue", "red", "pink", "purple"]
	names = ["Ed", "Howard", "Bob", "Janet"]
	colors.push("green")
	names.push("Martha")

for (i = 0; i < names.length; i++) {
   	horses[names[i]] = colors[i];
}

console.log (horses)