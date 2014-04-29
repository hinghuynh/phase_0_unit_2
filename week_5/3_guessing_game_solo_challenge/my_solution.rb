# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

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

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
