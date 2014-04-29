# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
    raise(ArgumentError, 'Arugment is less than 1') unless sides > 0
    @sides = sides
  end
  
  def sides
    @sides 
  end
    
  def roll
    1 + rand(@sides) 
  end

end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 