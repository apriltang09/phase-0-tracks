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