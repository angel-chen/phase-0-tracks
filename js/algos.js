/* 
Longest Phrase
-Loop through an array
-Get length of each item in array
-Return item with longest length
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

var phrase = ["long phrase","longest phrase","longer phrase"];

console.log(longestPhrase(phrase));