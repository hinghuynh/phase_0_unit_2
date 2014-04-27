# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Lienha Carleton].

# 1. Pseudocode

# Use the array as the input.
# The return should be the median of the array
# What are the steps needed to solve the problem?
  # - Sort array
  # - Check if array has even number of elements, then get the average of the two middle elements.
  # - If array has odd number of elements, return the element in the middle.

# 2. Initial Solution

# def median(array)
#   array = array.sort!
#   if array.length % 2 == 0
#     return 0.5*(array[array.length/2] + array[array.length/2-1])
#   else 
#     return array[(array.length-1)/2]
#   end
# end

# 3. Refactored Solution

def median(array)
  array = array.sort!
  if array.length % 2 == 0
    0.5*(array[array.length/2] + array[array.length/2-1])
  else 
    array[(array.length-1)/2]
  end
end

# 4. Reflection 

# This was a fairly easy assignment, because we did it already in javascript. All I really had to do
# convert javascript code to ruby. The struggle was figuring out what was the ruby equiviliant as this
# was my first exercise this week in ruby, and I just seem really rusty on what was proper ruby 
# syntax. I like working with ruby again, it's a much prettier language than javascript. Pretty fun 
# assignment to start off the week.
