/*
-Declare "hello" as variable
-Get length of string minus 1 to get index position of last character
-Set counter to decrease until it hits 0
-Add '' to add strings together in one line
*/

function reverse(str) {
  var space = '';
  for (var i = str.length - 1; i >= 0; i--)
    space += str[i];
  return space;
}

//DRIVER CODE
var reversed = reverse("hello");

if (1==1) {
	console.log(reversed); 
}