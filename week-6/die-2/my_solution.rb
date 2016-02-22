# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input:Any array of any number of strings
# Output:A single random string
# Steps:
# CLASS die with any number of strings as the labels
#   IF the label has no strings/sides RAISE an argument error to require more sides/strings
# List all number of sides in the array
# Give a random side as a roll in the list of strings


# Initial Solution
labels = ["a","b","c","d","e"]
class Die
  def initialize(labels)
    @die_labels = labels
      raise ArgumentError.new "Please add more sides" if labels.length == 0
  end

  def sides
      @sides = @die_labels.length
  end

  def roll
    @roll = @die_labels.sample
  end
end


# Refactored Solution

class Die
  def initialize(labels)
    @die_labels = labels
      raise ArgumentError.new "Please add more sides" if labels.length == 0
      @sides = @die_labels.length
  end

  def roll
    @roll = @die_labels.sample
  end
end


 # Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#   - The logic itself did not seem to change much in creating the die class, and using the classes in the different methods, one of the differences, was pulling a sample from the list of strings, as opposed to random of the list of integers.
# What does this exercise teach you about making code that is easily changeable or modifiable?
#   - The more clear/readable your code is, the easier it is you make simple and little changes to your code to change for your needs.
# What new methods did you learn when working on this challenge, if any?
#   - I learned and used the sample method to pull a random string from the array
# What concepts about classes were you able to solidify in this challenge?
#   - The ability to create a class in a method and call upon that class in another method.