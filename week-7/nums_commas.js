// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

/* function that takes argument of number
turn the number into a string reverse it
put characters to array if index % of 3 == 0 add comma
join and reverse.
*/


// Initial Solution
// function separateComma(integer){
// var reverse = integer.toString();
// var separate = reverse.split('').reverse();


// for ( var i = 3; i < separate.length; i += 4)
//   separate.splice(i, 0, ",");
//     together = separate.reverse().join("");
// console.log(together)
// }

// separateComma(1569743);

// Refactored Solution
function separateComma(integer){
var string = integer.toString();
var reverse_array = string.split('').reverse();


for ( var i = 3; i < reverse_array.length; i += 4)
  reverse_array.splice(i, 0, ",");
    var together = reverse_array.reverse().join("");
console.log(together)
}



// Your Own Tests (OPTIONAL)

separateComma(8347293423423487);


// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  - The approach of pseudocoding was the same, we used the big ideas and broke it into smaller steps, when when came time to building the code, it was a little different in terms of syntax, but core is the same.
What did you learn about iterating over arrays in JavaScript?
  - The basics of iterating over arrays is the same as Ruby, however syntax is a bit different.
What was different about solving this problem in JavaScript?
  - The syntax on building solutions are different, I had to spend more time looking if certain methods exsist in JavaScript.
What built-in methods did you find to incorporate in your refactored solution?
  - We incorporated splice in our solution, to insert a comma every 3rd element in the array.
*/