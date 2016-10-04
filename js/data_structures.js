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

function Car(year, color, isAutomatic){
	
	console.log ("Car types:", this);
	this.year = year;
	this.color = color;
	this.isAutomatic = isAutomatic;
	this.sound = function() { console.log ("Vroom!"); };

}

var firstCar = new Car(2016, "red", true)
console.log(firstCar);
console.log("*car starts*")
firstCar.sound();

var secondCar = new Car(1999, "blue", false)
console.log(secondCar);
console.log("*car starts*")
secondCar.sound();