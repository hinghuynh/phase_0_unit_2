# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: Lienha Carleton].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
    #create a method creat_word that takes two arguments board and *coords and returns a word from joining coordinated letters.


# Initial Solution
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
 
# Refactored Solution
# Nothing here.


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# Reflection 
# This exercise was done already for us, so all we really had to do was understand what
# the code was doing. It didn't take too long to understand the code after playing running
# the driver tests.  This solution gave me a better understanding of passing multiple arguments.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
    # change boggle_board to a global variable
    # create get_row method that takes row as an argument and return boggle_board row.

# Initial Solution
$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
                
def get_row(row)
    $boggle_board[row]
end

# Refactored Solution
# Nothing here.

# DRIVER TESTS GO BELOW THIS LINE
get_row(1) #=>  ["i", "o", "d", "t"]

# Reflection 
# This was a fairly simple exercise, after we figured out that we could turn
# boggle_board array into a global variable in order for the method to get access
# to the array. Getting the row out of the boggle board was fairly straight-forward.

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
    # still use global variable boggle_board
    # create get_col method that takes col as an argument and return the column of boggle_board array.

# Initial Solution

def get_col(col)
    $boggle_board.transpose[col]
end

# Refactored Solution
# Nothing here.

# DRIVER TESTS GO BELOW THIS LINE
get_col(1)  #=>  ["r", "o", "c", "a"]

# Reflection 
# The difficultly for this exercise was figuring out if there was a method we could use to grab the
# column out of the array or if we have to run a loop to grab each element individually. I was able
# to stumble upon the method transpose, which worked beautifully. I get the feeling that the exercise,
# wasn't intended to be as easy as I made it. I'm very curious as to how others approached these exercises.
