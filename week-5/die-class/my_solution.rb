# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: A die with any number of sides more than one
# Output: A random roll with any number of sides of the die
# Steps:
=begin
Create a die CLASS
define the INITIALIZE method with input "sides"
  create variable for number of sides
  IF number of sides is less than zero need to RAISE an argument error
define sides to equal instance variable for the sides
define random roll to equal a random number between 1 and the number of sides
=end
# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @d_sides = sides
    unless sides > 1
      raise ArgumentError.new("Please pick a larger integer, greater than 0")
    end
  end

  def sides
    # code goes here
    return @d_sides
  end

  def roll
    # code goes here
    rand(1..@d_sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @d_sides = sides
      raise ArgumentError.new("Please pick a larger integer, greater than 0")if @d_sides < 1
    end
  end

  def sides
    return @d_sides
  end

  def roll
    rand(1..@d_sides)
  end






# 4. Reflection