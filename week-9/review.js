//Create a new list
//Add an item with a quantity to the list
//Remove an item from the list
//Update quantities for items in your list
//Print the list (Consider how to make it look nice!)


//empty list
var groceryList ={};

//add item to said list
function addItem(item, quantity) {
  groceryList[item] = quantity;
}

//delete item from list
function deleteItem(item) {
  delete groceryList[item];
}

//update quantity of item
function updateQuantity(item, quantity) {
  groceryList[item] = quantity;
}

//print list!
function printList() {
  console.log("My Grocery List:")
  var props = ""; //turn any item into string
  for (var item in groceryList){
    props += groceryList[item] + " units of " + item + "\n";
  }
  console.log(props);
}
console.log("Initial grocery list:")
addItem("apples", 3);
addItem("grapes",2);
addItem("pizza", 10);
printList();
console.log("Remove pizza from my grocery list:")
deleteItem("pizza");
printList();
console.log("More apples and grapes:")
updateQuantity("apples",7);
updateQuantity("grapes",7);
printList();
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  - I do have a stronger understanding of basic functions and passing information between them, adding, deleting, and updating items and quantities starting on an empty list (object)

What was the most difficult part of this challenge?
  - I was initially confused on what this challenge was asking, and was thinking this was more or less identical to the manipulating objects challenge from a couple weeks ago. Once I understood what the challenge wanted, it made it easier to build. However hardest part for me was making a pretty list to print.

Did an array or object make more sense to use and why?
  - I created an object which makes more sense, because it is a list with a corresponding quantity, similar to hashes.
*/