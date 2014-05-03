# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: Lienha Carleton ].

# 2. Pseudocode

# Input: Die#sides
# Output: random sides
# Steps:
    # create a class Die
    # create a method initialize that takes one argument sides, raise ArgumentError if sides is less than 1
    # create a method sides that returns the instant variable @sides
    # create a method roll that returns a random number from 1 through the number of sides


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     raise(ArgumentError, 'Sides is less than 1') unless sides > 0
#     @sides = sides
#   end
  
#   def sides
#     @sides 
#   end
    
#   def roll
#     1 + rand(@sides) 
#   end
# end

# 4. Refactored Solution
class Die
  attr_reader :sides
  def initialize(sides)
    raise(ArgumentError, 'Sides is less than 1') unless sides > 0
    @sides = sides
  end
  
  def roll
    1 + rand(@sides) 
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
# six_die = Die.new(6)
# ten_die = Die.new(10)
# p six_die.roll <= 6
# p ten_die.roll <= 10
# p six_die.sides < 7
# zero_die = Die.new(0)

# 5. Reflection 
# This was a simple assigment. I think it's purpose was to get me to understand the basics of
# classes and methods, and how to raise an argument arror. There wasn't much difficulty with
# this exercise. However, I was having problems executing the rspec at first, only because
# I had some driver code turned on that was conflicting the instance values in rpsec.  When
# I turned off my driver tests, the rspec ran fine. I didn't really enjoy this exercise. There 
# much to it, probably watching the driver tests work was the most fun. 
