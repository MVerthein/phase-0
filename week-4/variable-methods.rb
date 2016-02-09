puts 'What is your first name?'
first_name = gets.chomp
puts 'Great, what is your middle name?'
middle_name = gets.chomp
puts 'Awesome, and now what is your last name?'
last_name = gets.chomp
puts 'Hello ' + first_name + ' ' + middle_name + ' ' + last_name + ', it is very nice to meet you!'

puts 'Hey, what is your favorite number?'
old_fav_num = gets.chomp.to_i
new_better_num = old_fav_num + 1
puts 'Yea, but this is a bigger and better number: ' + new_better_num.to_s