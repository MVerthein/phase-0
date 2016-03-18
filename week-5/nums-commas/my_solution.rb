# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? positive integer
# What is the output? (i.e. What should the code return?) positive integer with proper commas included in integer
# What are the steps needed to solve the problem?
# take a number
#   - IF number is less than 1000 place no comma
#   - IF number is between 1000 and 9999 place one comma between first and second digit
#   - IF number is between 10000 and 99999 place one comma between the second and third digit
#   - IF number is between 100000 and 999999 place a comma between the third and fourth digit
#   - IF number is between 1000000 and 9999999 place two commas between first and second digit and fourth and fifth digits
#   - IF number is between 10000000 and 99999999 place two commans between the second and third digits and between fifth and sixth digits

# output the number if commas in proper locations

# 1. Initial Solution
=begin
def separate_comma
num = 0
  if num <= 999
    p num
  elsif num >= 1000 && num <= 9999
    (did not complete code)
  elsif num >= 10000 && num <= 99999
  elsif num >= 100000 && <= 999999
  elsif num >= 1000000 && num <= 9999999
  elsif num >= 10000000 && num <= 99999999
  end
end
=end
# major issue - limited numbers allowed for separate commma numbers

# revisit issue and new solution
# I need an array of numbers and reverse it
# Every third digit (char) I need to add a comma for an unlimited number of digits

# Attempt 2
=begin
def separate_comma(num)
  if num < 1000
    return num.to_s
    end
    # create array of numbers, separated and reversed
  ary = num.to_s.chars.reverse
  # insert comma every 3 elements
  counter = 0
  for x in ary[0..-1] do
    if counter > 0 && counter % 3 == 0
      x.to_s<<","
    end
    counter += 1
  end
  ary.reverse.join
end

p separate_comma(1000)
=end
# 2. Refactored Solution
def separate_comma(num)
  if num < 1000
    return num.to_s
  else
  ary = num.to_s.chars.reverse
  ary[3..-1].each_with_index do |x, index|
    if index % 3 == 0
      x << ","
    end
    end
    ary.reverse.join
  end

end
# p separate_comma(120)
# p separate_comma(20)
# p separate_comma(1500)
# p separate_comma(19285823485623948235792385)
# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
 - So my process was pretty simple to start, was to take any integer (positive) and piece it apart into an array as a string and separate the characters. Insert commas in the proper spaces and join the string back together and return. My first approach was very different, thinking of just a series of if elsif statents, but quickly realized (as seen above) that I would need an elsif statement for every since series of numbers in the world. And had to re-adjust to something that could take any positive integer and provide the proper output.
Was your pseudocode effective in helping you build a successful initial solution?
 - It was quite helpful, it noticed the major failures that I had in the inital look, and was able to refocus my efforts into a more robust system. While I was not sure how that system was going to work.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
  - New method I used was the .each_with_index, I saw the enumerator on ruby docs and realized that it would be useful in this case. However, implementation of it was more difficult that I had imagined. I was not entirely sure how it worked, and had to look at a number of examples and test it to try and figure out how it works.
How did you initially iterate through the data structure?
  - My inital iteration was making a counter loop from a reversed array and when the counter is greater than 0 and when modulo is == 0 it would insert a "," into the array in the proper spot. Then went completed it would reverse the array back to its original state then rejoin the separated array and return the object.
Do you feel your refactored solution is more readable than your initial solution? Why?
  - Refactoring the solution is clearly more readable, less moving pieces and lines to sift through to understand the object of the code.
=end