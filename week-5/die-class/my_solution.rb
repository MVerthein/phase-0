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
=begin
What is an ArgumentError and why would you use one?
  - An ArgumentError is an added error to the code when the argument, in this case the number of sides of die, if the argument is a element that doe not work with the code, for example if the die has 0 or negative sides does not work.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  - So using raise on the ArgumentError which was successful after a few mins reading the included article on the release. I was also successful using rand, but pick a random number of sides of the die.
What is a Ruby class?
  - A class is the blueprint from which individual objects are created.
Why would you use a Ruby class?
  - You can create the class blueprint, and then reference the class itself instead of needed to rebuild the blueprint each time you want to reference each object.
What is the difference between a local variable and an instance variable?
  - A local variable is only visible and thus usable in the method it was created in, and when the method is ended, you can no longer use the local variable. An instance variable can be used in any of the methonds where the class as been called in.
Where can an instance variable be used?
  - An instance variable can be used anywhere where the class and be defined and called, then used in any method as long as the methond in which the instance was created was called upon first.
=end