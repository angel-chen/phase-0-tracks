var colors = ["blue", "pink", "purple", "green"];
var horseName = ["Ed", "Tom", "Steve", "Mitch"];

colors.push("red");
horseName.push("John");

for(var x = 0; x < colors.length; x++){
	horseColors = {};
 	for(var y = 0; y < horseName.length; y++){
 		horseColors[horseName[y]] = colors[y];
	}
}

console.log(horseColors);