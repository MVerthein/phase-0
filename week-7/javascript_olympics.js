// JavaScript Olympics

// I paired [with: Julia Giraldi] on this challenge.

// This challenge took me [1] hour.



// Bulk Up

var athletes = [
  {name: "Michael Phelps", event: "swimming"},
  {name: "Tyson Gay", event: "100m"},
  {name: "Jamacain Bobsled Team", event: "Bobsled"}
];


var winners = function(athletes){
  for (var i = 0; i < athletes.length; i++) {
  athletes.win = console.log(athletes[i].name + " has won the " + athletes[i].event + " event!") }
};

// Driver code
winners(athletes)

// Jumble your words

var reverse = function(string) {
  console.log(string.split("").reverse().join(""));
};

reverse("!sdrow ruoy elbmuJ")


// 2,4,6,8

var even_nums = function(num_array) {
  var evens = []
  for (var i = 0; i < num_array.length; i++) {
    if (num_array[i] % 2 === 0) {
      evens.push(num_array[i]);
    }
  }
      console.log(evens);
};

even_nums([1, 2, 3, 4, 5, 6])

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = "Michael Phelps";
  this.age = 29;
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!";
};


// driver code:
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
 - Building objects with properties, and iterating through each property. Creating Arrays, and pushing elements into a new empty array.
What are constructor functions?
 - They are functions to create an object with. In the example using a constructior fuction to create an Athlete with their properties.
How are constructors different from Ruby classes (in your research)?
 - Ruby classes self reference, constuctiors use this reference. Javascript objects inherit all the properties of it's constructors. Ruby class can only inherit from one parent class.
*/