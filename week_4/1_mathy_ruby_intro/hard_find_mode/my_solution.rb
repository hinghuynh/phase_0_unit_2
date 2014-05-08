# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Lienha Carleton].

# 1. Pseudocode

# What is the input?
# array
# What is the output? (i.e. What should the code return?)
# sorted array with elements of highest frequencies in accending order.
# What are the steps needed to solve the problem?
# create a method called mode that takes an array as an argument.
# create a hash and pass elements of the array in with the number of times the elements appear.
# sort the new hash so that the most often occuring numbers move to beginning of the array.
# create variable with the value of the first element of the array.
# select the elements with highest frequencies displaying both the elements and the frequencies.
# return only elements with high frequencies.
# sort the elements in accending order.

# 2. Initial Solution

# def mode(arr)
#   count = Hash.new(0)
#   arr.each { |v| count[v] += 1 }
#   count = count.sort_by { |h,v| v }
#   count.reverse!
#   high = count[0][1]
#   count.select! {|a,b| b == high}
#   result = count.collect(&:first)
#   result.sort!
# end

# 3. Refactored Solution

def mode(arr)
  count = Hash.new(0)
  arr.each { |value| count[value] += 1 }
  count = count.sort_by { |key, value| value }.reverse!
  count.select! { |key, value| value == count[0][1] }.collect(&:first).sort
end

# 4. Reflection

# This was a very challenging exercise. Although I had the the concept of how I wanted to
# approach the solution down fairly quick what took the most time was figuring out what syntax
# to use and if the way I wanted to do it was even possible.The hardest part was figuring out
# how to grab a specific element value in a hash. I went in circles thinking it wasn't possible.
# I really enjoyed the difficultly in the challenge. I found refactoring the solution really
# tedious.
