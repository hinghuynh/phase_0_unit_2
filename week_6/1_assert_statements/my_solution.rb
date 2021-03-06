# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Lienha Carleton].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# create method called assert to raise argument error assertion failed unless yield
# creates var name "name " and assign it string of "bettysue"
# runs assert method on name equals "bettysue"  which should yield because statement 
# is true.
# Then runs assert method on name equals "billybob" which should raise argument error
# because statement is false.

# 3. Copy your selected challenge here

class CreditCard
  def initialize(num)
    raise(ArgumentError, 'invald # of digits') unless num.to_s.length == 16
    @num = num.to_s.chars.map(&:to_i)
  end

  def check_card
    @num.each_index { |i| @num[i] *= 2 if i.even? }.join.to_s.chars.map(&:to_i).reduce(:+) % 10 == 0
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield

end
card = CreditCard.new(4408041234567893)
assert { card.check_card == true }
another_card = CreditCard.new(4563961122001999)
assert { another_card.check_card == false }

# 5. Reflection
# This assigment was prety straight-forward. I didn't really face any
# completing the exercise, however I feel like i don't fully understand
# the term yield. I understand what the assert method does, but I just
# don't understand what yield does. When i tried to print yield to see 
# what value was there, it seemed to give me a value that was opposite 
# of what the values that the check_card method was returning.  This was
# a pretty boring assigment overall, as there wasn't any real programming.
# in it. I found writing the driver test code a little tedious.