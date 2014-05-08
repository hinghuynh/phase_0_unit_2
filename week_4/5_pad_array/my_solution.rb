# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# number of elements you want in the array, and the filler string
# you want to put in any empty elements
# What is the output? (i.e. What should the code return?)
# an array with the amount of elements you requested with the filler included
# in any new addition elements slots.
# What are the steps needed to solve the problem?
# check if input array is shorter than requested array size
# if longer or same length return original array
# if shorter put filler into empty array slots using a loop till array length equals num
# for pad method instead of using self. I need to create a new array and copy
# the data in the array before i manipulate it.

# 2. Initial Solution

# class Array
# 	def pad(num, filler=nil)
# 		arr = []
# 		self.each { |i| arr << i }
# 		if arr.length >= num
# 			return arr
# 		else
# 			while num > arr.length
# 				arr << filler
# 			end
# 			return arr
# 		end
# 	end

# 	def pad!(num,filler=nil)
# 		if self.length >= num
# 			return self
# 		else
# 			while num > self.length
# 				self << filler
# 			end
# 			return self
# 		end
# 	end
# end

# 3. Refactored Solution

class Array
  def pad(num, filler=nil)
    arr = []
    self.each { |item| arr << item }
    arr.length >= num ? arr : while num > arr.length do arr << filler
    end
    arr
  end

  def pad!(num,filler=nil)
    self.length >= num ? self : while num > self.length do self << filler
    end
    self
  end
end

# 4. Reflection
# The hardest part of this exercise was realizing what exactly I had to do. I had to figure
# out that I need to create a method within the array class. Then I had to figure out what
# to use to call the array that I needed to manipulate. After I figure out I needed to use
# self to call the array, the rest was pretty much straight foward. when creating the pad
# method I couldn't figure out why I just assigned value from array to a new var and
# manipulate it, that it wouldn't work. I then realized I had to clone the array first.
# I enjoyed solving puzzle after puzzle in this exercise. It was time consuming trying to
# to figure this out all on my own.
