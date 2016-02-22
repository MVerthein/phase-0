# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: an integer as a guess
# Output: a symbol if the guess was high, low, or correct followed by a true or false statement if it was solved.
# Steps:
# Take an integer as an answer to the game
# Take an integer as a guess to the game
#   IF guess is higher than answer RETURN high and false
#   IF guess is lower than answer RETURN low and false
#   IF guess is equal to answer RETURN correct and true

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer.to_i
  end
  def guess(guess)
    @guess = guess.to_i
    if guess > @answer
     return :high
   elsif guess < @answer
     return :low
   elsif guess == @answer
     return :correct
  end
end
  def solved?
    @guess == @answer
  end
end

game = GuessingGame.new (rand(20))
p game.guess(10)
p game.solved?
# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer.to_i
  end
  def guess(guess)
    @guess = guess.to_i
      return :high if guess > @answer
      return :low if guess < @answer
      return :correct if guess == @answer
  end
end
  def solved?
    @guess == @answer
  end


# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# => Instance variables take the characteristics of the real-world objects, while instance methods are the ways we interact with the objects.
# When should you use instance variables? What do they do for you?
# => Instance variable can be used outside of the method they were created in, to easily access them at any time.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# => Conditionals and loops are forms of flow control, moving the flow around in the program to the desired effects. I did not have any issues with flow control this time.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# => I think one of the main benefits of using symbols are the fact that they are unique, and can skip a step by returning the symbols as oppose to returning strings. Creating a new object in the process.