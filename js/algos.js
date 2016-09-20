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

// Release 2
// function takes in a number
// have empty array to push in results
// number is array length 

//have a string of letters
// loop through the letters and randomly make words 
// up to 10 letters and from the entire string of words
// push word into empty array
// print array to see array results

// Release 2: Part 2
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

// Release 2: Part 1
function randomWord(num){
	var array = []
	for (var n = 0; n < num; n++){
		var word = ""
		var letters = 'abcdefghijklmnopqrstuvwxyz';
		for(var i = 0; i < Math.random()*11; i++){
			word += letters.charAt(Math.floor(Math.random()*letters.length));
 }
array.push(word)
}
console.log(array)
}

for(var j = 0; j < 10; j++){
	var generate = randomWord(3);
	console.log(generate);
	algos(generate);
}

