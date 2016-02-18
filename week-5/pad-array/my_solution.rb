# Pad an Array

# I worked on this challenge [Emmett Garber]

# I spent [1] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array of values, a minimum number of array values, possibly an element to pad the array with
# What is the output? (i.e. What should the code return?)
# An array with a number of elements equal to or greater than our minimum array value
# What are the steps needed to solve the problem?
# If array count is greater than or equal minumum array value
  # if true return array
#Else we need to pad the array with either nil or our specified value
  # number times
    # pad with value
    # this will be when we indicate destructiveness
  # return the array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
 if array.count >= min_size
   return array
 else
   (min_size - array.count).times do
     array << value
   end
   return array
 end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
 if array.count >= min_size
   return new_array
 else
   (min_size - array.count).times do
     new_array << value
   end
 return new_array
 end
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
   (min_size - array.count).times do
     array << value
   end
   return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
   (min_size - array.count).times do
     new_array << value
  end
 return new_array
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
  - We were quite successful in breaking the problem down into smaller steps, made the making of the the code much easier.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  - Yes we were able to easily translate the pseudocode into code, the we were quite successful with the pad!, however when it came to the non-destrcutive pad, we had issues thinking about returning the unchanged array.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  - The destruction solution was successful at passing our test pretty quickly into working on the challenge. I believe this was successful because of how we did our pseudocode and talked over the problem at hand.
When you refactored, did you find any existing methods in Ruby to clean up your code?
  - When we were refactoring we analized the code and realized that we had a few lines of code that were completely redundant. Saving time, space, and readability.
How readable is your solution? Did you and your pair choose descriptive variable names?
  - The solution is pretty readable, some of the variable names are descriptive, some are more generic to serve as easy place-holders.
What is the difference between destructive and non-destructive methods in your own words?
  - Destructive changes or alters elements what changes are made, while non-destructive keeps the original elements, but makes changes into a new or temporary element.
=end