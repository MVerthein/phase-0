//Pseodocode
/*
Make player:
  Make properties for the player: health, potion, location, alive, win/loss
Make enemy:
  Make properties for the enemy: health, potion, location, alive, win/loss

Create a battle, for player to decide to attack, heal or flee
  attack - will have the player do random damage to enemy
    enemy will hit the player back random damage
  heal - player will be able to heal random amount to health
    enemy will also heal for random amount (smaller lower range)
  flee - give player an option to flee from the fight, however will always fail and take damage from the enemy.

Create a movement system, along basic x,y corrdinate system
  enemy at fixed position
  player move up, down, left, and right along basic corrdinate system,
  when player gets to enemy, notify player and can allow battle system to commence
*/


var hero = {}
{
hero.health = 100;
hero.potion = 2;
hero.loc_x = 0;
hero.loc_y = 0;
hero.alive = true;
hero.success = false;
hero.together = false;
};

var dragon = {}
dragon.loc_x = 10;
dragon.loc_y = -10;
dragon.health = 100;
dragon.alive = true;
dragon.success = false;

console.log("Get to the dragon! Use hero.move('moveUp', 'moveDown', 'moveRight', 'moveLeft', 'location')")
hero.move = function(movement) {
  if (movement === 'moveUp'){
    hero.loc_y += 1;
    hero.loc_x += 0;
    console.log("Current location: " + hero.loc_x + "," + hero.loc_y)
  }
  else if (movement === 'moveDown'){
    hero.loc_y -= 1;
    hero.loc_x += 0;
    console.log("Current location: " + hero.loc_x + "," + hero.loc_y)
  }
  else if (movement === 'moveRight'){
    hero.loc_y += 0;
    hero.loc_x += 1;
    console.log("Current location: " + hero.loc_x + "," + hero.loc_y)
  }
  else if (movement === 'moveLeft'){
    hero.loc_y += 0;
    hero.loc_x -= 1;
    console.log("Current location: " + hero.loc_x + "," + hero.loc_y)
  }
  else if (movement === 'location'){
    hero.loc_y += 0;
    hero.loc_x -= 0;
    console.log("You are at corrdinates " + hero.loc_x + " , " + hero.loc_y)
    console.log("The dragon is at corrdinates " + dragon.loc_x + " , " + dragon.loc_y)
      if (hero.loc_y === dragon.loc_y && hero.loc_x === dragon.loc_x){
        hero.together = true
        console.log("IT WAS A FIREFIGHT! Use hero.battle('attack', 'heal', or 'flee')")
      }
      else {
        console.log("You need to get closer to fight the mighty dragon!")
      }
  }
}

hero.battle = function(choice) {
  if (choice === 'attack' && hero.together){
    hero.health -= Math.floor(Math.random() * (13 - 1));
    dragon.health -= Math.floor(Math.random() * (11 - 1));
    console.log("You swing at the dragon, seems like you did some damage, the dragon has " + dragon.health + " health left and you have " + hero.health + " health left!")
      if (hero.health <= 0) {
        hero.alive = false;
        dragon.success = true;
        console.log("Well, you tried to take down the dragon, but you ended up becoming a dragon kabob... better luck next time")
      }
      else if (dragon.health <= 0) {
        hero.success = true
        dragon.alive = false
        console.log("YAAAAAAY! You beat that ugly dragon!")
      }
    }
  else if (choice === 'heal' && hero.together) {
    if (hero.potion > 0 ) {
      hero.health += Math.floor(Math.random() * (41 - 11));
      hero.potion -= 1
      dragon.health += Math.floor(Math.random() * (15 - 1));
      console.log("You take a second to drink a potion you now have " + hero.health + " health, the dragon also regained health, dragon has " + dragon.health + " health")
      console.log("You only have " + hero.potion + " left!")
      }
    else {
      hero.health -= Math.floor(Math.random() * (13 - 1));
      console.log("You are out of potions, the dragon took this opportunity to hit at you!\n You have " + hero.health + " health left!")
    }
  }
  else if (choice === 'flee' && hero.together) {
    hero.health -= Math.floor(Math.random() * (31 - 15));
    dragon.health -= 0;
    console.log("You can't run away from a dragon!! What are you thinking! You take a hit and have " + hero.health + " left!")
  }
  else {
    console.log("You can fight the dragon yet, you need to get to the dragon first!")
  }
}

//Reflection
/*
What was the most difficult part of this challenge?
 - The most difficult part was to build a smaller simple project that interated with two objects. I quickly dove into builing a battle system that looped through prompting the player to respond. I started by using a switch case system that did not work as intended at after some time of work, scrapped the entire game and started fresh, blank paged and worked on a smaller scale.
What did you learn about creating objects and functions that interact with one another?
 - For me, it was to simply start simple, and build onto simple concepts to create more complex, functions that can interact and change the properties of the objects created.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
  - I did build my function with a number of different IF, ELSE IF statements, I did initially work with switch case, which would make the code potentially more readible, however being able to impliment it, and work the same as the IF, ELSE IF statements.
How can you access and manipulate properties of objects?
  - The easiest way to access and manipulate properties of objects were the same way I built my objects. I created two empty objects and to initally add properties is to use object.property = property_value. Throughout each function I manipulate the properties in each object my += or -= to add or reduce the values.
*/