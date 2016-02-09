####What does 'puts' do?
*puts writes onto the screen whatever comes after the command.
####What is an integer? What is a float?
*An integer are numbers without decimal points. Numbers with decimal points are floats, also known as floating-point numbers.
####What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
*When using float division, you are using decimals to gain a more accurate arithmetic answers. While integer division ruby will always round down the result. Given the example say I were to put 7/2. The result would be 3 because as an integer it will not give a decimal result. However if I did put 7.0/2.0 the result you would be 3.5

'''ruby
puts 24 * 365
=> 8760
'''
'''ruby
puts 60 * 24 * 365 * 10
=> 5256000
'''