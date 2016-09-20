// Release 0
// loop through each phase
// compare the phrase length to the one after it
// if that phase length is longer, hold that in a variable 
// have that variable compare to the next phrase length

function algos(array){	
	var longest = 0
	
	for (var i = 0; i < array.length; i++){	
		if(array[i].length > longest){
			longest = array[i].length
			var word = array[i]
		}
	}	
console.log(word)	
}

algos(["long phrase","longest phrase","longer phrase"])

// Release 1
// take two parameters
// compare first object key with second object key
// if it is equal, return true
// compare value to see if it is the same
// loop through to compare first object with second object key

function match(object1, object2){

	var one = object1
	var two = object2
	
	for(var key in one){
		var first_keys = key
		var first_values = one[key]
	}
	
	for(key in two){
		var second_keys = key
		var second_values = two[key]
	}

	if(first_values == second_values && first_keys == second_keys){
			return true
		} else {
			return false
		}
}

match({name: "Ellie", age: 54}, {name: "Tamir", age: 54})