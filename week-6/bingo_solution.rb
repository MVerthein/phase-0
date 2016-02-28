# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [5] hours on this challenge.

=begin
Release 0: Pseudocode
Outline:

Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

  Create an array with the letters b, i, n, g, o,
  Create an array with random numbers 1-100 and change to string
  Join the random letter, and the random number and print combination.

Check the called column for the number called.

 Method check, to iterate through each subarray in the board
 IF the integer at the subarray and current hash value equals the current number

If the number is in the column, replace with an 'x'

  Set the number from check method to "x"


Display the board to the console (prettily)

  puts B I N G O for formatting, to identify column
  print each subarray as a string, with each subarray on its
    own line (hard return)

=end
# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def pick
#     @letters = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" =>  4}
#     letter = @letters.keys.sample
#     @numbers = rand(1..100).to_s
#     @column = @letters[letter]
#     p letter + @numbers
#   end

#   def check
#     @bingo_board.each do |row|
#       if row[@column] == @numbers.to_i
#          row[@column] = "X"
#       end
#   end
#     def display
#      @bingo_board.map! {|x| p x.join(" ")}
#     end
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def pick
    @letters = {"B" => 0, "I" => 1, "N" => 2, "G" => 3, "O" =>  4}
    letter = @letters.keys.sample
    @numbers = rand(1..100).to_s
    @column = @letters[letter]
    p letter + @numbers
  end

  def check
    match = false
    while !match do
      pick
      sleep 0.2
    @bingo_board.each do |row|
      if row[@column] == @numbers.to_i
        match = true && row[@column] = "X"
      end
    end
  end
    def display
      puts "-B  I  N  G  O-"
     @bingo_board.map! {|x| p x.join(" ")}
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.pick
new_game.check
new_game.display
#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  - It was quite difficult for me to pseudocode on this challenge, I am still learning how to use proper pseudocoding technique. I think my style is to write out big picture ideas, and break it down from there.
What are the benefits of using a class for this challenge?
  - Using a class allows us to pass instance variables between methods.
How can you access coordinates in a nested array?
  - You can access items in a nested array with a doubled array calls array[][].
What methods did you use to access and modify the array?
  - I used #each to iterate through to access each array. Also used #while to loop through picks until there is a match.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  - I used a new method of "while != do" so allow the pick method to loop until a match is hit, to then replace that with  "x".
How did you determine what should be an instance variable versus a local variable?
  - any variable that had to be used in the pick method and the check method was used as an instance variable.
What do you feel is most improved in your refactored solution?
  - Readabiltiy, and the way to format the displayed subarrays.
=end