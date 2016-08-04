//7.2 Mandatory Pairing: Data Structures
//Angel Chen
//Paired with Hakim Joseph


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


var car = {
	name: 'Honda',
	'age': 0,
	fourDoors: true,
	drive: function() {
		console.log("*Drives down the road!* ZOOOM ZOOM");
	},

	needLicense: true, 
	Driving: function() { if(this.needLicense) {
	 	console.log("Move along skipper..");
	}	else {
	 	console.log("Take the test and get off the road!!");
	 }
	}
};

car.drive();
car.needLicense = false;
car.Driving();

function Sedans(Brand, Model, Year, Sportscar) {
	console.log("Our new car", this);
	this.Brand = Brand;
	this.Model = Model;
	this.Year = Year;
	this.Sportscar = Sportscar

	this.driving = function() { console.log("ZOOOOM!"); };
	console.log("Car has left the factory.") 

}

var Sedan = new Sedans("Honda", "Accord", 2016, false);
console.log(Sedan);
Sedan.driving();

var Sedan2 = new Sedans("Chevy", "Corvette", 2016, true);
console.log(Sedan2);
Sedan2.driving();
