# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: the guessed answer
# Output: high, low, or correct depending on the answer guessed.
# Steps: intialize class guessinggame with an argument of answer. Create an instnace variable
# of answer. Create two methods. One called guess with an argument of num. Using conditional 
# statments return correct high or low based on value of guessed number. The other method 
# you want to create is solved? which returns a boolean based on if guessed number is equal
# to the answer.

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#   	@answer = answer
#   end

#   def guess(num)
#   	@num = num
#   	if @num == @answer
#   		return :correct
#   	elsif @num > @answer
#   		return :high
#   	else
#   		return :low
#   	end
#   end

#   def solved?
#   	return false unless @num == @answer
#   		return true
#   end
# end

# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
  	@answer = answer
  end

  def guess(num)
  	@num = num
  	if @num == @answer
  		return :correct
  	elsif @num > @answer
  		return :high
  	else
  		return :low
  	end
  end

  def solved?
  	@num == @answer
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true

# 5. Reflection 
