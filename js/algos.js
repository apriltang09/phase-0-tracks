// Release 0
//have a variable that holds string length
// loop through each string in the array
// compare each string in the array to the current string length
// if current array string is longer than the current longest string
//assign the length of the array string as the longest string

function algos(array){	
	var longest = 0;
	var word;
	for (var i = 0; i < array.length; i++){	
		if(array[i].length > longest){
			longest = array[i].length;
			word = array[i];
		}
	}	
	return word;
}

// algos(["long phrase","longest phrase","longer phrase"]);

// Release 1
// have function that take two parameters
//take the first object key and separate what the key is and what the value is
//take the second object key and separate what the key is and what the value is

// compare first object key with second object key
//compare the first object value with the second object value
// if both statements are true, return true else return false

function match(object1, object2){

	var one = object1;
	var two = object2;
	
	var first_keys;
	var first_values;
	
	var second_keys;
	var second_values;
	
	for(var key in one){
		first_keys = key;
		first_values = one[key];
	}
	
	for(key in two){
		second_keys = key;
		second_values = two[key];
	}

	if(first_values == second_values && first_keys == second_keys){
			return true;
		} else {
			return false;
		}
}

// match({name: "Steven", age: 54}, {name: "Tamir", age: 54}); //true
// match({name: "Steven", age: 5}, {name: "Tamir", age: 54}); //false

//Release 2
// have function that takes in a number, which is how much words will be in that array
// make a loop that will generate that amount of words
//have a string of letters to pick from 
// loop through the letters and randomly make words that is 
//up to 10 letters in length and randomly picked from that entire string of letters
// have an empty array at beginning and push word into empty array
// print array to see array results

function randomWord(num){
	var array = [];
	for (var n = 0; n < num; n++){
		var word = "";
		var letters = 'abcdefghijklmnopqrstuvwxyz';
		for(var i = 0; i < Math.random()*11; i++){
			word += letters.charAt(Math.floor(Math.random()*letters.length));
 }
array.push(word);
}
console.log(array);
}

//generate the array ten times by looping
for(var j = 0; j < 10; j++){
	var generate = randomWord(3);
	console.log(generate);
	algos(generate);
}

//Driver Code
algos(["long phrase","longest phrase","longer phrase"]); //'longest phrase'
match({name: "Steven", age: 54}, {name: "Tamir", age: 54}); //true
match({name: "Steven", age: 5}, {name: "Tamir", age: 54}); //false
