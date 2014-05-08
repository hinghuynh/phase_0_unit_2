# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 1. Pseudocode

# What is the input?
# Number
# What is the output? (i.e. What should the code return?)
# A string with number and commas in appropriate places
# What are the steps needed to solve the problem?
# convert number to string by creating a new variable
# create condition of when number is less than 1000 and return number
# when number is bigger than 1000 create a loop where it adds a
# comma every third spot from the right until there are less than 3
# spots from the left.
# make sure you account for the added comma that takes a spot everytime you loop
# return string number

# 2. Initial Solution
# def separate_comma(num)
# 	number = num.to_s
# 	if num < 1000
# 		return number
# 	elsif num < 1000000
# 		comma = number.length - 3
# 		number.insert(comma, ',')
# 	elsif num < 1000000000
# 		comma = number.length - 3
# 		comma2 = number.length - 6
# 		number.insert(comma, ',')
# 		number.insert(comma2, ',')
# 	end
# 	return number
# end

# 3. Refactored Solution
def separate_comma(num)
  number = num.to_s
  i = 3
  while (number.length - i) > 0
    number = number.insert(number.length - i,',')
    i += 4
  end
  return number
end

# Driver Ccode
p separate_comma(1000)    # => "1,000"
p separate_comma(1000000) # => "1,000,000"
p separate_comma(0)       # => "0"
p separate_comma(100)     # => "100"
p separate_comma(10000000000000000000000000000)

# 4. Reflection
# I really enjoyed this exercise. It was pretty straight forward.  It took a couple
# minutes to figure out that I needed a string in order to add commas to the solution.
# After that it was just figuring out the proper logic to get the comma to put in the
# right place. I enjoyed converting my solution from from one that was conditional into
# a while loop. When i stared at my initial solution, I thought that converting it into
# a loop to satisfy any number was going to be tedious, but it was pretty simple.
