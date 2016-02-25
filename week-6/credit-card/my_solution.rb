# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with Ryan Dempsey].
# I spent [2] hours on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: Total thats a multiple of ten
# Steps:
# Take a 16 digit number,
#  - IF not a 16 digit number RAISE an ArgumentError
#   - IF a 16 digit number, then:
#     - iterate over the array
#     - double every second digit from the last index in the array
#     - if a double-digit number, then:
#       - convert to string
#       - separate into 2 digits
#       - convert back to integers
#       - place back into array


#   - Add each digit together
#     -Hope its a multiple of ten

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(credit_card_number)
#       @credit_card_number = credit_card_number
#       if @credit_card_number.to_s.length == 16
#         @credit_card_number
#       else
#         raise ArgumentError.new("Not a valid credit card number.")
#       end
#     @credit_card_number_array = credit_card_number.to_s.split(//)
#   end

#   def check_card
#     @credit_card_number_array.each_with_index do |element, index|
#       if index.even?
#         element.replace (element.to_i * 2).to_s
#       end
#     end

#     @credit_card_number_array.map! do |x|
#       x.split(//)
#     end

#     @credit_card_number_array.flatten!

#     @credit_card_number_array.map! do |x|
#       x.to_i
#     end

#     sum = 0
#     @credit_card_number_array.each do |a|
#       sum += a
#     end

#     if (sum%10) == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# REFACTOR SOLUTION

class CreditCard

  def initialize(credit_card_number)
      @credit_card_number = credit_card_number
      if @credit_card_number.to_s.length != 16
        raise ArgumentError.new("Not a valid credit card number.")
      end
    @credit_card_number_array = credit_card_number.to_s.split(//)
  end

  def check_card
    @credit_card_number_array.each_with_index do |element, index|
      if index.even?
        element.replace (element.to_i * 2).to_s
      end
    end

    @credit_card_number_array.map! do |element|
      element.split(//)
    end

    @credit_card_number_array.flatten!.map! do |element|
      element.to_i
    end

    sum = 0
    @credit_card_number_array.each do |num|
      sum += num
    end

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end


# Reflection!

# What was the most difficult part of this challenge for you and your pair?
# => The main issue was the start the methods, where to start, and how to build upon them.
# What new methods did you find to help you when you refactored?
# => the newest method used was the .replace method to replace an element to have the modified element in its place.
# What concepts or learnings were you able to solidify in this challenge?
# => Using methods to split, manipulate and rejoin arrays. Splitting integers into strings, switching the strings back to integers.

