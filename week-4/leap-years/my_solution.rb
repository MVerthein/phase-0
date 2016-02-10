# Leap Years

# I worked on this challenge [With: Brittney Braxton].


# Your Solution Below
puts "What year is it?"
year = gets.chomp.to_i

def leap_year?(year)
  if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
    true
  else
    false
  end
end

puts leap_year?(year)

=begin


=end