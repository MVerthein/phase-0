# Calculate a Grade

# I worked on this challenge [With: Brittney Braxton].


# Your Solution Below
puts "What is your percentage grade?"
percentage_grade = gets.chomp.to_i

def get_grade(percentage_grade)
  if percentage_grade >= 90
    "A"
  elsif percentage_grade >= 80 && percentage_grade < 90
    "B"
  elsif percentage_grade >= 70 && percentage_grade < 80
    "C"
  elsif percentage_grade >= 60 && percentage_grade < 70
    "D"
  else percentage_grade < 60
    "F"
  end
end

puts get_grade(percentage_grade)

=begin
input grade percent
get user input
check input as integer
if integer put into array
90-100 = A
80-89 = B
70-79 = C
60-69 = D
x < 60 = F
return string to indicate grade

=end