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
*/

function longestPhrase (phrase) {
	var longestPhrase = 0;
	var longPhrase = null;

	for (var i = 0; i <phrase.length; i++) {
		if (phrase[i].length > longestPhrase){
			longestPhrase = phrase[i].length;
			longPhrase = phrase[i];
		}
	}
	return longPhrase;
}

function keyValueMatch (val1, val2){
	for (var key in val1){
		if (val2[key] == val1[key]) {
			return true;
		}
	}
	return false;
}

//DRIVER CODE
var phrase = ["long phrase","longest phrase","longer phrase"];
var Steve = {name: "Steven", age: 54};
var Tamir = {name: "Tamir", age: 54};

console.log(longestPhrase(phrase));
console.log(keyValueMatch(Steve, Tamir));

