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
