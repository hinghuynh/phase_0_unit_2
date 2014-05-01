# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# create method called assert to raise argument error assertion failed unless yield
# creates var name "name " and assign it string of "bettysue"
# runs assert method on name equals "bettysue"  which should yield because statement 
# is true.
# Then runs assert method on name equals "billybob" which should raise argument error
# because statement is false.

# 3. Copy your selected challenge here




# 4. Convert your driver test code from that challenge into Assert Statements





# 5. Reflection
