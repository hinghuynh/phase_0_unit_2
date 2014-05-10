# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

# class CreditCard
#   def initialize(num)
#     raise(ArgumentError, 'invald # of digits') unless num.to_s.length == 16
#     @num = num.to_s.chars.map(&:to_i)
#   end

#   def check_card
#     @num.each_index { |i| @num[i] *= 2 if i.even? }
#     @num = @num.join.to_s.chars.map(&:to_i)
#       @num.reduce(:+) % 10 == 0
#   end
# end

# Refactored Solution

class CreditCard
  def initialize(num)
    raise(ArgumentError, 'invald # of digits') unless num.to_s.length == 16
    @num = num.to_s.chars.map(&:to_i)
  end

  def check_card
    @num.each_index { |i| @num[i] *= 2 if i.even? }.join.to_s.chars.map(&:to_i).reduce(:+) % 10 == 0
  end
end

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end
card = CreditCard.new(4408041234567893)
assert { card.check_card == true }
another_card = CreditCard.new(4408041234567892)
assert { another_card.check_card == false }

# Reflection
# This exercise was pretty boring, as I pretty much had done all the legwork
# last week getting the code the run. All I did was chain my three lines
# from my original solution of the method check_card into one. It's pretty 
# amazing how short my code is compared to my first working solution which 
# was probably about 10 x as long. I learned how excessively you can really
# chain methods one after another. I don't really know if my code is more 
# readable. I find that when I get code this short, it feels more like 
# I wrote a bunch of gibberish, and doesn't really tell a coherent story.
# I'm curious if others would agree.