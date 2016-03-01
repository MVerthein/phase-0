// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var number = 345
number = number - 45
console.log(number)


var favfood = prompt("What is your favorite food?", " ");
alert(favfood + "? That's my favorite food too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "#"
while (triangle.length <= 7) {
  console.log(triangle);
  triangle = triangle + "#";
}


// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Mike",
  age: 28,
  favorite_foods: ["Pizza", "Burger", "Ice Cream"]
  quirk: "Walt Disney World fanatic!"
}