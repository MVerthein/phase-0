// USER STORY
// As a user I want to run a program called "sum" that will take an a set of numbers (whether set of numbers contains an even or odd amount of numbers) and sums the numbers together.

// PSEUDOCODE:
// Create a function for sum(array)
// Declare a counter variable equal to zero
// FOR each number in the array, declare a variable equal to 0, iterate through each element in the array, adding 1 to variable each time.
// Declare counter variable equal to counter plus each element in the array
array = [1,2,3,4,5,6]
var sum = function(array) {
  var counter = 0;
  for (var i = 0; i < array.length; i++) {
    counter += array[i];
  }
  return counter;
};
console.log(sum(array))
// USER STORY
// As a user I want a program called "mean", that will take the average of all of the numbers from a set of numbers.

// PSEUDOCODE:
// Create a function for mean(array)
// Declare a counter variable equal to zero
// FOR each number in the array, declare a variable equal to 0, iterate through each element in the array, adding 1 to variable each time.
// Declare counter variable equal to counter plus each element in the array
// Divide counter by number of elements in the array.

var mean = function(array) {
  var counter = 0;
  for (var i = 0; i < array.length; i++) {
    counter += array[i];
  }
  return counter / array.length;
}
console.log(mean(array))
// USER STORY
// As a user I want a program called "median" that gives me the middle value of a set of numbers (or for a set of numbers with an even amount of values, potentially the average of the 2 middle values, if the two middle values are not the same)

// PSEUDOCODE:
// Create a function for median(array)
// IF the length of the array is evenly divisible by 2
// Declare variable middle equal to the number of elements in the array divided by 2
// Declare variable average equal to array element equal to middle, plus the array element before the middle element, and divide by 2
// IF the length of the array IS NOT evenly divisible by 2
// Declare variable middle equal to the number of elements in the array divided by 2, rounded down to the nearest integer
// Output the element at index middle

var median = function(array) {
  array.sort();
  var middle = Math.floor((array.length - 1)/2);
  if (array.length % 2 === 0) {
    return (array[middle] + array[middle+1]) / 2 ;
  } else {
    return array[middle];
  }
};
console.log(median(array))