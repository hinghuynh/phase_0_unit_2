# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: Lienha Carleton].

# 2. Pseudocode

# Input: an array of letters
# Output: a random letter after rolling the die
# Steps:
# create a class Die
# create an initialize method that takes one argument which an array, if the array is empty raise the ArgumentError.
# create a method that returns the sides of the die
# create a method roll that returns a random side of the die.

# 3. Initial Solution

# class Die
#   def initialize(labels)
#     raise(ArgumentError, 'array is empty') unless labels.length > 0
#     @labels = labels
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels[rand(sides)]
#   end
# end

# 4. Refactored Solution

class Die
  def initialize(labels)
    raise(ArgumentError, 'array is empty') unless labels.length > 0
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

# new_die = Die.new(("A".."F").to_a)
# another_die = Die.new(("G".."Z").to_a)
# p new_die.sides == 6
# p new_die.roll
# p another_die.roll
# p another_die.sides == 20
# p another_die.roll

# 5. Reflection
# This exercise at least had a little more thought behind it to get it to work.
# This one was fairly easy as well. The hardest part was probably just translating my
# psuedo code into code. There wasn't anything I was really having trouble with, once I
# figured out what I wanted to do. I enjoyed creating the driver tests, I think it's
# fun to see your coding working and actually giving you the decided results. Creating
# pseudo code was probably the most tedious thing for this exercise.
