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
  	return false unless @num == @answer
      return true
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
# game = GuessingGame.new(10)

# p game.solved? == false

# p game.guess(5) == :low
# p game.guess(20) == :high
# p game.solved?   == false

# p game.guess(10) == :correct
# p game.solved?  == true

# 5. Reflection 
# This was a fairly easy assignment as well. The only tricky part was trying
# to understand what the colons before the words correct, high and low meant.
# Although I still don't have good understand of what symbols are, they were
# easy to implment in terms getting the right output. I enjoyed the thought 
# process behind creating a the method guess. Even if it was just a few simple
# conditional statements.  I found the psuedo coding the most tedious task
# of this exercise.
