# Mode Challenge
# 0. Pseudocode

# What is the input? Array of numbers or strings
# What is the output? (i.e. What should the code return?) An array of the number or numbers that occur most frequently
# What are the steps needed to solve the problem?

#   take array and convert to hash to show the number of times each item appears in the list
#   iterate through hash to select item/items that appear most
#   Move selected items into own hash
#   Move item key into its own array (this array will contain item or items that appeared most)
#   return array

# 1. Initial Solution

def mode (array)
  hash = Hash.new (0)
  array.each { |item|
    hash[item] += 1}
  hash

  frequency = hash.values.max
  new_array = []

  hash.each { |key, value|
    if frequency == value
      new_array.push(key)
    end}
  new_array
  end

p mode ([1,1,1,2,2,2,3])


# 3. Refactored Solution
def mode (array)
  hash = Hash.new (0)
  array.each { |item| hash[item] += 1}
  frenquency = hash.values.max
  hash.select { |key, value| value == frenquency }.keys
end

=begin

Which data structure did you and your pair decide to implement and why?
 - We opted to use the hash data structure, we did this to be able to make a key, value pair and organize the has to frequency of like elements to easily output the key value in the end.
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
 - I think we were quite successful breaking the problem down in pseudocode. It allowed us to go step by step easily to create a general outline of code to slowly add into our code.
What issues/successes did you run into when translating your pseudocode to code?
 - It was easy to create the start of our code, we knew the method and arrays we were starting with and building off of. However using the hint in the release when we moved to creating the hash it took a bit longer to figure out how to create the hash we wanted.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
 - We used .each in both of our inital and refactored code to iterate through each element in the array/hash. While researching for our initial solition I did come across .values that was simple and easy to understand that just took the VALUE part of the key,value pair in the hash. Then in the refactored solution, I then found the counterpart for .values which was .keys, to output only the KEY element in the key,value pair.

=end