# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
# => Create an array with the letters b, i, n, g, o,
# => Create an array with random numbers 1-100 and change to string
# =>

# Check the called column for the number called.
  #fill in the outline here
# => If
# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

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
        sleep 0.1
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

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.check
new_game.display
#Reflection