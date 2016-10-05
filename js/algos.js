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

algos(["long phrase","longest phrase","longer phrase"]);

// Release 1
// have function that take two parameters
//take the first object key and separate what the key is and what the value is
//take the second object key and separate what the key is and what the value is

// compare first object key with second object key
//compare the first object value with the second object value
// if both statements are true, return true else return false