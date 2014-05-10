# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution

class BoggleBoard
  def initialize(board)
    @board = board
  end
  
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
  
  def get_row(row)
    @board[row]
  end

  def get_col(col)
    @board.transpose[col]
  end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
# 4. Refactored Solution

# Couldn't think of anything to refactor for this exercise.

# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
  raise "Assertion failed!" unless yield
end
assert { boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code" }
assert { boggle_board.create_word([0,1], [0,2], [1,2]) == "rad" }
assert { boggle_board.get_row(0) == ["b", "r", "a", "e"] }
assert { boggle_board.get_row(1) == ["i", "o", "d", "t"] }
assert { boggle_board.get_col(0) == ["b", "i", "e", "t"] }
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"] }

# 5. Reflection 
# I didn't really have to do anything for exercise, besides use the assert 
# for the driver code. So there wasn't anything i struggled with. The creation
# of class and initialize the board was pretty straightfoward. To be honest,
# I originally spelled initialize wrong and got this argument error that just
# baffled me for a while, but it ended up being a good laugh.  Creating driver 
# code it getting pretty tedious now, as this assert method is really repetitive.
# Didn't really do much for this exercise, so there's not much to enjoy or learn.
