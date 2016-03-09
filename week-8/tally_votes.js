// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Emmett Garber
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// For determining vote count
// For loop to push each president value into the president object as a value
// Then repeat for each other office

// For determining the officers
// Create an empty array for each office
//  Use a for loop to pull each president value into an array
// Use the math.mode function to pull the highest vote getter for president
//  Then repeat the process for each

// __________________________________________
// Initial Solution

// for(var key in votes) {
// var prez = votes[key].president
//   if ( voteCount["president"][prez] >= 1 ) {
//     voteCount["president"][prez] += 1; }
//   else {
//       voteCount["president"][prez] = 1; }
// }
// for(var key in votes) {
// var viceprez = votes[key].vicePresident
//   if ( voteCount["vicePresident"][viceprez] >= 1 ) {
//     voteCount["vicePresident"][viceprez] += 1; }
//   else {
//       voteCount["vicePresident"][viceprez] = 1; }
// }

// for(var key in votes) {
// var secr = votes[key].secretary
//   if ( voteCount["secretary"][secr] >= 1 ) {
//     voteCount["secretary"][secr] += 1; }
//   else {
//       voteCount["secretary"][secr] = 1; }
// }
// for(var key in votes) {
//   var tres = votes[key].treasurer
//     if ( voteCount["treasurer"][tres] >= 1 ) {
//       voteCount["treasurer"][tres] += 1; }
//     else {
//       voteCount["treasurer"][tres] = 1; }
// }

// var prezCounter = Object.keys(voteCount["president"]).map( function (key) {return voteCount["president"][key];});
// var prezmax = Math.max(...prezCounter)
// var vpCounter = Object.keys(voteCount["vicePresident"]).map( function (key) {return voteCount["vicePresident"][key];});
// var vpmax = Math.max(...vpCounter)
// var secCounter = Object.keys(voteCount["secretary"]).map( function (key) {return voteCount["secretary"][key];});
// var secmax = Math.max(...secCounter)
// var tresCounter = Object.keys(voteCount["treasurer"]).map( function (key) {return voteCount["treasurer"][key];});
// var tresmax = Math.max(...tresCounter)

// for(var key in voteCount["president"]) {
//   if (voteCount["president"][key] == prezmax) {
//     officers["president"] = key
//   }
// }
// for(var key in voteCount["vicePresident"]) {
//   if (voteCount["vicePresident"][key] == vpmax) {
//     officers["vicePresident"] = key
//   }
// }
// for(var key in voteCount["secretary"]) {
//   if (voteCount["secretary"][key] == secmax) {
//     officers["secretary"] = key
//   }
// }
// for(var key in voteCount["treasurer"]) {
//   if (voteCount["treasurer"][key] == tresmax) {
//     officers["treasurer"] = key
//   }
// }



// __________________________________________
// Refactored Solution
for(var name in votes) {
  var person = votes[name]
  console.log(person)
  for(var position in person) {
    var x = person[position];
    console.log(x)
    if (voteCount[position][x] >= 1) {
      voteCount[position][x] += 1;
      officers[position] = x; }
    else{
      voteCount[position][x] = 1
    }
  }
}
console.log(voteCount)
console.log(officers)






// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
- Mostly learning how to iterate using the for... in... loops and accessing values using the bracket notation.
Were you able to find useful methods to help you with this?
- Other than for ... in ... loop to iterate, we used map in our initial solution to create an array, get the max value.
What concepts were solidified in the process of working through this challenge?
- For... in ... loops were solidified and their process of work. Along with using bracket notation to access values in nested objects.
*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)