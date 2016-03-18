// U3.W9:JQuery


// I worked on this challenge [by myself, with: Joshua Wu ].
// This challenge took me [1] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')
mascot = $('mascot')
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('#hello').css({'color': 'red', 'border': '1px solid black', 'opacity': 0.5});

$('#rockdoves').html('Rockdoves');


  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://naturemappingfoundation.org/natmap/photos/birds/rock_dove_4064np.jpg')
  });

//RELEASE 5: Experiment on your own
$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  });

})  // end of the document.ready function: do not remove or write DOM manipulation below this.


//Reflection
// What is jQuery?
//  jQuery is a javascript library that allows for changes to be made and animations to be used.
// What does jQuery do for you?
//  It allows me to manipulate the input of the user and make elements on the page interactive.
// What did you learn about the DOM while working on this challenge?
//  Everything within the 'window', and elements that can be selected or created using jQuery.