# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# => Input: An integer between 0-999999999999
# => Output: The integer as an english word.

# Create equations to have digits left, for single digits left, teens, and tens.
# Subtract number given to add words together for for english number.


# Initial Solution
# Initial solution based on chris pine example learn to code.
# def eng_num number
#   raise ArgumentError.new("Please enter a number between zero and 100") unless number >= 0 && number <= 100

#   numString = ''
#   left = number
#   write = left/100
#   left = left - write*100

#   if write > 0
#     return 'one hundred'
#   end
#   if number == 0
#     return 'zero'
#   end

#   write = left/10
#   left = left - write*10

#   if write > 0
#     if write == 1
#       if left == 0
#         numString = numString + 'ten'
#       elsif left == 1
#         numString = numString + 'eleven'
#       elsif left == 2
#         numString = numString + 'twelve'
#       elsif left == 3
#         numString = numString + 'thirteen'
#       elsif left == 4
#         numString = numString + 'fourteen'
#       elsif left == 5
#         numString = numString + 'fifteen'
#       elsif left == 6
#         numString = numString + 'sixteen'
#       elsif left == 7
#         numString = numString + 'seventeen'
#       elsif left == 8
#         numString = numString + 'eighteen'
#       elsif left == 9
#         numString = numString + 'ninteen'
#       end

#       left = 0
#     elsif write == 2
#       numString = numString + 'twenty'
#     elsif write == 3
#       numString = numString + 'thirty'
#     elsif write == 4
#       numString = numString + 'forty'
#     elsif write == 5
#       numString = numString + 'fifty'
#     elsif write == 6
#       numString = numString + 'sixty'
#     elsif write ==  7
#       numString = numString + 'seventy'
#     elsif write == 8
#       numString = numString + 'eighty'
#     elsif write == 9
#       numString = numString + 'ninty'
#     end

#     if left > 0
#       numString = numString + '-'
#     end
#   end
#   write = left
#   left = 0

#   if write > 0
#     if write == 1
#       numString = numString + 'one'
#     elsif write == 2
#       numString = numString + 'two'
#     elsif write == 3
#       numString = numString + 'three'
#     elsif write == 4
#       numString = numString + 'four'
#     elsif write == 5
#       numString = numString + 'five'
#     elsif write == 6
#       numString = numString + 'six'
#     elsif write == 7
#       numString = numString + 'seven'
#     elsif write == 8
#       numString = numString + 'eight'
#     elsif write == 9
#       numString = numString + 'nine'
#     end
#   end
#   if numString == ' '
#     return 'zero'
#   end
#   numString

# end

# puts eng_num(0)
# puts eng_num(10)
# puts eng_num(100)

# Refactored Solution
puts "Input a number"
number = gets.chomp.to_i

def eng_num(number)
  if number < 0
    puts "Please pick a whole number that is positive."
  end
  if number == 0
    puts 'zero'
  end

numString = ''

onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tensPlace = ['ten', 'twenty', 'thirty', 'fourty', ' fifty', 'sixty', 'seventy', 'eighty', 'ninty']
teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'ninteen']

left = number

write = left/1000000000
left = left - write*1000000000

if write > 0
  billions = eng_num write
  numString = numString + billions + ' billion'
  if left > 0
    numString = numString + ' '
  end
end

write = left/1000000
left = left - write*1000000

if write > 0
  millions = eng_num write
  numString = numString + millions + ' million'
if left > 0
  numString = numString + ' '
end
end

write = left/1000
left = left - write*1000

if write > 0
  thousands = eng_num write
  numString = numString + thousands + ' thousand'

  if left > 0
    numString = numString + ' '
  end
end


  write = left/100
  left = left - write*100

if write > 0
  hundreds = eng_num write
  numString = numString + hundreds + ' hundred'

  if left > 0
    numString = numString + ' '
    end
  end


write = left/10
left = left - write*10

if write > 0
  if ((write == 1) and (left > 0))
    numString = numString + teens[left-1]
    left = 0
  else
    numString = numString + tensPlace[write-1]
  end

  if left > 0
    numString = numString + '-'
  end
end

write = left
left = 0

if write > 0
  numString = numString + onesPlace[write-1]
end
numString
end

puts eng_num(number)

# Reflection
# What concepts did you review or learn in this challenge?
# => I learned about recursion on this challenge to build this. A concept I learned about, but was not famillar with.
# What is still confusing to you about Ruby?
# => I am still confused about initalizing methods, and building instance variables. It has been 3 weeks (prior to this week) since we worked with ruby, so the review helps/
# What are you going to study to get more prepared for Phase 1?
# => I will be studying more about about classes and methods to become more prepared for Phase 1.