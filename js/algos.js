/* 
Longest Phrase
	-Loop through an array
	-Get length of each item in array
	-Return item with longest length

Find a Key-Value Match
	-Declare variables Steve and Tamir
	-Create function that takes 2 variables
	-Use loop to go through properties of an object
	-Match on key-value pair
	-Return true if there's a match
	-Return false if there isn't

Generate Random Test Data
	-Create an empty array
	-Create function that takes a variable that will dictate length of array
	-Create a variable for the alphabet to use as the text for random strings
	-Create variable to generate random length of string
	-Use loop to run until it meets length of array
	-Use another loop that will create the random strings
	-Push random string into empty array
	-Return array
*/

//Finds longest string in array
function longestPhrase (phrase) {
	var longestPhrase = 0;
	var longPhrase = null;

	for (var i = 0; i <phrase.length; i++) {
		if (phrase[i].length > longestPhrase){
			longestPhrase = phrase[i].length;
			longPhrase = phrase[i];
		}
	}
	return 'Longest string is ' + '"' + longPhrase + '"';
}

//Find key-value match between 2 different objects
function keyValueMatch (val1, val2){
	for (var key in val1){
		if (val1[key] == val2[key]) {
			return true;
		}
	}
	return false;
}

// Generate an array with a specified length made up of of random characters
function makeWordArray(arraynum)
{
	var wordArray = [];
	var arrayLength = arraynum;
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    
    for ( var i=0; i < arrayLength; i++) {
    	var text = "";
    	var wordLength = Math.floor((Math.random() * 10) + 1);
    	
	    for( var j=0; j < wordLength; j++ ) {
	        text += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
	    }
    	wordArray.push(text);
    }
    return wordArray;
}

//DRIVER CODE
var phrase = ["long phrase","longest phrase","longer phrase"];
var Steve = {name: "Steven", age: 54};
var Tamir = {name: "Tamir", age: 54};

console.log(longestPhrase(phrase));
console.log(keyValueMatch(Steve, Tamir));
console.log(makeWordArray(5));
console.log('===')

//Create 10 sets of test data
for (var i = 1; i < 11; i++) {
	var arraySize = Math.floor((Math.random() * 8) + 1);
	var testData = makeWordArray(arraySize);
	var longWord = longestPhrase(testData);

	console.log('Test Data #' + i)
	console.log(testData);
	console.log(longWord);
	console.log('===')
}